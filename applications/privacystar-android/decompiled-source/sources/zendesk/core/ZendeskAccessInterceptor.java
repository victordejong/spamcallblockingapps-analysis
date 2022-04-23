package zendesk.core;

import android.support.annotation.VisibleForTesting;
import com.zendesk.logger.Logger;
import com.zendesk.service.HttpConstants;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAccessInterceptor.class */
public class ZendeskAccessInterceptor implements Interceptor {
    private static final String EMPTY_JSON = "{}";
    private static final String LOG_TAG = "ZendeskAccessIntercepto";
    private AccessProvider accessProvider;
    private CoreSettingsStorage coreSettingsStorage;
    private IdentityManager identityManager;
    private Storage storage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskAccessInterceptor(IdentityManager identityManager, AccessProvider accessProvider, Storage storage, CoreSettingsStorage coreSettingsStorage) {
        this.identityManager = identityManager;
        this.accessProvider = accessProvider;
        this.storage = storage;
        this.coreSettingsStorage = coreSettingsStorage;
    }

    @VisibleForTesting
    static String getErrorLogMessage(AuthenticationType authenticationType, Identity identity) {
        StringBuilder sb = new StringBuilder(160);
        sb.append("The expected type of authentication is ");
        if (authenticationType == null) {
            sb.append("null. Check that settings have been downloaded.");
        } else if (authenticationType == AuthenticationType.ANONYMOUS) {
            sb.append("anonymous.");
        } else if (authenticationType == AuthenticationType.JWT) {
            sb.append("jwt.");
        }
        sb.append('\n');
        sb.append("The local identity is");
        if (identity == null) {
            sb.append(" not");
        }
        sb.append(" present.\n");
        if (identity != null) {
            sb.append("The local identity is ");
            if (identity instanceof AnonymousIdentity) {
                sb.append("anonymous.");
            } else if (identity instanceof JwtIdentity) {
                sb.append("jwt.");
            } else {
                sb.append("unknown.");
            }
        }
        return sb.toString();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Identity identity = this.identityManager.getIdentity();
        if (this.identityManager.getStoredAccessTokenAsBearerToken() == null) {
            Logger.m298d(LOG_TAG, "Access token is required, intercepting.", new Object[0]);
            AuthenticationType authentication = this.coreSettingsStorage.getCoreSettings().getAuthentication();
            if (AuthenticationType.ANONYMOUS == authentication && (identity instanceof AnonymousIdentity)) {
                Logger.m298d(LOG_TAG, "Anonymous Identity found. Requesting and storing auth token.", new Object[0]);
                this.accessProvider.getAndStoreAuthTokenViaAnonymous((AnonymousIdentity) identity);
            } else if (AuthenticationType.JWT != authentication || !(identity instanceof JwtIdentity)) {
                this.storage.clear();
                String errorLogMessage = getErrorLogMessage(authentication, identity);
                Logger.m295e(LOG_TAG, errorLogMessage, new Object[0]);
                return new Response.Builder().request(chain.request()).protocol(Protocol.HTTP_2).code(HttpConstants.HTTP_BAD_REQUEST).message(errorLogMessage).body(ResponseBody.create(MediaType.parse(Constants.TEXT_JSON), EMPTY_JSON)).build();
            } else {
                Logger.m298d(LOG_TAG, "JWT Identity found. Requesting and storing auth token.", new Object[0]);
                this.accessProvider.getAndStoreAuthTokenViaJwt((JwtIdentity) identity);
            }
        } else {
            Logger.m298d(LOG_TAG, "Access token present, no need to intercept.", new Object[0]);
        }
        return chain.proceed(chain.request());
    }
}

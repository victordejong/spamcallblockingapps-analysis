package zendesk.core;

import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAccessInterceptor.class */
public class ZendeskAccessInterceptor implements Interceptor {
    public AccessProvider accessProvider;
    public CoreSettingsStorage coreSettingsStorage;
    public IdentityManager identityManager;
    public Storage storage;

    public ZendeskAccessInterceptor(IdentityManager identityManager, AccessProvider accessProvider, Storage storage, CoreSettingsStorage coreSettingsStorage) {
        this.identityManager = identityManager;
        this.accessProvider = accessProvider;
        this.storage = storage;
        this.coreSettingsStorage = coreSettingsStorage;
    }

    @VisibleForTesting
    public static String getErrorLogMessage(AuthenticationType authenticationType, Identity identity) {
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
            C10845a.m10422a("ZendeskAccessIntercepto", "Access token is required, intercepting.", new Object[0]);
            AuthenticationType authentication = this.coreSettingsStorage.getCoreSettings().getAuthentication();
            if (AuthenticationType.ANONYMOUS == authentication && (identity instanceof AnonymousIdentity)) {
                C10845a.m10422a("ZendeskAccessIntercepto", "Anonymous Identity found. Requesting and storing auth token.", new Object[0]);
                this.accessProvider.getAndStoreAuthTokenViaAnonymous((AnonymousIdentity) identity);
            } else if (AuthenticationType.JWT != authentication || !(identity instanceof JwtIdentity)) {
                this.storage.clear();
                String errorLogMessage = getErrorLogMessage(authentication, identity);
                C10845a.m10419b("ZendeskAccessIntercepto", errorLogMessage, new Object[0]);
                Response.Builder builder = new Response.Builder();
                builder.request(chain.request());
                builder.protocol(Protocol.HTTP_2);
                builder.code(400);
                builder.message(errorLogMessage);
                builder.body(ResponseBody.create(MediaType.parse("txt/json"), "{}"));
                return builder.build();
            } else {
                C10845a.m10422a("ZendeskAccessIntercepto", "JWT Identity found. Requesting and storing auth token.", new Object[0]);
                this.accessProvider.getAndStoreAuthTokenViaJwt((JwtIdentity) identity);
            }
        } else {
            C10845a.m10422a("ZendeskAccessIntercepto", "Access token present, no need to intercept.", new Object[0]);
        }
        return chain.proceed(chain.request());
    }
}

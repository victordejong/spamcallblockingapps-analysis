package zendesk.core;

import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskIdentityManager.class */
class ZendeskIdentityManager implements IdentityManager {
    private static final String LOG_TAG = "ZendeskIdentityManager";
    private final IdentityStorage identityStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskIdentityManager(IdentityStorage identityStorage) {
        this.identityStorage = identityStorage;
    }

    @Override // zendesk.core.IdentityManager
    public String getBlipsUuid() {
        String blipsUuid = this.identityStorage.getBlipsUuid();
        return StringUtils.isEmpty(blipsUuid) ? this.identityStorage.updateBlipsUuid() : blipsUuid;
    }

    @Override // zendesk.core.IdentityManager
    @Nullable
    public Identity getIdentity() {
        Identity identity = this.identityStorage.getIdentity();
        AnonymousIdentity anonymousIdentity = identity;
        if (identity instanceof AnonymousIdentity) {
            AnonymousIdentity anonymousIdentity2 = (AnonymousIdentity) identity;
            anonymousIdentity2.setSdkGuid(getSdkGuid());
            anonymousIdentity = anonymousIdentity2;
        }
        return anonymousIdentity;
    }

    @Override // zendesk.core.IdentityManager
    public String getSdkGuid() {
        String uuid = this.identityStorage.getUuid();
        return StringUtils.isEmpty(uuid) ? this.identityStorage.updateSdkGuid() : uuid;
    }

    @Override // zendesk.core.IdentityManager
    public String getStoredAccessTokenAsBearerToken() {
        AccessToken storedAccessToken = this.identityStorage.getStoredAccessToken();
        if (storedAccessToken != null) {
            return String.format(Locale.US, Constants.AUTHORIZATION_BEARER_FORMAT, storedAccessToken.getAccessToken());
        }
        Logger.m289w(LOG_TAG, "There is no stored access token, have you initialised an identity and requested an access token?", new Object[0]);
        return null;
    }

    @Override // zendesk.core.IdentityManager
    public Long getUserId() {
        return this.identityStorage.getUserId();
    }

    @Override // zendesk.core.IdentityManager
    public boolean identityIsDifferent(Identity identity) {
        Identity identity2 = this.identityStorage.getIdentity();
        return identity2 == null || identity == null || !identity2.equals(identity);
    }

    @Override // zendesk.core.IdentityManager
    public void storeAccessToken(AccessToken accessToken) {
        if (accessToken == null) {
            Logger.m289w(LOG_TAG, "Access Token object was null, cannot store.", new Object[0]);
            return;
        }
        if (!StringUtils.isEmpty(accessToken.getAccessToken())) {
            this.identityStorage.storeAccessToken(accessToken);
        } else {
            Logger.m289w(LOG_TAG, "Access token String was null or empty, cannot store.", new Object[0]);
        }
        String userId = accessToken.getUserId();
        if (StringUtils.isNumeric(userId)) {
            this.identityStorage.storeUserId(Long.valueOf(userId));
        } else {
            Logger.m289w(LOG_TAG, "User ID String was null or empty, cannot store.", new Object[0]);
        }
    }

    @Override // zendesk.core.IdentityManager
    public Identity updateAndPersistIdentity(Identity identity) {
        Identity identity2 = this.identityStorage.getIdentity();
        if (identity2 == null) {
            Logger.m298d(LOG_TAG, "No previous identity set, storing identity", new Object[0]);
            this.identityStorage.storeIdentity(identity);
            return identity;
        } else if (identity == null || !identityIsDifferent(identity)) {
            return identity2;
        } else {
            Logger.m298d(LOG_TAG, "Identity has changed, storing new identity", new Object[0]);
            this.identityStorage.storeIdentity(identity);
            return identity;
        }
    }
}

package zendesk.core;

import androidx.annotation.Nullable;
import java.util.Locale;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskIdentityManager.class */
public class ZendeskIdentityManager implements IdentityManager {
    public final IdentityStorage identityStorage;

    public ZendeskIdentityManager(IdentityStorage identityStorage) {
        this.identityStorage = identityStorage;
    }

    @Override // zendesk.core.IdentityManager
    public String getBlipsUuid() {
        String blipsUuid = this.identityStorage.getBlipsUuid();
        String str = blipsUuid;
        if (C10862d.m10389c(blipsUuid)) {
            str = this.identityStorage.updateBlipsUuid();
        }
        return str;
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
        String str = uuid;
        if (C10862d.m10389c(uuid)) {
            str = this.identityStorage.updateSdkGuid();
        }
        return str;
    }

    @Override // zendesk.core.IdentityManager
    public String getStoredAccessTokenAsBearerToken() {
        AccessToken storedAccessToken = this.identityStorage.getStoredAccessToken();
        if (storedAccessToken != null) {
            return String.format(Locale.US, "Bearer %s", storedAccessToken.getAccessToken());
        }
        C10845a.m10417d("ZendeskIdentityManager", "There is no stored access token, have you initialised an identity and requested an access token?", new Object[0]);
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
            C10845a.m10417d("ZendeskIdentityManager", "Access Token object was null, cannot store.", new Object[0]);
            return;
        }
        if (!C10862d.m10389c(accessToken.getAccessToken())) {
            this.identityStorage.storeAccessToken(accessToken);
        } else {
            C10845a.m10417d("ZendeskIdentityManager", "Access token String was null or empty, cannot store.", new Object[0]);
        }
        String userId = accessToken.getUserId();
        if (C10862d.m10388d(userId)) {
            this.identityStorage.storeUserId(Long.valueOf(userId));
        } else {
            C10845a.m10417d("ZendeskIdentityManager", "User ID String was null or empty, cannot store.", new Object[0]);
        }
    }

    @Override // zendesk.core.IdentityManager
    public Identity updateAndPersistIdentity(Identity identity) {
        Identity identity2 = this.identityStorage.getIdentity();
        if (identity2 == null) {
            C10845a.m10422a("ZendeskIdentityManager", "No previous identity set, storing identity", new Object[0]);
            this.identityStorage.storeIdentity(identity);
            return identity;
        } else if (identity == null || !identityIsDifferent(identity)) {
            return identity2;
        } else {
            C10845a.m10422a("ZendeskIdentityManager", "Identity has changed, storing new identity", new Object[0]);
            this.identityStorage.storeIdentity(identity);
            return identity;
        }
    }
}

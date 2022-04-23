package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.UUID;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskIdentityStorage.class */
public class ZendeskIdentityStorage implements IdentityStorage {
    public final BaseStorage identityStorage;

    /* renamed from: zendesk.core.ZendeskIdentityStorage$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskIdentityStorage$1.class */
    public static /* synthetic */ class C154541 {
        public static final /* synthetic */ int[] $SwitchMap$zendesk$core$AuthenticationType = new int[AuthenticationType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$core$AuthenticationType[AuthenticationType.JWT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$core$AuthenticationType[AuthenticationType.ANONYMOUS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ZendeskIdentityStorage(BaseStorage baseStorage) {
        this.identityStorage = baseStorage;
    }

    @Override // zendesk.core.IdentityStorage
    public void clear() {
        this.identityStorage.clear();
    }

    @Override // zendesk.core.IdentityStorage
    public String getBlipsUuid() {
        return this.identityStorage.get("blips_buid");
    }

    @Override // zendesk.core.IdentityStorage
    @Nullable
    public Identity getIdentity() {
        Identity identity;
        AuthenticationType authType;
        String str = this.identityStorage.get("zendesk-identity-type");
        if (C10862d.m10390b(str) && (authType = AuthenticationType.getAuthType(str)) != null) {
            int i = C154541.$SwitchMap$zendesk$core$AuthenticationType[authType.ordinal()];
            if (i == 1) {
                C10845a.m10422a("ZendeskIdentityStorage", "Loading Jwt identity", new Object[0]);
                identity = (Identity) this.identityStorage.get("zendesk-identity", JwtIdentity.class);
            } else if (i == 2) {
                C10845a.m10422a("ZendeskIdentityStorage", "Loading Anonymous identity", new Object[0]);
                identity = (Identity) this.identityStorage.get("zendesk-identity", AnonymousIdentity.class);
            }
            return identity;
        }
        identity = null;
        return identity;
    }

    @Override // zendesk.core.IdentityStorage
    public AccessToken getStoredAccessToken() {
        return (AccessToken) this.identityStorage.get("stored_token", AccessToken.class);
    }

    @Override // zendesk.core.IdentityStorage
    public Long getUserId() {
        return (Long) this.identityStorage.get("user_id", Long.class);
    }

    @Override // zendesk.core.IdentityStorage
    @NonNull
    public String getUuid() {
        C10845a.m10422a("ZendeskIdentityStorage", "Fetching UUID from preferences store", new Object[0]);
        String str = this.identityStorage.get("uuid");
        String str2 = str;
        if (C10862d.m10389c(str)) {
            str2 = "";
        }
        return str2;
    }

    @Override // zendesk.core.IdentityStorage
    public void storeAccessToken(AccessToken accessToken) {
        if (accessToken != null) {
            this.identityStorage.put("stored_token", accessToken);
        }
    }

    @Override // zendesk.core.IdentityStorage
    public void storeIdentity(Identity identity) {
        if (identity == null) {
            C10845a.m10419b("ZendeskIdentityStorage", "identity is null, will not store the identity", new Object[0]);
            return;
        }
        String str = null;
        if (identity instanceof AnonymousIdentity) {
            C10845a.m10422a("ZendeskIdentityStorage", "Storing anonymous identity", new Object[0]);
            str = AuthenticationType.ANONYMOUS.getAuthenticationType();
        } else if (identity instanceof JwtIdentity) {
            C10845a.m10422a("ZendeskIdentityStorage", "Storing jwt identity", new Object[0]);
            str = AuthenticationType.JWT.getAuthenticationType();
        } else {
            C10845a.m10419b("ZendeskIdentityStorage", "Unknown authentication type, identity will not be stored", new Object[0]);
        }
        if (identity != null && str != null) {
            this.identityStorage.put("zendesk-identity", identity);
            this.identityStorage.put("zendesk-identity-type", str);
        }
    }

    @Override // zendesk.core.IdentityStorage
    public void storeSdkGuid(String str) {
        C10845a.m10422a("ZendeskIdentityStorage", "Storing new UUID in preference store", new Object[0]);
        this.identityStorage.put("uuid", str);
    }

    @Override // zendesk.core.IdentityStorage
    public void storeUserId(Long l) {
        if (l != null) {
            this.identityStorage.put("user_id", l);
        }
    }

    @Override // zendesk.core.IdentityStorage
    public String updateBlipsUuid() {
        String uuid = UUID.randomUUID().toString();
        C10845a.m10422a("ZendeskIdentityStorage", "Generate new Blips BUID", new Object[0]);
        this.identityStorage.put("blips_buid", uuid);
        return uuid;
    }

    @Override // zendesk.core.IdentityStorage
    @NonNull
    public String updateSdkGuid() {
        String uuid = UUID.randomUUID().toString();
        storeSdkGuid(uuid);
        return uuid;
    }
}

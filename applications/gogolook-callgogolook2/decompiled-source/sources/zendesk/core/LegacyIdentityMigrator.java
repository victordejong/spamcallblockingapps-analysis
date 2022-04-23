package zendesk.core;

import androidx.annotation.Nullable;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10107m;
import p081h.p203i.p384e.C10109o;
import p081h.p203i.p384e.C10113s;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
import zendesk.core.AnonymousIdentity;
/* loaded from: classes3-dex2jar.jar:zendesk/core/LegacyIdentityMigrator.class */
public class LegacyIdentityMigrator {
    public IdentityManager identityManager;
    public IdentityStorage identityStorage;
    public SharedPreferencesStorage legacyIdentityStorage;
    public SharedPreferencesStorage legacyPushStorage;
    public PushDeviceIdStorage pushDeviceIdStorage;

    /* renamed from: zendesk.core.LegacyIdentityMigrator$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/LegacyIdentityMigrator$1.class */
    public static /* synthetic */ class C154491 {
        public static final /* synthetic */ int[] $SwitchMap$zendesk$core$AuthenticationType = new int[AuthenticationType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$core$AuthenticationType[AuthenticationType.ANONYMOUS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$core$AuthenticationType[AuthenticationType.JWT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public LegacyIdentityMigrator(SharedPreferencesStorage sharedPreferencesStorage, SharedPreferencesStorage sharedPreferencesStorage2, IdentityStorage identityStorage, IdentityManager identityManager, PushDeviceIdStorage pushDeviceIdStorage) {
        this.legacyIdentityStorage = sharedPreferencesStorage;
        this.legacyPushStorage = sharedPreferencesStorage2;
        this.identityStorage = identityStorage;
        this.identityManager = identityManager;
        this.pushDeviceIdStorage = pushDeviceIdStorage;
    }

    public void checkAndMigrateIdentity() {
        Identity legacyIdentity = getLegacyIdentity();
        if (legacyIdentity != null) {
            this.identityStorage.storeIdentity(legacyIdentity);
            long legacyUserId = getLegacyUserId();
            if (legacyUserId != 0) {
                this.identityStorage.storeUserId(Long.valueOf(legacyUserId));
            }
            AccessToken legacyAccessToken = getLegacyAccessToken();
            if (legacyAccessToken != null) {
                this.identityManager.storeAccessToken(legacyAccessToken);
            }
            if (getLegacyIdentityType() == AuthenticationType.ANONYMOUS) {
                String legacySdkGuid = getLegacySdkGuid();
                if (C10862d.m10390b(legacySdkGuid)) {
                    this.identityStorage.storeSdkGuid(legacySdkGuid);
                }
            }
            String legacyPushId = getLegacyPushId();
            if (C10862d.m10390b(legacyPushId)) {
                this.pushDeviceIdStorage.storeRegisteredDeviceId(legacyPushId);
            }
            clear();
        }
    }

    public final void clear() {
        this.legacyIdentityStorage.remove("zendesk-identity-type");
        this.legacyIdentityStorage.remove("zendesk-identity");
        this.legacyIdentityStorage.remove("stored_token");
        this.legacyIdentityStorage.remove("uuid");
        this.legacyIdentityStorage.remove("user_id");
        this.legacyPushStorage.remove("pushRegResponseIdentifier");
    }

    @Nullable
    public final AccessToken getLegacyAccessToken() {
        String str = this.legacyIdentityStorage.get("stored_token");
        if (C10862d.m10389c(str)) {
            return null;
        }
        try {
            AbstractC10104j a = new C10109o().m13368a(str);
            if (a != null && a.m13375u()) {
                C10107m c = a.m13379c();
                AbstractC10104j a2 = c.m13373a("access_token");
                AbstractC10104j a3 = c.m13373a("user_id");
                if (a2 == null || a3 == null) {
                    return null;
                }
                return new AccessToken(a2.mo13361r(), a3.mo13361r());
            }
            return null;
        } catch (C10113s e) {
            C10845a.m10420b("LegacyIdentityStorage", "Unable to read legacy AccessToken.", e, new Object[0]);
            return null;
        }
    }

    @Nullable
    public final Identity getLegacyIdentity() {
        AuthenticationType legacyIdentityType = getLegacyIdentityType();
        if (legacyIdentityType == null) {
            return null;
        }
        int i = C154491.$SwitchMap$zendesk$core$AuthenticationType[legacyIdentityType.ordinal()];
        if (i == 1) {
            return readLegacyAnonymousIdentity();
        }
        if (i != 2) {
            return null;
        }
        return readLegacyJwtIdentity();
    }

    @Nullable
    public final AuthenticationType getLegacyIdentityType() {
        return AuthenticationType.getAuthType(this.legacyIdentityStorage.get("zendesk-identity-type"));
    }

    @Nullable
    public final String getLegacyPushId() {
        AbstractC10104j a;
        String str = this.legacyPushStorage.get("pushRegResponseIdentifier");
        if (!C10862d.m10390b(str)) {
            return null;
        }
        try {
            AbstractC10104j a2 = new C10109o().m13368a(str);
            if (a2 == null || !a2.m13375u() || (a = a2.m13379c().m13373a("identifier")) == null) {
                return null;
            }
            return a.mo13361r();
        } catch (C10113s e) {
            C10845a.m10420b("LegacyIdentityStorage", "Unable to read legacy push device ID.", e, new Object[0]);
            return null;
        }
    }

    @Nullable
    public final String getLegacySdkGuid() {
        return this.legacyIdentityStorage.get("uuid");
    }

    public final long getLegacyUserId() {
        return this.legacyIdentityStorage.getLong("user_id");
    }

    @Nullable
    public final AnonymousIdentity readLegacyAnonymousIdentity() {
        String str = this.legacyIdentityStorage.get("zendesk-identity");
        if (C10862d.m10389c(str)) {
            return null;
        }
        try {
            AbstractC10104j a = new C10109o().m13368a(str);
            if (a != null && a.m13375u()) {
                C10107m c = a.m13379c();
                AnonymousIdentity.Builder builder = new AnonymousIdentity.Builder();
                AbstractC10104j a2 = c.m13373a("email");
                if (a2 != null) {
                    builder.withEmailIdentifier(a2.mo13361r());
                }
                AbstractC10104j a3 = c.m13373a("name");
                if (a3 != null) {
                    builder.withNameIdentifier(a3.mo13361r());
                }
                return (AnonymousIdentity) builder.build();
            }
            return null;
        } catch (C10113s e) {
            C10845a.m10420b("LegacyIdentityStorage", "Unable to read legacy AnonymousIdentity.", e, new Object[0]);
            return null;
        }
    }

    public final JwtIdentity readLegacyJwtIdentity() {
        C10107m c;
        String str = this.legacyIdentityStorage.get("zendesk-identity");
        if (C10862d.m10389c(str)) {
            return null;
        }
        try {
            AbstractC10104j a = new C10109o().m13368a(str);
            if (a == null || (c = a.m13379c()) == null) {
                return null;
            }
            AbstractC10104j a2 = c.m13373a("token");
            return a2 != null ? new JwtIdentity(a2.mo13361r()) : null;
        } catch (C10113s e) {
            C10845a.m10420b("LegacyIdentityStorage", "Unable to read legacy JwtIdentity.", e, new Object[0]);
            return null;
        }
    }
}

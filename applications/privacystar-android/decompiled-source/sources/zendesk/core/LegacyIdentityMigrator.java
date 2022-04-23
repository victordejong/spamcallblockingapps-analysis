package zendesk.core;

import android.support.annotation.Nullable;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
import zendesk.core.AnonymousIdentity;
/* loaded from: classes3-dex2jar.jar:zendesk/core/LegacyIdentityMigrator.class */
class LegacyIdentityMigrator {
    private static final String ANONYMOUS_EMAIL_KEY = "email";
    private static final String ANONYMOUS_NAME_KEY = "name";
    private static final String JWT_TOKEN_KEY = "token";
    private static final String LEGACY_ACCESS_TOKEN_KEY = "access_token";
    private static final String LEGACY_ACCESS_TOKEN_USER_ID_KEY = "user_id";
    private static final String LEGACY_IDENTITY_KEY = "zendesk-identity";
    private static final String LEGACY_IDENTITY_TYPE_KEY = "zendesk-identity-type";
    private static final String LEGACY_PUSH_DEVICE_ID_KEY = "identifier";
    private static final String LEGACY_PUSH_RESPONSE_KEY = "pushRegResponseIdentifier";
    private static final String LEGACY_SDK_GUID_KEY = "uuid";
    private static final String LEGACY_STORED_TOKEN_KEY = "stored_token";
    private static final String LEGACY_USER_ID_KEY = "user_id";
    private static final String LOG_TAG = "LegacyIdentityStorage";
    private IdentityManager identityManager;
    private IdentityStorage identityStorage;
    private SharedPreferencesStorage legacyIdentityStorage;
    private SharedPreferencesStorage legacyPushStorage;
    private PushDeviceIdStorage pushDeviceIdStorage;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: zendesk.core.LegacyIdentityMigrator$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/LegacyIdentityMigrator$1.class */
    public static /* synthetic */ class C26561 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$core$AuthenticationType = new int[AuthenticationType.values().length];

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

    /* JADX INFO: Access modifiers changed from: package-private */
    public LegacyIdentityMigrator(SharedPreferencesStorage sharedPreferencesStorage, SharedPreferencesStorage sharedPreferencesStorage2, IdentityStorage identityStorage, IdentityManager identityManager, PushDeviceIdStorage pushDeviceIdStorage) {
        this.legacyIdentityStorage = sharedPreferencesStorage;
        this.legacyPushStorage = sharedPreferencesStorage2;
        this.identityStorage = identityStorage;
        this.identityManager = identityManager;
        this.pushDeviceIdStorage = pushDeviceIdStorage;
    }

    private void clear() {
        this.legacyIdentityStorage.remove(LEGACY_IDENTITY_TYPE_KEY);
        this.legacyIdentityStorage.remove(LEGACY_IDENTITY_KEY);
        this.legacyIdentityStorage.remove(LEGACY_STORED_TOKEN_KEY);
        this.legacyIdentityStorage.remove(LEGACY_SDK_GUID_KEY);
        this.legacyIdentityStorage.remove("user_id");
        this.legacyPushStorage.remove(LEGACY_PUSH_RESPONSE_KEY);
    }

    @Nullable
    private AccessToken getLegacyAccessToken() {
        String str = this.legacyIdentityStorage.get(LEGACY_STORED_TOKEN_KEY);
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            JsonElement parse = new JsonParser().parse(str);
            if (parse != null && parse.isJsonObject()) {
                JsonObject asJsonObject = parse.getAsJsonObject();
                JsonElement jsonElement = asJsonObject.get(LEGACY_ACCESS_TOKEN_KEY);
                JsonElement jsonElement2 = asJsonObject.get("user_id");
                if (jsonElement == null || jsonElement2 == null) {
                    return null;
                }
                return new AccessToken(jsonElement.getAsString(), jsonElement2.getAsString());
            }
            return null;
        } catch (JsonSyntaxException e) {
            Logger.m290w(LOG_TAG, "Unable to read legacy AccessToken.", e, new Object[0]);
            return null;
        }
    }

    @Nullable
    private Identity getLegacyIdentity() {
        AuthenticationType legacyIdentityType = getLegacyIdentityType();
        if (legacyIdentityType == null) {
            return null;
        }
        switch (C26561.$SwitchMap$zendesk$core$AuthenticationType[legacyIdentityType.ordinal()]) {
            case 1:
                return readLegacyAnonymousIdentity();
            case 2:
                return readLegacyJwtIdentity();
            default:
                return null;
        }
    }

    @Nullable
    private AuthenticationType getLegacyIdentityType() {
        return AuthenticationType.getAuthType(this.legacyIdentityStorage.get(LEGACY_IDENTITY_TYPE_KEY));
    }

    @Nullable
    private String getLegacyPushId() {
        JsonElement jsonElement;
        String str = this.legacyPushStorage.get(LEGACY_PUSH_RESPONSE_KEY);
        if (!StringUtils.hasLength(str)) {
            return null;
        }
        try {
            JsonElement parse = new JsonParser().parse(str);
            if (parse == null || !parse.isJsonObject() || (jsonElement = parse.getAsJsonObject().get("identifier")) == null) {
                return null;
            }
            return jsonElement.getAsString();
        } catch (JsonSyntaxException e) {
            Logger.m290w(LOG_TAG, "Unable to read legacy push device ID.", e, new Object[0]);
            return null;
        }
    }

    @Nullable
    private String getLegacySdkGuid() {
        return this.legacyIdentityStorage.get(LEGACY_SDK_GUID_KEY);
    }

    private long getLegacyUserId() {
        return this.legacyIdentityStorage.getLong("user_id");
    }

    @Nullable
    private AnonymousIdentity readLegacyAnonymousIdentity() {
        String str = this.legacyIdentityStorage.get(LEGACY_IDENTITY_KEY);
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            JsonElement parse = new JsonParser().parse(str);
            if (parse != null && parse.isJsonObject()) {
                JsonObject asJsonObject = parse.getAsJsonObject();
                AnonymousIdentity.Builder builder = new AnonymousIdentity.Builder();
                JsonElement jsonElement = asJsonObject.get("email");
                if (jsonElement != null) {
                    builder.withEmailIdentifier(jsonElement.getAsString());
                }
                JsonElement jsonElement2 = asJsonObject.get("name");
                if (jsonElement2 != null) {
                    builder.withNameIdentifier(jsonElement2.getAsString());
                }
                return (AnonymousIdentity) builder.build();
            }
            return null;
        } catch (JsonSyntaxException e) {
            Logger.m290w(LOG_TAG, "Unable to read legacy AnonymousIdentity.", e, new Object[0]);
            return null;
        }
    }

    private JwtIdentity readLegacyJwtIdentity() {
        JsonObject asJsonObject;
        String str = this.legacyIdentityStorage.get(LEGACY_IDENTITY_KEY);
        if (StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            JsonElement parse = new JsonParser().parse(str);
            if (parse == null || (asJsonObject = parse.getAsJsonObject()) == null) {
                return null;
            }
            JsonElement jsonElement = asJsonObject.get("token");
            return jsonElement != null ? new JwtIdentity(jsonElement.getAsString()) : null;
        } catch (JsonSyntaxException e) {
            Logger.m290w(LOG_TAG, "Unable to read legacy JwtIdentity.", e, new Object[0]);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
                if (StringUtils.hasLength(legacySdkGuid)) {
                    this.identityStorage.storeSdkGuid(legacySdkGuid);
                }
            }
            String legacyPushId = getLegacyPushId();
            if (StringUtils.hasLength(legacyPushId)) {
                this.pushDeviceIdStorage.storePushDeviceId(legacyPushId);
            }
            clear();
        }
    }
}

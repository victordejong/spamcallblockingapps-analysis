package com.apptentive.android.sdk.encryption;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.encryption.resolvers.KeyResolverFactory;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/SecurityManager.class */
public final class SecurityManager {
    private static final String PREFS_KEY_ALIAS = "alias";
    private static final String PREFS_SDK_VERSION_CODE = "version_code";
    private static EncryptionKey masterKey;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/SecurityManager$KeyInfo.class */
    public static class KeyInfo {
        final String alias;
        final int versionCode;

        KeyInfo(String str, int i) {
            if (StringUtils.isNullOrEmpty(str)) {
                throw new IllegalArgumentException("Key alias name is null or empty");
            } else if (i < 1) {
                throw new IllegalArgumentException("Invalid SDK version code");
            } else {
                this.alias = str;
                this.versionCode = i;
            }
        }

        public String toString() {
            return StringUtils.format("KeyInfo: alias=%s versionCode=%d", ApptentiveLog.hideIfSanitized(this.alias), Integer.valueOf(this.versionCode));
        }
    }

    public static void clear(Context context) {
        getPrefs(context).edit().clear().apply();
    }

    private static String generateUniqueKeyAlias() {
        return "apptentive-key-" + UUID.randomUUID().toString();
    }

    @NonNull
    public static EncryptionKey getMasterKey() {
        return masterKey;
    }

    private static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences("com.apptentive.sdk.security", 0);
    }

    public static void init(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context is null");
        }
        KeyInfo resolveKeyInfo = resolveKeyInfo(context);
        ApptentiveLog.m403v(ApptentiveLogTag.SECURITY, "Secret key info: %s", resolveKeyInfo);
        masterKey = resolveMasterKey(context, resolveKeyInfo);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0023, code lost:
        if (r0 == 0) goto L_0x0026;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.apptentive.android.sdk.encryption.SecurityManager.KeyInfo resolveKeyInfo(android.content.Context r5) {
        /*
            r0 = r5
            android.content.SharedPreferences r0 = getPrefs(r0)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "alias"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r5 = r0
            r0 = r6
            java.lang.String r1 = "version_code"
            r2 = 0
            int r0 = r0.getInt(r1, r2)
            r7 = r0
            r0 = r5
            boolean r0 = com.apptentive.android.sdk.util.StringUtils.isNullOrEmpty(r0)
            if (r0 != 0) goto L_0x0026
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0055
        L_0x0026:
            java.lang.String r0 = generateUniqueKeyAlias()
            r5 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r8 = r0
            r0 = r6
            android.content.SharedPreferences$Editor r0 = r0.edit()
            java.lang.String r1 = "alias"
            r2 = r5
            android.content.SharedPreferences$Editor r0 = r0.putString(r1, r2)
            java.lang.String r1 = "version_code"
            r2 = r8
            android.content.SharedPreferences$Editor r0 = r0.putInt(r1, r2)
            r0.apply()
            com.apptentive.android.sdk.ApptentiveLogTag r0 = com.apptentive.android.sdk.ApptentiveLogTag.SECURITY
            java.lang.String r1 = "Generated new key info"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            com.apptentive.android.sdk.ApptentiveLog.m403v(r0, r1, r2)
        L_0x0055:
            com.apptentive.android.sdk.encryption.SecurityManager$KeyInfo r0 = new com.apptentive.android.sdk.encryption.SecurityManager$KeyInfo
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.encryption.SecurityManager.resolveKeyInfo(android.content.Context):com.apptentive.android.sdk.encryption.SecurityManager$KeyInfo");
    }

    @NonNull
    private static EncryptionKey resolveMasterKey(Context context, KeyInfo keyInfo) {
        try {
            return KeyResolverFactory.createKeyResolver(keyInfo.versionCode).resolveKey(context, keyInfo.alias);
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.SECURITY, e, "Exception while resolving secret key for alias '%s'. Encryption might not work correctly!", ApptentiveLog.hideIfSanitized(keyInfo.alias));
            return EncryptionKey.NULL;
        }
    }
}

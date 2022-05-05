package com.apptentive.android.sdk.encryption;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.encryption.resolvers.KeyResolverFactory;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/SecurityManager.class */
public final class SecurityManager {
    private static final int SDK_INT = Build.VERSION.SDK_INT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/SecurityManager$KeyInfo.class */
    public static class KeyInfo {
        final String alias;
        final int versionCode;

        KeyInfo(String str, int i) {
            if (StringUtils.isNullOrEmpty(str)) {
                throw new IllegalArgumentException("Key alias name is null or empty");
            } else if (i >= 1) {
                this.alias = str;
                this.versionCode = i;
            } else {
                throw new IllegalArgumentException("Invalid SDK version code");
            }
        }

        public String toString() {
            return StringUtils.format("KeyInfo: alias=%s versionCode=%d", ApptentiveLog.hideIfSanitized(this.alias), Integer.valueOf(this.versionCode));
        }
    }

    private static String generateUniqueKeyAlias() {
        return "apptentive-key-" + UUID.randomUUID().toString();
    }

    @NonNull
    public static Encryption getEncryption(Context context, @Nullable Encryption encryption, boolean z) throws EncryptionInitializationException {
        if (context != null) {
            if (encryption != null) {
                if (!hasEncryptionInfo(context)) {
                    ApptentiveLog.m15640i(ApptentiveLogTag.SECURITY, "Using an external encryption for secure storage", new Object[0]);
                    return EncryptionFactory.wrapNullSafe(encryption);
                }
                ApptentiveLog.m15635w(ApptentiveLogTag.SECURITY, "The client already has its storage encrypted and can't transit to a custom encryption implementation.", new Object[0]);
            }
            KeyInfo resolveKeyInfo = resolveKeyInfo(context, z);
            ApptentiveLog.m15638v(ApptentiveLogTag.SECURITY, "Secret key info: %s", resolveKeyInfo);
            return EncryptionFactory.createEncryption(resolveMasterKey(context, resolveKeyInfo));
        }
        throw new IllegalArgumentException("Context is null");
    }

    private static SharedPreferences getPrefs(Context context) {
        return context.getSharedPreferences("com.apptentive.sdk.security", 0);
    }

    private static boolean hasEncryptionInfo(Context context) {
        SharedPreferences prefs = getPrefs(context);
        String string = prefs.getString("alias", null);
        int i = prefs.getInt("version_code", 0);
        boolean z = false;
        if (!StringUtils.isNullOrEmpty(string)) {
            z = false;
            if (i > 0) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
        if (r0 == 0) goto L_0x0027;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.apptentive.android.sdk.encryption.SecurityManager.KeyInfo resolveKeyInfo(android.content.Context r5, boolean r6) {
        /*
            r0 = r5
            android.content.SharedPreferences r0 = getPrefs(r0)
            r7 = r0
            r0 = r7
            java.lang.String r1 = "alias"
            r2 = 0
            java.lang.String r0 = r0.getString(r1, r2)
            r5 = r0
            r0 = r7
            java.lang.String r1 = "version_code"
            r2 = 0
            int r0 = r0.getInt(r1, r2)
            r8 = r0
            r0 = r5
            boolean r0 = com.apptentive.android.sdk.util.StringUtils.isNullOrEmpty(r0)
            if (r0 != 0) goto L_0x0027
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0063
        L_0x0027:
            java.lang.String r0 = generateUniqueKeyAlias()
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0037
            int r0 = com.apptentive.android.sdk.encryption.SecurityManager.SDK_INT
            r9 = r0
            goto L_0x003b
        L_0x0037:
            r0 = 17
            r9 = r0
        L_0x003b:
            r0 = r7
            android.content.SharedPreferences$Editor r0 = r0.edit()
            java.lang.String r1 = "alias"
            r2 = r5
            android.content.SharedPreferences$Editor r0 = r0.putString(r1, r2)
            java.lang.String r1 = "version_code"
            r2 = r9
            android.content.SharedPreferences$Editor r0 = r0.putInt(r1, r2)
            r0.apply()
            com.apptentive.android.sdk.ApptentiveLogTag r0 = com.apptentive.android.sdk.ApptentiveLogTag.SECURITY
            java.lang.String r1 = "Generated new key info"
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            com.apptentive.android.sdk.ApptentiveLog.m15638v(r0, r1, r2)
        L_0x0063:
            com.apptentive.android.sdk.encryption.SecurityManager$KeyInfo r0 = new com.apptentive.android.sdk.encryption.SecurityManager$KeyInfo
            r1 = r0
            r2 = r5
            r3 = r9
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.encryption.SecurityManager.resolveKeyInfo(android.content.Context, boolean):com.apptentive.android.sdk.encryption.SecurityManager$KeyInfo");
    }

    @NonNull
    private static EncryptionKey resolveMasterKey(Context context, KeyInfo keyInfo) throws EncryptionInitializationException {
        try {
            return KeyResolverFactory.createKeyResolver(keyInfo.versionCode).resolveKey(context, keyInfo.alias);
        } catch (Exception e) {
            throw new EncryptionInitializationException(StringUtils.format("Exception while resolving secret key for alias '%s'. Encryption might not work correctly!", ApptentiveLog.hideIfSanitized(keyInfo.alias)), e);
        }
    }
}

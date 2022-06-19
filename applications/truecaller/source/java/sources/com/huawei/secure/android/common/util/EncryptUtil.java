package com.huawei.secure.android.common.util;

import android.os.Build;
import android.util.Base64;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/EncryptUtil.class */
public class EncryptUtil {

    /* renamed from: a */
    private static final String f8119a = "EncryptUtil";

    /* renamed from: b */
    private static final String f8120b = "RSA";

    @Deprecated
    public static byte[] generateSecureRandom(int i) {
        byte[] bArr = new byte[i];
        try {
            (Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : SecureRandom.getInstance("SHA1PRNG")).nextBytes(bArr);
            return bArr;
        } catch (NoSuchAlgorithmException e) {
            return new byte[0];
        }
    }

    @Deprecated
    public static String generateSecureRandomStr(int i) {
        return HexUtil.byteArray2HexStr(generateSecureRandom(i));
    }

    @Deprecated
    public static PrivateKey getPrivateKey(String str) {
        try {
            try {
                return KeyFactory.getInstance(f8120b).generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str, 0)));
            } catch (GeneralSecurityException e) {
                String str2 = f8119a;
                StringBuilder m8728C = C22128a.m8728C("load Key Exception:");
                m8728C.append(e.getMessage());
                LogsUtil.m36916e(str2, m8728C.toString(), true);
                return null;
            }
        } catch (IllegalArgumentException e2) {
            LogsUtil.m36916e(f8119a, "base64 decode IllegalArgumentException", true);
            return null;
        } catch (Exception e3) {
            LogsUtil.m36916e(f8119a, "base64 decode Exception", true);
            return null;
        }
    }

    @Deprecated
    public static RSAPublicKey getPublicKey(String str) {
        try {
            try {
                return (RSAPublicKey) KeyFactory.getInstance(f8120b).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
            } catch (GeneralSecurityException e) {
                String str2 = f8119a;
                StringBuilder m8728C = C22128a.m8728C("load Key Exception:");
                m8728C.append(e.getMessage());
                LogsUtil.m36916e(str2, m8728C.toString(), true);
                return null;
            }
        } catch (IllegalArgumentException e2) {
            LogsUtil.m36916e(f8119a, "base64 decode IllegalArgumentException", true);
            return null;
        } catch (Exception e3) {
            LogsUtil.m36916e(f8119a, "base64 decode Exception", true);
            return null;
        }
    }
}

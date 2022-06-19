package com.huawei.secure.android.common.encrypt.utils;

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
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.prng.SP800SecureRandomBuilder;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/utils/EncryptUtil.class */
public class EncryptUtil {

    /* renamed from: a */
    private static final String f7985a = "EncryptUtil";

    /* renamed from: b */
    private static final String f7986b = "RSA";

    /* renamed from: c */
    private static boolean f7987c = false;

    /* renamed from: d */
    private static boolean f7988d = true;

    /* renamed from: a */
    private static SecureRandom m37056a() {
        C2480b.m37039a(f7985a, "generateSecureRandomNew ");
        SecureRandom secureRandom = null;
        SecureRandom secureRandom2 = null;
        try {
            SecureRandom instanceStrong = Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : SecureRandom.getInstance("SHA1PRNG");
            SecureRandom secureRandom3 = instanceStrong;
            SecureRandom secureRandom4 = instanceStrong;
            AESEngine aESEngine = new AESEngine();
            SecureRandom secureRandom5 = instanceStrong;
            byte[] bArr = new byte[32];
            SecureRandom secureRandom6 = instanceStrong;
            instanceStrong.nextBytes(bArr);
            SecureRandom secureRandom7 = instanceStrong;
            SecureRandom secureRandom8 = instanceStrong;
            secureRandom = instanceStrong;
            secureRandom2 = instanceStrong;
            return new SP800SecureRandomBuilder(instanceStrong, true).setEntropyBitsRequired(384).buildCTR(aESEngine, 256, bArr, false);
        } catch (NoSuchAlgorithmException e) {
            C2480b.m37037b(f7985a, "NoSuchAlgorithmException");
            return secureRandom2;
        } catch (Throwable th) {
            secureRandom2 = secureRandom;
            if (f7988d) {
                StringBuilder m8728C = C22128a.m8728C("exception : ");
                m8728C.append(th.getMessage());
                m8728C.append(" , you should implementation bcprov-jdk15on library");
                C2480b.m37037b(f7985a, m8728C.toString());
                f7988d = false;
                secureRandom2 = secureRandom;
            }
            return secureRandom2;
        }
    }

    /* renamed from: a */
    private static byte[] m37055a(int i) {
        SecureRandom m37056a = m37056a();
        if (m37056a == null) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        m37056a.nextBytes(bArr);
        return bArr;
    }

    public static SecureRandom genSecureRandom() {
        if (!f7987c) {
            SecureRandom secureRandom = null;
            try {
                secureRandom = Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : SecureRandom.getInstance("SHA1PRNG");
            } catch (NoSuchAlgorithmException e) {
                C2480b.m37037b(f7985a, "genSecureRandom: NoSuchAlgorithmException");
            }
            return secureRandom;
        }
        return m37056a();
    }

    public static byte[] generateSecureRandom(int i) {
        if (!f7987c) {
            byte[] bArr = new byte[i];
            try {
                (Build.VERSION.SDK_INT >= 26 ? SecureRandom.getInstanceStrong() : SecureRandom.getInstance("SHA1PRNG")).nextBytes(bArr);
                return bArr;
            } catch (NoSuchAlgorithmException e) {
                return new byte[0];
            }
        }
        return m37055a(i);
    }

    public static String generateSecureRandomStr(int i) {
        return HexUtil.byteArray2HexStr(generateSecureRandom(i));
    }

    public static PrivateKey getPrivateKey(String str) {
        try {
            try {
                return KeyFactory.getInstance(f7986b).generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str, 0)));
            } catch (GeneralSecurityException e) {
                StringBuilder m8728C = C22128a.m8728C("load Key Exception:");
                m8728C.append(e.getMessage());
                C2480b.m37037b(f7985a, m8728C.toString());
                return null;
            }
        } catch (IllegalArgumentException e2) {
            C2480b.m37037b(f7985a, "base64 decode IllegalArgumentException");
            return null;
        } catch (Exception e3) {
            C22128a.m8727C0(e3, C22128a.m8728C("base64 decode Exception"), f7985a);
            return null;
        }
    }

    public static RSAPublicKey getPublicKey(String str) {
        try {
            try {
                return (RSAPublicKey) KeyFactory.getInstance(f7986b).generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
            } catch (GeneralSecurityException e) {
                StringBuilder m8728C = C22128a.m8728C("load Key Exception:");
                m8728C.append(e.getMessage());
                C2480b.m37037b(f7985a, m8728C.toString());
                return null;
            }
        } catch (IllegalArgumentException e2) {
            C2480b.m37037b(f7985a, "base64 decode IllegalArgumentException");
            return null;
        } catch (Exception e3) {
            C22128a.m8727C0(e3, C22128a.m8728C("base64 decode Exception"), f7985a);
            return null;
        }
    }

    public static boolean isBouncycastleFlag() {
        return f7987c;
    }

    public static void setBouncycastleFlag(boolean z) {
        C2480b.m37036c(f7985a, "setBouncycastleFlag: " + z);
        f7987c = z;
    }
}

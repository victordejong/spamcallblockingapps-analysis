package p081h.p160h.p179e.p180a.p190p;

import android.annotation.TargetApi;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import p081h.p160h.p179e.p180a.C6334a;
/* renamed from: h.h.e.a.p.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/c.class */
public class C6430c {

    /* renamed from: a */
    public static KeyStore f16041a;

    /* renamed from: b */
    public static HashMap<String, byte[]> f16042b = new HashMap<>();

    /* renamed from: a */
    public static String m22644a(int i) {
        return C6432e.m22597b(m22643a(C6431d.m22622b(C6334a.m23211s().m23221i()), i));
    }

    /* renamed from: a */
    public static boolean m22645a() {
        String b = C6431d.m22619b(C6334a.m23211s().m23221i(), "pref_sdk_keystore", (String) null);
        if (TextUtils.isEmpty(b)) {
            return false;
        }
        try {
            return !TextUtils.isEmpty(new String(m22642a(C6432e.m22590d(b))));
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: a */
    public static byte[] m22643a(String str, int i) {
        if (i == 128 || i == 256 || i == 512) {
            return m22639b(str, i);
        }
        throw new RuntimeException("Invalid key length");
    }

    @TargetApi(23)
    /* renamed from: a */
    public static byte[] m22642a(byte[] bArr) {
        try {
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(2, m22633f());
            return instance.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            C6438i.m22583a(e);
            return null;
        } catch (Exception e2) {
            C6438i.m22583a(e2);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m22641b() {
        return !TextUtils.isEmpty(C6431d.m22619b(C6334a.m23211s().m23221i(), "pref_sdk_keypref", (String) null));
    }

    /* renamed from: b */
    public static byte[] m22640b(int i) {
        return m22643a(C6431d.m22622b(C6334a.m23211s().m23221i()), i);
    }

    /* renamed from: b */
    public static byte[] m22639b(String str, int i) {
        HashMap<String, byte[]> hashMap = f16042b;
        if (hashMap.get(str + "_" + i) == null) {
            return m22636c(str, i);
        }
        HashMap<String, byte[]> hashMap2 = f16042b;
        return hashMap2.get(str + "_" + i);
    }

    @TargetApi(23)
    /* renamed from: b */
    public static byte[] m22638b(byte[] bArr) {
        try {
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(1, m22632g());
            return instance.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            C6438i.m22583a(e);
            return null;
        } catch (Exception e2) {
            C6438i.m22583a(e2);
            return null;
        }
    }

    @TargetApi(23)
    /* renamed from: c */
    public static KeyGenParameterSpec m22637c() {
        return new KeyGenParameterSpec.Builder("WCSDK", 3).setBlockModes("ECB").setEncryptionPaddings("PKCS1Padding").build();
    }

    /* renamed from: c */
    public static byte[] m22636c(String str, int i) {
        synchronized (C6430c.class) {
            try {
                HashMap<String, byte[]> hashMap = f16042b;
                if (hashMap.get(str + "_" + i) == null) {
                    try {
                        byte[] encoded = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(str.toCharArray(), str.getBytes(), 1000, i)).getEncoded();
                        if (encoded != null) {
                            HashMap<String, byte[]> hashMap2 = f16042b;
                            hashMap2.put(str + "_" + i, encoded);
                        }
                        return encoded;
                    } catch (Exception e) {
                        C6438i.m22583a(e);
                        return null;
                    }
                } else {
                    HashMap<String, byte[]> hashMap3 = f16042b;
                    return hashMap3.get(str + "_" + i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public static KeyPair m22635d() {
        try {
            KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
            if (Build.VERSION.SDK_INT >= 23) {
                instance.initialize(m22637c());
            }
            return instance.generateKeyPair();
        } catch (InvalidAlgorithmParameterException e) {
            C6438i.m22583a(e);
            return null;
        } catch (NoSuchAlgorithmException e2) {
            C6438i.m22583a(e2);
            return null;
        } catch (NoSuchProviderException e3) {
            C6438i.m22583a(e3);
            return null;
        }
    }

    /* renamed from: e */
    public static String m22634e() {
        return m22644a(256);
    }

    /* renamed from: f */
    public static PrivateKey m22633f() {
        synchronized (C6430c.class) {
            try {
                try {
                    if (f16041a == null) {
                        m22631h();
                    }
                    if (f16041a.containsAlias("WCSDK")) {
                        return (PrivateKey) f16041a.getKey("WCSDK", null);
                    }
                    return m22635d().getPrivate();
                } catch (GeneralSecurityException e) {
                    C6438i.m22583a(e);
                    throw new RuntimeException("Unable Private Key.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g */
    public static PublicKey m22632g() {
        synchronized (C6430c.class) {
            try {
                try {
                    if (f16041a == null) {
                        m22631h();
                    }
                    if (f16041a.containsAlias("WCSDK")) {
                        return f16041a.getCertificate("WCSDK").getPublicKey();
                    }
                    return m22635d().getPublic();
                } catch (GeneralSecurityException e) {
                    C6438i.m22583a(e);
                    throw new RuntimeException("Unable Public Key.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: h */
    public static void m22631h() {
        try {
            f16041a = KeyStore.getInstance("AndroidKeyStore");
            f16041a.load(null);
        } catch (IOException e) {
            C6438i.m22583a(e);
            throw new RuntimeException("I/O Exception");
        } catch (GeneralSecurityException e2) {
            C6438i.m22583a(e2);
            throw new RuntimeException("Security Exception");
        }
    }
}

package com.huawei.secure.android.common.encrypt.rsa;

import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/rsa/RSASign.class */
public abstract class RSASign {

    /* renamed from: a */
    private static final String f7976a = "SHA256WithRSA";

    /* renamed from: b */
    private static final String f7977b = "SHA256WithRSA/PSS";

    /* renamed from: c */
    private static final String f7978c = "RSASign";

    /* renamed from: d */
    private static final String f7979d = "UTF-8";

    /* renamed from: e */
    private static final String f7980e = "";

    /* renamed from: a */
    private static String m37062a(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7978c, "sign content or key is null");
            return "";
        }
        PrivateKey privateKey = EncryptUtil.getPrivateKey(str2);
        return z ? newSign(str, privateKey) : sign(str, privateKey);
    }

    /* renamed from: a */
    private static String m37061a(String str, PrivateKey privateKey, boolean z) {
        try {
            return Base64.encodeToString(sign(str.getBytes("UTF-8"), privateKey, z), 0);
        } catch (UnsupportedEncodingException e) {
            String str2 = f7978c;
            StringBuilder m8728C = C22128a.m8728C("sign UnsupportedEncodingException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return "";
        }
    }

    /* renamed from: a */
    private static boolean m37064a(String str, String str2, String str3, boolean z) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7978c, "content or public key or sign value is null");
            return false;
        }
        RSAPublicKey publicKey = EncryptUtil.getPublicKey(str3);
        return z ? newVerifySign(str, str2, publicKey) : verifySign(str, str2, publicKey);
    }

    /* renamed from: a */
    private static boolean m37063a(String str, String str2, PublicKey publicKey, boolean z) {
        try {
            return verifySign(str.getBytes("UTF-8"), Base64.decode(str2, 0), publicKey, z);
        } catch (UnsupportedEncodingException e) {
            String str3 = f7978c;
            StringBuilder m8728C = C22128a.m8728C("verifySign UnsupportedEncodingException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str3, m8728C.toString());
            return false;
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("base64 decode Exception : "), f7978c);
            return false;
        }
    }

    public static boolean isBuildVersionHigherThan23() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static String newSign(String str, String str2) {
        if (!isBuildVersionHigherThan23()) {
            C2480b.m37037b(f7978c, "sdk version is too low");
            return "";
        }
        return m37062a(str, str2, true);
    }

    public static String newSign(String str, PrivateKey privateKey) {
        if (!isBuildVersionHigherThan23()) {
            C2480b.m37037b(f7978c, "sdk version is too low");
            return "";
        }
        return m37061a(str, privateKey, true);
    }

    public static boolean newVerifySign(String str, String str2, String str3) {
        if (!isBuildVersionHigherThan23()) {
            C2480b.m37037b(f7978c, "sdk version is too low");
            return false;
        }
        return m37064a(str, str2, str3, true);
    }

    public static boolean newVerifySign(String str, String str2, PublicKey publicKey) {
        if (!isBuildVersionHigherThan23()) {
            C2480b.m37037b(f7978c, "sdk version is too low");
            return false;
        }
        return m37063a(str, str2, publicKey, true);
    }

    @Deprecated
    public static String sign(String str, String str2) {
        return m37062a(str, str2, false);
    }

    @Deprecated
    public static String sign(String str, PrivateKey privateKey) {
        return m37061a(str, privateKey, false);
    }

    public static byte[] sign(byte[] bArr, PrivateKey privateKey, boolean z) {
        byte[] bArr2;
        Signature signature;
        byte[] bArr3 = new byte[0];
        if (bArr == null || privateKey == null || !RSAEncrypt.isPrivateKeyLengthRight((RSAPrivateKey) privateKey)) {
            C2480b.m37037b(f7978c, "content or privateKey is null , or length is too short");
            return bArr3;
        }
        try {
            if (z) {
                signature = Signature.getInstance(f7977b);
                signature.setParameter(new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
            } else {
                signature = Signature.getInstance(f7976a);
            }
            signature.initSign(privateKey);
            signature.update(bArr);
            bArr2 = signature.sign();
        } catch (InvalidAlgorithmParameterException e) {
            String str = f7978c;
            StringBuilder m8728C = C22128a.m8728C("sign InvalidAlgorithmParameterException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            bArr2 = bArr3;
        } catch (InvalidKeyException e2) {
            String str2 = f7978c;
            StringBuilder m8728C2 = C22128a.m8728C("sign InvalidKeyException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str2, m8728C2.toString());
            bArr2 = bArr3;
        } catch (NoSuchAlgorithmException e3) {
            String str3 = f7978c;
            StringBuilder m8728C3 = C22128a.m8728C("sign NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str3, m8728C3.toString());
            bArr2 = bArr3;
        } catch (SignatureException e4) {
            String str4 = f7978c;
            StringBuilder m8728C4 = C22128a.m8728C("sign SignatureException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str4, m8728C4.toString());
            bArr2 = bArr3;
        } catch (Exception e5) {
            C22128a.m8727C0(e5, C22128a.m8728C("sign Exception: "), f7978c);
            bArr2 = bArr3;
        }
        return bArr2;
    }

    @Deprecated
    public static boolean verifySign(String str, String str2, String str3) {
        return m37064a(str, str2, str3, false);
    }

    @Deprecated
    public static boolean verifySign(String str, String str2, PublicKey publicKey) {
        return m37063a(str, str2, publicKey, false);
    }

    public static boolean verifySign(byte[] bArr, byte[] bArr2, PublicKey publicKey, boolean z) {
        Signature signature;
        if (bArr == null || publicKey == null || bArr2 == null || !RSAEncrypt.isPublicKeyLengthRight((RSAPublicKey) publicKey)) {
            C2480b.m37037b(f7978c, "content or publicKey is null , or length is too short");
            return false;
        }
        try {
            if (z) {
                signature = Signature.getInstance(f7977b);
                signature.setParameter(new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
            } else {
                signature = Signature.getInstance(f7976a);
            }
            signature.initVerify(publicKey);
            signature.update(bArr);
            return signature.verify(bArr2);
        } catch (GeneralSecurityException e) {
            String str = f7978c;
            StringBuilder m8728C = C22128a.m8728C("check sign exception: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            return false;
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("exception : "), f7978c);
            return false;
        }
    }
}

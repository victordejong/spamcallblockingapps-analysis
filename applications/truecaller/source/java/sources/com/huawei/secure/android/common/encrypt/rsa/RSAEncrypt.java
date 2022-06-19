package com.huawei.secure.android.common.encrypt.rsa;

import android.text.TextUtils;
import android.util.Base64;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/rsa/RSAEncrypt.class */
public abstract class RSAEncrypt {

    /* renamed from: a */
    private static final String f7970a = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding";

    /* renamed from: b */
    private static final String f7971b = "RSAEncrypt";

    /* renamed from: c */
    private static final String f7972c = "UTF-8";

    /* renamed from: d */
    private static final String f7973d = "";

    /* renamed from: e */
    private static final int f7974e = 2048;

    /* renamed from: f */
    private static final String f7975f = "RSA";

    public static String decrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7971b, "content or private key is null");
            return "";
        }
        return decrypt(str, EncryptUtil.getPrivateKey(str2));
    }

    public static String decrypt(String str, PrivateKey privateKey) {
        if (TextUtils.isEmpty(str) || privateKey == null || !isPrivateKeyLengthRight((RSAPrivateKey) privateKey)) {
            C2480b.m37037b(f7971b, "content or privateKey is null , or length is too short");
            return "";
        }
        try {
            return new String(decrypt(Base64.decode(str, 0), privateKey), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            StringBuilder m8728C = C22128a.m8728C("RSA decrypt exception : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(f7971b, m8728C.toString());
            return "";
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("exception : "), f7971b);
            return "";
        }
    }

    public static byte[] decrypt(byte[] bArr, PrivateKey privateKey) {
        byte[] bArr2;
        byte[] bArr3 = new byte[0];
        if (bArr == null || privateKey == null || !isPrivateKeyLengthRight((RSAPrivateKey) privateKey)) {
            C2480b.m37037b(f7971b, "content or privateKey is null , or length is too short");
            return bArr3;
        }
        try {
            Cipher cipher = Cipher.getInstance(f7970a);
            cipher.init(2, privateKey);
            bArr2 = cipher.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            StringBuilder m8728C = C22128a.m8728C("RSA decrypt exception : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(f7971b, m8728C.toString());
            bArr2 = bArr3;
        }
        return bArr2;
    }

    public static String encrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7971b, "content or public key is null");
            return "";
        }
        return encrypt(str, EncryptUtil.getPublicKey(str2));
    }

    public static String encrypt(String str, PublicKey publicKey) {
        if (TextUtils.isEmpty(str) || publicKey == null || !isPublicKeyLengthRight((RSAPublicKey) publicKey)) {
            C2480b.m37037b(f7971b, "content or PublicKey is null , or length is too short");
            return "";
        }
        try {
            return Base64.encodeToString(encrypt(str.getBytes("UTF-8"), publicKey), 0);
        } catch (UnsupportedEncodingException e) {
            C2480b.m37037b(f7971b, "encrypt: UnsupportedEncodingException");
            return "";
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("exception : "), f7971b);
            return "";
        }
    }

    public static byte[] encrypt(byte[] bArr, PublicKey publicKey) {
        byte[] bArr2 = new byte[0];
        if (bArr == null || publicKey == null || !isPublicKeyLengthRight((RSAPublicKey) publicKey)) {
            C2480b.m37037b(f7971b, "content or PublicKey is null , or length is too short");
            return bArr2;
        }
        try {
            Cipher cipher = Cipher.getInstance(f7970a);
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            StringBuilder m8728C = C22128a.m8728C("RSA encrypt exception : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(f7971b, m8728C.toString());
            return bArr2;
        }
    }

    public static Map<String, Key> generateRSAKeyPair(int i) throws NoSuchAlgorithmException {
        HashMap hashMap = new HashMap(2);
        if (i < 2048) {
            C2480b.m37037b(f7971b, "generateRSAKeyPair: key length is too short");
            return hashMap;
        }
        SecureRandom genSecureRandom = EncryptUtil.genSecureRandom();
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(f7975f);
        keyPairGenerator.initialize(i, genSecureRandom);
        KeyPair generateKeyPair = keyPairGenerator.generateKeyPair();
        PublicKey publicKey = generateKeyPair.getPublic();
        PrivateKey privateKey = generateKeyPair.getPrivate();
        hashMap.put("publicKey", publicKey);
        hashMap.put("privateKey", privateKey);
        return hashMap;
    }

    public static boolean isPrivateKeyLengthRight(RSAPrivateKey rSAPrivateKey) {
        boolean z = false;
        if (rSAPrivateKey == null) {
            return false;
        }
        if (rSAPrivateKey.getModulus().bitLength() >= 2048) {
            z = true;
        }
        return z;
    }

    public static boolean isPublicKeyLengthRight(RSAPublicKey rSAPublicKey) {
        boolean z = false;
        if (rSAPublicKey == null) {
            return false;
        }
        if (rSAPublicKey.getModulus().bitLength() >= 2048) {
            z = true;
        }
        return z;
    }
}

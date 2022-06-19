package com.huawei.secure.android.common.encrypt.aes;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/aes/AesGcm.class */
public final class AesGcm {

    /* renamed from: a */
    private static final String f7906a = "security:";

    /* renamed from: b */
    private static final String f7907b = "AES/GCM/NoPadding";

    /* renamed from: c */
    private static final String f7908c = "AES";

    /* renamed from: d */
    private static final String f7909d = "AesGcm";

    /* renamed from: e */
    private static final String f7910e = "";

    /* renamed from: f */
    private static final int f7911f = 16;

    /* renamed from: g */
    private static final int f7912g = 12;

    /* renamed from: h */
    private static final int f7913h = 2;

    private AesGcm() {
    }

    /* renamed from: a */
    private static int m37096a(byte[] bArr) {
        return bArr[12] == 58 ? 12 : -1;
    }

    /* renamed from: a */
    private static String m37098a(String str) {
        return (TextUtils.isEmpty(str) || str.length() < 24) ? "" : str.substring(24);
    }

    /* renamed from: a */
    private static byte[] m37097a(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 12 || !isBuildVersionHigherThan19()) {
            C2480b.m37037b(f7909d, "gcm encrypt param is not right");
            return new byte[0];
        }
        try {
            return encrypt(str.getBytes(StringConstant.UTF8), bArr, bArr2);
        } catch (UnsupportedEncodingException e) {
            String str2 = f7909d;
            StringBuilder m8728C = C22128a.m8728C("GCM encrypt data error");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return new byte[0];
        }
    }

    /* renamed from: a */
    private static byte[] m37095a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: b */
    private static String m37094b(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 24) {
            C2480b.m37037b(f7909d, "IV is invalid.");
            return "";
        }
        return str.substring(0, 24);
    }

    /* renamed from: b */
    private static byte[] m37093b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length - 12];
        System.arraycopy(bArr, 12, bArr2, 0, bArr.length - 12);
        return bArr2;
    }

    /* renamed from: c */
    private static byte[] m37092c(byte[] bArr) {
        byte[] bArr2 = new byte[12];
        System.arraycopy(bArr, 0, bArr2, 0, 12);
        return bArr2;
    }

    public static String decrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !isBuildVersionHigherThan19()) {
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        if (hexStr2ByteArray.length >= 16) {
            return decrypt(str, hexStr2ByteArray);
        }
        C2480b.m37037b(f7909d, "key length is not right");
        return "";
    }

    public static String decrypt(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || !isBuildVersionHigherThan19()) {
            C2480b.m37037b(f7909d, "gcm decrypt param is not right");
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        byte[] hexStr2ByteArray2 = HexUtil.hexStr2ByteArray(str3);
        if (hexStr2ByteArray.length >= 16 && hexStr2ByteArray2.length >= 12) {
            return decrypt(str, hexStr2ByteArray, hexStr2ByteArray2);
        }
        C2480b.m37037b(f7909d, "key length or iv length is not right");
        return "";
    }

    public static String decrypt(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || !isBuildVersionHigherThan19()) {
            return "";
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, f7908c);
            Cipher cipher = Cipher.getInstance(f7907b);
            String m37094b = m37094b(str);
            String m37098a = m37098a(str);
            if (!TextUtils.isEmpty(m37094b) && !TextUtils.isEmpty(m37098a)) {
                cipher.init(2, secretKeySpec, getGcmAlgorithmParams(HexUtil.hexStr2ByteArray(m37094b)));
                return new String(cipher.doFinal(HexUtil.hexStr2ByteArray(m37098a)), StringConstant.UTF8);
            }
            C2480b.m37037b(f7909d, "ivParameter or encrypedWord is null");
            return "";
        } catch (UnsupportedEncodingException | GeneralSecurityException e) {
            C22128a.m8727C0(e, C22128a.m8728C("GCM decrypt data exception: "), f7909d);
            return "";
        }
    }

    public static String decrypt(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 12 || !isBuildVersionHigherThan19()) {
            return "";
        }
        try {
            return new String(decrypt(HexUtil.hexStr2ByteArray(str), bArr, bArr2), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            String str2 = f7909d;
            StringBuilder m8728C = C22128a.m8728C("GCM decrypt data exception: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return "";
        }
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) {
        return decrypt(m37093b(bArr), bArr2, m37092c(bArr));
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length < 16 || !isBuildVersionHigherThan19()) {
            return new byte[0];
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, f7908c);
            Cipher cipher = Cipher.getInstance(f7907b);
            cipher.init(2, secretKeySpec, getGcmAlgorithmParams(bArr3));
            return cipher.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            String str = f7909d;
            StringBuilder m8728C = C22128a.m8728C("GCM decrypt data exception: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            return new byte[0];
        }
    }

    public static String decryptWithCryptHead(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16) {
            return "";
        }
        String m37101c = AesCbc.m37101c(str);
        if ("".equals(m37101c)) {
            return "";
        }
        int indexOf = m37101c.indexOf(58);
        if (indexOf >= 0) {
            return decrypt(HexUtil.byteArray2HexStr(HexUtil.hexStr2ByteArray(m37101c.substring(indexOf + 1))), bArr, HexUtil.hexStr2ByteArray(m37101c.substring(0, indexOf)));
        }
        C2480b.m37037b(f7909d, " gcm cipherText data missing colon");
        return "";
    }

    public static String decryptWithCryptHead(byte[] bArr, byte[] bArr2) {
        try {
            return new String(decryptWithCryptHeadReturnByte(bArr, bArr2), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            C2480b.m37037b(f7909d, "UnsupportedEncodingException");
            return "";
        }
    }

    public static byte[] decryptWithCryptHeadReturnByte(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr2.length < 16) {
            return new byte[0];
        }
        byte[] m37099d = AesCbc.m37099d(bArr);
        if (m37099d.length == 0) {
            return new byte[0];
        }
        int m37096a = m37096a(m37099d);
        if (m37096a < 0) {
            C2480b.m37037b(f7909d, " gcm cipherText data missing colon");
            return new byte[0];
        }
        byte[] copyOf = Arrays.copyOf(m37099d, m37096a);
        int length = (m37099d.length - copyOf.length) - 1;
        byte[] bArr3 = new byte[length];
        System.arraycopy(m37099d, m37096a + 1, bArr3, 0, length);
        return decrypt(bArr3, bArr2, copyOf);
    }

    public static String encrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !isBuildVersionHigherThan19()) {
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        if (hexStr2ByteArray.length >= 16) {
            return encrypt(str, hexStr2ByteArray);
        }
        C2480b.m37037b(f7909d, "key length is not right");
        return "";
    }

    public static String encrypt(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || !isBuildVersionHigherThan19()) {
            C2480b.m37037b(f7909d, "gcm encrypt parameter is not right");
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        byte[] hexStr2ByteArray2 = HexUtil.hexStr2ByteArray(str3);
        if (hexStr2ByteArray.length >= 16 && str3.length() >= 12) {
            return encrypt(str, hexStr2ByteArray, hexStr2ByteArray2);
        }
        C2480b.m37037b(f7909d, "key length or iv length is not right");
        return "";
    }

    public static String encrypt(String str, byte[] bArr) {
        byte[] generateSecureRandom;
        byte[] m37097a;
        return (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || !isBuildVersionHigherThan19() || (m37097a = m37097a(str, bArr, (generateSecureRandom = EncryptUtil.generateSecureRandom(12)))) == null || m37097a.length == 0) ? "" : C22128a.m8543z2(HexUtil.byteArray2HexStr(generateSecureRandom), HexUtil.byteArray2HexStr(m37097a));
    }

    public static String encrypt(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 12 || !isBuildVersionHigherThan19()) {
            C2480b.m37037b(f7909d, "gcm encrypt param is not right");
            return "";
        }
        return HexUtil.byteArray2HexStr(m37097a(str, bArr, bArr2));
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) {
        byte[] generateSecureRandom = EncryptUtil.generateSecureRandom(12);
        return m37095a(generateSecureRandom, encrypt(bArr, bArr2, generateSecureRandom));
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length < 16 || bArr3 == null || bArr3.length < 12 || !isBuildVersionHigherThan19()) {
            C2480b.m37037b(f7909d, "gcm encrypt param is not right");
            return new byte[0];
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, f7908c);
            Cipher cipher = Cipher.getInstance(f7907b);
            cipher.init(1, secretKeySpec, getGcmAlgorithmParams(bArr3));
            return cipher.doFinal(bArr);
        } catch (GeneralSecurityException e) {
            String str = f7909d;
            StringBuilder m8728C = C22128a.m8728C("GCM encrypt data error");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            return new byte[0];
        }
    }

    public static AlgorithmParameterSpec getGcmAlgorithmParams(byte[] bArr) {
        return new GCMParameterSpec(128, bArr);
    }

    public static boolean isBuildVersionHigherThan19() {
        return true;
    }
}

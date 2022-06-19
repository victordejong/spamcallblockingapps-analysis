package com.huawei.secure.android.common.encrypt.aes;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/aes/AesCbc.class */
public final class AesCbc {

    /* renamed from: a */
    private static final String f7899a = "security:";

    /* renamed from: b */
    private static final String f7900b = "AES/CBC/PKCS5Padding";

    /* renamed from: c */
    private static final String f7901c = "AES";

    /* renamed from: d */
    private static final String f7902d = "AesCbc";

    /* renamed from: e */
    private static final String f7903e = "";

    /* renamed from: f */
    private static final int f7904f = 16;

    /* renamed from: g */
    private static final int f7905g = 16;

    private AesCbc() {
    }

    /* renamed from: a */
    private static int m37105a(byte[] bArr) {
        return bArr[16] == 58 ? 16 : -1;
    }

    /* renamed from: a */
    private static String m37108a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.substring(0, 6) + str.substring(12, 16) + str.substring(26, 32) + str.substring(48);
        } catch (Exception e) {
            C22128a.m8727C0(e, C22128a.m8728C("get encryptword exception : "), f7902d);
            return "";
        }
    }

    /* renamed from: a */
    private static String m37107a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            return str2.substring(0, 6) + str.substring(0, 6) + str2.substring(6, 10) + str.substring(6, 16) + str2.substring(10, 16) + str.substring(16) + str2.substring(16);
        } catch (Exception e) {
            C22128a.m8727C0(e, C22128a.m8728C("mix exception: "), f7902d);
            return "";
        }
    }

    /* renamed from: a */
    private static byte[] m37106a(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str)) {
            C2480b.m37037b(f7902d, "cbc encrypt param is not right");
            return new byte[0];
        }
        try {
            return encrypt(str.getBytes(StringConstant.UTF8), bArr, bArr2);
        } catch (UnsupportedEncodingException e) {
            String str2 = f7902d;
            StringBuilder m8728C = C22128a.m8728C(" cbc encrypt data error");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return new byte[0];
        }
    }

    /* renamed from: a */
    private static byte[] m37104a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: b */
    private static String m37103b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return str.substring(6, 12) + str.substring(16, 26) + str.substring(32, 48);
        } catch (Exception e) {
            C22128a.m8727C0(e, C22128a.m8728C("getIv exception : "), f7902d);
            return "";
        }
    }

    /* renamed from: b */
    private static byte[] m37102b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length - 16];
        System.arraycopy(bArr, 16, bArr2, 0, bArr.length - 16);
        return bArr2;
    }

    /* renamed from: c */
    public static String m37101c(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.indexOf(f7899a) == -1 ? "" : str.substring(9);
    }

    /* renamed from: c */
    private static byte[] m37100c(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, 0, 16);
        return bArr2;
    }

    /* renamed from: d */
    public static byte[] m37099d(byte[] bArr) {
        String str;
        try {
            str = new String(bArr, StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            String str2 = f7902d;
            StringBuilder m8728C = C22128a.m8728C("stripCryptHead: exception : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            str = "";
        }
        if (!str.startsWith(f7899a)) {
            return new byte[0];
        }
        if (bArr.length <= 9) {
            return new byte[0];
        }
        int length = bArr.length - 9;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 9, bArr2, 0, length);
        return bArr2;
    }

    public static String decrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7902d, "content or key is null");
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        if (hexStr2ByteArray.length >= 16) {
            return decrypt(str, hexStr2ByteArray);
        }
        C2480b.m37037b(f7902d, "key length is not right");
        return "";
    }

    public static String decrypt(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            C2480b.m37037b(f7902d, "cbc decrypt param is not right");
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        byte[] hexStr2ByteArray2 = HexUtil.hexStr2ByteArray(str3);
        if (hexStr2ByteArray.length >= 16 && hexStr2ByteArray2.length >= 16) {
            return decrypt(str, hexStr2ByteArray, hexStr2ByteArray2);
        }
        C2480b.m37037b(f7902d, "key length or ivParameter is not right");
        return "";
    }

    public static String decrypt(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16) {
            return "";
        }
        String m37103b = m37103b(str);
        String m37108a = m37108a(str);
        if (!TextUtils.isEmpty(m37103b) && !TextUtils.isEmpty(m37108a)) {
            return decrypt(m37108a, bArr, HexUtil.hexStr2ByteArray(m37103b));
        }
        C2480b.m37037b(f7902d, "ivParameter or encrypedWord is null");
        return "";
    }

    public static String decrypt(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 16) {
            C2480b.m37037b(f7902d, "cbc decrypt param is not right");
            return "";
        }
        try {
            return new String(decrypt(HexUtil.hexStr2ByteArray(str), bArr, bArr2), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            String str2 = f7902d;
            StringBuilder m8728C = C22128a.m8728C(" cbc decrypt data error");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return "";
        }
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) {
        return decrypt(m37102b(bArr), bArr2, m37100c(bArr));
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length < 16 || bArr3 == null || bArr3.length < 16) {
            C2480b.m37037b(f7902d, "cbc decrypt param is not right");
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, f7901c);
        try {
            Cipher cipher = Cipher.getInstance(f7900b);
            cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e) {
            String str = f7902d;
            StringBuilder m8728C = C22128a.m8728C("InvalidAlgorithmParameterException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            return new byte[0];
        } catch (InvalidKeyException e2) {
            String str2 = f7902d;
            StringBuilder m8728C2 = C22128a.m8728C("InvalidKeyException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str2, m8728C2.toString());
            return new byte[0];
        } catch (NoSuchAlgorithmException e3) {
            String str3 = f7902d;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str3, m8728C3.toString());
            return new byte[0];
        } catch (BadPaddingException e4) {
            String str4 = f7902d;
            StringBuilder m8728C4 = C22128a.m8728C("BadPaddingException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str4, m8728C4.toString());
            return new byte[0];
        } catch (IllegalBlockSizeException e5) {
            String str5 = f7902d;
            StringBuilder m8728C5 = C22128a.m8728C("IllegalBlockSizeException: ");
            m8728C5.append(e5.getMessage());
            C2480b.m37037b(str5, m8728C5.toString());
            return new byte[0];
        } catch (NoSuchPaddingException e6) {
            String str6 = f7902d;
            StringBuilder m8728C6 = C22128a.m8728C("NoSuchPaddingException: ");
            m8728C6.append(e6.getMessage());
            C2480b.m37037b(str6, m8728C6.toString());
            return new byte[0];
        }
    }

    public static String decryptWithCryptHead(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16) {
            return "";
        }
        String m37101c = m37101c(str);
        if ("".equals(m37101c)) {
            return "";
        }
        int indexOf = m37101c.indexOf(58);
        if (indexOf >= 0) {
            return decrypt(HexUtil.byteArray2HexStr(HexUtil.hexStr2ByteArray(m37101c.substring(indexOf + 1))), bArr, HexUtil.hexStr2ByteArray(m37101c.substring(0, indexOf)));
        }
        C2480b.m37037b(f7902d, " cbc cipherText data missing colon");
        return "";
    }

    public static String decryptWithCryptHead(byte[] bArr, byte[] bArr2) {
        try {
            return new String(decryptWithCryptHeadReturnByte(bArr, bArr2), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            C2480b.m37037b(f7902d, "decryptWithCryptHead UnsupportedEncodingException ");
            return "";
        }
    }

    public static byte[] decryptWithCryptHeadReturnByte(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr2.length < 16) {
            return new byte[0];
        }
        byte[] m37099d = m37099d(bArr);
        if (m37099d.length == 0) {
            return new byte[0];
        }
        int m37105a = m37105a(m37099d);
        if (m37105a < 0) {
            C2480b.m37037b(f7902d, " cbc cipherText data missing colon");
            return new byte[0];
        }
        byte[] copyOf = Arrays.copyOf(m37099d, m37105a);
        int length = (m37099d.length - copyOf.length) - 1;
        byte[] bArr3 = new byte[length];
        System.arraycopy(m37099d, m37105a + 1, bArr3, 0, length);
        return decrypt(bArr3, bArr2, copyOf);
    }

    public static String encrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7902d, "cbc encrypt param is not right");
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        if (hexStr2ByteArray.length >= 16) {
            return encrypt(str, hexStr2ByteArray);
        }
        C2480b.m37037b(f7902d, "key length is not right");
        return "";
    }

    public static String encrypt(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            C2480b.m37037b(f7902d, "cbc encrypt param is not right");
            return "";
        }
        byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str2);
        byte[] hexStr2ByteArray2 = HexUtil.hexStr2ByteArray(str3);
        if (hexStr2ByteArray.length >= 16 && hexStr2ByteArray2.length >= 16) {
            return encrypt(str, hexStr2ByteArray, hexStr2ByteArray2);
        }
        C2480b.m37037b(f7902d, "key length or ivParameter length is not right");
        return "";
    }

    public static String encrypt(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16) {
            C2480b.m37037b(f7902d, "cbc encrypt param is not right");
            return "";
        }
        byte[] generateSecureRandom = EncryptUtil.generateSecureRandom(16);
        byte[] m37106a = m37106a(str, bArr, generateSecureRandom);
        return (m37106a == null || m37106a.length == 0) ? "" : m37107a(HexUtil.byteArray2HexStr(generateSecureRandom), HexUtil.byteArray2HexStr(m37106a));
    }

    public static String encrypt(String str, byte[] bArr, byte[] bArr2) {
        if (TextUtils.isEmpty(str) || bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 16) {
            C2480b.m37037b(f7902d, "cbc encrypt param is not right");
            return "";
        }
        return HexUtil.byteArray2HexStr(m37106a(str, bArr, bArr2));
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) {
        byte[] generateSecureRandom = EncryptUtil.generateSecureRandom(16);
        return m37104a(generateSecureRandom, encrypt(bArr, bArr2, generateSecureRandom));
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr.length == 0 || bArr2 == null || bArr2.length < 16 || bArr3 == null || bArr3.length < 16) {
            C2480b.m37037b(f7902d, "cbc encrypt param is not right");
            return new byte[0];
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, f7901c);
        try {
            Cipher cipher = Cipher.getInstance(f7900b);
            cipher.init(1, secretKeySpec, new IvParameterSpec(bArr3));
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e) {
            String str = f7902d;
            StringBuilder m8728C = C22128a.m8728C("InvalidAlgorithmParameterException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            return new byte[0];
        } catch (InvalidKeyException e2) {
            String str2 = f7902d;
            StringBuilder m8728C2 = C22128a.m8728C("InvalidKeyException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str2, m8728C2.toString());
            return new byte[0];
        } catch (NoSuchAlgorithmException e3) {
            String str3 = f7902d;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str3, m8728C3.toString());
            return new byte[0];
        } catch (BadPaddingException e4) {
            String str4 = f7902d;
            StringBuilder m8728C4 = C22128a.m8728C("BadPaddingException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str4, m8728C4.toString());
            return new byte[0];
        } catch (IllegalBlockSizeException e5) {
            String str5 = f7902d;
            StringBuilder m8728C5 = C22128a.m8728C("IllegalBlockSizeException: ");
            m8728C5.append(e5.getMessage());
            C2480b.m37037b(str5, m8728C5.toString());
            return new byte[0];
        } catch (NoSuchPaddingException e6) {
            String str6 = f7902d;
            StringBuilder m8728C6 = C22128a.m8728C("NoSuchPaddingException: ");
            m8728C6.append(e6.getMessage());
            C2480b.m37037b(str6, m8728C6.toString());
            return new byte[0];
        }
    }
}

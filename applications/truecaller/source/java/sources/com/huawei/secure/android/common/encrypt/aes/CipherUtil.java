package com.huawei.secure.android.common.encrypt.aes;

import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import java.security.GeneralSecurityException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/aes/CipherUtil.class */
public class CipherUtil {

    /* renamed from: a */
    private static final String f7914a = "CipherUtil";

    /* renamed from: b */
    private static final String f7915b = "AES/GCM/NoPadding";

    /* renamed from: c */
    private static final String f7916c = "AES/CBC/PKCS5Padding";

    /* renamed from: d */
    private static final String f7917d = "AES";

    /* renamed from: e */
    private static final String f7918e = "";

    /* renamed from: f */
    private static final int f7919f = 16;

    /* renamed from: g */
    private static final int f7920g = 12;

    /* renamed from: h */
    private static final int f7921h = 16;

    /* renamed from: a */
    private static int m37091a(Cipher cipher, byte[] bArr) {
        if (cipher == null || bArr == null) {
            return -1;
        }
        return cipher.getOutputSize(bArr.length);
    }

    /* renamed from: a */
    private static Cipher m37090a(byte[] bArr, byte[] bArr2, int i) {
        return m37089a(bArr, bArr2, i, f7916c);
    }

    /* renamed from: a */
    private static Cipher m37089a(byte[] bArr, byte[] bArr2, int i, String str) {
        if (bArr == null || bArr.length < 16 || bArr2 == null || bArr2.length < 12 || !AesGcm.isBuildVersionHigherThan19()) {
            C2480b.m37037b(f7914a, "gcm encrypt param is not right");
            return null;
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, f7917d);
            Cipher cipher = Cipher.getInstance(str);
            cipher.init(i, secretKeySpec, f7915b.equals(str) ? AesGcm.getGcmAlgorithmParams(bArr2) : new IvParameterSpec(bArr2));
            return cipher;
        } catch (GeneralSecurityException e) {
            StringBuilder m8728C = C22128a.m8728C("GCM encrypt data error");
            m8728C.append(e.getMessage());
            C2480b.m37037b(f7914a, m8728C.toString());
            return null;
        }
    }

    /* renamed from: b */
    private static Cipher m37088b(byte[] bArr, byte[] bArr2, int i) {
        return m37089a(bArr, bArr2, i, f7915b);
    }

    public static Cipher getAesCbcDecryptCipher(byte[] bArr, Cipher cipher) {
        return getAesCbcDecryptCipher(bArr, cipher.getIV());
    }

    public static Cipher getAesCbcDecryptCipher(byte[] bArr, byte[] bArr2) {
        return m37090a(bArr, bArr2, 2);
    }

    public static Cipher getAesCbcEncryptCipher(byte[] bArr) {
        return getAesCbcEncryptCipher(bArr, EncryptUtil.generateSecureRandom(16));
    }

    public static Cipher getAesCbcEncryptCipher(byte[] bArr, byte[] bArr2) {
        return m37090a(bArr, bArr2, 1);
    }

    public static int getAesCbcEncryptContentLen(byte[] bArr, byte[] bArr2) {
        return getAesCbcEncryptContentLen(bArr, bArr2, EncryptUtil.generateSecureRandom(16));
    }

    public static int getAesCbcEncryptContentLen(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return m37091a(getAesCbcEncryptCipher(bArr2, bArr3), bArr);
    }

    public static Cipher getAesGcmDecryptCipher(byte[] bArr, Cipher cipher) {
        return getAesGcmDecryptCipher(bArr, cipher.getIV());
    }

    public static Cipher getAesGcmDecryptCipher(byte[] bArr, byte[] bArr2) {
        return m37088b(bArr, bArr2, 2);
    }

    public static Cipher getAesGcmEncryptCipher(byte[] bArr) {
        byte[] generateSecureRandom = EncryptUtil.generateSecureRandom(12);
        StringBuilder m8728C = C22128a.m8728C("getEncryptCipher: iv is : ");
        m8728C.append(HexUtil.byteArray2HexStr(generateSecureRandom));
        C2480b.m37039a(f7914a, m8728C.toString());
        return getAesGcmEncryptCipher(bArr, generateSecureRandom);
    }

    public static Cipher getAesGcmEncryptCipher(byte[] bArr, byte[] bArr2) {
        return m37088b(bArr, bArr2, 1);
    }

    public static int getAesGcmEncryptContentLen(byte[] bArr, byte[] bArr2) {
        return getAesGcmEncryptContentLen(bArr, bArr2, EncryptUtil.generateSecureRandom(12));
    }

    public static int getAesGcmEncryptContentLen(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return m37091a(getAesGcmEncryptCipher(bArr2, bArr3), bArr);
    }

    public static int getContent(Cipher cipher, byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        if (cipher == null || bArr == null) {
            C2480b.m37037b(f7914a, "getEncryptCOntent: cipher is null or content is null");
            return -1;
        }
        return cipher.doFinal(bArr, i, i2, bArr2, i3);
    }

    public static int getContent(Cipher cipher, byte[] bArr, byte[] bArr2) {
        if (cipher == null || bArr == null) {
            C2480b.m37037b(f7914a, "getEncryptCOntent: cipher is null or content is null");
            return -1;
        }
        try {
            return cipher.doFinal(bArr, 0, bArr.length, bArr2);
        } catch (BadPaddingException e) {
            C2480b.m37037b(f7914a, "getContent: BadPaddingException");
            return -1;
        } catch (IllegalBlockSizeException e2) {
            C2480b.m37037b(f7914a, "getContent: IllegalBlockSizeException");
            return -1;
        } catch (ShortBufferException e3) {
            C2480b.m37037b(f7914a, "getContent: ShortBufferException");
            return -1;
        }
    }

    public static byte[] getContent(Cipher cipher, byte[] bArr) {
        if (cipher == null || bArr == null) {
            C2480b.m37037b(f7914a, "getEncryptCOntent: cipher is null or content is null");
            return new byte[0];
        }
        try {
            return cipher.doFinal(bArr, 0, bArr.length);
        } catch (BadPaddingException e) {
            C2480b.m37037b(f7914a, "getContent: BadPaddingException");
            return new byte[0];
        } catch (IllegalBlockSizeException e2) {
            C2480b.m37037b(f7914a, "getContent: IllegalBlockSizeException");
            return new byte[0];
        }
    }
}

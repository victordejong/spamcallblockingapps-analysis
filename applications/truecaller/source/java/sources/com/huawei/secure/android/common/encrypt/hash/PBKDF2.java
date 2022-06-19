package com.huawei.secure.android.common.encrypt.hash;

import android.os.Build;
import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.EncryptUtil;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/hash/PBKDF2.class */
public abstract class PBKDF2 {

    /* renamed from: a */
    private static final String f7931a = "PBKDF2";

    /* renamed from: b */
    private static final String f7932b = "PBKDF2WithHmacSHA1";

    /* renamed from: c */
    private static final String f7933c = "PBKDF2WithHmacSHA256";

    /* renamed from: d */
    private static final String f7934d = "";

    /* renamed from: e */
    private static final int f7935e = 8;

    /* renamed from: f */
    private static final int f7936f = 16;

    /* renamed from: g */
    private static final int f7937g = 32;

    /* renamed from: h */
    private static final int f7938h = 10000;

    /* renamed from: i */
    private static final int f7939i = 1000;

    /* renamed from: a */
    private static boolean m37085a(byte[] bArr, byte[] bArr2) {
        boolean z = false;
        if (bArr != null) {
            if (bArr2 == null) {
                z = false;
            } else {
                int length = bArr.length ^ bArr2.length;
                for (int i = 0; i < bArr.length && i < bArr2.length; i++) {
                    length |= bArr[i] ^ bArr2[i];
                }
                z = false;
                if (length == 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private static byte[] m37084a(char[] cArr, byte[] bArr, int i, int i2, boolean z) {
        try {
            return (z ? SecretKeyFactory.getInstance(f7933c) : SecretKeyFactory.getInstance(f7932b)).generateSecret(new PBEKeySpec(cArr, bArr, i, i2)).getEncoded();
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            String str = f7931a;
            StringBuilder m8728C = C22128a.m8728C("pbkdf exception : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str, m8728C.toString());
            return new byte[0];
        }
    }

    public static byte[] pbkdf2(char[] cArr, byte[] bArr, int i, int i2) {
        return m37084a(cArr, bArr, i, i2, false);
    }

    @Deprecated
    public static String pbkdf2Encrypt(String str) {
        return pbkdf2Encrypt(str, 10000);
    }

    @Deprecated
    public static String pbkdf2Encrypt(String str, int i) {
        return pbkdf2Encrypt(str, EncryptUtil.generateSecureRandom(8), i, 32);
    }

    @Deprecated
    public static String pbkdf2Encrypt(String str, byte[] bArr, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            C2480b.m37037b(f7931a, "pwd is null.");
            return "";
        } else if (i < 1000) {
            C2480b.m37037b(f7931a, "iterations times is not enough.");
            return "";
        } else if (bArr == null || bArr.length < 8) {
            C2480b.m37037b(f7931a, "salt parameter is null or length is not enough");
            return "";
        } else if (i2 < 32) {
            C2480b.m37037b(f7931a, "cipherLen length is not enough");
            return "";
        } else {
            byte[] pbkdf2 = pbkdf2(str.toCharArray(), bArr, i, i2 * 8);
            return HexUtil.byteArray2HexStr(bArr) + HexUtil.byteArray2HexStr(pbkdf2);
        }
    }

    public static String pbkdf2EncryptNew(String str) {
        return pbkdf2EncryptNew(str, 10000);
    }

    public static String pbkdf2EncryptNew(String str, int i) {
        return pbkdf2EncryptNew(str, EncryptUtil.generateSecureRandom(16), i, 32);
    }

    public static String pbkdf2EncryptNew(String str, byte[] bArr, int i, int i2) {
        byte[] bArr2;
        if (TextUtils.isEmpty(str)) {
            C2480b.m37037b(f7931a, "pwd is null.");
            return "";
        } else if (i < 1000) {
            C2480b.m37037b(f7931a, "iterations times is not enough.");
            return "";
        } else if (bArr == null || bArr.length < 16) {
            C2480b.m37037b(f7931a, "salt parameter is null or length is not enough");
            return "";
        } else if (i2 < 32) {
            C2480b.m37037b(f7931a, "cipherLen length is not enough");
            return "";
        } else {
            if (Build.VERSION.SDK_INT < 26) {
                C2480b.m37036c(f7931a, "sha 1");
                bArr2 = pbkdf2(str.toCharArray(), bArr, i, i2 * 8);
            } else {
                C2480b.m37036c(f7931a, "sha 256");
                bArr2 = pbkdf2SHA256(str.toCharArray(), bArr, i, i2 * 8);
            }
            return HexUtil.byteArray2HexStr(bArr) + HexUtil.byteArray2HexStr(bArr2);
        }
    }

    public static byte[] pbkdf2SHA256(char[] cArr, byte[] bArr, int i, int i2) {
        if (Build.VERSION.SDK_INT < 26) {
            C2480b.m37037b(f7931a, "system version not high than 26");
            return new byte[0];
        }
        return m37084a(cArr, bArr, i, i2, true);
    }

    @Deprecated
    public static boolean validatePassword(String str, String str2) {
        return validatePassword(str, str2, 10000);
    }

    @Deprecated
    public static boolean validatePassword(String str, String str2, int i) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str2.length() < 16) {
            return false;
        }
        return m37085a(pbkdf2(str.toCharArray(), HexUtil.hexStr2ByteArray(str2.substring(0, 16)), i, 256), HexUtil.hexStr2ByteArray(str2.substring(16)));
    }

    public static boolean validatePasswordNew(String str, String str2) {
        return validatePasswordNew(str, str2, 10000);
    }

    public static boolean validatePasswordNew(String str, String str2, int i) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str2.length() < 32) {
            return false;
        }
        String substring = str2.substring(0, 32);
        return m37085a(Build.VERSION.SDK_INT < 26 ? pbkdf2(str.toCharArray(), HexUtil.hexStr2ByteArray(substring), i, 256) : pbkdf2SHA256(str.toCharArray(), HexUtil.hexStr2ByteArray(substring), i, 256), HexUtil.hexStr2ByteArray(str2.substring(32)));
    }
}

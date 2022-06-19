package com.huawei.agconnect.config.p076a;

import com.mopub.mobileads.AdData;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.Objects;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.huawei.agconnect.config.a.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/config/a/g.class */
public class C2210g {
    /* renamed from: a */
    public static SecretKey m38279a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) throws NoSuchAlgorithmException, InvalidKeySpecException {
        if (bArr.length == 16 && bArr2.length == 16 && bArr3.length == 16) {
            return new SecretKeySpec(SecretKeyFactory.getInstance("PBKDF2WithHmacSHA1").generateSecret(new PBEKeySpec(C2209e.m38284a(m38280a(bArr, bArr2, bArr3)).toCharArray(), bArr4, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS, 128)).getEncoded(), "AES");
        }
        throw new IllegalArgumentException("invalid data for generating the key.");
    }

    /* renamed from: a */
    private static byte[] m38282a(byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "bytes must not be null.");
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (i < 0) {
                bArr[i2] = (byte) (bArr[i2] << (-i));
            } else {
                bArr[i2] = (byte) (bArr[i2] >> i);
            }
        }
        return bArr;
    }

    /* renamed from: a */
    private static byte[] m38281a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            throw new NullPointerException("left or right must not be null.");
        }
        if (bArr.length != bArr2.length) {
            throw new IllegalArgumentException("left and right must be the same length.");
        }
        byte[] bArr3 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr3[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
        return bArr3;
    }

    /* renamed from: a */
    public static byte[] m38280a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return m38281a(m38282a(m38281a(m38282a(bArr, -4), bArr2), 6), bArr3);
    }
}

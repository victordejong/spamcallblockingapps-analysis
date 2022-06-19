package com.razorpay;

import android.util.Base64;
import com.tenor.android.core.constant.StringConstant;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CryptLib.class */
public final class CryptLib {

    /* renamed from: a */
    private Cipher f9359a = Cipher.getInstance("AES/CBC/PKCS5Padding");

    /* renamed from: b */
    private byte[] f9360b = new byte[32];

    /* renamed from: c */
    private byte[] f9361c = new byte[16];

    /* loaded from: classes3-dex2jar.jar:com/razorpay/CryptLib$EncryptMode.class */
    public enum EncryptMode {
        ENCRYPT,
        DECRYPT
    }

    /* renamed from: a */
    private String m36133a(String str, String str2, EncryptMode encryptMode, String str3) {
        String str4;
        int length = str2.getBytes(StringConstant.UTF8).length;
        int length2 = str2.getBytes(StringConstant.UTF8).length;
        byte[] bArr = this.f9360b;
        if (length2 > bArr.length) {
            length = bArr.length;
        }
        int length3 = str3.getBytes(StringConstant.UTF8).length;
        int length4 = str3.getBytes(StringConstant.UTF8).length;
        byte[] bArr2 = this.f9361c;
        if (length4 > bArr2.length) {
            length3 = bArr2.length;
        }
        System.arraycopy(str2.getBytes(StringConstant.UTF8), 0, this.f9360b, 0, length);
        System.arraycopy(str3.getBytes(StringConstant.UTF8), 0, this.f9361c, 0, length3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f9360b, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(this.f9361c);
        if (encryptMode.equals(EncryptMode.ENCRYPT)) {
            this.f9359a.init(1, secretKeySpec, ivParameterSpec);
            str4 = Base64.encodeToString(this.f9359a.doFinal(str.getBytes(StringConstant.UTF8)), 2);
        } else {
            str4 = "";
        }
        if (encryptMode.equals(EncryptMode.DECRYPT)) {
            this.f9359a.init(2, secretKeySpec, ivParameterSpec);
            str4 = new String(this.f9359a.doFinal(Base64.decode(str.getBytes(), 2)));
        }
        return str4;
    }

    /* renamed from: a */
    public final String m36132a(String str, String str2, String str3) {
        return m36133a(str, str2, EncryptMode.ENCRYPT, str3);
    }

    /* renamed from: b */
    public final String m36131b(String str, String str2, String str3) {
        return m36133a(str, str2, EncryptMode.DECRYPT, str3);
    }
}

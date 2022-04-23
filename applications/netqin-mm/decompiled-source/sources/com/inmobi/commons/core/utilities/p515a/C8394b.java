package com.inmobi.commons.core.utilities.p515a;

import android.util.Base64;
import com.android.volley.Request;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.inmobi.commons.core.utilities.a.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/a/b.class */
public class C8394b {

    /* renamed from: a */
    public static final String f32644a = "b";

    /* renamed from: b */
    public static String f32645b = "AES";

    /* renamed from: c */
    public static String f32646c = "AES/CBC/PKCS7Padding";

    /* renamed from: d */
    public static byte[] f32647d;

    /* renamed from: a */
    public static String m5710a(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, String str2, String str3) {
        try {
            byte[] b = m5703b(str.getBytes(Request.DEFAULT_PARAMS_ENCODING), bArr, bArr2);
            byte[] b2 = m5704b(b, bArr3);
            byte[] a = m5709a(b);
            byte[] a2 = m5709a(b2);
            return new String(Base64.encode(m5707a(m5709a(m5708a(m5707a(m5707a(m5709a(bArr), m5709a(bArr3)), m5709a(bArr2)), str3, str2)), m5707a(a, a2)), 8));
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in generating secret message; ").append(e.getMessage());
            return null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:15:0x0072). Please submit an issue!!! */
    /* renamed from: a */
    public static byte[] m5712a() {
        byte[] bArr;
        synchronized (C8394b.class) {
            try {
                C8393a aVar = new C8393a();
                try {
                    if ((System.currentTimeMillis() / 1000) - aVar.f32643a.m5798b("last_generated_ts", 0L) > 86400) {
                        byte[] b = m5705b();
                        f32647d = b;
                        aVar.m5713a(Base64.encodeToString(b, 0));
                    } else if (f32647d == null) {
                        try {
                            f32647d = Base64.decode(aVar.f32643a.m5796c("aes_public_key"), 0);
                        } catch (IllegalArgumentException e) {
                            byte[] b2 = m5705b();
                            f32647d = b2;
                            aVar.m5713a(Base64.encodeToString(b2, 0));
                        }
                    }
                } catch (Exception e2) {
                }
                bArr = f32647d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m5711a(int i) {
        byte[] bArr = new byte[i];
        try {
            new SecureRandom().nextBytes(bArr);
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in generating crypto key; ").append(e.getMessage());
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m5709a(byte[] bArr) {
        long length = bArr.length;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putLong(length);
        byte[] array = allocate.array();
        byte[] bArr2 = new byte[array.length + bArr.length];
        System.arraycopy(array, 0, bArr2, 0, array.length);
        System.arraycopy(bArr, 0, bArr2, array.length, bArr.length);
        return bArr2;
    }

    /* renamed from: a */
    public static byte[] m5708a(byte[] bArr, String str, String str2) {
        byte[] bArr2;
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(str2, 16), new BigInteger(str, 16)));
            Cipher instance = Cipher.getInstance("RSA/ECB/nopadding");
            instance.init(1, rSAPublicKey);
            bArr2 = instance.doFinal(bArr);
        } catch (Throwable th) {
            new StringBuilder("SDK encountered unexpected error in getting encrypted RSA bytes; ").append(th.getMessage());
            bArr2 = null;
        }
        return bArr2;
    }

    /* renamed from: a */
    public static byte[] m5707a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: a */
    public static byte[] m5706a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4;
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, f32645b);
        try {
            Cipher instance = Cipher.getInstance(f32646c);
            instance.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            bArr4 = instance.doFinal(bArr);
        } catch (Throwable th) {
            new StringBuilder("SDK encountered unexpected error in decrypting AES response; ").append(th.getMessage());
            bArr4 = null;
        }
        return bArr4;
    }

    /* renamed from: b */
    public static byte[] m5705b() {
        try {
            KeyGenerator instance = KeyGenerator.getInstance("AES");
            instance.init(128, new SecureRandom());
            SecretKey generateKey = instance.generateKey();
            if (generateKey != null) {
                return generateKey.getEncoded();
            }
            return null;
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in generating AES public key; ").append(e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public static byte[] m5704b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, 0, bArr2.length, "HmacSHA1");
        try {
            Mac instance = Mac.getInstance("HmacSHA1");
            instance.init(secretKeySpec);
            bArr3 = instance.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            bArr3 = null;
        }
        return bArr3;
    }

    /* renamed from: b */
    public static byte[] m5703b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4;
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, f32645b);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        try {
            Cipher instance = Cipher.getInstance(f32646c);
            instance.init(1, secretKeySpec, ivParameterSpec);
            instance.init(1, secretKeySpec, ivParameterSpec);
            instance.init(1, secretKeySpec, ivParameterSpec);
            bArr4 = instance.doFinal(bArr);
        } catch (Throwable th) {
            new StringBuilder("SDK encountered unexpected error in getting encrypted AES bytes; ").append(th.getMessage());
            bArr4 = null;
        }
        return bArr4;
    }
}

package p081h.p160h.p179e.p180a.p190p;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.gogolook.whoscallsdk.core.utils.JniLibUtils;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: h.h.e.a.p.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/p/a.class */
public class C6428a {
    static {
        new C6439j(10);
    }

    /* renamed from: a */
    public static String m22654a(String str, String str2) {
        try {
            byte[] a = m22653a(str, C6432e.m22590d(str2));
            if (a == null) {
                return null;
            }
            return new String(a);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("decrypt : ");
            if (!TextUtils.isEmpty(str)) {
                sb.append("key = " + str);
            }
            if (!TextUtils.isEmpty(str2)) {
                sb.append(", data = " + str2);
            }
            C6432e.m22605a(e.getMessage(), sb.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m22655a(String str) throws Exception {
        return C6430c.m22643a(str, 256);
    }

    /* renamed from: a */
    public static byte[] m22653a(String str, byte[] bArr) {
        byte[] bArr2 = null;
        if (str != null) {
            if (str.length() <= 0) {
                bArr2 = null;
            } else {
                bArr2 = null;
                if (bArr != null) {
                    if (bArr.length <= 0) {
                        bArr2 = null;
                    } else {
                        try {
                            byte[] a = m22655a(str);
                            bArr2 = null;
                            if (a != null) {
                                bArr2 = m22652a(a, bArr);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            bArr2 = null;
                        }
                    }
                }
            }
        }
        return bArr2;
    }

    /* renamed from: a */
    public static byte[] m22652a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(JniLibUtils.m32218a(instance.getBlockSize())));
            bArr3 = instance.doFinal(bArr2);
        } catch (Exception e) {
            bArr3 = null;
        }
        return bArr3;
    }

    /* renamed from: b */
    public static String m22651b(String str, String str2) {
        return C6432e.m22597b(m22650b(str, !TextUtils.isEmpty(str2) ? str2.getBytes() : null));
    }

    /* renamed from: b */
    public static byte[] m22650b(String str, byte[] bArr) {
        byte[] bArr2;
        try {
            byte[] a = m22655a(str);
            bArr2 = null;
            if (a != null) {
                bArr2 = m22649b(a, bArr);
            }
        } catch (Exception e) {
            e.printStackTrace();
            bArr2 = null;
        }
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m22649b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, secretKeySpec, new IvParameterSpec(JniLibUtils.m32218a(instance.getBlockSize())));
            bArr3 = instance.doFinal(bArr2);
        } catch (Exception e) {
            e.printStackTrace();
            bArr3 = null;
        }
        return bArr3;
    }

    /* renamed from: c */
    public static String m22648c(@NonNull String str, @NonNull String str2) {
        byte[] bArr;
        try {
            byte[] d = C6432e.m22590d(str);
            SecretKeySpec secretKeySpec = new SecretKeySpec(d, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            byte[] bArr2 = new byte[instance.getBlockSize()];
            for (int i = 0; i < instance.getBlockSize(); i++) {
                bArr2[i] = (byte) ((d[i] ^ d[instance.getBlockSize() + i]) & 255);
            }
            instance.init(1, secretKeySpec, new IvParameterSpec(bArr2));
            bArr = instance.doFinal(str2.getBytes("UTF-8"));
        } catch (Exception e) {
            C6438i.m22583a(e);
            bArr = null;
        }
        return C6432e.m22597b(bArr);
    }
}

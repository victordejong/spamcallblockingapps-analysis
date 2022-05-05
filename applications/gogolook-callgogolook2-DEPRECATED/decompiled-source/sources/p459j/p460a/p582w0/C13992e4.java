package p459j.p460a.p582w0;

import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: j.a.w0.e4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/e4.class */
public class C13992e4 {
    /* renamed from: a */
    public static String m2924a(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            char[] cArr2 = new char[32];
            int i = 0;
            for (int i2 = 0; i2 < 16; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i3 + 1;
                cArr2[i3] = cArr[b & 15];
            }
            str = new String(cArr2);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        return str;
    }

    /* renamed from: a */
    public static byte[] m2923a(byte[] bArr, byte[] bArr2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            instance.init(2, secretKeySpec);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: b */
    public static String m2922b(String str) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            char[] cArr2 = new char[16];
            int i = 0;
            for (int i2 = 0; i2 < 8; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i3 + 1;
                cArr2[i3] = cArr[b & 15];
            }
            str = new String(cArr2);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        String str2 = str;
        if (str.length() > 16) {
            str2 = str.substring(0, 16);
        }
        return str2;
    }

    /* renamed from: b */
    public static byte[] m2921b(byte[] bArr, byte[] bArr2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            instance.init(1, secretKeySpec);
            return instance.doFinal(bArr);
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }
}

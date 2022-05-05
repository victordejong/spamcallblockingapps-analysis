package p081h.p451q.p455d;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
/* renamed from: h.q.d.b */
/* loaded from: classes2-dex2jar.jar:h/q/d/b.class */
public class C10860b {
    /* renamed from: a */
    public static String m10396a(String str) {
        return C10862d.m10390b(str) ? m10394a(m10395a("SHA-1", str)) : "";
    }

    /* renamed from: a */
    public static String m10394a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static byte[] m10395a(String str, String str2) {
        if (!C10862d.m10390b(str) || !C10862d.m10390b(str2)) {
            return new byte[0];
        }
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            instance.update(str2.getBytes());
            return instance.digest();
        } catch (NoSuchAlgorithmException e) {
            return new byte[0];
        }
    }
}

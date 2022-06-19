package p106g8;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import p095f8.C2779g;
import p233s6.C4316k;
/* renamed from: g8.d */
/* loaded from: classes2-dex2jar.jar:g8/d.class */
public class C2914d {

    /* renamed from: a */
    public static final String[] f9817a = {"YjxpVpvsT+vo+EjYegRxjmhMSLDdhEETYTCHnRerEeIMEIbC+9FRWtZ7iTXw6GzP", "koI9jipXd3yr4AtYs05vjWhMSLDdhEETYTCHnRerEeIMEIbC+9FRWtZ7iTXw6GzP", "XivzRrUivJVa4dmA6Pvh14J93Gh1kuTiEvUSXIOxPE8htqeRrrnE1BXCNTf0ra8D"};

    /* renamed from: b */
    public static final Long f9818b = 2592000000L;

    /* renamed from: a */
    public static byte[] m2855a(byte[] bArr) throws IOException {
        GZIPOutputStream gZIPOutputStream;
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr, 0, bArr.length);
                gZIPOutputStream.finish();
                try {
                    gZIPOutputStream.flush();
                } catch (Exception e) {
                }
                byteArrayOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                if (gZIPOutputStream != null) {
                    gZIPOutputStream.close();
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            gZIPOutputStream = null;
        }
    }

    /* renamed from: b */
    public static byte[] m2854b(String str, String str2) {
        byte[] bArr;
        byte[] bArr2;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(1, secretKeySpec);
            bArr = cipher.doFinal(str2.getBytes());
        } catch (Exception e) {
            bArr = null;
        }
        try {
            bArr2 = m2855a(bArr);
        } catch (IOException e2) {
            e2.printStackTrace();
            bArr2 = null;
        }
        return bArr2;
    }

    /* renamed from: c */
    public static C4316k m2853c(String str, String str2, String str3) {
        String m3110e = C2779g.m3110e(str, str3);
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put(str2, c4316k.m1109e(m3110e));
        return c4316k;
    }
}

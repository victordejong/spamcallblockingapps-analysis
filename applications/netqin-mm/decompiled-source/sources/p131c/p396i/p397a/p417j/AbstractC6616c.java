package p131c.p396i.p397a.p417j;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: c.i.a.j.c */
/* loaded from: classes2-dex2jar.jar:c/i/a/j/c.class */
public abstract class AbstractC6616c {
    /* renamed from: a */
    public static void m20361a(InputStream inputStream, OutputStream outputStream) {
        Throwable th;
        Exception e;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        GZIPOutputStream gZIPOutputStream3 = null;
        try {
            try {
                try {
                    gZIPOutputStream3 = null;
                    gZIPOutputStream = new GZIPOutputStream(outputStream);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr, 0, 1024);
                    if (read == -1) {
                        break;
                    }
                    gZIPOutputStream.write(bArr, 0, read);
                }
                gZIPOutputStream.flush();
                gZIPOutputStream.close();
            } catch (Exception e3) {
                e = e3;
                gZIPOutputStream2 = gZIPOutputStream;
                gZIPOutputStream3 = gZIPOutputStream2;
                C6614a.m20363b(e);
                if (gZIPOutputStream2 != null) {
                    gZIPOutputStream2.close();
                }
            } catch (Throwable th3) {
                th = th3;
                gZIPOutputStream3 = gZIPOutputStream;
                if (gZIPOutputStream3 != null) {
                    try {
                        gZIPOutputStream3.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
        }
    }

    /* renamed from: a */
    public static byte[] m20360a(byte[] bArr) throws Exception {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m20361a(byteArrayInputStream, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        byteArrayInputStream.close();
        return byteArray;
    }

    /* renamed from: b */
    public static void m20359b(InputStream inputStream, OutputStream outputStream) throws Exception {
        Throwable th;
        GZIPInputStream gZIPInputStream = null;
        try {
            GZIPInputStream gZIPInputStream2 = new GZIPInputStream(inputStream);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = gZIPInputStream2.read(bArr, 0, 1024);
                    if (read != -1) {
                        outputStream.write(bArr, 0, read);
                    } else {
                        gZIPInputStream2.close();
                        return;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                gZIPInputStream = gZIPInputStream2;
                if (gZIPInputStream != null) {
                    gZIPInputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: b */
    public static byte[] m20358b(byte[] bArr) throws Exception {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m20359b(byteArrayInputStream, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.flush();
        byteArrayOutputStream.close();
        byteArrayInputStream.close();
        return byteArray;
    }
}

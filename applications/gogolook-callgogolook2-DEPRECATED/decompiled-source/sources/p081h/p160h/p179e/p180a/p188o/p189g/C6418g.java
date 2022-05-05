package p081h.p160h.p179e.p180a.p188o.p189g;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: h.h.e.a.o.g.g */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/g/g.class */
public class C6418g {
    /* renamed from: a */
    public static void m22698a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        int read;
        if (i2 != 0 && (read = inputStream.read(bArr, i, i2)) < i2) {
            throw new IOException("Corrupt patch; bytes expected = " + i2 + " bytes read = " + read);
        }
    }

    /* renamed from: a */
    public static void m22697a(byte[] bArr, byte[] bArr2, OutputStream outputStream) throws Exception, OutOfMemoryError {
        InputStream inputStream;
        Throwable th;
        Exception e;
        OutOfMemoryError e2;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2);
        C6415d dVar = new C6415d(byteArrayInputStream);
        byteArrayInputStream.close();
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr2);
        InputStream byteArrayInputStream3 = new ByteArrayInputStream(bArr2);
        InputStream byteArrayInputStream4 = new ByteArrayInputStream(bArr2);
        try {
            try {
                byteArrayInputStream2.skip(32L);
                byteArrayInputStream3.skip(dVar.m22703a() + 32);
                byteArrayInputStream4.skip(dVar.m22703a() + 32 + dVar.m22702b());
                inputStream = new C6411a(byteArrayInputStream2);
            } catch (Throwable th2) {
                th = th2;
                inputStream = byteArrayInputStream2;
                byteArrayInputStream4 = byteArrayInputStream4;
                byteArrayInputStream3 = byteArrayInputStream3;
            }
            try {
                byteArrayInputStream3 = new C6411a(byteArrayInputStream3);
                try {
                    byteArrayInputStream4 = new C6411a(byteArrayInputStream4);
                    try {
                        byte[] bArr3 = new byte[dVar.m22701c()];
                        int i = 0;
                        int i2 = 0;
                        while (i < bArr3.length) {
                            C6414c cVar = new C6414c(inputStream);
                            m22698a(byteArrayInputStream3, bArr3, i, cVar.m22706a());
                            for (int i3 = 0; i3 < cVar.m22706a(); i3++) {
                                int i4 = i2 + i3;
                                if (i4 >= 0 && i4 < bArr.length) {
                                    int i5 = i + i3;
                                    bArr3[i5] = (byte) (bArr3[i5] + bArr[i4]);
                                }
                            }
                            int a = i + cVar.m22706a();
                            int a2 = cVar.m22706a();
                            m22698a(byteArrayInputStream4, bArr3, a, cVar.m22705b());
                            i = a + cVar.m22705b();
                            i2 = i2 + a2 + cVar.m22704c();
                        }
                        outputStream.write(bArr3);
                        inputStream.close();
                        byteArrayInputStream3.close();
                        byteArrayInputStream4.close();
                    } catch (Exception e3) {
                        e = e3;
                        byteArrayInputStream4 = byteArrayInputStream4;
                        byteArrayInputStream3 = byteArrayInputStream3;
                        throw e;
                    } catch (OutOfMemoryError e4) {
                        e2 = e4;
                        byteArrayInputStream4 = byteArrayInputStream4;
                        byteArrayInputStream3 = byteArrayInputStream3;
                        throw e2;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream.close();
                        byteArrayInputStream3.close();
                        byteArrayInputStream4.close();
                        throw th;
                    }
                } catch (Exception e5) {
                    e = e5;
                } catch (OutOfMemoryError e6) {
                    e2 = e6;
                } catch (Throwable th4) {
                    th = th4;
                    inputStream.close();
                    byteArrayInputStream3.close();
                    byteArrayInputStream4.close();
                    throw th;
                }
            } catch (Exception e7) {
                e = e7;
            } catch (OutOfMemoryError e8) {
                e2 = e8;
            } catch (Throwable th5) {
                th = th5;
                inputStream.close();
                byteArrayInputStream3.close();
                byteArrayInputStream4.close();
                throw th;
            }
        } catch (Exception e9) {
            e = e9;
        } catch (OutOfMemoryError e10) {
            e2 = e10;
        }
    }
}

package p081h.p203i.p204a.p224e.p235d.p249s;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;
@Deprecated
/* renamed from: h.i.a.e.d.s.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/l.class */
public final class C7080l {
    @Deprecated
    /* renamed from: a */
    public static long m21136a(InputStream inputStream, OutputStream outputStream, boolean z) throws IOException {
        return m21135a(inputStream, outputStream, z, 1024);
    }

    @Deprecated
    /* renamed from: a */
    public static long m21135a(InputStream inputStream, OutputStream outputStream, boolean z, int i) throws IOException {
        byte[] bArr = new byte[i];
        long j = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i);
                if (read == -1) {
                    break;
                }
                j += read;
                outputStream.write(bArr, 0, read);
            } finally {
                if (z) {
                    m21138a((Closeable) inputStream);
                    m21138a(outputStream);
                }
            }
        }
        return j;
    }

    /* renamed from: a */
    public static void m21138a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public static byte[] m21137a(InputStream inputStream) throws IOException {
        return m21134a(inputStream, true);
    }

    @Deprecated
    /* renamed from: a */
    public static byte[] m21134a(InputStream inputStream, boolean z) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m21136a(inputStream, byteArrayOutputStream, z);
        return byteArrayOutputStream.toByteArray();
    }
}

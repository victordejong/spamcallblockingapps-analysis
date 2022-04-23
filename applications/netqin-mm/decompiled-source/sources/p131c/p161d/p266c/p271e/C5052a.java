package p131c.p161d.p266c.p271e;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Deque;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p272f.C5058c;
/* renamed from: c.d.c.e.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/e/a.class */
public final class C5052a {

    /* renamed from: c.d.c.e.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/e/a$a.class */
    public static final class C5053a extends OutputStream {
        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            C4933n.m24795a(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C4933n.m24795a(bArr);
        }
    }

    static {
        new C5053a();
    }

    /* renamed from: a */
    public static long m24598a(InputStream inputStream, OutputStream outputStream) throws IOException {
        C4933n.m24795a(inputStream);
        C4933n.m24795a(outputStream);
        byte[] a = m24600a();
        long j = 0;
        while (true) {
            int read = inputStream.read(a);
            if (read == -1) {
                return j;
            }
            outputStream.write(a, 0, read);
            j += read;
        }
    }

    /* renamed from: a */
    public static byte[] m24600a() {
        return new byte[8192];
    }

    /* renamed from: a */
    public static byte[] m24599a(InputStream inputStream) throws IOException {
        C4933n.m24795a(inputStream);
        return m24597a(inputStream, new ArrayDeque(20), 0);
    }

    /* renamed from: a */
    public static byte[] m24597a(InputStream inputStream, Deque<byte[]> deque, int i) throws IOException {
        int i2 = 8192;
        int i3 = i;
        while (i3 < 2147483639) {
            int min = Math.min(i2, 2147483639 - i3);
            byte[] bArr = new byte[min];
            deque.add(bArr);
            int i4 = 0;
            while (i4 < min) {
                int read = inputStream.read(bArr, i4, min - i4);
                if (read == -1) {
                    return m24596a(deque, i3);
                }
                i4 += read;
                i3 += read;
            }
            i2 = C5058c.m24583d(i2, 2);
        }
        if (inputStream.read() == -1) {
            return m24596a(deque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: a */
    public static byte[] m24596a(Deque<byte[]> deque, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] removeFirst = deque.removeFirst();
            int min = Math.min(i2, removeFirst.length);
            System.arraycopy(removeFirst, 0, bArr, i - i2, min);
            i2 -= min;
        }
        return bArr;
    }
}

package p081h.p203i.p316b.p320d;

import io.realm.internal.OsCollectionChangeSet;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Deque;
import p081h.p203i.p316b.p317a.C9301k;
import p081h.p203i.p316b.p321e.C9380a;
/* renamed from: h.i.b.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/b/d/b.class */
public final class C9362b {

    /* renamed from: h.i.b.d.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/b/d/b$a.class */
    public static final class C9363a extends OutputStream {
        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            C9301k.m15478a(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C9301k.m15478a(bArr);
        }
    }

    static {
        new C9363a();
    }

    /* renamed from: a */
    public static long m15364a(InputStream inputStream, OutputStream outputStream) throws IOException {
        C9301k.m15478a(inputStream);
        C9301k.m15478a(outputStream);
        byte[] a = m15367a();
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
    public static byte[] m15367a() {
        return new byte[8192];
    }

    /* renamed from: a */
    public static byte[] m15366a(InputStream inputStream) throws IOException {
        C9301k.m15478a(inputStream);
        return m15363a(inputStream, new ArrayDeque(20), 0);
    }

    /* renamed from: a */
    public static byte[] m15365a(InputStream inputStream, long j) throws IOException {
        C9301k.m15474a(j >= 0, "expectedSize (%s) must be non-negative", j);
        if (j <= 2147483639) {
            int i = (int) j;
            byte[] bArr = new byte[i];
            int i2 = i;
            while (i2 > 0) {
                int i3 = i - i2;
                int read = inputStream.read(bArr, i3, i2);
                if (read == -1) {
                    return Arrays.copyOf(bArr, i3);
                }
                i2 -= read;
            }
            int read2 = inputStream.read();
            if (read2 == -1) {
                return bArr;
            }
            ArrayDeque arrayDeque = new ArrayDeque(22);
            arrayDeque.add(bArr);
            arrayDeque.add(new byte[]{(byte) read2});
            return m15363a(inputStream, arrayDeque, bArr.length + 1);
        }
        throw new OutOfMemoryError(j + " bytes is too large to fit in a byte array");
    }

    /* renamed from: a */
    public static byte[] m15363a(InputStream inputStream, Deque<byte[]> deque, int i) throws IOException {
        int i2 = 8192;
        int i3 = i;
        while (i3 < 2147483639) {
            byte[] bArr = new byte[Math.min(i2, OsCollectionChangeSet.MAX_ARRAY_LENGTH - i3)];
            deque.add(bArr);
            int i4 = 0;
            while (i4 < bArr.length) {
                int read = inputStream.read(bArr, i4, bArr.length - i4);
                if (read == -1) {
                    return m15362a(deque, i3);
                }
                i4 += read;
                i3 += read;
            }
            i2 = C9380a.m15338a(i2, 2);
        }
        if (inputStream.read() == -1) {
            return m15362a(deque, (int) OsCollectionChangeSet.MAX_ARRAY_LENGTH);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: a */
    public static byte[] m15362a(Deque<byte[]> deque, int i) {
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

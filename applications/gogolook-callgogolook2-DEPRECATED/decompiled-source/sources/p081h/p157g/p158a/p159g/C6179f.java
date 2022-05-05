package p081h.p157g.p158a.p159g;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import p081h.p157g.p158a.p159g.AbstractC6172c;
/* renamed from: h.g.a.g.f */
/* loaded from: classes2-dex2jar.jar:h/g/a/g/f.class */
public class C6179f implements Closeable, AbstractC6172c {

    /* renamed from: a */
    public final FileChannel f15345a;

    public C6179f(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f15345a = new FileInputStream(file).getChannel();
    }

    /* renamed from: a */
    public final long m23643a(AbstractC6172c.AbstractC6174b bVar, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            AbstractC6172c.AbstractC6175c a = bVar.mo23646a(j3);
            if (a.f15338a == 1) {
                long j4 = a.f15340c;
                if (j4 <= j2 && j2 <= a.f15341d + j4) {
                    return (j2 - j4) + a.f15339b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    /* renamed from: a */
    public AbstractC6172c.AbstractC6174b m23644a() throws IOException {
        this.f15345a.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m23636e(allocate, 0L) == 1179403647) {
            short a = m23642a(allocate, 4L);
            boolean z = m23642a(allocate, 5L) == 2;
            if (a == 1) {
                return new C6177d(z, this);
            }
            if (a == 2) {
                return new C6178e(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    /* renamed from: a */
    public short m23642a(ByteBuffer byteBuffer, long j) throws IOException {
        m23641a(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* renamed from: a */
    public void m23641a(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int read = this.f15345a.read(byteBuffer, j + j2);
            if (read != -1) {
                j2 += read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
    }

    /* renamed from: b */
    public int m23639b(ByteBuffer byteBuffer, long j) throws IOException {
        m23641a(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [h.g.a.g.f] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> m23640b() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p157g.p158a.p159g.C6179f.m23640b():java.util.List");
    }

    /* renamed from: c */
    public long m23638c(ByteBuffer byteBuffer, long j) throws IOException {
        m23641a(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f15345a.close();
    }

    /* renamed from: d */
    public String m23637d(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            short a = m23642a(byteBuffer, j);
            if (a == 0) {
                return sb.toString();
            }
            sb.append((char) a);
            j = 1 + j;
        }
    }

    /* renamed from: e */
    public long m23636e(ByteBuffer byteBuffer, long j) throws IOException {
        m23641a(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}

package pl.droidsonroids.relinker.p346f;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: pl.droidsonroids.relinker.f.i */
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/relinker/f/i.class */
public class C9732i implements Closeable {

    /* renamed from: d */
    private final int f41013d = 1179403647;

    /* renamed from: e */
    private final FileChannel f41014e;

    public C9732i(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f41014e = new FileInputStream(file).getChannel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r8v0, types: [pl.droidsonroids.relinker.f.d] */
    /* renamed from: a */
    private long m8a(AbstractC9727d abstractC9727d, long j, long j2) {
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c < j) {
                AbstractC9728e mo10b = abstractC9727d.mo10b(c);
                if (mo10b.f41006a == 1) {
                    long j3 = mo10b.f41008c;
                    if (j3 <= j2 && j2 <= mo10b.f41009d + j3) {
                        return (j2 - j3) + mo10b.f41007b;
                    }
                }
                r0 = c + 1;
            } else {
                throw new IllegalStateException("Could not map vma to file offset!");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f41014e.close();
    }

    /* renamed from: e */
    public AbstractC9727d m7e() {
        this.f41014e.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m0y(allocate, 0L) == 1179403647) {
            short m4k = m4k(allocate, 4L);
            boolean z = m4k(allocate, 5L) == 2;
            if (m4k == 1) {
                return new C9730g(z, this);
            }
            if (m4k != 2) {
                throw new IllegalStateException("Invalid class type!");
            }
            return new C9731h(z, this);
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5, types: [pl.droidsonroids.relinker.f.d] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r8v0, types: [pl.droidsonroids.relinker.f.i] */
    /* renamed from: f */
    public List<String> m6f() {
        char c;
        AbstractC9726c mo11a;
        this.f41014e.position(0L);
        ArrayList arrayList = new ArrayList();
        ?? m7e = m7e();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(m7e.f40997a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        ?? r0 = m7e.f41002f;
        int i = 0;
        char c2 = r0;
        if (r0 == 65535) {
            c2 = m7e.mo9c(0).f41010a;
        }
        ?? r02 = 0;
        while (true) {
            char c3 = r02;
            if (c3 >= c2) {
                c = 0;
                break;
            }
            AbstractC9728e mo10b = m7e.mo10b(c3);
            if (mo10b.f41006a == 2) {
                c = mo10b.f41007b;
                break;
            }
            r02 = c3 + 1;
        }
        if (c == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList();
        char c4 = 0;
        do {
            mo11a = m7e.mo11a(c, i);
            long j = mo11a.f40995a;
            if (j == 1) {
                arrayList2.add(Long.valueOf(mo11a.f40996b));
            } else if (j == 5) {
                c4 = mo11a.f40996b;
            }
            i++;
        } while (mo11a.f40995a != 0);
        if (c4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long m8a = m8a(m7e, c2, c4);
        for (Long l : arrayList2) {
            arrayList.add(m1u(allocate, l.longValue() + m8a));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* renamed from: g */
    protected void m5g(ByteBuffer byteBuffer, long j, int i) {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c >= i) {
                byteBuffer.position(0);
                return;
            }
            int read = this.f41014e.read(byteBuffer, j + c);
            if (read == -1) {
                throw new EOFException();
            }
            r0 = c + read;
        }
    }

    /* renamed from: k */
    protected short m4k(ByteBuffer byteBuffer, long j) {
        m5g(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* renamed from: p */
    public int m3p(ByteBuffer byteBuffer, long j) {
        m5g(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* renamed from: q */
    public long m2q(ByteBuffer byteBuffer, long j) {
        m5g(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [pl.droidsonroids.relinker.f.i] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: u */
    protected String m1u(ByteBuffer byteBuffer, long j) {
        StringBuilder sb = new StringBuilder();
        ?? r7 = j;
        while (true) {
            short m4k = m4k(byteBuffer, r7);
            if (m4k != 0) {
                sb.append((char) m4k);
                r7 = 1 + r7;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: y */
    public long m0y(ByteBuffer byteBuffer, long j) {
        m5g(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}

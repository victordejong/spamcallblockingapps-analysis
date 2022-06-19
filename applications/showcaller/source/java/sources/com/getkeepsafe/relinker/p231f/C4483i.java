package com.getkeepsafe.relinker.p231f;

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
/* renamed from: com.getkeepsafe.relinker.f.i */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/i.class */
public class C4483i implements Closeable {

    /* renamed from: d */
    private final int f13631d = 1179403647;

    /* renamed from: e */
    private final FileChannel f13632e;

    public C4483i(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f13632e = new FileInputStream(file).getChannel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.f.d] */
    /* renamed from: a */
    private long m22389a(AbstractC4478d abstractC4478d, long j, long j2) {
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c < j) {
                AbstractC4479e mo22391b = abstractC4478d.mo22391b(c);
                if (mo22391b.f13624a == 1) {
                    long j3 = mo22391b.f13626c;
                    if (j3 <= j2 && j2 <= mo22391b.f13627d + j3) {
                        return (j2 - j3) + mo22391b.f13625b;
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
        this.f13632e.close();
    }

    /* renamed from: e */
    public AbstractC4478d m22388e() {
        this.f13632e.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m22381y(allocate, 0L) == 1179403647) {
            short m22385k = m22385k(allocate, 4L);
            boolean z = m22385k(allocate, 5L) == 2;
            if (m22385k == 1) {
                return new C4481g(z, this);
            }
            if (m22385k != 2) {
                throw new IllegalStateException("Invalid class type!");
            }
            return new C4482h(z, this);
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.getkeepsafe.relinker.f.d] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.f.i] */
    /* renamed from: f */
    public List<String> m22387f() {
        char c;
        AbstractC4477c mo22392a;
        this.f13632e.position(0L);
        ArrayList arrayList = new ArrayList();
        ?? m22388e = m22388e();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(m22388e.f13615a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        ?? r0 = m22388e.f13620f;
        int i = 0;
        char c2 = r0;
        if (r0 == 65535) {
            c2 = m22388e.mo22390c(0).f13628a;
        }
        ?? r02 = 0;
        while (true) {
            char c3 = r02;
            if (c3 >= c2) {
                c = 0;
                break;
            }
            AbstractC4479e mo22391b = m22388e.mo22391b(c3);
            if (mo22391b.f13624a == 2) {
                c = mo22391b.f13625b;
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
            mo22392a = m22388e.mo22392a(c, i);
            long j = mo22392a.f13613a;
            if (j == 1) {
                arrayList2.add(Long.valueOf(mo22392a.f13614b));
            } else if (j == 5) {
                c4 = mo22392a.f13614b;
            }
            i++;
        } while (mo22392a.f13613a != 0);
        if (c4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long m22389a = m22389a(m22388e, c2, c4);
        for (Long l : arrayList2) {
            arrayList.add(m22382u(allocate, l.longValue() + m22389a));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* renamed from: g */
    protected void m22386g(ByteBuffer byteBuffer, long j, int i) {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c >= i) {
                byteBuffer.position(0);
                return;
            }
            int read = this.f13632e.read(byteBuffer, j + c);
            if (read == -1) {
                throw new EOFException();
            }
            r0 = c + read;
        }
    }

    /* renamed from: k */
    protected short m22385k(ByteBuffer byteBuffer, long j) {
        m22386g(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* renamed from: p */
    public int m22384p(ByteBuffer byteBuffer, long j) {
        m22386g(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* renamed from: q */
    public long m22383q(ByteBuffer byteBuffer, long j) {
        m22386g(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.getkeepsafe.relinker.f.i] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: u */
    protected String m22382u(ByteBuffer byteBuffer, long j) {
        StringBuilder sb = new StringBuilder();
        ?? r7 = j;
        while (true) {
            short m22385k = m22385k(byteBuffer, r7);
            if (m22385k != 0) {
                sb.append((char) m22385k);
                r7 = 1 + r7;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: y */
    public long m22381y(ByteBuffer byteBuffer, long j) {
        m22386g(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}

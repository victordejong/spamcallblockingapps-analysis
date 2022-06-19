package com.getkeepsafe.relinker.p061f;

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
public class C1250i implements Closeable {

    /* renamed from: b */
    private final FileChannel f5120b;

    public C1250i(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f5120b = new FileInputStream(file).getChannel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.f.d] */
    /* renamed from: a */
    private long m9443a(AbstractC1247d abstractC1247d, long j, long j2) {
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c < j) {
                AbstractC1248e m9451b = abstractC1247d.m9451b(c);
                if (m9451b.f5115a == 1) {
                    long j3 = m9451b.f5117c;
                    if (j3 <= j2 && j2 <= m9451b.f5118d + j3) {
                        return (j2 - j3) + m9451b.f5116b;
                    }
                }
                r0 = c + 1;
            } else {
                throw new IllegalStateException("Could not map vma to file offset!");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* renamed from: B */
    protected void m9449B(ByteBuffer byteBuffer, long j, int i) {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c >= i) {
                byteBuffer.position(0);
                return;
            }
            int read = this.f5120b.read(byteBuffer, j + c);
            if (read == -1) {
                throw new EOFException();
            }
            r0 = c + read;
        }
    }

    /* renamed from: C */
    protected short m9448C(ByteBuffer byteBuffer, long j) {
        m9449B(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* renamed from: F */
    protected int m9447F(ByteBuffer byteBuffer, long j) {
        m9449B(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* renamed from: K */
    protected long m9446K(ByteBuffer byteBuffer, long j) {
        m9449B(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.getkeepsafe.relinker.f.i] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: O */
    protected String m9445O(ByteBuffer byteBuffer, long j) {
        StringBuilder sb = new StringBuilder();
        ?? r7 = j;
        while (true) {
            short m9448C = m9448C(byteBuffer, r7);
            if (m9448C != 0) {
                sb.append((char) m9448C);
                r7 = 1 + r7;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: U */
    protected long m9444U(ByteBuffer byteBuffer, long j) {
        m9449B(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f5120b.close();
    }

    /* renamed from: p */
    public AbstractC1247d m9442p() {
        this.f5120b.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m9444U(allocate, 0L) == 1179403647) {
            short m9448C = m9448C(allocate, 4L);
            boolean z = m9448C(allocate, 5L) == 2;
            if (m9448C == 1) {
                return new g(z, this);
            }
            if (m9448C != 2) {
                throw new IllegalStateException("Invalid class type!");
            }
            return new h(z, this);
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
    /* renamed from: x */
    public List<String> m9441x() {
        char c;
        AbstractC1246c m9452a;
        this.f5120b.position(0L);
        ArrayList arrayList = new ArrayList();
        ?? m9442p = m9442p();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(m9442p.f5109a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        ?? r0 = m9442p.f5113e;
        int i = 0;
        char c2 = r0;
        if (r0 == 65535) {
            c2 = m9442p.m9450c(0).f5119a;
        }
        ?? r02 = 0;
        while (true) {
            char c3 = r02;
            if (c3 >= c2) {
                c = 0;
                break;
            }
            AbstractC1248e m9451b = m9442p.m9451b(c3);
            if (m9451b.f5115a == 2) {
                c = m9451b.f5116b;
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
            m9452a = m9442p.m9452a(c, i);
            long j = m9452a.f5107a;
            if (j == 1) {
                arrayList2.add(Long.valueOf(m9452a.f5108b));
            } else if (j == 5) {
                c4 = m9452a.f5108b;
            }
            i++;
        } while (m9452a.f5107a != 0);
        if (c4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long m9443a = m9443a(m9442p, c2, c4);
        for (Long l : arrayList2) {
            arrayList.add(m9445O(allocate, l.longValue() + m9443a));
        }
        return arrayList;
    }
}

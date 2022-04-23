package com.getkeepsafe.relinker.p061f;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
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

    /* renamed from: a */
    private long m9443a(AbstractC1247d dVar, long j, long j2) {
        for (long j3 = 0; j3 < j; j3++) {
            AbstractC1248e b = dVar.m9451b(j3);
            if (b.f5115a == 1) {
                long j4 = b.f5117c;
                if (j4 <= j2 && j2 <= b.f5118d + j4) {
                    return (j2 - j4) + b.f5116b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    /* renamed from: B */
    protected void m9449B(ByteBuffer byteBuffer, long j, int i) {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int read = this.f5120b.read(byteBuffer, j + j2);
            if (read != -1) {
                j2 += read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
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

    /* renamed from: O */
    protected String m9445O(ByteBuffer byteBuffer, long j) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            short C = m9448C(byteBuffer, j);
            if (C == 0) {
                return sb.toString();
            }
            sb.append((char) C);
            j = 1 + j;
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
            short C = m9448C(allocate, 4L);
            boolean z = m9448C(allocate, 5L) == 2;
            if (C == 1) {
                return new g(z, this);
            }
            if (C == 2) {
                return new h(z, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.f.i] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> m9441x() {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.getkeepsafe.relinker.p061f.C1250i.m9441x():java.util.List");
    }
}

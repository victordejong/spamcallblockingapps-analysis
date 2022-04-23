package com.bumptech.glide.p029o;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.o.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/h.class */
public class C0854h extends FilterInputStream {

    /* renamed from: b */
    private int f3824b = Integer.MIN_VALUE;

    public C0854h(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long m10765a(long r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f3824b
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x000d
            r0 = -1
            return r0
        L_0x000d:
            r0 = r6
            r9 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0024
            r0 = r6
            r9 = r0
            r0 = r6
            r1 = r8
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0024
            r0 = r8
            long r0 = (long) r0
            r9 = r0
        L_0x0024:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p029o.C0854h.m10765a(long):long");
    }

    /* renamed from: p */
    private void m10764p(long j) {
        int i = this.f3824b;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.f3824b = (int) (i - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i = this.f3824b;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f3824b = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (m10765a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m10764p(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int a = (int) m10765a(i2);
        if (a == -1) {
            return -1;
        }
        int read = super.read(bArr, i, a);
        m10764p(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            super.reset();
            this.f3824b = Integer.MIN_VALUE;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long a = m10765a(j);
        if (a == -1) {
            return 0L;
        }
        long skip = super.skip(a);
        m10764p(skip);
        return skip;
    }
}

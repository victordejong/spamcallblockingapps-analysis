package com.bumptech.glide.i;

import java.io.FilterInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/f.class */
public final class f extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f3468a = Integer.MIN_VALUE;

    public f(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    private long a(long j) {
        long j2;
        if (this.f3468a == 0) {
            j2 = -1;
        } else {
            j2 = j;
            if (this.f3468a != Integer.MIN_VALUE) {
                j2 = j;
                if (j > this.f3468a) {
                    j2 = this.f3468a;
                }
            }
        }
        return j2;
    }

    private void b(long j) {
        if (this.f3468a != Integer.MIN_VALUE && j != -1) {
            this.f3468a = (int) (this.f3468a - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return this.f3468a == Integer.MIN_VALUE ? super.available() : Math.min(this.f3468a, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        super.mark(i);
        this.f3468a = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int read;
        if (a(1L) == -1) {
            read = -1;
        } else {
            read = super.read();
            b(1L);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = -1;
        int a2 = (int) a(i2);
        if (a2 != -1) {
            read = super.read(bArr, i, a2);
            b(read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        super.reset();
        this.f3468a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = -1;
        long a2 = a(j);
        if (a2 != -1) {
            skip = super.skip(a2);
            b(skip);
        }
        return skip;
    }
}

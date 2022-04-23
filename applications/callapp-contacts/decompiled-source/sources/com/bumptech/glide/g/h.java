package com.bumptech.glide.g;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/h.class */
public final class h extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private int f7354a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    public h(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(long r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f7354a
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
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.g.h.a(long):long");
    }

    private void b(long j) {
        int i = this.f7354a;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.f7354a = (int) (i - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int i = this.f7354a;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f7354a = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int a2 = (int) a(i2);
        if (a2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i, a2);
        b(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            super.reset();
            this.f7354a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long a2 = a(j);
        if (a2 == -1) {
            return 0L;
        }
        long skip = super.skip(a2);
        b(skip);
        return skip;
    }
}

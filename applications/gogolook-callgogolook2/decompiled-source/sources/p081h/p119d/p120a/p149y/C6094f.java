package p081h.p119d.p120a.p149y;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.d.a.y.f */
/* loaded from: classes-dex2jar.jar:h/d/a/y/f.class */
public class C6094f extends FilterInputStream {

    /* renamed from: a */
    public int f15151a = Integer.MIN_VALUE;

    public C6094f(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f15151a;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m23868g(long r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f15151a
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p149y.C6094f.m23868g(long):long");
    }

    /* renamed from: h */
    public final void m23867h(long j) {
        int i = this.f15151a;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.f15151a = (int) (i - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        super.mark(i);
        this.f15151a = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (m23868g(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m23867h(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int g = (int) m23868g(i2);
        if (g == -1) {
            return -1;
        }
        int read = super.read(bArr, i, g);
        m23867h(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f15151a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long g = m23868g(j);
        if (g == -1) {
            return -1L;
        }
        long skip = super.skip(g);
        m23867h(skip);
        return skip;
    }
}

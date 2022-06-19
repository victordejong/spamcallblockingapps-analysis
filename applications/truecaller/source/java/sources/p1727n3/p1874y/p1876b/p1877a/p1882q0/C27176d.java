package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1903w0.AbstractC27405h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/d.class */
public final class C27176d {

    /* renamed from: b */
    public final AbstractC27405h f76029b;

    /* renamed from: c */
    public final long f76030c;

    /* renamed from: d */
    public long f76031d;

    /* renamed from: f */
    public int f76033f;

    /* renamed from: g */
    public int f76034g;

    /* renamed from: e */
    public byte[] f76032e = new byte[65536];

    /* renamed from: a */
    public final byte[] f76028a = new byte[4096];

    public C27176d(AbstractC27405h abstractC27405h, long j, long j2) {
        this.f76029b = abstractC27405h;
        this.f76031d = j;
        this.f76030c = j2;
    }

    /* renamed from: a */
    public boolean m760a(int i, boolean z) throws IOException, InterruptedException {
        int i2 = this.f76033f + i;
        byte[] bArr = this.f76032e;
        if (i2 > bArr.length) {
            this.f76032e = Arrays.copyOf(this.f76032e, C27445x.m280g(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
        int i3 = this.f76034g - this.f76033f;
        while (i3 < i) {
            i3 = m755f(this.f76032e, this.f76033f, i, i3, z);
            if (i3 == -1) {
                return false;
            }
            this.f76034g = this.f76033f + i3;
        }
        this.f76033f += i;
        return true;
    }

    /* renamed from: b */
    public final void m759b(int i) {
        if (i != -1) {
            this.f76031d += i;
        }
    }

    /* renamed from: c */
    public long m758c() {
        return this.f76031d + this.f76033f;
    }

    /* renamed from: d */
    public boolean m757d(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!m760a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f76032e, this.f76033f - i2, bArr, i, i2);
        return true;
    }

    /* renamed from: e */
    public int m756e(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int i3 = this.f76034g;
        int i4 = 0;
        if (i3 != 0) {
            i4 = Math.min(i3, i2);
            System.arraycopy(this.f76032e, 0, bArr, i, i4);
            m752i(i4);
        }
        int i5 = i4;
        if (i4 == 0) {
            i5 = m755f(bArr, i, i2, 0, true);
        }
        m759b(i5);
        return i5;
    }

    /* renamed from: f */
    public final int m755f(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.f76029b.read(bArr, i + i3, i2 - i3);
            if (read != -1) {
                return i3 + read;
            }
            if (i3 == 0 && z) {
                return -1;
            }
            throw new EOFException();
        }
        throw new InterruptedException();
    }

    /* renamed from: g */
    public boolean m754g(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int i4 = this.f76034g;
        if (i4 == 0) {
            i3 = 0;
        } else {
            i3 = Math.min(i4, i2);
            System.arraycopy(this.f76032e, 0, bArr, i, i3);
            m752i(i3);
        }
        while (i3 < i2 && i3 != -1) {
            i3 = m755f(bArr, i, i2, i3, z);
        }
        m759b(i3);
        boolean z2 = false;
        if (i3 != -1) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: h */
    public void m753h(int i) throws IOException, InterruptedException {
        int min = Math.min(this.f76034g, i);
        m752i(min);
        while (min < i && min != -1) {
            min = m755f(this.f76028a, -min, Math.min(i, this.f76028a.length + min), min, false);
        }
        m759b(min);
    }

    /* renamed from: i */
    public final void m752i(int i) {
        int i2 = this.f76034g - i;
        this.f76034g = i2;
        this.f76033f = 0;
        byte[] bArr = this.f76032e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f76032e = bArr2;
    }
}

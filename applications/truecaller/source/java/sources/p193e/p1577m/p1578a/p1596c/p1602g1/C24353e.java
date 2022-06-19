package p193e.p1577m.p1578a.p1596c.p1602g1;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e.class */
public final class C24353e {

    /* renamed from: b */
    public final AbstractC24739l f67724b;

    /* renamed from: c */
    public final long f67725c;

    /* renamed from: d */
    public long f67726d;

    /* renamed from: f */
    public int f67728f;

    /* renamed from: g */
    public int f67729g;

    /* renamed from: e */
    public byte[] f67727e = new byte[65536];

    /* renamed from: a */
    public final byte[] f67723a = new byte[4096];

    public C24353e(AbstractC24739l abstractC24739l, long j, long j2) {
        this.f67724b = abstractC24739l;
        this.f67726d = j;
        this.f67725c = j2;
    }

    /* renamed from: a */
    public boolean m5214a(int i, boolean z) throws IOException, InterruptedException {
        m5212c(i);
        int i2 = this.f67729g - this.f67728f;
        while (i2 < i) {
            i2 = m5208g(this.f67727e, this.f67728f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f67729g = this.f67728f + i2;
        }
        this.f67728f += i;
        return true;
    }

    /* renamed from: b */
    public final void m5213b(int i) {
        if (i != -1) {
            this.f67726d += i;
        }
    }

    /* renamed from: c */
    public final void m5212c(int i) {
        int i2 = this.f67728f + i;
        byte[] bArr = this.f67727e;
        if (i2 > bArr.length) {
            this.f67727e = Arrays.copyOf(this.f67727e, C24773d0.m4618f(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    /* renamed from: d */
    public long m5211d() {
        return this.f67726d + this.f67728f;
    }

    /* renamed from: e */
    public boolean m5210e(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        if (!m5214a(i2, z)) {
            return false;
        }
        System.arraycopy(this.f67727e, this.f67728f - i2, bArr, i, i2);
        return true;
    }

    /* renamed from: f */
    public int m5209f(byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int i3 = this.f67729g;
        int i4 = 0;
        if (i3 != 0) {
            i4 = Math.min(i3, i2);
            System.arraycopy(this.f67727e, 0, bArr, i, i4);
            m5205j(i4);
        }
        int i5 = i4;
        if (i4 == 0) {
            i5 = m5208g(bArr, i, i2, 0, true);
        }
        m5213b(i5);
        return i5;
    }

    /* renamed from: g */
    public final int m5208g(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (!Thread.interrupted()) {
            int read = this.f67724b.read(bArr, i + i3, i2 - i3);
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

    /* renamed from: h */
    public boolean m5207h(byte[] bArr, int i, int i2, boolean z) throws IOException, InterruptedException {
        int i3;
        int i4 = this.f67729g;
        if (i4 == 0) {
            i3 = 0;
        } else {
            i3 = Math.min(i4, i2);
            System.arraycopy(this.f67727e, 0, bArr, i, i3);
            m5205j(i3);
        }
        while (i3 < i2 && i3 != -1) {
            i3 = m5208g(bArr, i, i2, i3, z);
        }
        m5213b(i3);
        boolean z2 = false;
        if (i3 != -1) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: i */
    public void m5206i(int i) throws IOException, InterruptedException {
        int min = Math.min(this.f67729g, i);
        m5205j(min);
        while (min < i && min != -1) {
            min = m5208g(this.f67723a, -min, Math.min(i, this.f67723a.length + min), min, false);
        }
        m5213b(min);
    }

    /* renamed from: j */
    public final void m5205j(int i) {
        int i2 = this.f67729g - i;
        this.f67729g = i2;
        this.f67728f = 0;
        byte[] bArr = this.f67727e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f67727e = bArr2;
    }
}

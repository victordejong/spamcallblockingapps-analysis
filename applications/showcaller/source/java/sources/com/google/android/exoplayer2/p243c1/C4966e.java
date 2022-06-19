package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.upstream.AbstractC5478j;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.EOFException;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.e */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/e.class */
public final class C4966e implements AbstractC4979i {

    /* renamed from: b */
    private final AbstractC5478j f15436b;

    /* renamed from: c */
    private final long f15437c;

    /* renamed from: d */
    private long f15438d;

    /* renamed from: f */
    private int f15440f;

    /* renamed from: g */
    private int f15441g;

    /* renamed from: e */
    private byte[] f15439e = new byte[65536];

    /* renamed from: a */
    private final byte[] f15435a = new byte[4096];

    public C4966e(AbstractC5478j abstractC5478j, long j, long j2) {
        this.f15436b = abstractC5478j;
        this.f15438d = j;
        this.f15437c = j2;
    }

    /* renamed from: l */
    private void m21031l(int i) {
        if (i != -1) {
            this.f15438d += i;
        }
    }

    /* renamed from: m */
    private void m21030m(int i) {
        int i2 = this.f15440f + i;
        byte[] bArr = this.f15439e;
        if (i2 > bArr.length) {
            this.f15439e = Arrays.copyOf(this.f15439e, C5515h0.m18819n(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    /* renamed from: n */
    private int m21029n(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int read = this.f15436b.read(bArr, i + i3, i2 - i3);
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

    /* renamed from: o */
    private int m21028o(byte[] bArr, int i, int i2) {
        int i3 = this.f15441g;
        if (i3 == 0) {
            return 0;
        }
        int min = Math.min(i3, i2);
        System.arraycopy(this.f15439e, 0, bArr, i, min);
        m21025r(min);
        return min;
    }

    /* renamed from: p */
    private int m21027p(int i) {
        int min = Math.min(this.f15441g, i);
        m21025r(min);
        return min;
    }

    /* renamed from: r */
    private void m21025r(int i) {
        int i2 = this.f15441g - i;
        this.f15441g = i2;
        this.f15440f = 0;
        byte[] bArr = this.f15439e;
        byte[] bArr2 = i2 < bArr.length - 524288 ? new byte[65536 + i2] : bArr;
        System.arraycopy(bArr, i, bArr2, 0, i2);
        this.f15439e = bArr2;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: a */
    public boolean mo21009a(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        int m21028o = m21028o(bArr, i, i2);
        while (true) {
            i3 = m21028o;
            if (i3 >= i2 || i3 == -1) {
                break;
            }
            m21028o = m21029n(bArr, i, i2, i3, z);
        }
        m21031l(i3);
        return i3 != -1;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: b */
    public boolean mo21008b(byte[] bArr, int i, int i2, boolean z) {
        if (!mo21001i(i2, z)) {
            return false;
        }
        System.arraycopy(this.f15439e, this.f15440f - i2, bArr, i, i2);
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: c */
    public long mo21007c() {
        return this.f15438d + this.f15440f;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: d */
    public void mo21006d(int i) {
        mo21001i(i, false);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: e */
    public int mo21005e(int i) {
        int m21027p = m21027p(i);
        int i2 = m21027p;
        if (m21027p == 0) {
            byte[] bArr = this.f15435a;
            i2 = m21029n(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        m21031l(i2);
        return i2;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: f */
    public int mo21004f(byte[] bArr, int i, int i2) {
        int i3;
        m21030m(i2);
        int i4 = this.f15441g;
        int i5 = this.f15440f;
        int i6 = i4 - i5;
        if (i6 == 0) {
            i3 = m21029n(this.f15439e, i5, i2, 0, true);
            if (i3 == -1) {
                return -1;
            }
            this.f15441g += i3;
        } else {
            i3 = Math.min(i2, i6);
        }
        System.arraycopy(this.f15439e, this.f15440f, bArr, i, i3);
        this.f15440f += i3;
        return i3;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: g */
    public void mo21003g() {
        this.f15440f = 0;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    public long getLength() {
        return this.f15437c;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: h */
    public void mo21002h(int i) {
        m21026q(i, false);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: i */
    public boolean mo21001i(int i, boolean z) {
        m21030m(i);
        int i2 = this.f15441g - this.f15440f;
        while (i2 < i) {
            i2 = m21029n(this.f15439e, this.f15440f, i, i2, z);
            if (i2 == -1) {
                return false;
            }
            this.f15441g = this.f15440f + i2;
        }
        this.f15440f += i;
        return true;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: j */
    public void mo21000j(byte[] bArr, int i, int i2) {
        mo21008b(bArr, i, i2, false);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    /* renamed from: k */
    public long mo20999k() {
        return this.f15438d;
    }

    /* renamed from: q */
    public boolean m21026q(int i, boolean z) {
        int i2;
        int m21027p = m21027p(i);
        while (true) {
            i2 = m21027p;
            if (i2 >= i || i2 == -1) {
                break;
            }
            m21027p = m21029n(this.f15435a, -i2, Math.min(i, this.f15435a.length + i2), i2, z);
        }
        m21031l(i2);
        return i2 != -1;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    public int read(byte[] bArr, int i, int i2) {
        int m21028o = m21028o(bArr, i, i2);
        int i3 = m21028o;
        if (m21028o == 0) {
            i3 = m21029n(bArr, i, i2, 0, true);
        }
        m21031l(i3);
        return i3;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4979i
    public void readFully(byte[] bArr, int i, int i2) {
        mo21009a(bArr, i, i2, false);
    }
}

package com.google.android.gms.internal.measurement;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.measurement.di */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/di.class */
public final class C3877di extends AbstractC3875dg {

    /* renamed from: d */
    private final byte[] f17983d;

    /* renamed from: e */
    private final boolean f17984e;

    /* renamed from: f */
    private int f17985f;

    /* renamed from: g */
    private int f17986g;

    /* renamed from: h */
    private int f17987h;

    /* renamed from: i */
    private int f17988i;

    /* renamed from: j */
    private int f17989j;

    /* renamed from: k */
    private int f17990k;

    /* JADX INFO: Access modifiers changed from: private */
    public C3877di(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f17990k = Integer.MAX_VALUE;
        this.f17983d = bArr;
        this.f17985f = i + i2;
        this.f17987h = i;
        this.f17988i = this.f17987h;
        this.f17984e = z;
    }

    /* renamed from: A */
    private final byte m5739A() {
        if (this.f17987h == this.f17985f) {
            throw zzft.m4854a();
        }
        byte[] bArr = this.f17983d;
        int i = this.f17987h;
        this.f17987h = i + 1;
        return bArr[i];
    }

    /* renamed from: f */
    private final void m5728f(int i) {
        if (i >= 0 && i <= this.f17985f - this.f17987h) {
            this.f17987h += i;
        } else if (i >= 0) {
            throw zzft.m4854a();
        } else {
            throw zzft.m4853b();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
        if (r0[r0] < 0) goto L33;
     */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m5712v() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3877di.m5712v():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0159, code lost:
        if (r0[r0] < 0) goto L37;
     */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v85, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m5711w() {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3877di.m5711w():long");
    }

    /* renamed from: x */
    private final int m5710x() {
        int i = this.f17987h;
        if (this.f17985f - i < 4) {
            throw zzft.m4854a();
        }
        byte[] bArr = this.f17983d;
        this.f17987h = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: y */
    private final long m5709y() {
        int i = this.f17987h;
        if (this.f17985f - i < 8) {
            throw zzft.m4854a();
        }
        byte[] bArr = this.f17983d;
        this.f17987h = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: z */
    private final void m5708z() {
        this.f17985f += this.f17986g;
        int i = this.f17985f - this.f17988i;
        if (i <= this.f17990k) {
            this.f17986g = 0;
            return;
        }
        this.f17986g = i - this.f17990k;
        this.f17985f -= this.f17986g;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: a */
    public final int mo5738a() {
        int i = 0;
        if (mo5714t()) {
            this.f17989j = 0;
        } else {
            this.f17989j = m5712v();
            if ((this.f17989j >>> 3) == 0) {
                throw zzft.m4851d();
            }
            i = this.f17989j;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: a */
    public final void mo5737a(int i) {
        if (this.f17989j != i) {
            throw zzft.m4850e();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: b */
    public final double mo5736b() {
        return Double.longBitsToDouble(m5709y());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: b */
    public final boolean mo5735b(int i) {
        boolean z;
        int mo5738a;
        switch (i & 7) {
            case 0:
                if (this.f17985f - this.f17987h < 10) {
                    for (int i2 = 0; i2 < 10; i2++) {
                        z = true;
                        if (m5739A() >= 0) {
                            break;
                        }
                    }
                    throw zzft.m4852c();
                }
                for (int i3 = 0; i3 < 10; i3++) {
                    byte[] bArr = this.f17983d;
                    int i4 = this.f17987h;
                    this.f17987h = i4 + 1;
                    z = true;
                    if (bArr[i4] >= 0) {
                        break;
                    }
                }
                throw zzft.m4852c();
            case 1:
                m5728f(8);
                z = true;
                break;
            case 2:
                m5728f(m5712v());
                z = true;
                break;
            case 3:
                do {
                    mo5738a = mo5738a();
                    if (mo5738a != 0) {
                    }
                    mo5737a(((i >>> 3) << 3) | 4);
                    z = true;
                    break;
                } while (mo5735b(mo5738a));
                mo5737a(((i >>> 3) << 3) | 4);
                z = true;
            case 4:
                z = false;
                break;
            case 5:
                m5728f(4);
                z = true;
                break;
            default:
                throw zzft.m4849f();
        }
        return z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: c */
    public final float mo5734c() {
        return Float.intBitsToFloat(m5710x());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: c */
    public final int mo5733c(int i) {
        if (i < 0) {
            throw zzft.m4853b();
        }
        int mo5713u = mo5713u() + i;
        int i2 = this.f17990k;
        if (mo5713u > i2) {
            throw zzft.m4854a();
        }
        this.f17990k = mo5713u;
        m5708z();
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: d */
    public final long mo5732d() {
        return m5711w();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: d */
    public final void mo5731d(int i) {
        this.f17990k = i;
        m5708z();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: e */
    public final long mo5730e() {
        return m5711w();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: f */
    public final int mo5729f() {
        return m5712v();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: g */
    public final long mo5727g() {
        return m5709y();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: h */
    public final int mo5726h() {
        return m5710x();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: i */
    public final boolean mo5725i() {
        return m5711w() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: j */
    public final String mo5724j() {
        String str;
        int m5712v = m5712v();
        if (m5712v > 0 && m5712v <= this.f17985f - this.f17987h) {
            str = new String(this.f17983d, this.f17987h, m5712v, C3908ef.f18107a);
            this.f17987h = m5712v + this.f17987h;
        } else if (m5712v != 0) {
            if (m5712v >= 0) {
                throw zzft.m4854a();
            }
            throw zzft.m4853b();
        } else {
            str = "";
        }
        return str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: k */
    public final String mo5723k() {
        String str;
        int m5712v = m5712v();
        if (m5712v > 0 && m5712v <= this.f17985f - this.f17987h) {
            str = C3991hd.m5236b(this.f17983d, this.f17987h, m5712v);
            this.f17987h = m5712v + this.f17987h;
        } else if (m5712v != 0) {
            if (m5712v > 0) {
                throw zzft.m4854a();
            }
            throw zzft.m4853b();
        } else {
            str = "";
        }
        return str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: l */
    public final AbstractC3859ct mo5722l() {
        byte[] bArr;
        AbstractC3859ct m5811a;
        int m5712v = m5712v();
        if (m5712v > 0 && m5712v <= this.f17985f - this.f17987h) {
            m5811a = AbstractC3859ct.m5810a(this.f17983d, this.f17987h, m5712v);
            this.f17987h = m5712v + this.f17987h;
        } else if (m5712v == 0) {
            m5811a = AbstractC3859ct.f17943a;
        } else {
            if (m5712v > 0 && m5712v <= this.f17985f - this.f17987h) {
                int i = this.f17987h;
                this.f17987h = m5712v + this.f17987h;
                bArr = Arrays.copyOfRange(this.f17983d, i, this.f17987h);
            } else if (m5712v > 0) {
                throw zzft.m4854a();
            } else {
                if (m5712v != 0) {
                    throw zzft.m4853b();
                }
                bArr = C3908ef.f18108b;
            }
            m5811a = AbstractC3859ct.m5811a(bArr);
        }
        return m5811a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: m */
    public final int mo5721m() {
        return m5712v();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: n */
    public final int mo5720n() {
        return m5712v();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: o */
    public final int mo5719o() {
        return m5710x();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: p */
    public final long mo5718p() {
        return m5709y();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: q */
    public final int mo5717q() {
        return m5741e(m5712v());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: r */
    public final long mo5716r() {
        return m5743a(m5711w());
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: s */
    public final long mo5715s() {
        byte m5739A;
        char c = 0;
        for (int i = 0; i < 64; i += 7) {
            c |= (m5739A & Byte.MAX_VALUE) << i;
            if ((m5739A() & 128) == 0) {
                return c;
            }
        }
        throw zzft.m4852c();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: t */
    public final boolean mo5714t() {
        return this.f17987h == this.f17985f;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3875dg
    /* renamed from: u */
    public final int mo5713u() {
        return this.f17987h - this.f17988i;
    }
}

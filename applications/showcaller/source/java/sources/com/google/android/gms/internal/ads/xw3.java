package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xw3.class */
public final class xw3 implements ux3 {

    /* renamed from: a */
    private final gw3 f32320a;

    /* renamed from: b */
    private final C6657ka f32321b = new C6657ka(new byte[10], 10);

    /* renamed from: c */
    private int f32322c = 0;

    /* renamed from: d */
    private int f32323d;

    /* renamed from: e */
    private C6990ta f32324e;

    /* renamed from: f */
    private boolean f32325f;

    /* renamed from: g */
    private boolean f32326g;

    /* renamed from: h */
    private boolean f32327h;

    /* renamed from: i */
    private int f32328i;

    /* renamed from: j */
    private int f32329j;

    /* renamed from: k */
    private boolean f32330k;

    public xw3(gw3 gw3Var) {
        this.f32320a = gw3Var;
    }

    /* renamed from: d */
    private final void m9025d(int i) {
        this.f32322c = i;
        this.f32323d = 0;
    }

    /* renamed from: e */
    private final boolean m9024e(C6694la c6694la, byte[] bArr, int i) {
        int min = Math.min(c6694la.m13639l(), i - this.f32323d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            c6694la.m13632s(min);
        } else {
            c6694la.m13630u(bArr, this.f32323d, min);
        }
        int i2 = this.f32323d + min;
        this.f32323d = i2;
        return i2 == i;
    }

    @Override // com.google.android.gms.internal.ads.ux3
    /* renamed from: a */
    public final void mo9028a(C6990ta c6990ta, xq3 xq3Var, tx3 tx3Var) {
        this.f32324e = c6990ta;
        this.f32320a.mo8680b(xq3Var, tx3Var);
    }

    @Override // com.google.android.gms.internal.ads.ux3
    /* renamed from: b */
    public final void mo9027b() {
        this.f32322c = 0;
        this.f32323d = 0;
        this.f32327h = false;
        this.f32320a.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r1v22 */
    @Override // com.google.android.gms.internal.ads.ux3
    /* renamed from: c */
    public final void mo9026c(C6694la c6694la, int i) {
        int i2;
        ?? r19;
        C7173y8.m8894e(this.f32324e);
        if ((i & 1) != 0) {
            int i3 = this.f32322c;
            if (i3 != 0 && i3 != 1) {
                if (i3 != 2) {
                    int i4 = this.f32329j;
                    if (i4 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i4);
                        sb.append(" more bytes");
                        Log.w("PesReader", sb.toString());
                    }
                    this.f32320a.mo8681a();
                } else {
                    Log.w("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            m9025d(1);
        }
        int i5 = i;
        int i6 = -1;
        while (c6694la.m13639l() > 0) {
            int i7 = this.f32322c;
            if (i7 != 0) {
                int i8 = 0;
                if (i7 != 1) {
                    if (i7 != 2) {
                        int m13639l = c6694la.m13639l();
                        int i9 = this.f32329j;
                        if (i9 != i6) {
                            i8 = m13639l - i9;
                        }
                        int i10 = m13639l;
                        if (i8 > 0) {
                            i10 = m13639l - i8;
                            c6694la.m13637n(c6694la.m13636o() + i10);
                        }
                        this.f32320a.mo8678d(c6694la);
                        int i11 = this.f32329j;
                        i2 = i6;
                        if (i11 != i6) {
                            int i12 = i11 - i10;
                            this.f32329j = i12;
                            i2 = i6;
                            if (i12 == 0) {
                                this.f32320a.mo8681a();
                                m9025d(1);
                                i2 = i6;
                            }
                        }
                    } else {
                        i2 = i6;
                        if (m9024e(c6694la, this.f32321b.f25088a, Math.min(10, this.f32328i))) {
                            i2 = i6;
                            if (m9024e(c6694la, null, this.f32328i)) {
                                this.f32321b.m13951d(0);
                                if (this.f32325f) {
                                    this.f32321b.m13949f(4);
                                    int m13947h = this.f32321b.m13947h(3);
                                    this.f32321b.m13949f(1);
                                    int m13947h2 = this.f32321b.m13947h(15);
                                    this.f32321b.m13949f(1);
                                    long j = m13947h;
                                    long j2 = m13947h2 << 15;
                                    long m13947h3 = this.f32321b.m13947h(15);
                                    this.f32321b.m13949f(1);
                                    if (!this.f32327h && this.f32326g) {
                                        this.f32321b.m13949f(4);
                                        int m13947h4 = this.f32321b.m13947h(3);
                                        this.f32321b.m13949f(1);
                                        int m13947h5 = this.f32321b.m13947h(15);
                                        this.f32321b.m13949f(1);
                                        int m13947h6 = this.f32321b.m13947h(15);
                                        this.f32321b.m13949f(1);
                                        this.f32324e.m10756e((m13947h4 << 30) | (m13947h5 << 15) | m13947h6);
                                        this.f32327h = true;
                                    }
                                    r19 = this.f32324e.m10756e(j2 | (j << 30) | m13947h3);
                                } else {
                                    r19 = true;
                                }
                                i5 |= true != this.f32330k ? 0 : 4;
                                this.f32320a.mo8679c(r19 == true ? 1L : 0L, i5);
                                m9025d(3);
                                i6 = -1;
                            }
                        }
                    }
                    i6 = i2;
                } else if (m9024e(c6694la, this.f32321b.f25088a, 9)) {
                    int i13 = 0;
                    this.f32321b.m13951d(0);
                    int m13947h7 = this.f32321b.m13947h(24);
                    if (m13947h7 != 1) {
                        StringBuilder sb2 = new StringBuilder(41);
                        sb2.append("Unexpected start code prefix: ");
                        sb2.append(m13947h7);
                        Log.w("PesReader", sb2.toString());
                        this.f32329j = -1;
                    } else {
                        this.f32321b.m13949f(8);
                        int m13947h8 = this.f32321b.m13947h(16);
                        this.f32321b.m13949f(5);
                        this.f32330k = this.f32321b.m13948g();
                        this.f32321b.m13949f(2);
                        this.f32325f = this.f32321b.m13948g();
                        this.f32326g = this.f32321b.m13948g();
                        this.f32321b.m13949f(6);
                        int m13947h9 = this.f32321b.m13947h(8);
                        this.f32328i = m13947h9;
                        if (m13947h8 == 0) {
                            this.f32329j = -1;
                        } else {
                            int i14 = (m13947h8 - 3) - m13947h9;
                            this.f32329j = i14;
                            if (i14 < 0) {
                                StringBuilder sb3 = new StringBuilder(47);
                                sb3.append("Found negative packet payload size: ");
                                sb3.append(i14);
                                Log.w("PesReader", sb3.toString());
                                this.f32329j = -1;
                            }
                        }
                        i13 = 2;
                    }
                    m9025d(i13);
                    i6 = -1;
                } else {
                    i2 = -1;
                    i6 = i2;
                }
            } else {
                c6694la.m13632s(c6694la.m13639l());
            }
        }
    }
}

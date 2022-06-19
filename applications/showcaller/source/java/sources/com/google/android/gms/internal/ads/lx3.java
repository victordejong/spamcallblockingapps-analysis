package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lx3.class */
final class lx3 {

    /* renamed from: c */
    private boolean f26328c;

    /* renamed from: d */
    private boolean f26329d;

    /* renamed from: e */
    private boolean f26330e;

    /* renamed from: a */
    private final C6990ta f26326a = new C6990ta(0);

    /* renamed from: f */
    private long f26331f = -9223372036854775807L;

    /* renamed from: g */
    private long f26332g = -9223372036854775807L;

    /* renamed from: h */
    private long f26333h = -9223372036854775807L;

    /* renamed from: b */
    private final C6694la f26327b = new C6694la();

    public lx3(int i) {
    }

    /* renamed from: e */
    private final int m13399e(vq3 vq3Var) {
        C6694la c6694la = this.f26327b;
        byte[] bArr = C7101wa.f31480f;
        int length = bArr.length;
        c6694la.m13641j(bArr, 0);
        this.f26328c = true;
        vq3Var.mo9884i();
        return 0;
    }

    /* renamed from: a */
    public final boolean m13403a() {
        return this.f26328c;
    }

    /* JADX WARN: Type inference failed for: r0v132, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* renamed from: b */
    public final int m13402b(vq3 vq3Var, rr3 rr3Var, int i) {
        int i2;
        char c;
        int i3;
        char c2;
        if (i <= 0) {
            m13399e(vq3Var);
            return 0;
        } else if (!this.f26330e) {
            long mo9464n = vq3Var.mo9464n();
            int min = (int) Math.min(112800L, mo9464n);
            long j = mo9464n - min;
            if (vq3Var.mo9465m() != j) {
                rr3Var.f29206a = j;
                i3 = 1;
            } else {
                this.f26327b.m13642i(min);
                vq3Var.mo9884i();
                ((pq3) vq3Var).mo9882l(this.f26327b.m13634q(), 0, min, false);
                C6694la c6694la = this.f26327b;
                int m13636o = c6694la.m13636o();
                int m13638m = c6694la.m13638m();
                int i4 = m13638m - 188;
                while (true) {
                    c2 = 1;
                    if (i4 < m13636o) {
                        break;
                    }
                    byte[] m13634q = c6694la.m13634q();
                    int i5 = -4;
                    int i6 = 0;
                    while (true) {
                        if (i5 > 4) {
                            break;
                        }
                        int i7 = (i5 * 188) + i4;
                        if (i7 < m13636o || i7 >= m13638m || m13634q[i7] != 71) {
                            i6 = 0;
                        } else {
                            int i8 = i6 + 1;
                            i6 = i8;
                            if (i8 == 5) {
                                c2 = vx3.m9836b(c6694la, i4, i);
                                if (c2 != -9223372036854775807L) {
                                    break;
                                }
                            }
                        }
                        i5++;
                    }
                    i4--;
                }
                this.f26332g = c2;
                this.f26330e = true;
                i3 = 0;
            }
            return i3;
        } else if (this.f26332g == -9223372036854775807L) {
            m13399e(vq3Var);
            return 0;
        } else if (this.f26329d) {
            long j2 = this.f26331f;
            if (j2 == -9223372036854775807L) {
                m13399e(vq3Var);
                return 0;
            }
            long m10756e = this.f26326a.m10756e(this.f26332g) - this.f26326a.m10756e(j2);
            this.f26333h = m10756e;
            if (m10756e < 0) {
                StringBuilder sb = new StringBuilder(65);
                sb.append("Invalid duration: ");
                sb.append(m10756e);
                sb.append(". Using TIME_UNSET instead.");
                Log.w("TsDurationReader", sb.toString());
                this.f26333h = -9223372036854775807L;
            }
            m13399e(vq3Var);
            return 0;
        } else {
            int min2 = (int) Math.min(112800L, vq3Var.mo9464n());
            if (vq3Var.mo9465m() != 0) {
                rr3Var.f29206a = 0L;
                i2 = 1;
            } else {
                this.f26327b.m13642i(min2);
                vq3Var.mo9884i();
                ((pq3) vq3Var).mo9882l(this.f26327b.m13634q(), 0, min2, false);
                C6694la c6694la2 = this.f26327b;
                int m13636o2 = c6694la2.m13636o();
                int m13638m2 = c6694la2.m13638m();
                while (true) {
                    c = 1;
                    if (m13636o2 >= m13638m2) {
                        break;
                    }
                    if (c6694la2.m13634q()[m13636o2] == 71) {
                        c = vx3.m9836b(c6694la2, m13636o2, i);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    m13636o2++;
                }
                this.f26331f = c;
                this.f26329d = true;
                i2 = 0;
            }
            return i2;
        }
    }

    /* renamed from: c */
    public final long m13401c() {
        return this.f26333h;
    }

    /* renamed from: d */
    public final C6990ta m13400d() {
        return this.f26326a;
    }
}

package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bx3.class */
final class bx3 {

    /* renamed from: c */
    private boolean f21022c;

    /* renamed from: d */
    private boolean f21023d;

    /* renamed from: e */
    private boolean f21024e;

    /* renamed from: a */
    private final C6990ta f21020a = new C6990ta(0);

    /* renamed from: f */
    private long f21025f = -9223372036854775807L;

    /* renamed from: g */
    private long f21026g = -9223372036854775807L;

    /* renamed from: h */
    private long f21027h = -9223372036854775807L;

    /* renamed from: b */
    private final C6694la f21021b = new C6694la();

    /* renamed from: e */
    public static long m16177e(C6694la c6694la) {
        int m13636o = c6694la.m13636o();
        if (c6694la.m13639l() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        c6694la.m13630u(bArr, 0, 9);
        c6694la.m13635p(m13636o);
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1 || (bArr[8] & 3) != 3) {
            return -9223372036854775807L;
        }
        long j = bArr[0];
        byte b = bArr[1];
        long j2 = bArr[2];
        return ((bArr[3] & 255) << 5) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | ((b & 255) << 20) | (((j2 & 248) >> 3) << 15) | ((j2 & 3) << 13) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: f */
    private final int m16176f(vq3 vq3Var) {
        C6694la c6694la = this.f21021b;
        byte[] bArr = C7101wa.f31480f;
        int length = bArr.length;
        c6694la.m13641j(bArr, 0);
        this.f21022c = true;
        vq3Var.mo9884i();
        return 0;
    }

    /* renamed from: g */
    private static final int m16175g(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: a */
    public final boolean m16181a() {
        return this.f21022c;
    }

    /* renamed from: b */
    public final C6990ta m16180b() {
        return this.f21020a;
    }

    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* renamed from: c */
    public final int m16179c(vq3 vq3Var, rr3 rr3Var) {
        int i;
        char c;
        char c2;
        int i2 = 1;
        if (!this.f21024e) {
            long mo9464n = vq3Var.mo9464n();
            int min = (int) Math.min(20000L, mo9464n);
            long j = mo9464n - min;
            if (vq3Var.mo9465m() != j) {
                rr3Var.f29206a = j;
            } else {
                this.f21021b.m13642i(min);
                vq3Var.mo9884i();
                ((pq3) vq3Var).mo9882l(this.f21021b.m13634q(), 0, min, false);
                C6694la c6694la = this.f21021b;
                int m13636o = c6694la.m13636o();
                int m13638m = c6694la.m13638m() - 4;
                while (true) {
                    c2 = 1;
                    if (m13638m < m13636o) {
                        break;
                    }
                    if (m16175g(c6694la.m13634q(), m13638m) == 442) {
                        c6694la.m13635p(m13638m + 4);
                        c2 = m16177e(c6694la);
                        if (c2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    m13638m--;
                }
                this.f21026g = c2;
                this.f21024e = true;
                i2 = 0;
            }
            return i2;
        } else if (this.f21026g == -9223372036854775807L) {
            m16176f(vq3Var);
            return 0;
        } else if (this.f21023d) {
            long j2 = this.f21025f;
            if (j2 == -9223372036854775807L) {
                m16176f(vq3Var);
                return 0;
            }
            long m10756e = this.f21020a.m10756e(this.f21026g) - this.f21020a.m10756e(j2);
            this.f21027h = m10756e;
            if (m10756e < 0) {
                StringBuilder sb = new StringBuilder(65);
                sb.append("Invalid duration: ");
                sb.append(m10756e);
                sb.append(". Using TIME_UNSET instead.");
                Log.w("PsDurationReader", sb.toString());
                this.f21027h = -9223372036854775807L;
            }
            m16176f(vq3Var);
            return 0;
        } else {
            int min2 = (int) Math.min(20000L, vq3Var.mo9464n());
            if (vq3Var.mo9465m() != 0) {
                rr3Var.f29206a = 0L;
                i = 1;
            } else {
                this.f21021b.m13642i(min2);
                vq3Var.mo9884i();
                ((pq3) vq3Var).mo9882l(this.f21021b.m13634q(), 0, min2, false);
                C6694la c6694la2 = this.f21021b;
                int m13636o2 = c6694la2.m13636o();
                int m13638m2 = c6694la2.m13638m();
                while (true) {
                    c = 1;
                    if (m13636o2 >= m13638m2 - 3) {
                        break;
                    }
                    if (m16175g(c6694la2.m13634q(), m13636o2) == 442) {
                        c6694la2.m13635p(m13636o2 + 4);
                        c = m16177e(c6694la2);
                        if (c != -9223372036854775807L) {
                            break;
                        }
                    }
                    m13636o2++;
                }
                this.f21025f = c;
                this.f21023d = true;
                i = 0;
            }
            return i;
        }
    }

    /* renamed from: d */
    public final long m16178d() {
        return this.f21027h;
    }
}

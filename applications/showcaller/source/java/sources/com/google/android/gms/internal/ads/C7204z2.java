package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* renamed from: com.google.android.gms.internal.ads.z2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z2.class */
public final class C7204z2 {

    /* renamed from: a */
    private final long f32769a;

    /* renamed from: b */
    private final long f32770b;

    /* renamed from: c */
    private long f32771c = -9223372036854775807L;

    /* renamed from: d */
    private long f32772d = -9223372036854775807L;

    /* renamed from: f */
    private long f32774f = -9223372036854775807L;

    /* renamed from: g */
    private long f32775g = -9223372036854775807L;

    /* renamed from: j */
    private float f32778j = 0.97f;

    /* renamed from: i */
    private float f32777i = 1.03f;

    /* renamed from: k */
    private float f32779k = 1.0f;

    /* renamed from: l */
    private long f32780l = -9223372036854775807L;

    /* renamed from: e */
    private long f32773e = -9223372036854775807L;

    /* renamed from: h */
    private long f32776h = -9223372036854775807L;

    /* renamed from: m */
    private long f32781m = -9223372036854775807L;

    /* renamed from: n */
    private long f32782n = -9223372036854775807L;

    public /* synthetic */ C7204z2(float f, float f2, long j, float f3, long j2, long j3, float f4, C7167y2 c7167y2) {
        this.f32769a = j2;
        this.f32770b = j3;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: f */
    private final void m8555f() {
        char c;
        char c2 = this.f32771c;
        if (c2 != -9223372036854775807L) {
            ?? r0 = this.f32772d;
            if (r0 != -9223372036854775807L) {
                c2 = r0;
            }
            ?? r02 = this.f32774f;
            char c3 = c2;
            if (r02 != -9223372036854775807L) {
                c3 = c2;
                if (c2 < r02) {
                    c3 = r02;
                }
            }
            ?? r03 = this.f32775g;
            c = c3;
            if (r03 != -9223372036854775807L) {
                c = c3;
                if (c3 > r03) {
                    c = r03;
                }
            }
        } else {
            c = 1;
        }
        if (this.f32773e == c) {
            return;
        }
        this.f32773e = c;
        this.f32776h = c;
        this.f32781m = -9223372036854775807L;
        this.f32782n = -9223372036854775807L;
        this.f32780l = -9223372036854775807L;
    }

    /* renamed from: g */
    private static long m8554g(long j, long j2, float f) {
        return (((float) j) * 0.999f) + (((float) j2) * 9.999871E-4f);
    }

    /* renamed from: a */
    public final void m8560a(C6503g5 c6503g5) {
        long j = c6503g5.f23241c;
        this.f32771c = C7130x2.m9368b(-9223372036854775807L);
        this.f32774f = C7130x2.m9368b(-9223372036854775807L);
        this.f32775g = C7130x2.m9368b(-9223372036854775807L);
        this.f32778j = 0.97f;
        this.f32777i = 1.03f;
        m8555f();
    }

    /* renamed from: b */
    public final void m8559b(long j) {
        this.f32772d = j;
        m8555f();
    }

    /* renamed from: c */
    public final void m8558c() {
        long j = this.f32776h;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.f32770b;
        this.f32776h = j2;
        long j3 = this.f32775g;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.f32776h = j3;
        }
        this.f32780l = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* renamed from: d */
    public final float m8557d(long j, long j2) {
        char c;
        if (this.f32771c != -9223372036854775807L) {
            long j3 = j - j2;
            long j4 = this.f32781m;
            if (j4 == -9223372036854775807L) {
                this.f32781m = j3;
                this.f32782n = 0L;
            } else {
                long max = Math.max(j3, m8554g(j4, j3, 0.999f));
                this.f32781m = max;
                this.f32782n = m8554g(this.f32782n, Math.abs(j3 - max), 0.999f);
            }
            if (this.f32780l != -9223372036854775807L && SystemClock.elapsedRealtime() - this.f32780l < 1000) {
                return this.f32779k;
            }
            this.f32780l = SystemClock.elapsedRealtime();
            long j5 = this.f32781m + (this.f32782n * 3);
            if (this.f32776h > j5) {
                float m9368b = (float) C7130x2.m9368b(1000L);
                int i = 1;
                ?? r0 = {j5, this.f32773e, this.f32776h - (((this.f32779k - 1.0f) * m9368b) + ((this.f32777i - 1.0f) * m9368b))};
                char c2 = r0[0];
                while (true) {
                    c = c2;
                    if (i >= 3) {
                        break;
                    }
                    ?? r02 = r0[i];
                    char c3 = c;
                    if (r02 > c) {
                        c3 = r02;
                    }
                    i++;
                    c2 = c3;
                }
                this.f32776h = c;
            } else {
                ?? m9694d0 = C7101wa.m9694d0(j - (Math.max(0.0f, this.f32779k - 1.0f) / 1.0E-7f), this.f32776h, j5);
                this.f32776h = m9694d0;
                ?? r03 = this.f32775g;
                c = m9694d0;
                if (r03 != -9223372036854775807L) {
                    c = m9694d0;
                    if (m9694d0 > r03) {
                        this.f32776h = r03;
                        c = r03;
                    }
                }
            }
            long j6 = j - c;
            float f = 1.0f;
            if (Math.abs(j6) < this.f32769a) {
                this.f32779k = 1.0f;
            } else {
                f = C7101wa.m9692e0((((float) j6) * 1.0E-7f) + 1.0f, this.f32778j, this.f32777i);
                this.f32779k = f;
            }
            return f;
        }
        return 1.0f;
    }

    /* renamed from: e */
    public final long m8556e() {
        return this.f32776h;
    }
}

package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wo3.class */
final class wo3 {

    /* renamed from: a */
    private long f31647a;

    /* renamed from: b */
    private long f31648b;

    /* renamed from: c */
    private long f31649c;

    /* renamed from: d */
    private long f31650d;

    /* renamed from: e */
    private long f31651e;

    /* renamed from: f */
    private long f31652f;

    /* renamed from: g */
    private final boolean[] f31653g = new boolean[15];

    /* renamed from: h */
    private int f31654h;

    /* renamed from: a */
    public final void m9501a() {
        this.f31650d = 0L;
        this.f31651e = 0L;
        this.f31652f = 0L;
        this.f31654h = 0;
        Arrays.fill(this.f31653g, false);
    }

    /* renamed from: b */
    public final boolean m9500b() {
        return this.f31650d > 15 && this.f31654h == 0;
    }

    /* renamed from: c */
    public final boolean m9499c() {
        long j = this.f31650d;
        if (j == 0) {
            return false;
        }
        return this.f31653g[(int) ((j - 1) % 15)];
    }

    /* renamed from: d */
    public final long m9498d() {
        return this.f31652f;
    }

    /* renamed from: e */
    public final long m9497e() {
        long j = this.f31651e;
        if (j == 0) {
            return 0L;
        }
        return this.f31652f / j;
    }

    /* renamed from: f */
    public final void m9496f(long j) {
        long j2 = this.f31650d;
        if (j2 == 0) {
            this.f31647a = j;
        } else if (j2 == 1) {
            long j3 = j - this.f31647a;
            this.f31648b = j3;
            this.f31652f = j3;
            this.f31651e = 1L;
        } else {
            long j4 = j - this.f31649c;
            int i = (int) (j2 % 15);
            if (Math.abs(j4 - this.f31648b) <= 1000000) {
                this.f31651e++;
                this.f31652f += j4;
                boolean[] zArr = this.f31653g;
                if (zArr[i]) {
                    zArr[i] = false;
                    this.f31654h--;
                }
            } else {
                boolean[] zArr2 = this.f31653g;
                if (!zArr2[i]) {
                    zArr2[i] = true;
                    this.f31654h++;
                }
            }
        }
        this.f31650d++;
        this.f31649c = j;
    }
}

package com.google.android.exoplayer2.video;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/c.class */
final class c {

    /* renamed from: c  reason: collision with root package name */
    boolean f22391c;

    /* renamed from: d  reason: collision with root package name */
    boolean f22392d;
    int f;

    /* renamed from: a  reason: collision with root package name */
    a f22389a = new a();

    /* renamed from: b  reason: collision with root package name */
    a f22390b = new a();
    long e = -9223372036854775807L;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f22393a;

        /* renamed from: b  reason: collision with root package name */
        long f22394b;

        /* renamed from: c  reason: collision with root package name */
        final boolean[] f22395c = new boolean[15];

        /* renamed from: d  reason: collision with root package name */
        private long f22396d;
        private long e;
        private long f;
        private long g;
        private int h;

        public final void a() {
            this.f22393a = 0L;
            this.g = 0L;
            this.f22394b = 0L;
            this.h = 0;
            Arrays.fill(this.f22395c, false);
        }

        public final void a(long j) {
            long j2 = this.f22393a;
            if (j2 == 0) {
                this.f22396d = j;
            } else if (j2 == 1) {
                long j3 = j - this.f22396d;
                this.e = j3;
                this.f22394b = j3;
                this.g = 1L;
            } else {
                long j4 = j - this.f;
                int i = (int) (j2 % 15);
                if (Math.abs(j4 - this.e) <= 1000000) {
                    this.g++;
                    this.f22394b += j4;
                    boolean[] zArr = this.f22395c;
                    if (zArr[i]) {
                        zArr[i] = false;
                        this.h--;
                    }
                } else {
                    boolean[] zArr2 = this.f22395c;
                    if (!zArr2[i]) {
                        zArr2[i] = true;
                        this.h++;
                    }
                }
            }
            this.f22393a++;
            this.f = j;
        }

        public final boolean b() {
            return this.f22393a > 15 && this.h == 0;
        }

        public final long c() {
            long j = this.g;
            if (j == 0) {
                return 0L;
            }
            return this.f22394b / j;
        }
    }

    public final long a() {
        if (this.f22389a.b()) {
            return this.f22389a.f22394b;
        }
        return -9223372036854775807L;
    }

    public final float b() {
        if (this.f22389a.b()) {
            return (float) (1.0E9d / this.f22389a.c());
        }
        return -1.0f;
    }
}

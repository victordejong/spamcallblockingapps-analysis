package com.google.android.exoplayer2.video;

import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.video.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/c.class */
final class C11649c {

    /* renamed from: c */
    boolean f38803c;

    /* renamed from: d */
    boolean f38804d;

    /* renamed from: f */
    int f38806f;

    /* renamed from: a */
    C11650a f38801a = new C11650a();

    /* renamed from: b */
    C11650a f38802b = new C11650a();

    /* renamed from: e */
    long f38805e = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.video.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/video/c$a.class */
    public static final class C11650a {

        /* renamed from: a */
        long f38807a;

        /* renamed from: b */
        long f38808b;

        /* renamed from: c */
        final boolean[] f38809c = new boolean[15];

        /* renamed from: d */
        private long f38810d;

        /* renamed from: e */
        private long f38811e;

        /* renamed from: f */
        private long f38812f;

        /* renamed from: g */
        private long f38813g;

        /* renamed from: h */
        private int f38814h;

        /* renamed from: a */
        public final void m19736a() {
            this.f38807a = 0L;
            this.f38813g = 0L;
            this.f38808b = 0L;
            this.f38814h = 0;
            Arrays.fill(this.f38809c, false);
        }

        /* renamed from: a */
        public final void m19735a(long j) {
            long j2 = this.f38807a;
            if (j2 == 0) {
                this.f38810d = j;
            } else if (j2 == 1) {
                long j3 = j - this.f38810d;
                this.f38811e = j3;
                this.f38808b = j3;
                this.f38813g = 1L;
            } else {
                long j4 = j - this.f38812f;
                int i = (int) (j2 % 15);
                if (Math.abs(j4 - this.f38811e) <= 1000000) {
                    this.f38813g++;
                    this.f38808b += j4;
                    boolean[] zArr = this.f38809c;
                    if (zArr[i]) {
                        zArr[i] = false;
                        this.f38814h--;
                    }
                } else {
                    boolean[] zArr2 = this.f38809c;
                    if (!zArr2[i]) {
                        zArr2[i] = true;
                        this.f38814h++;
                    }
                }
            }
            this.f38807a++;
            this.f38812f = j;
        }

        /* renamed from: b */
        public final boolean m19734b() {
            return this.f38807a > 15 && this.f38814h == 0;
        }

        /* renamed from: c */
        public final long m19733c() {
            long j = this.f38813g;
            if (j == 0) {
                return 0L;
            }
            return this.f38808b / j;
        }
    }

    /* renamed from: a */
    public final long m19738a() {
        if (this.f38801a.m19734b()) {
            return this.f38801a.f38808b;
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public final float m19737b() {
        if (this.f38801a.m19734b()) {
            return (float) (1.0E9d / this.f38801a.m19733c());
        }
        return -1.0f;
    }
}

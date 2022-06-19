package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
/* renamed from: com.google.firebase.crashlytics.d.h.r */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/r.class */
final class C8992r extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c {

    /* renamed from: a */
    private final Double f39169a;

    /* renamed from: b */
    private final int f39170b;

    /* renamed from: c */
    private final boolean f39171c;

    /* renamed from: d */
    private final int f39172d;

    /* renamed from: e */
    private final long f39173e;

    /* renamed from: f */
    private final long f39174f;

    /* renamed from: com.google.firebase.crashlytics.d.h.r$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/r$b.class */
    public static final class C8994b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a {

        /* renamed from: a */
        private Double f39175a;

        /* renamed from: b */
        private Integer f39176b;

        /* renamed from: c */
        private Boolean f39177c;

        /* renamed from: d */
        private Integer f39178d;

        /* renamed from: e */
        private Long f39179e;

        /* renamed from: f */
        private Long f39180f;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c mo2111a() {
            String str = "";
            if (this.f39176b == null) {
                str = " batteryVelocity";
            }
            String str2 = str;
            if (this.f39177c == null) {
                str2 = str + " proximityOn";
            }
            String str3 = str2;
            if (this.f39178d == null) {
                str3 = str2 + " orientation";
            }
            String str4 = str3;
            if (this.f39179e == null) {
                str4 = str3 + " ramUsed";
            }
            String str5 = str4;
            if (this.f39180f == null) {
                str5 = str4 + " diskUsed";
            }
            if (str5.isEmpty()) {
                return new C8992r(this.f39175a, this.f39176b.intValue(), this.f39177c.booleanValue(), this.f39178d.intValue(), this.f39179e.longValue(), this.f39180f.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a mo2110b(Double d) {
            this.f39175a = d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a mo2109c(int i) {
            this.f39176b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a mo2108d(long j) {
            this.f39180f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a mo2107e(int i) {
            this.f39178d = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: f */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a mo2106f(boolean z) {
            this.f39177c = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a
        /* renamed from: g */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c.AbstractC9036a mo2105g(long j) {
            this.f39179e = Long.valueOf(j);
            return this;
        }
    }

    private C8992r(Double d, int i, boolean z, int i2, long j, long j2) {
        this.f39169a = d;
        this.f39170b = i;
        this.f39171c = z;
        this.f39172d = i2;
        this.f39173e = j;
        this.f39174f = j2;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
    /* renamed from: b */
    public Double mo2117b() {
        return this.f39169a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
    /* renamed from: c */
    public int mo2116c() {
        return this.f39170b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
    /* renamed from: d */
    public long mo2115d() {
        return this.f39174f;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
    /* renamed from: e */
    public int mo2114e() {
        return this.f39172d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        if (r5.f39174f == r0.mo2115d()) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r6
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
            if (r0 == 0) goto L73
            r0 = r6
            com.google.firebase.crashlytics.d.h.v$d$d$c r0 = (com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c) r0
            r8 = r0
            r0 = r5
            java.lang.Double r0 = r0.f39169a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            r0 = r8
            java.lang.Double r0 = r0.mo2117b()
            if (r0 != 0) goto L6f
            goto L33
        L28:
            r0 = r6
            r1 = r8
            java.lang.Double r1 = r1.mo2117b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6f
        L33:
            r0 = r5
            int r0 = r0.f39170b
            r1 = r8
            int r1 = r1.mo2116c()
            if (r0 != r1) goto L6f
            r0 = r5
            boolean r0 = r0.f39171c
            r1 = r8
            boolean r1 = r1.mo2112g()
            if (r0 != r1) goto L6f
            r0 = r5
            int r0 = r0.f39172d
            r1 = r8
            int r1 = r1.mo2114e()
            if (r0 != r1) goto L6f
            r0 = r5
            long r0 = r0.f39173e
            r1 = r8
            long r1 = r1.mo2113f()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L6f
            r0 = r5
            long r0 = r0.f39174f
            r1 = r8
            long r1 = r1.mo2115d()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L6f
            goto L71
        L6f:
            r0 = 0
            r7 = r0
        L71:
            r0 = r7
            return r0
        L73:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.p293d.p297h.C8992r.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
    /* renamed from: f */
    public long mo2113f() {
        return this.f39173e;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9035c
    /* renamed from: g */
    public boolean mo2112g() {
        return this.f39171c;
    }

    public int hashCode() {
        Double d = this.f39169a;
        int hashCode = d == null ? 0 : d.hashCode();
        int i = this.f39170b;
        int i2 = this.f39171c ? 1231 : 1237;
        int i3 = this.f39172d;
        long j = this.f39173e;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.f39174f;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f39169a + ", batteryVelocity=" + this.f39170b + ", proximityOn=" + this.f39171c + ", orientation=" + this.f39172d + ", ramUsed=" + this.f39173e + ", diskUsed=" + this.f39174f + "}";
    }
}

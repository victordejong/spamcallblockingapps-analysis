package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eu3.class */
public final class eu3 implements bu3 {

    /* renamed from: a */
    private final int f22546a;

    /* renamed from: b */
    private final int f22547b;

    /* renamed from: c */
    private final C6694la f22548c;

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
        if ((r0 % r0) != 0) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public eu3(com.google.android.gms.internal.ads.yt3 r5, com.google.android.gms.internal.ads.C7021u4 r6) {
        /*
            r4 = this;
            r0 = r4
            r0.<init>()
            r0 = r5
            com.google.android.gms.internal.ads.la r0 = r0.f32650b
            r5 = r0
            r0 = r4
            r1 = r5
            r0.f22548c = r1
            r0 = r5
            r1 = 12
            r0.m13635p(r1)
            r0 = r5
            int r0 = r0.m13649b()
            r7 = r0
            r0 = r7
            r8 = r0
            java.lang.String r0 = "audio/raw"
            r1 = r6
            java.lang.String r1 = r1.f30511n
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L76
            r0 = r6
            int r0 = r0.f30494C
            r1 = r6
            int r1 = r1.f30492A
            int r0 = com.google.android.gms.internal.ads.C7101wa.m9678s(r0, r1)
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L43
            r0 = r7
            r8 = r0
            r0 = r7
            r1 = r9
            int r0 = r0 % r1
            if (r0 == 0) goto L76
        L43:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 88
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Audio sample size mismatch. stsd sample size: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ", stsz sample size: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "AtomParsers"
            r1 = r6
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.w(r0, r1)
            r0 = r9
            r8 = r0
        L76:
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto L80
            r0 = -1
            r7 = r0
        L80:
            r0 = r4
            r1 = r7
            r0.f22546a = r1
            r0 = r4
            r1 = r5
            int r1 = r1.m13649b()
            r0.f22547b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eu3.<init>(com.google.android.gms.internal.ads.yt3, com.google.android.gms.internal.ads.u4):void");
    }

    @Override // com.google.android.gms.internal.ads.bu3
    /* renamed from: b */
    public final int mo15047b() {
        return this.f22546a;
    }

    @Override // com.google.android.gms.internal.ads.bu3
    /* renamed from: c */
    public final int mo15046c() {
        int i = this.f22546a;
        int i2 = i;
        if (i == -1) {
            i2 = this.f22548c.m13649b();
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.bu3
    public final int zza() {
        return this.f22547b;
    }
}

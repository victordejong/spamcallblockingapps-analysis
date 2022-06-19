package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwa.class */
final class bwa implements dbi<T> {

    /* renamed from: a */
    private final /* synthetic */ long f44911a;

    /* renamed from: b */
    private final /* synthetic */ String f44912b;

    /* renamed from: c */
    private final /* synthetic */ cov f44913c;

    /* renamed from: d */
    private final /* synthetic */ coz f44914d;

    /* renamed from: e */
    private final /* synthetic */ bvx f44915e;

    public bwa(bvx bvxVar, long j, String str, cov covVar, coz cozVar) {
        this.f44915e = bvxVar;
        this.f44911a = j;
        this.f44912b = str;
        this.f44913c = covVar;
        this.f44914d = cozVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13892a(T t) {
        long mo19038b = this.f44915e.f44897a.mo19038b() - this.f44911a;
        bvx.m17598a(this.f44915e, this.f44912b, 0, mo19038b, this.f44913c.f46248aa);
        if (this.f44915e.f44899c) {
            this.f44915e.f44898b.m17597a(this.f44914d, this.f44913c, 0, null, mo19038b);
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42870eU)).booleanValue()) {
            this.f44915e.f44900d.m17618a(this.f44913c, mo19038b, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e4, code lost:
        if (r0.errorCode == 0) goto L33;
     */
    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo13891a(java.lang.Throwable r9) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bwa.mo13891a(java.lang.Throwable):void");
    }
}

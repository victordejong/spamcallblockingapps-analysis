package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwa.class */
final class bwa implements dbi<T> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ long f25248a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f25249b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ cov f25250c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ coz f25251d;
    private final /* synthetic */ bvx e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bwa(bvx bvxVar, long j, String str, cov covVar, coz cozVar) {
        this.e = bvxVar;
        this.f25248a = j;
        this.f25249b = str;
        this.f25250c = covVar;
        this.f25251d = cozVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(T t) {
        long b2 = this.e.f25235a.b() - this.f25248a;
        bvx.a(this.e, this.f25249b, 0, b2, this.f25250c.aa);
        if (this.e.f25237c) {
            this.e.f25236b.a(this.f25251d, this.f25250c, 0, null, b2);
        }
        if (((Boolean) ekb.e().a(aq.eU)).booleanValue()) {
            this.e.f25238d.a(this.f25250c, b2, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e4, code lost:
        if (r0.errorCode == 0) goto L_0x00e7;
     */
    @Override // com.google.android.gms.internal.ads.dbi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.Throwable r9) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bwa.a(java.lang.Throwable):void");
    }
}

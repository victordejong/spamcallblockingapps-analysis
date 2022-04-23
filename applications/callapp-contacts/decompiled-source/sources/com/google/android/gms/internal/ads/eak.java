package com.google.android.gms.internal.ads;

import android.net.Uri;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eak.class */
final class eak implements ecn {

    /* renamed from: b  reason: collision with root package name */
    private final Uri f27524b;

    /* renamed from: c  reason: collision with root package name */
    private final ecb f27525c;

    /* renamed from: d  reason: collision with root package name */
    private final ean f27526d;
    private final ect e;
    private volatile boolean g;
    private long i;
    private final /* synthetic */ eah j;
    private final dyb f = new dyb();
    private boolean h = true;

    /* renamed from: a  reason: collision with root package name */
    long f27523a = -1;

    public eak(eah eahVar, Uri uri, ecb ecbVar, ean eanVar, ect ectVar) {
        this.j = eahVar;
        this.f27524b = (Uri) ecr.a(uri);
        this.f27525c = (ecb) ecr.a(ecbVar);
        this.f27526d = (ean) ecr.a(eanVar);
        this.e = ectVar;
    }

    @Override // com.google.android.gms.internal.ads.ecn
    public final void a() {
        this.g = true;
    }

    public final void a(long j, long j2) {
        this.f.f27390a = j;
        this.i = j2;
        this.h = true;
    }

    @Override // com.google.android.gms.internal.ads.ecn
    public final boolean b() {
        return this.g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.ecn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eak.c():void");
    }
}

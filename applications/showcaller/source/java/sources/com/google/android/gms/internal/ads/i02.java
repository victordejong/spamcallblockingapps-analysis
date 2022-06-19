package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i02.class */
public final class i02<AdT> implements uz2<rj2, AdT> {

    /* renamed from: a */
    private final yn2 f24103a;

    /* renamed from: b */
    private final a31 f24104b;

    /* renamed from: c */
    private final yo2 f24105c;

    /* renamed from: d */
    private final bp2 f24106d;

    /* renamed from: e */
    private final Executor f24107e;

    /* renamed from: f */
    private final ScheduledExecutorService f24108f;

    /* renamed from: g */
    private final az0<AdT> f24109g;

    /* renamed from: h */
    private final e02 f24110h;

    /* renamed from: i */
    private final uw1 f24111i;

    public i02(yn2 yn2Var, e02 e02Var, a31 a31Var, yo2 yo2Var, bp2 bp2Var, az0<AdT> az0Var, Executor executor, ScheduledExecutorService scheduledExecutorService, uw1 uw1Var) {
        this.f24103a = yn2Var;
        this.f24110h = e02Var;
        this.f24104b = a31Var;
        this.f24105c = yo2Var;
        this.f24106d = bp2Var;
        this.f24109g = az0Var;
        this.f24107e = executor;
        this.f24108f = scheduledExecutorService;
        this.f24111i = uw1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01d0  */
    @Override // com.google.android.gms.internal.ads.uz2
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.r03 mo8403a(com.google.android.gms.internal.ads.rj2 r10) {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.i02.mo8403a(java.lang.Object):com.google.android.gms.internal.ads.r03");
    }

    /* renamed from: c */
    public final /* synthetic */ r03 m14517c(rj2 rj2Var, ej2 ej2Var, qw1 qw1Var, Throwable th) {
        e02 e02Var = this.f24110h;
        jj2 jj2Var = rj2Var.f28999b.f28519b;
        r03 m13996h = k03.m13996h(qw1Var.mo8627b(rj2Var, ej2Var), ej2Var.f22206N, TimeUnit.MILLISECONDS, this.f24108f);
        e02Var.m15615e(jj2Var, ej2Var, m13996h);
        return m13996h;
    }
}

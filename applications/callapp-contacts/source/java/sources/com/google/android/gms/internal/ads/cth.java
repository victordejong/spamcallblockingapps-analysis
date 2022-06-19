package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cth.class */
public final class cth implements dbi<O> {

    /* renamed from: a */
    private final /* synthetic */ csu f46516a;

    /* renamed from: b */
    private final /* synthetic */ csz f46517b;

    public cth(csz cszVar, csu csuVar) {
        this.f46517b = cszVar;
        this.f46516a = csuVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13892a(O o) {
        ctg ctgVar;
        ctgVar = this.f46517b.f46506e.f46492d;
        ctgVar.mo17239c(this.f46516a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        ctg ctgVar;
        ctgVar = this.f46517b.f46506e.f46492d;
        ctgVar.mo17241a(this.f46516a, th);
    }
}

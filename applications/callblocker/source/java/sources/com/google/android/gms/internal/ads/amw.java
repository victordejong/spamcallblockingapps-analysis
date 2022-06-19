package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amw.class */
public final class amw implements crh<amn> {

    /* renamed from: a */
    private final /* synthetic */ crh f10023a;

    /* renamed from: b */
    private final /* synthetic */ amt f10024b;

    public amw(amt amtVar, crh crhVar) {
        this.f10024b = amtVar;
        this.f10023a = crhVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(amn amnVar) {
        this.f10024b.m12912a(amnVar.f10010a, this.f10023a);
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        this.f10023a.mo6718a(th);
        this.f10024b.m12910c();
    }
}

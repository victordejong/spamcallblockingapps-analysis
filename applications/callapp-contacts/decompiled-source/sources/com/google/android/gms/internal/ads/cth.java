package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cth.class */
public final class cth implements dbi<O> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ csu f26370a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ csz f26371b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cth(csz cszVar, csu csuVar) {
        this.f26371b = cszVar;
        this.f26370a = csuVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(O o) {
        ctg ctgVar;
        ctgVar = this.f26371b.e.f26348d;
        ctgVar.c(this.f26370a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        ctg ctgVar;
        ctgVar = this.f26371b.e.f26348d;
        ctgVar.a(this.f26370a, th);
    }
}

package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhc.class */
public final class bhc implements dbi<adt> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f24439a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ hi f24440b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bhc(bgy bgyVar, String str, hi hiVar) {
        this.f24439a = str;
        this.f24440b = hiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(adt adtVar) {
        adtVar.a(this.f24439a, this.f24440b);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
    }
}

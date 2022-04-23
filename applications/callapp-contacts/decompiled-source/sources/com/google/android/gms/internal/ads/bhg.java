package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bhg.class */
public final class bhg implements dbi<adt> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f24443a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ hi f24444b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bhg(bgy bgyVar, String str, hi hiVar) {
        this.f24443a = str;
        this.f24444b = hiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(adt adtVar) {
        adtVar.b(this.f24443a, this.f24444b);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
    }
}

package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/i.class */
final class i implements v {

    /* renamed from: a  reason: collision with root package name */
    private ad f28833a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ h f28834b;

    private i(h hVar) {
        this.f28834b = hVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ i(h hVar, g gVar) {
        this(hVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.v
    public final s a() {
        bv.a(this.f28833a, ad.class);
        return new l(this.f28834b, this.f28833a, null);
    }

    @Override // com.google.android.gms.internal.consent_sdk.v
    public final /* synthetic */ v a(ad adVar) {
        this.f28833a = (ad) bv.a(adVar);
        return this;
    }
}

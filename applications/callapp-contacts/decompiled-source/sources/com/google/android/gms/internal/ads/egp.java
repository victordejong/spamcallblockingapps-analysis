package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egp.class */
public final class egp implements efc {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ egn f27819a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public egp(egn egnVar) {
        this.f27819a = egnVar;
    }

    @Override // com.google.android.gms.internal.ads.efc
    public final void a(boolean z) {
        if (z) {
            this.f27819a.a();
        } else {
            egn.a(this.f27819a);
        }
    }
}

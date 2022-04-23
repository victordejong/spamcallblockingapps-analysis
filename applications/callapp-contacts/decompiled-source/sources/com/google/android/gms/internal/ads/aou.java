package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aou.class */
final class aou implements dbi<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ aor f23682a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aou(aor aorVar) {
        this.f23682a = aorVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(Void r4) {
        this.f23682a.f23677c.b(true);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        this.f23682a.f23677c.b(false);
    }
}

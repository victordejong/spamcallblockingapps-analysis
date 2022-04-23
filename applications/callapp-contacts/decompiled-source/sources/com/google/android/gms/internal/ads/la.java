package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/la.class */
public final class la implements zt<ju> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ kz f28144a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public la(kz kzVar) {
        this.f28144a = kzVar;
    }

    @Override // com.google.android.gms.internal.ads.zt
    public final /* synthetic */ void a(ju juVar) {
        final ju juVar2 = juVar;
        zd.e.execute(new Runnable(this, juVar2) { // from class: com.google.android.gms.internal.ads.ld

            /* renamed from: a  reason: collision with root package name */
            private final la f28146a;

            /* renamed from: b  reason: collision with root package name */
            private final ju f28147b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28146a = this;
                this.f28147b = juVar2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                la laVar = this.f28146a;
                ju juVar3 = this.f28147b;
                laVar.f28144a.f28140a.zzg(juVar3);
                juVar3.a();
            }
        });
    }
}

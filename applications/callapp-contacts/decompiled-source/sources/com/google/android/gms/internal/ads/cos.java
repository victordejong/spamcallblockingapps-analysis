package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cos.class */
final class cos implements cal<bhu> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ cop f26175a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cos(cop copVar) {
        this.f26175a = copVar;
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final void a() {
        synchronized (this.f26175a) {
            this.f26175a.f26172d = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.cal
    public final /* synthetic */ void a(bhu bhuVar) {
        bhu bhuVar2;
        bhu bhuVar3 = bhuVar;
        synchronized (this.f26175a) {
            this.f26175a.f26172d = bhuVar3;
            bhuVar2 = this.f26175a.f26172d;
            bhuVar2.h();
        }
    }
}

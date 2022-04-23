package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehc.class */
public final class ehc extends zp<ehh> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ egz f27830a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ehc(egz egzVar) {
        this.f27830a = egzVar;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        egz.a(this.f27830a);
        return super.cancel(z);
    }
}

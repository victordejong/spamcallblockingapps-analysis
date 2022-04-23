package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eaj.class */
final class eaj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ eah f27522a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eaj(eah eahVar) {
        this.f27522a = eahVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f27522a.w) {
            this.f27522a.k.a((ear) this.f27522a);
        }
    }
}

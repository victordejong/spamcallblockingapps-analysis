package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aao.class */
final class aao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbcb f23011a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aao(zzbcb zzbcbVar) {
        this.f23011a = zzbcbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23011a.a("surfaceDestroyed", new String[0]);
    }
}

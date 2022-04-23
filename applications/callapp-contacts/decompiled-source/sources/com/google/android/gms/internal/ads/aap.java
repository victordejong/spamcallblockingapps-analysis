package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aap.class */
final class aap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbcb f23012a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aap(zzbcb zzbcbVar) {
        this.f23012a = zzbcbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f23012a.a("surfaceCreated", new String[0]);
    }
}

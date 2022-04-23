package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aee.class */
final class aee implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbft f23185a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aee(zzbft zzbftVar) {
        this.f23185a = zzbftVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        adt adtVar;
        adtVar = this.f23185a.f28613a;
        adtVar.destroy();
    }
}

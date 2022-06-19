package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aee.class */
final class aee implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzbft f40056a;

    public aee(zzbft zzbftVar) {
        this.f40056a = zzbftVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        adt adtVar;
        adtVar = this.f40056a.f50208a;
        adtVar.destroy();
    }
}

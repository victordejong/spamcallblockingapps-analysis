package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clc.class */
final /* synthetic */ class clc implements Runnable {

    /* renamed from: a */
    private final bza f46012a;

    private clc(bza bzaVar) {
        this.f46012a = bzaVar;
    }

    /* renamed from: a */
    public static Runnable m17424a(bza bzaVar) {
        return new clc(bzaVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f46012a.mo17408a();
    }
}

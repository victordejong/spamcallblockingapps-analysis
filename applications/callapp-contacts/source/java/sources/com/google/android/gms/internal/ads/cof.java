package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cof.class */
final /* synthetic */ class cof implements Runnable {

    /* renamed from: a */
    private final cnc f46176a;

    private cof(cnc cncVar) {
        this.f46176a = cncVar;
    }

    /* renamed from: a */
    public static Runnable m17385a(cnc cncVar) {
        return new cof(cncVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f46176a.mo17408a();
    }
}

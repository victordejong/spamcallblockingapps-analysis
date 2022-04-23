package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cof.class */
final /* synthetic */ class cof implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final cnc f26146a;

    private cof(cnc cncVar) {
        this.f26146a = cncVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Runnable a(cnc cncVar) {
        return new cof(cncVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f26146a.a();
    }
}

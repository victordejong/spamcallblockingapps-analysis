package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eai.class */
final class eai implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ean f48496a;

    /* renamed from: b */
    private final /* synthetic */ eah f48497b;

    public eai(eah eahVar, ean eanVar) {
        this.f48497b = eahVar;
        this.f48496a = eanVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ean eanVar = this.f48496a;
        if (eanVar.f48513a != null) {
            eanVar.f48513a = null;
        }
        int size = this.f48497b.f48479j.size();
        for (int i = 0; i < size; i++) {
            this.f48497b.f48479j.valueAt(i).m15335a();
        }
    }
}

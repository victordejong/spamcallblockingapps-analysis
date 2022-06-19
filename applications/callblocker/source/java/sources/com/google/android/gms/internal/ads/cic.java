package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cic.class */
public final class cic implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ cfb f13085a;

    public cic(cfb cfbVar) {
        this.f13085a = cfbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        clq clqVar;
        Object obj2;
        obj = this.f13085a.f12869j;
        synchronized (obj) {
            z = this.f13085a.f12870k;
            if (!z) {
                this.f13085a.f12870k = true;
                try {
                    this.f13085a.m11401c();
                } catch (Exception e) {
                    clqVar = this.f13085a.f12865f;
                    clqVar.m11085a(2023, -1L, e);
                }
                obj2 = this.f13085a.f12869j;
                synchronized (obj2) {
                    this.f13085a.f12870k = false;
                }
            }
        }
    }
}

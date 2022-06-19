package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m.class */
public final class RunnableC6720m implements Runnable {

    /* renamed from: d */
    final /* synthetic */ C6757n f26367d;

    public RunnableC6720m(C6757n c6757n) {
        this.f26367d = c6757n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Object obj2;
        mr2 mr2Var;
        obj = this.f26367d.f26938o;
        synchronized (obj) {
            z = this.f26367d.f26939p;
            if (!z) {
                this.f26367d.f26939p = true;
                try {
                    C6757n.m13027p(this.f26367d);
                } catch (Exception e) {
                    mr2Var = this.f26367d.f26933j;
                    mr2Var.m13100c(2023, -1L, e);
                }
                obj2 = this.f26367d.f26938o;
                synchronized (obj2) {
                    this.f26367d.f26939p = false;
                }
            }
        }
    }
}

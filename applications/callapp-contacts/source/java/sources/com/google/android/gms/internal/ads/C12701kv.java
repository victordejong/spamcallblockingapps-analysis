package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.kv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kv.class */
public final class C12701kv extends C13106zs<AbstractC12709lc> {

    /* renamed from: a */
    final C12705kz f49450a;

    /* renamed from: c */
    private final Object f49451c = new Object();

    /* renamed from: d */
    private boolean f49452d;

    public C12701kv(C12705kz c12705kz) {
        this.f49450a = c12705kz;
    }

    /* renamed from: a */
    public final void m14553a() {
        synchronized (this.f49451c) {
            if (this.f49452d) {
                return;
            }
            this.f49452d = true;
            m13896a(new C12700ku(this), new C13104zq());
            m13896a(new C12703kx(this), new C12702kw(this));
        }
    }
}

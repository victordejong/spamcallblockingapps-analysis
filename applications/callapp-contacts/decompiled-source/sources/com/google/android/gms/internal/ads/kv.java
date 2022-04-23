package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kv.class */
public final class kv extends zs<lc> {

    /* renamed from: a  reason: collision with root package name */
    final kz f28134a;

    /* renamed from: c  reason: collision with root package name */
    private final Object f28135c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private boolean f28136d;

    public kv(kz kzVar) {
        this.f28134a = kzVar;
    }

    public final void a() {
        synchronized (this.f28135c) {
            if (!this.f28136d) {
                this.f28136d = true;
                a(new ku(this), new zq());
                a(new kx(this), new kw(this));
            }
        }
    }
}

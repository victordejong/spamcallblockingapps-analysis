package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sz0.class */
public final class sz0 implements AbstractC5653o {

    /* renamed from: d */
    private final g41 f29743d;

    /* renamed from: e */
    private final AtomicBoolean f29744e = new AtomicBoolean(false);

    /* renamed from: f */
    private final AtomicBoolean f29745f = new AtomicBoolean(false);

    public sz0(g41 g41Var) {
        this.f29743d = g41Var;
    }

    /* renamed from: c */
    private final void m10883c() {
        if (!this.f29745f.get()) {
            this.f29745f.set(true);
            this.f29743d.zza();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        this.f29744e.set(true);
        m10883c();
    }

    /* renamed from: b */
    public final boolean m10884b() {
        return this.f29744e.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
        m10883c();
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        this.f29743d.m14985c();
    }
}

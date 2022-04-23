package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrh.class */
public final class zzbrh implements zzp {

    /* renamed from: a */
    public final zzbvh f25400a;

    /* renamed from: b */
    public AtomicBoolean f25401b = new AtomicBoolean(false);

    public zzbrh(zzbvh zzbvhVar) {
        this.f25400a = zzbvhVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        this.f25401b.set(true);
        this.f25400a.m15022q();
    }

    /* renamed from: a */
    public final boolean m15135a() {
        return this.f25401b.get();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
        this.f25400a.m15020u();
    }
}

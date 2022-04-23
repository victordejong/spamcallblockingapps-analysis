package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aom.class */
public final class aom implements zzp {

    /* renamed from: a  reason: collision with root package name */
    AtomicBoolean f23668a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private final asp f23669b;

    public aom(asp aspVar) {
        this.f23669b = aspVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        this.f23668a.set(true);
        this.f23669b.a();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        this.f23669b.c();
    }
}

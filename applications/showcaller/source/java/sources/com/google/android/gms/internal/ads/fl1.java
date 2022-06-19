package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fl1.class */
public final class fl1 implements t31 {

    /* renamed from: d */
    private final wn0 f22964d;

    public fl1(wn0 wn0Var) {
        this.f22964d = wn0Var;
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: U */
    public final void mo10844U(Context context) {
        wn0 wn0Var = this.f22964d;
        if (wn0Var != null) {
            wn0Var.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: p */
    public final void mo10843p(Context context) {
        wn0 wn0Var = this.f22964d;
        if (wn0Var != null) {
            wn0Var.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: r */
    public final void mo10842r(Context context) {
        wn0 wn0Var = this.f22964d;
        if (wn0Var != null) {
            wn0Var.destroy();
        }
    }
}

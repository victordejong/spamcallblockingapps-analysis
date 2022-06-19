package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q82.class */
public final class q82 implements va2<Bundle> {

    /* renamed from: a */
    public final dj2 f28342a;

    public q82(dj2 dj2Var) {
        this.f28342a = dj2Var;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        dj2 dj2Var = this.f28342a;
        if (dj2Var != null) {
            bundle2.putBoolean("render_in_browser", dj2Var.m15786b());
            bundle2.putBoolean("disable_ml", this.f28342a.m15785c());
        }
    }
}

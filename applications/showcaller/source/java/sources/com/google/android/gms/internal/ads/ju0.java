package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ju0.class */
public final class ju0 implements t31 {

    /* renamed from: d */
    private final ok2 f24986d;

    public ju0(ok2 ok2Var) {
        this.f24986d = ok2Var;
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: U */
    public final void mo10844U(Context context) {
        try {
            this.f24986d.m12622l();
        } catch (zzfaw e) {
            ei0.m15463g("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: p */
    public final void mo10843p(Context context) {
        try {
            this.f24986d.m12621m();
            if (context == null) {
                return;
            }
            this.f24986d.m12615s(context);
        } catch (zzfaw e) {
            ei0.m15463g("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.t31
    /* renamed from: r */
    public final void mo10842r(Context context) {
        try {
            this.f24986d.m12625i();
        } catch (zzfaw e) {
            ei0.m15463g("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}

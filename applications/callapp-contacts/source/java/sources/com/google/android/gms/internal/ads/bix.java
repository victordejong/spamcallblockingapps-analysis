package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bix.class */
public final class bix implements asg {

    /* renamed from: a */
    private final adt f44081a;

    public bix(adt adtVar) {
        this.f44081a = !((Boolean) ekb.m14831e().m18571a(C12187aq.f42686aw)).booleanValue() ? null : adtVar;
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: a */
    public final void mo17741a(Context context) {
        adt adtVar = this.f44081a;
        if (adtVar != null) {
            adtVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: b */
    public final void mo17739b(Context context) {
        adt adtVar = this.f44081a;
        if (adtVar != null) {
            adtVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    /* renamed from: c */
    public final void mo17738c(Context context) {
        adt adtVar = this.f44081a;
        if (adtVar != null) {
            adtVar.destroy();
        }
    }
}

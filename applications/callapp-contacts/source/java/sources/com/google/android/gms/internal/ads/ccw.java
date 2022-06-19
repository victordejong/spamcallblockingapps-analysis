package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccw.class */
public final class ccw implements cgy<Bundle> {

    /* renamed from: a */
    private final zzwc f45530a;

    /* renamed from: b */
    private final zzbar f45531b;

    public ccw(zzwc zzwcVar, zzbar zzbarVar) {
        this.f45530a = zzwcVar;
        this.f45531b = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    /* renamed from: a */
    public final /* synthetic */ void mo17450a(Bundle bundle) {
        Bundle bundle2 = bundle;
        int intValue = ((Integer) ekb.m14831e().m18571a(C12187aq.f42769cZ)).intValue();
        zzbar zzbarVar = this.f45531b;
        if (zzbarVar != null && zzbarVar.zzekb >= intValue) {
            bundle2.putString("app_open_version", "2");
        }
        zzwc zzwcVar = this.f45530a;
        if (zzwcVar != null) {
            if (zzwcVar.orientation == 1) {
                bundle2.putString("avo", "p");
            } else if (this.f45530a.orientation != 2) {
            } else {
                bundle2.putString("avo", "l");
            }
        }
    }
}

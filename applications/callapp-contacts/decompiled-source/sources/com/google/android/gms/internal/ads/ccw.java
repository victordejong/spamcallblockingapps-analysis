package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccw.class */
public final class ccw implements cgy<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final zzwc f25603a;

    /* renamed from: b  reason: collision with root package name */
    private final zzbar f25604b;

    public ccw(zzwc zzwcVar, zzbar zzbarVar) {
        this.f25603a = zzwcVar;
        this.f25604b = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.cgy
    public final /* synthetic */ void a(Bundle bundle) {
        Bundle bundle2 = bundle;
        int intValue = ((Integer) ekb.e().a(aq.cZ)).intValue();
        zzbar zzbarVar = this.f25604b;
        if (zzbarVar != null && zzbarVar.zzekb >= intValue) {
            bundle2.putString("app_open_version", "2");
        }
        zzwc zzwcVar = this.f25603a;
        if (zzwcVar == null) {
            return;
        }
        if (zzwcVar.orientation == 1) {
            bundle2.putString("avo", "p");
        } else if (this.f25603a.orientation == 2) {
            bundle2.putString("avo", "l");
        }
    }
}

package com.flurry.sdk;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jx$a.class */
public final class jx$a implements LocationListener {

    /* renamed from: a */
    public final /* synthetic */ jx f3426a;

    public jx$a(jx jxVar) {
        this.f3426a = jxVar;
    }

    @Override // android.location.LocationListener
    public final void onLocationChanged(Location location) {
        if (location != null) {
            jx.a(this.f3426a, location);
        }
        if (jx.c(this.f3426a) >= 3) {
            C0478ku.m4596a(4, jx.h(), "Max location reports reached, stopping");
            jx.b(this.f3426a);
        }
    }

    @Override // android.location.LocationListener
    public final void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public final void onStatusChanged(String str, int i, Bundle bundle) {
    }
}

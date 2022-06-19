package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.ILocationSourceDelegate;
import com.google.android.gms.maps.internal.zzah;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzl.class */
final class zzl extends ILocationSourceDelegate.zza {
    private final /* synthetic */ LocationSource zzt;

    public zzl(GoogleMap googleMap, LocationSource locationSource) {
        this.zzt = locationSource;
    }

    @Override // com.google.android.gms.maps.internal.ILocationSourceDelegate
    public final void activate(zzah zzahVar) {
        this.zzt.activate(new zzm(this, zzahVar));
    }

    @Override // com.google.android.gms.maps.internal.ILocationSourceDelegate
    public final void deactivate() {
        this.zzt.deactivate();
    }
}

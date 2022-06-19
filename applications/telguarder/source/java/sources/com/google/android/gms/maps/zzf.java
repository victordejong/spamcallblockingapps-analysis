package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzae;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzf.class */
final class zzf extends zzae {
    private final /* synthetic */ GoogleMap.OnInfoWindowCloseListener zzn;

    public zzf(GoogleMap googleMap, GoogleMap.OnInfoWindowCloseListener onInfoWindowCloseListener) {
        this.zzn = onInfoWindowCloseListener;
    }

    @Override // com.google.android.gms.maps.internal.zzad
    public final void zzg(zzt zztVar) {
        this.zzn.onInfoWindowClose(new Marker(zztVar));
    }
}

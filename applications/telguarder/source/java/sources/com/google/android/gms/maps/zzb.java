package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzas;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzb.class */
final class zzb extends zzas {
    private final /* synthetic */ GoogleMap.OnMarkerClickListener zzj;

    public zzb(GoogleMap googleMap, GoogleMap.OnMarkerClickListener onMarkerClickListener) {
        this.zzj = onMarkerClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzar
    public final boolean zza(zzt zztVar) {
        return this.zzj.onMarkerClick(new Marker(zztVar));
    }
}

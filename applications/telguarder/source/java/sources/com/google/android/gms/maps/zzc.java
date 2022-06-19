package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzau;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzc.class */
final class zzc extends zzau {
    private final /* synthetic */ GoogleMap.OnMarkerDragListener zzk;

    public zzc(GoogleMap googleMap, GoogleMap.OnMarkerDragListener onMarkerDragListener) {
        this.zzk = onMarkerDragListener;
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzb(zzt zztVar) {
        this.zzk.onMarkerDragStart(new Marker(zztVar));
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzc(zzt zztVar) {
        this.zzk.onMarkerDragEnd(new Marker(zztVar));
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzd(zzt zztVar) {
        this.zzk.onMarkerDrag(new Marker(zztVar));
    }
}

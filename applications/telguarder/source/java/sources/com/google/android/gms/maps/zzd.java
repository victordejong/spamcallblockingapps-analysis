package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzac;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzd.class */
final class zzd extends zzac {
    private final /* synthetic */ GoogleMap.OnInfoWindowClickListener zzl;

    public zzd(GoogleMap googleMap, GoogleMap.OnInfoWindowClickListener onInfoWindowClickListener) {
        this.zzl = onInfoWindowClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzab
    public final void zze(zzt zztVar) {
        this.zzl.onInfoWindowClick(new Marker(zztVar));
    }
}

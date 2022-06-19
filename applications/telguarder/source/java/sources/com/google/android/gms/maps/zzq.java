package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzz;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzbg;
import com.google.android.gms.maps.model.Polyline;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzq.class */
final class zzq extends zzbg {
    private final /* synthetic */ GoogleMap.OnPolylineClickListener zzy;

    public zzq(GoogleMap googleMap, GoogleMap.OnPolylineClickListener onPolylineClickListener) {
        this.zzy = onPolylineClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbf
    public final void zza(zzz zzzVar) {
        this.zzy.onPolylineClick(new Polyline(zzzVar));
    }
}

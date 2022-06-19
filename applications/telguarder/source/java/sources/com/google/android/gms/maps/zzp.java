package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzw;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzbe;
import com.google.android.gms.maps.model.Polygon;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzp.class */
final class zzp extends zzbe {
    private final /* synthetic */ GoogleMap.OnPolygonClickListener zzx;

    public zzp(GoogleMap googleMap, GoogleMap.OnPolygonClickListener onPolygonClickListener) {
        this.zzx = onPolygonClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbd
    public final void zza(zzw zzwVar) {
        this.zzx.onPolygonClick(new Polygon(zzwVar));
    }
}

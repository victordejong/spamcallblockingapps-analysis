package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzag;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zze.class */
final class zze extends zzag {
    private final /* synthetic */ GoogleMap.OnInfoWindowLongClickListener zzm;

    public zze(GoogleMap googleMap, GoogleMap.OnInfoWindowLongClickListener onInfoWindowLongClickListener) {
        this.zzm = onInfoWindowLongClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzaf
    public final void zzf(zzt zztVar) {
        this.zzm.onInfoWindowLongClick(new Marker(zztVar));
    }
}

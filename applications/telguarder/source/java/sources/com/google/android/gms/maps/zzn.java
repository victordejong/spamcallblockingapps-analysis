package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzk;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzy;
import com.google.android.gms.maps.model.GroundOverlay;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzn.class */
final class zzn extends zzy {
    private final /* synthetic */ GoogleMap.OnGroundOverlayClickListener zzv;

    public zzn(GoogleMap googleMap, GoogleMap.OnGroundOverlayClickListener onGroundOverlayClickListener) {
        this.zzv = onGroundOverlayClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzx
    public final void zza(zzk zzkVar) {
        this.zzv.onGroundOverlayClick(new GroundOverlay(zzkVar));
    }
}

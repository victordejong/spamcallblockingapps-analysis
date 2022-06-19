package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzbc;
import com.google.android.gms.maps.model.PointOfInterest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzs.class */
final class zzs extends zzbc {
    private final /* synthetic */ GoogleMap.OnPoiClickListener zzaa;

    public zzs(GoogleMap googleMap, GoogleMap.OnPoiClickListener onPoiClickListener) {
        this.zzaa = onPoiClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbb
    public final void zza(PointOfInterest pointOfInterest) throws RemoteException {
        this.zzaa.onPoiClick(pointOfInterest);
    }
}

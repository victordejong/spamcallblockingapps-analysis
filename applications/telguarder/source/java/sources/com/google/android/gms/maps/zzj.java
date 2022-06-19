package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzba;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzj.class */
final class zzj extends zzba {
    private final /* synthetic */ GoogleMap.OnMyLocationClickListener zzr;

    public zzj(GoogleMap googleMap, GoogleMap.OnMyLocationClickListener onMyLocationClickListener) {
        this.zzr = onMyLocationClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzaz
    public final void onMyLocationClick(Location location) throws RemoteException {
        this.zzr.onMyLocationClick(location);
    }
}

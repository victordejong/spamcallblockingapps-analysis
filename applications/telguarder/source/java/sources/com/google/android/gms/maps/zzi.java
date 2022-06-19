package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzaw;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzi.class */
final class zzi extends zzaw {
    private final /* synthetic */ GoogleMap.OnMyLocationButtonClickListener zzq;

    public zzi(GoogleMap googleMap, GoogleMap.OnMyLocationButtonClickListener onMyLocationButtonClickListener) {
        this.zzq = onMyLocationButtonClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzav
    public final boolean onMyLocationButtonClick() throws RemoteException {
        return this.zzq.onMyLocationButtonClick();
    }
}

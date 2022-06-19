package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzs;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzv.class */
final class zzv extends zzs {
    private final /* synthetic */ GoogleMap.OnCameraMoveListener zzad;

    public zzv(GoogleMap googleMap, GoogleMap.OnCameraMoveListener onCameraMoveListener) {
        this.zzad = onCameraMoveListener;
    }

    @Override // com.google.android.gms.maps.internal.zzr
    public final void onCameraMove() {
        this.zzad.onCameraMove();
    }
}

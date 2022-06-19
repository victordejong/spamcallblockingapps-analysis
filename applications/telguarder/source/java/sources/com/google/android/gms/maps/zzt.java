package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzm;
import com.google.android.gms.maps.model.CameraPosition;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzt.class */
final class zzt extends zzm {
    private final /* synthetic */ GoogleMap.OnCameraChangeListener zzab;

    public zzt(GoogleMap googleMap, GoogleMap.OnCameraChangeListener onCameraChangeListener) {
        this.zzab = onCameraChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzl
    public final void onCameraChange(CameraPosition cameraPosition) {
        this.zzab.onCameraChange(cameraPosition);
    }
}

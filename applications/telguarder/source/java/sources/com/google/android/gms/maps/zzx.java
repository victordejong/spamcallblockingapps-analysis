package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzx.class */
final class zzx extends zzo {
    private final /* synthetic */ GoogleMap.OnCameraIdleListener zzaf;

    public zzx(GoogleMap googleMap, GoogleMap.OnCameraIdleListener onCameraIdleListener) {
        this.zzaf = onCameraIdleListener;
    }

    @Override // com.google.android.gms.maps.internal.zzn
    public final void onCameraIdle() {
        this.zzaf.onCameraIdle();
    }
}

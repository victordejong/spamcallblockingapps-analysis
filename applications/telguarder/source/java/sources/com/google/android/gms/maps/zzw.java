package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzw.class */
final class zzw extends zzq {
    private final /* synthetic */ GoogleMap.OnCameraMoveCanceledListener zzae;

    public zzw(GoogleMap googleMap, GoogleMap.OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        this.zzae = onCameraMoveCanceledListener;
    }

    @Override // com.google.android.gms.maps.internal.zzp
    public final void onCameraMoveCanceled() {
        this.zzae.onCameraMoveCanceled();
    }
}

package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzu.class */
final class zzu extends com.google.android.gms.maps.internal.zzu {
    private final /* synthetic */ GoogleMap.OnCameraMoveStartedListener zzac;

    public zzu(GoogleMap googleMap, GoogleMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.zzac = onCameraMoveStartedListener;
    }

    @Override // com.google.android.gms.maps.internal.zzt
    public final void onCameraMoveStarted(int i) {
        this.zzac.onCameraMoveStarted(i);
    }
}

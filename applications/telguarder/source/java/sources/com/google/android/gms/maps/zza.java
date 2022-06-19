package com.google.android.gms.maps;

import com.google.android.gms.internal.maps.zzn;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzaa;
import com.google.android.gms.maps.model.IndoorBuilding;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zza.class */
final class zza extends zzaa {
    private final /* synthetic */ GoogleMap.OnIndoorStateChangeListener zzi;

    public zza(GoogleMap googleMap, GoogleMap.OnIndoorStateChangeListener onIndoorStateChangeListener) {
        this.zzi = onIndoorStateChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzz
    public final void onIndoorBuildingFocused() {
        this.zzi.onIndoorBuildingFocused();
    }

    @Override // com.google.android.gms.maps.internal.zzz
    public final void zza(zzn zznVar) {
        this.zzi.onIndoorLevelActivated(new IndoorBuilding(zznVar));
    }
}

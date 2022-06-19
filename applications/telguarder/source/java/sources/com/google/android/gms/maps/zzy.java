package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzak;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzy.class */
final class zzy extends zzak {
    private final /* synthetic */ GoogleMap.OnMapClickListener zzag;

    public zzy(GoogleMap googleMap, GoogleMap.OnMapClickListener onMapClickListener) {
        this.zzag = onMapClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzaj
    public final void onMapClick(LatLng latLng) {
        this.zzag.onMapClick(latLng);
    }
}

package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbi;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzae.class */
final class zzae extends zzbi {
    private final /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaCameraChangeListener zzbq;

    public zzae(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaCameraChangeListener onStreetViewPanoramaCameraChangeListener) {
        this.zzbq = onStreetViewPanoramaCameraChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbh
    public final void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzbq.onStreetViewPanoramaCameraChange(streetViewPanoramaCamera);
    }
}

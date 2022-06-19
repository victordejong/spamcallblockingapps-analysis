package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbm;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzaf.class */
final class zzaf extends zzbm {
    private final /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaClickListener zzbr;

    public zzaf(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaClickListener onStreetViewPanoramaClickListener) {
        this.zzbr = onStreetViewPanoramaClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbl
    public final void onStreetViewPanoramaClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        this.zzbr.onStreetViewPanoramaClick(streetViewPanoramaOrientation);
    }
}

package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbo;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/zzag.class */
final class zzag extends zzbo {
    private final /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaLongClickListener zzbs;

    public zzag(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaLongClickListener onStreetViewPanoramaLongClickListener) {
        this.zzbs = onStreetViewPanoramaLongClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbn
    public final void onStreetViewPanoramaLongClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        this.zzbs.onStreetViewPanoramaLongClick(streetViewPanoramaOrientation);
    }
}

package com.google.android.gms.maps;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama.class */
public class StreetViewPanorama {

    /* renamed from: a */
    public final IStreetViewPanoramaDelegate f6242a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener.class */
    public interface OnStreetViewPanoramaCameraChangeListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener.class */
    public interface OnStreetViewPanoramaChangeListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener.class */
    public interface OnStreetViewPanoramaClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener.class */
    public interface OnStreetViewPanoramaLongClickListener {
    }

    public StreetViewPanorama(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) {
        Preconditions.m38897k(iStreetViewPanoramaDelegate, "delegate");
        this.f6242a = iStreetViewPanoramaDelegate;
    }
}

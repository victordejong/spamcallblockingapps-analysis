package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.a.k;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaOptions.class */
public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new p();
    private String panoId;
    private LatLng position;
    private Boolean zzak;
    private Boolean zzap;
    private StreetViewPanoramaCamera zzbx;
    private Integer zzby;
    private Boolean zzbz;
    private Boolean zzca;
    private Boolean zzcb;
    private StreetViewSource zzcc;

    public StreetViewPanoramaOptions() {
        this.zzbz = Boolean.TRUE;
        this.zzap = Boolean.TRUE;
        this.zzca = Boolean.TRUE;
        this.zzcb = Boolean.TRUE;
        this.zzcc = StreetViewSource.DEFAULT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b2, byte b3, byte b4, byte b5, byte b6, StreetViewSource streetViewSource) {
        this.zzbz = Boolean.TRUE;
        this.zzap = Boolean.TRUE;
        this.zzca = Boolean.TRUE;
        this.zzcb = Boolean.TRUE;
        this.zzcc = StreetViewSource.DEFAULT;
        this.zzbx = streetViewPanoramaCamera;
        this.position = latLng;
        this.zzby = num;
        this.panoId = str;
        this.zzbz = k.a(b2);
        this.zzap = k.a(b3);
        this.zzca = k.a(b4);
        this.zzcb = k.a(b5);
        this.zzak = k.a(b6);
        this.zzcc = streetViewSource;
    }

    public final Boolean getPanningGesturesEnabled() {
        return this.zzca;
    }

    public final String getPanoramaId() {
        return this.panoId;
    }

    public final LatLng getPosition() {
        return this.position;
    }

    public final Integer getRadius() {
        return this.zzby;
    }

    public final StreetViewSource getSource() {
        return this.zzcc;
    }

    public final Boolean getStreetNamesEnabled() {
        return this.zzcb;
    }

    public final StreetViewPanoramaCamera getStreetViewPanoramaCamera() {
        return this.zzbx;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.zzak;
    }

    public final Boolean getUserNavigationEnabled() {
        return this.zzbz;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.zzap;
    }

    public final StreetViewPanoramaOptions panningGesturesEnabled(boolean z) {
        this.zzca = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzbx = streetViewPanoramaCamera;
        return this;
    }

    public final StreetViewPanoramaOptions panoramaId(String str) {
        this.panoId = str;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng) {
        this.position = latLng;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, StreetViewSource streetViewSource) {
        this.position = latLng;
        this.zzcc = streetViewSource;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num) {
        this.position = latLng;
        this.zzby = num;
        return this;
    }

    public final StreetViewPanoramaOptions position(LatLng latLng, Integer num, StreetViewSource streetViewSource) {
        this.position = latLng;
        this.zzby = num;
        this.zzcc = streetViewSource;
        return this;
    }

    public final StreetViewPanoramaOptions streetNamesEnabled(boolean z) {
        this.zzcb = Boolean.valueOf(z);
        return this;
    }

    public final String toString() {
        return m.a(this).a("PanoramaId", this.panoId).a("Position", this.position).a("Radius", this.zzby).a("Source", this.zzcc).a("StreetViewPanoramaCamera", this.zzbx).a("UserNavigationEnabled", this.zzbz).a("ZoomGesturesEnabled", this.zzap).a("PanningGesturesEnabled", this.zzca).a("StreetNamesEnabled", this.zzcb).a("UseViewLifecycleInFragment", this.zzak).toString();
    }

    public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean z) {
        this.zzak = Boolean.valueOf(z);
        return this;
    }

    public final StreetViewPanoramaOptions userNavigationEnabled(boolean z) {
        this.zzbz = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, getStreetViewPanoramaCamera(), i, false);
        a.a(parcel, 3, getPanoramaId(), false);
        a.a(parcel, 4, getPosition(), i, false);
        Integer radius = getRadius();
        if (radius != null) {
            a.b(parcel, 5, 4);
            parcel.writeInt(radius.intValue());
        }
        a.a(parcel, 6, k.a(this.zzbz));
        a.a(parcel, 7, k.a(this.zzap));
        a.a(parcel, 8, k.a(this.zzca));
        a.a(parcel, 9, k.a(this.zzcb));
        a.a(parcel, 10, k.a(this.zzak));
        a.a(parcel, 11, getSource(), i, false);
        a.b(parcel, a2);
    }

    public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.zzap = Boolean.valueOf(z);
        return this;
    }
}

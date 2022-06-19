package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
import com.google.android.gms.maps.p362a.C13804k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaOptions.class */
public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new C13842p();
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

    public StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b, byte b2, byte b3, byte b4, byte b5, StreetViewSource streetViewSource) {
        this.zzbz = Boolean.TRUE;
        this.zzap = Boolean.TRUE;
        this.zzca = Boolean.TRUE;
        this.zzcb = Boolean.TRUE;
        this.zzcc = StreetViewSource.DEFAULT;
        this.zzbx = streetViewPanoramaCamera;
        this.position = latLng;
        this.zzby = num;
        this.panoId = str;
        this.zzbz = C13804k.m12204a(b);
        this.zzap = C13804k.m12204a(b2);
        this.zzca = C13804k.m12204a(b3);
        this.zzcb = C13804k.m12204a(b4);
        this.zzak = C13804k.m12204a(b5);
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
        return C12041m.m19169a(this).m19166a("PanoramaId", this.panoId).m19166a("Position", this.position).m19166a("Radius", this.zzby).m19166a("Source", this.zzcc).m19166a("StreetViewPanoramaCamera", this.zzbx).m19166a("UserNavigationEnabled", this.zzbz).m19166a("ZoomGesturesEnabled", this.zzap).m19166a("PanningGesturesEnabled", this.zzca).m19166a("StreetNamesEnabled", this.zzcb).m19166a("UseViewLifecycleInFragment", this.zzak).toString();
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 2, getStreetViewPanoramaCamera(), i, false);
        C12050a.m19104a(parcel, 3, getPanoramaId(), false);
        C12050a.m19107a(parcel, 4, getPosition(), i, false);
        Integer radius = getRadius();
        if (radius != null) {
            C12050a.m19094b(parcel, 5, 4);
            parcel.writeInt(radius.intValue());
        }
        C12050a.m19115a(parcel, 6, C13804k.m12203a(this.zzbz));
        C12050a.m19115a(parcel, 7, C13804k.m12203a(this.zzap));
        C12050a.m19115a(parcel, 8, C13804k.m12203a(this.zzca));
        C12050a.m19115a(parcel, 9, C13804k.m12203a(this.zzcb));
        C12050a.m19115a(parcel, 10, C13804k.m12203a(this.zzak));
        C12050a.m19107a(parcel, 11, getSource(), i, false);
        C12050a.m19095b(parcel, m19116a);
    }

    public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean z) {
        this.zzap = Boolean.valueOf(z);
        return this;
    }
}

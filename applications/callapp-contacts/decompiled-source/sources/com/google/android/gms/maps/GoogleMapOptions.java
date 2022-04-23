package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.a.k;
import com.google.android.gms.maps.g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMapOptions.class */
public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new l();
    private int mapType;
    private Boolean zzaj;
    private Boolean zzak;
    private CameraPosition zzal;
    private Boolean zzam;
    private Boolean zzan;
    private Boolean zzao;
    private Boolean zzap;
    private Boolean zzaq;
    private Boolean zzar;
    private Boolean zzas;
    private Boolean zzat;
    private Boolean zzau;
    private Float zzav;
    private Float zzaw;
    private LatLngBounds zzax;
    private Boolean zzay;

    public GoogleMapOptions() {
        this.mapType = -1;
        this.zzav = null;
        this.zzaw = null;
        this.zzax = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleMapOptions(byte b2, byte b3, int i, CameraPosition cameraPosition, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, byte b11, byte b12, Float f, Float f2, LatLngBounds latLngBounds, byte b13) {
        this.mapType = -1;
        this.zzav = null;
        this.zzaw = null;
        this.zzax = null;
        this.zzaj = k.a(b2);
        this.zzak = k.a(b3);
        this.mapType = i;
        this.zzal = cameraPosition;
        this.zzam = k.a(b4);
        this.zzan = k.a(b5);
        this.zzao = k.a(b6);
        this.zzap = k.a(b7);
        this.zzaq = k.a(b8);
        this.zzar = k.a(b9);
        this.zzas = k.a(b10);
        this.zzat = k.a(b11);
        this.zzau = k.a(b12);
        this.zzav = f;
        this.zzaw = f2;
        this.zzax = latLngBounds;
        this.zzay = k.a(b13);
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, g.a.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(g.a.MapAttrs_mapType)) {
            googleMapOptions.mapType(obtainAttributes.getInt(g.a.MapAttrs_mapType, -1));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_zOrderOnTop)) {
            googleMapOptions.zOrderOnTop(obtainAttributes.getBoolean(g.a.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_useViewLifecycle)) {
            googleMapOptions.useViewLifecycleInFragment(obtainAttributes.getBoolean(g.a.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiCompass)) {
            googleMapOptions.compassEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiCompass, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiRotateGestures)) {
            googleMapOptions.rotateGesturesEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiRotateGestures, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiScrollGesturesDuringRotateOrZoom)) {
            googleMapOptions.scrollGesturesEnabledDuringRotateOrZoom(obtainAttributes.getBoolean(g.a.MapAttrs_uiScrollGesturesDuringRotateOrZoom, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiScrollGestures)) {
            googleMapOptions.scrollGesturesEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiScrollGestures, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiTiltGestures)) {
            googleMapOptions.tiltGesturesEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiTiltGestures, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiZoomGestures)) {
            googleMapOptions.zoomGesturesEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiZoomControls)) {
            googleMapOptions.zoomControlsEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiZoomControls, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_liteMode)) {
            googleMapOptions.liteMode(obtainAttributes.getBoolean(g.a.MapAttrs_liteMode, false));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_uiMapToolbar)) {
            googleMapOptions.mapToolbarEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_uiMapToolbar, true));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_ambientEnabled)) {
            googleMapOptions.ambientEnabled(obtainAttributes.getBoolean(g.a.MapAttrs_ambientEnabled, false));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.minZoomPreference(obtainAttributes.getFloat(g.a.MapAttrs_cameraMinZoomPreference, Float.NEGATIVE_INFINITY));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.maxZoomPreference(obtainAttributes.getFloat(g.a.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY));
        }
        googleMapOptions.latLngBoundsForCameraTarget(zza(context, attributeSet));
        googleMapOptions.camera(zzb(context, attributeSet));
        obtainAttributes.recycle();
        return googleMapOptions;
    }

    public static LatLngBounds zza(Context context, AttributeSet attributeSet) {
        LatLngBounds latLngBounds = null;
        if (context != null) {
            if (attributeSet == null) {
                latLngBounds = null;
            } else {
                TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, g.a.MapAttrs);
                Float valueOf = obtainAttributes.hasValue(g.a.MapAttrs_latLngBoundsSouthWestLatitude) ? Float.valueOf(obtainAttributes.getFloat(g.a.MapAttrs_latLngBoundsSouthWestLatitude, BitmapDescriptorFactory.HUE_RED)) : null;
                Float valueOf2 = obtainAttributes.hasValue(g.a.MapAttrs_latLngBoundsSouthWestLongitude) ? Float.valueOf(obtainAttributes.getFloat(g.a.MapAttrs_latLngBoundsSouthWestLongitude, BitmapDescriptorFactory.HUE_RED)) : null;
                Float valueOf3 = obtainAttributes.hasValue(g.a.MapAttrs_latLngBoundsNorthEastLatitude) ? Float.valueOf(obtainAttributes.getFloat(g.a.MapAttrs_latLngBoundsNorthEastLatitude, BitmapDescriptorFactory.HUE_RED)) : null;
                Float valueOf4 = obtainAttributes.hasValue(g.a.MapAttrs_latLngBoundsNorthEastLongitude) ? Float.valueOf(obtainAttributes.getFloat(g.a.MapAttrs_latLngBoundsNorthEastLongitude, BitmapDescriptorFactory.HUE_RED)) : null;
                obtainAttributes.recycle();
                latLngBounds = null;
                if (valueOf != null) {
                    latLngBounds = null;
                    if (valueOf2 != null) {
                        latLngBounds = null;
                        if (valueOf3 != null) {
                            latLngBounds = valueOf4 == null ? null : new LatLngBounds(new LatLng(valueOf.floatValue(), valueOf2.floatValue()), new LatLng(valueOf3.floatValue(), valueOf4.floatValue()));
                        }
                    }
                }
            }
        }
        return latLngBounds;
    }

    public static CameraPosition zzb(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, g.a.MapAttrs);
        LatLng latLng = new LatLng(obtainAttributes.hasValue(g.a.MapAttrs_cameraTargetLat) ? obtainAttributes.getFloat(g.a.MapAttrs_cameraTargetLat, BitmapDescriptorFactory.HUE_RED) : BitmapDescriptorFactory.HUE_RED, obtainAttributes.hasValue(g.a.MapAttrs_cameraTargetLng) ? obtainAttributes.getFloat(g.a.MapAttrs_cameraTargetLng, BitmapDescriptorFactory.HUE_RED) : BitmapDescriptorFactory.HUE_RED);
        CameraPosition.Builder builder = CameraPosition.builder();
        builder.target(latLng);
        if (obtainAttributes.hasValue(g.a.MapAttrs_cameraZoom)) {
            builder.zoom(obtainAttributes.getFloat(g.a.MapAttrs_cameraZoom, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_cameraBearing)) {
            builder.bearing(obtainAttributes.getFloat(g.a.MapAttrs_cameraBearing, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(g.a.MapAttrs_cameraTilt)) {
            builder.tilt(obtainAttributes.getFloat(g.a.MapAttrs_cameraTilt, BitmapDescriptorFactory.HUE_RED));
        }
        obtainAttributes.recycle();
        return builder.build();
    }

    public final GoogleMapOptions ambientEnabled(boolean z) {
        this.zzau = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions camera(CameraPosition cameraPosition) {
        this.zzal = cameraPosition;
        return this;
    }

    public final GoogleMapOptions compassEnabled(boolean z) {
        this.zzan = Boolean.valueOf(z);
        return this;
    }

    public final Boolean getAmbientEnabled() {
        return this.zzau;
    }

    public final CameraPosition getCamera() {
        return this.zzal;
    }

    public final Boolean getCompassEnabled() {
        return this.zzan;
    }

    public final LatLngBounds getLatLngBoundsForCameraTarget() {
        return this.zzax;
    }

    public final Boolean getLiteMode() {
        return this.zzas;
    }

    public final Boolean getMapToolbarEnabled() {
        return this.zzat;
    }

    public final int getMapType() {
        return this.mapType;
    }

    public final Float getMaxZoomPreference() {
        return this.zzaw;
    }

    public final Float getMinZoomPreference() {
        return this.zzav;
    }

    public final Boolean getRotateGesturesEnabled() {
        return this.zzar;
    }

    public final Boolean getScrollGesturesEnabled() {
        return this.zzao;
    }

    public final Boolean getScrollGesturesEnabledDuringRotateOrZoom() {
        return this.zzay;
    }

    public final Boolean getTiltGesturesEnabled() {
        return this.zzaq;
    }

    public final Boolean getUseViewLifecycleInFragment() {
        return this.zzak;
    }

    public final Boolean getZOrderOnTop() {
        return this.zzaj;
    }

    public final Boolean getZoomControlsEnabled() {
        return this.zzam;
    }

    public final Boolean getZoomGesturesEnabled() {
        return this.zzap;
    }

    public final GoogleMapOptions latLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        this.zzax = latLngBounds;
        return this;
    }

    public final GoogleMapOptions liteMode(boolean z) {
        this.zzas = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions mapToolbarEnabled(boolean z) {
        this.zzat = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions mapType(int i) {
        this.mapType = i;
        return this;
    }

    public final GoogleMapOptions maxZoomPreference(float f) {
        this.zzaw = Float.valueOf(f);
        return this;
    }

    public final GoogleMapOptions minZoomPreference(float f) {
        this.zzav = Float.valueOf(f);
        return this;
    }

    public final GoogleMapOptions rotateGesturesEnabled(boolean z) {
        this.zzar = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions scrollGesturesEnabled(boolean z) {
        this.zzao = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions scrollGesturesEnabledDuringRotateOrZoom(boolean z) {
        this.zzay = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions tiltGesturesEnabled(boolean z) {
        this.zzaq = Boolean.valueOf(z);
        return this;
    }

    public final String toString() {
        return m.a(this).a("MapType", Integer.valueOf(this.mapType)).a("LiteMode", this.zzas).a("Camera", this.zzal).a("CompassEnabled", this.zzan).a("ZoomControlsEnabled", this.zzam).a("ScrollGesturesEnabled", this.zzao).a("ZoomGesturesEnabled", this.zzap).a("TiltGesturesEnabled", this.zzaq).a("RotateGesturesEnabled", this.zzar).a("ScrollGesturesEnabledDuringRotateOrZoom", this.zzay).a("MapToolbarEnabled", this.zzat).a("AmbientEnabled", this.zzau).a("MinZoomPreference", this.zzav).a("MaxZoomPreference", this.zzaw).a("LatLngBoundsForCameraTarget", this.zzax).a("ZOrderOnTop", this.zzaj).a("UseViewLifecycleInFragment", this.zzak).toString();
    }

    public final GoogleMapOptions useViewLifecycleInFragment(boolean z) {
        this.zzak = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, k.a(this.zzaj));
        a.a(parcel, 3, k.a(this.zzak));
        a.a(parcel, 4, getMapType());
        a.a(parcel, 5, getCamera(), i, false);
        a.a(parcel, 6, k.a(this.zzam));
        a.a(parcel, 7, k.a(this.zzan));
        a.a(parcel, 8, k.a(this.zzao));
        a.a(parcel, 9, k.a(this.zzap));
        a.a(parcel, 10, k.a(this.zzaq));
        a.a(parcel, 11, k.a(this.zzar));
        a.a(parcel, 12, k.a(this.zzas));
        a.a(parcel, 14, k.a(this.zzat));
        a.a(parcel, 15, k.a(this.zzau));
        a.a(parcel, 16, getMinZoomPreference());
        a.a(parcel, 17, getMaxZoomPreference());
        a.a(parcel, 18, getLatLngBoundsForCameraTarget(), i, false);
        a.a(parcel, 19, k.a(this.zzay));
        a.b(parcel, a2);
    }

    public final GoogleMapOptions zOrderOnTop(boolean z) {
        this.zzaj = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions zoomControlsEnabled(boolean z) {
        this.zzam = Boolean.valueOf(z);
        return this;
    }

    public final GoogleMapOptions zoomGesturesEnabled(boolean z) {
        this.zzap = Boolean.valueOf(z);
        return this;
    }
}

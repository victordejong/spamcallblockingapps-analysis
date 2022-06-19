package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.maps.C13828g;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.p362a.C13804k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMapOptions.class */
public final class GoogleMapOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleMapOptions> CREATOR = new C13838l();
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

    public GoogleMapOptions(byte b, byte b2, int i, CameraPosition cameraPosition, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9, byte b10, byte b11, Float f, Float f2, LatLngBounds latLngBounds, byte b12) {
        this.mapType = -1;
        this.zzav = null;
        this.zzaw = null;
        this.zzax = null;
        this.zzaj = C13804k.m12204a(b);
        this.zzak = C13804k.m12204a(b2);
        this.mapType = i;
        this.zzal = cameraPosition;
        this.zzam = C13804k.m12204a(b3);
        this.zzan = C13804k.m12204a(b4);
        this.zzao = C13804k.m12204a(b5);
        this.zzap = C13804k.m12204a(b6);
        this.zzaq = C13804k.m12204a(b7);
        this.zzar = C13804k.m12204a(b8);
        this.zzas = C13804k.m12204a(b9);
        this.zzat = C13804k.m12204a(b10);
        this.zzau = C13804k.m12204a(b11);
        this.zzav = f;
        this.zzaw = f2;
        this.zzax = latLngBounds;
        this.zzay = C13804k.m12204a(b12);
    }

    public static GoogleMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        if (context == null || attributeSet == null) {
            return null;
        }
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C13828g.C13829a.MapAttrs);
        GoogleMapOptions googleMapOptions = new GoogleMapOptions();
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_mapType)) {
            googleMapOptions.mapType(obtainAttributes.getInt(C13828g.C13829a.MapAttrs_mapType, -1));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_zOrderOnTop)) {
            googleMapOptions.zOrderOnTop(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_zOrderOnTop, false));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_useViewLifecycle)) {
            googleMapOptions.useViewLifecycleInFragment(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_useViewLifecycle, false));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiCompass)) {
            googleMapOptions.compassEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiCompass, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiRotateGestures)) {
            googleMapOptions.rotateGesturesEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiRotateGestures, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiScrollGesturesDuringRotateOrZoom)) {
            googleMapOptions.scrollGesturesEnabledDuringRotateOrZoom(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiScrollGesturesDuringRotateOrZoom, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiScrollGestures)) {
            googleMapOptions.scrollGesturesEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiScrollGestures, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiTiltGestures)) {
            googleMapOptions.tiltGesturesEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiTiltGestures, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiZoomGestures)) {
            googleMapOptions.zoomGesturesEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiZoomGestures, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiZoomControls)) {
            googleMapOptions.zoomControlsEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiZoomControls, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_liteMode)) {
            googleMapOptions.liteMode(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_liteMode, false));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_uiMapToolbar)) {
            googleMapOptions.mapToolbarEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_uiMapToolbar, true));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_ambientEnabled)) {
            googleMapOptions.ambientEnabled(obtainAttributes.getBoolean(C13828g.C13829a.MapAttrs_ambientEnabled, false));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.minZoomPreference(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraMinZoomPreference, Float.NEGATIVE_INFINITY));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraMinZoomPreference)) {
            googleMapOptions.maxZoomPreference(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraMaxZoomPreference, Float.POSITIVE_INFINITY));
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
                TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C13828g.C13829a.MapAttrs);
                Float valueOf = obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_latLngBoundsSouthWestLatitude) ? Float.valueOf(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_latLngBoundsSouthWestLatitude, BitmapDescriptorFactory.HUE_RED)) : null;
                Float valueOf2 = obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_latLngBoundsSouthWestLongitude) ? Float.valueOf(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_latLngBoundsSouthWestLongitude, BitmapDescriptorFactory.HUE_RED)) : null;
                Float valueOf3 = obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_latLngBoundsNorthEastLatitude) ? Float.valueOf(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_latLngBoundsNorthEastLatitude, BitmapDescriptorFactory.HUE_RED)) : null;
                Float valueOf4 = obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_latLngBoundsNorthEastLongitude) ? Float.valueOf(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_latLngBoundsNorthEastLongitude, BitmapDescriptorFactory.HUE_RED)) : null;
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
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, C13828g.C13829a.MapAttrs);
        LatLng latLng = new LatLng(obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraTargetLat) ? obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraTargetLat, BitmapDescriptorFactory.HUE_RED) : 0.0f, obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraTargetLng) ? obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraTargetLng, BitmapDescriptorFactory.HUE_RED) : 0.0f);
        CameraPosition.Builder builder = CameraPosition.builder();
        builder.target(latLng);
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraZoom)) {
            builder.zoom(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraZoom, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraBearing)) {
            builder.bearing(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraBearing, BitmapDescriptorFactory.HUE_RED));
        }
        if (obtainAttributes.hasValue(C13828g.C13829a.MapAttrs_cameraTilt)) {
            builder.tilt(obtainAttributes.getFloat(C13828g.C13829a.MapAttrs_cameraTilt, BitmapDescriptorFactory.HUE_RED));
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
        return C12041m.m19169a(this).m19166a("MapType", Integer.valueOf(this.mapType)).m19166a("LiteMode", this.zzas).m19166a("Camera", this.zzal).m19166a("CompassEnabled", this.zzan).m19166a("ZoomControlsEnabled", this.zzam).m19166a("ScrollGesturesEnabled", this.zzao).m19166a("ZoomGesturesEnabled", this.zzap).m19166a("TiltGesturesEnabled", this.zzaq).m19166a("RotateGesturesEnabled", this.zzar).m19166a("ScrollGesturesEnabledDuringRotateOrZoom", this.zzay).m19166a("MapToolbarEnabled", this.zzat).m19166a("AmbientEnabled", this.zzau).m19166a("MinZoomPreference", this.zzav).m19166a("MaxZoomPreference", this.zzaw).m19166a("LatLngBoundsForCameraTarget", this.zzax).m19166a("ZOrderOnTop", this.zzaj).m19166a("UseViewLifecycleInFragment", this.zzak).toString();
    }

    public final GoogleMapOptions useViewLifecycleInFragment(boolean z) {
        this.zzak = Boolean.valueOf(z);
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19115a(parcel, 2, C13804k.m12203a(this.zzaj));
        C12050a.m19115a(parcel, 3, C13804k.m12203a(this.zzak));
        C12050a.m19112a(parcel, 4, getMapType());
        C12050a.m19107a(parcel, 5, getCamera(), i, false);
        C12050a.m19115a(parcel, 6, C13804k.m12203a(this.zzam));
        C12050a.m19115a(parcel, 7, C13804k.m12203a(this.zzan));
        C12050a.m19115a(parcel, 8, C13804k.m12203a(this.zzao));
        C12050a.m19115a(parcel, 9, C13804k.m12203a(this.zzap));
        C12050a.m19115a(parcel, 10, C13804k.m12203a(this.zzaq));
        C12050a.m19115a(parcel, 11, C13804k.m12203a(this.zzar));
        C12050a.m19115a(parcel, 12, C13804k.m12203a(this.zzas));
        C12050a.m19115a(parcel, 14, C13804k.m12203a(this.zzat));
        C12050a.m19115a(parcel, 15, C13804k.m12203a(this.zzau));
        C12050a.m19106a(parcel, 16, getMinZoomPreference());
        C12050a.m19106a(parcel, 17, getMaxZoomPreference());
        C12050a.m19107a(parcel, 18, getLatLngBoundsForCameraTarget(), i, false);
        C12050a.m19115a(parcel, 19, C13804k.m12203a(this.zzay));
        C12050a.m19095b(parcel, m19116a);
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

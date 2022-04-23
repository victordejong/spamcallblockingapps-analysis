package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/MarkerOptions.class */
public final class MarkerOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new zzh();
    private float alpha;
    private LatLng position;
    private float zzcs;
    private boolean zzct;
    private float zzdb;
    private float zzdc;
    private String zzdn;
    private String zzdo;
    private BitmapDescriptor zzdp;
    private boolean zzdq;
    private boolean zzdr;
    private float zzds;
    private float zzdt;
    private float zzdu;

    public MarkerOptions() {
        this.zzdb = 0.5f;
        this.zzdc = 1.0f;
        this.zzct = true;
        this.zzdr = false;
        this.zzds = BitmapDescriptorFactory.HUE_RED;
        this.zzdt = 0.5f;
        this.zzdu = BitmapDescriptorFactory.HUE_RED;
        this.alpha = 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MarkerOptions(LatLng latLng, String str, String str2, IBinder iBinder, float f, float f2, boolean z, boolean z2, boolean z3, float f3, float f4, float f5, float f6, float f7) {
        this.zzdb = 0.5f;
        this.zzdc = 1.0f;
        this.zzct = true;
        this.zzdr = false;
        this.zzds = BitmapDescriptorFactory.HUE_RED;
        this.zzdt = 0.5f;
        this.zzdu = BitmapDescriptorFactory.HUE_RED;
        this.alpha = 1.0f;
        this.position = latLng;
        this.zzdn = str;
        this.zzdo = str2;
        if (iBinder == null) {
            this.zzdp = null;
        } else {
            this.zzdp = new BitmapDescriptor(b.a.a(iBinder));
        }
        this.zzdb = f;
        this.zzdc = f2;
        this.zzdq = z;
        this.zzct = z2;
        this.zzdr = z3;
        this.zzds = f3;
        this.zzdt = f4;
        this.zzdu = f5;
        this.alpha = f6;
        this.zzcs = f7;
    }

    public final MarkerOptions alpha(float f) {
        this.alpha = f;
        return this;
    }

    public final MarkerOptions anchor(float f, float f2) {
        this.zzdb = f;
        this.zzdc = f2;
        return this;
    }

    public final MarkerOptions draggable(boolean z) {
        this.zzdq = z;
        return this;
    }

    public final MarkerOptions flat(boolean z) {
        this.zzdr = z;
        return this;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final float getAnchorU() {
        return this.zzdb;
    }

    public final float getAnchorV() {
        return this.zzdc;
    }

    public final BitmapDescriptor getIcon() {
        return this.zzdp;
    }

    public final float getInfoWindowAnchorU() {
        return this.zzdt;
    }

    public final float getInfoWindowAnchorV() {
        return this.zzdu;
    }

    public final LatLng getPosition() {
        return this.position;
    }

    public final float getRotation() {
        return this.zzds;
    }

    public final String getSnippet() {
        return this.zzdo;
    }

    public final String getTitle() {
        return this.zzdn;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.zzdp = bitmapDescriptor;
        return this;
    }

    public final MarkerOptions infoWindowAnchor(float f, float f2) {
        this.zzdt = f;
        this.zzdu = f2;
        return this;
    }

    public final boolean isDraggable() {
        return this.zzdq;
    }

    public final boolean isFlat() {
        return this.zzdr;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final MarkerOptions position(LatLng latLng) {
        if (latLng != null) {
            this.position = latLng;
            return this;
        }
        throw new IllegalArgumentException("latlng cannot be null - a position is required.");
    }

    public final MarkerOptions rotation(float f) {
        this.zzds = f;
        return this;
    }

    public final MarkerOptions snippet(String str) {
        this.zzdo = str;
        return this;
    }

    public final MarkerOptions title(String str) {
        this.zzdn = str;
        return this;
    }

    public final MarkerOptions visible(boolean z) {
        this.zzct = z;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, getPosition(), i, false);
        a.a(parcel, 3, getTitle(), false);
        a.a(parcel, 4, getSnippet(), false);
        BitmapDescriptor bitmapDescriptor = this.zzdp;
        a.a(parcel, 5, bitmapDescriptor == null ? null : bitmapDescriptor.zzb().asBinder());
        a.a(parcel, 6, getAnchorU());
        a.a(parcel, 7, getAnchorV());
        a.a(parcel, 8, isDraggable());
        a.a(parcel, 9, isVisible());
        a.a(parcel, 10, isFlat());
        a.a(parcel, 11, getRotation());
        a.a(parcel, 12, getInfoWindowAnchorU());
        a.a(parcel, 13, getInfoWindowAnchorV());
        a.a(parcel, 14, getAlpha());
        a.a(parcel, 15, getZIndex());
        a.b(parcel, a2);
    }

    public final MarkerOptions zIndex(float f) {
        this.zzcs = f;
        return this;
    }
}

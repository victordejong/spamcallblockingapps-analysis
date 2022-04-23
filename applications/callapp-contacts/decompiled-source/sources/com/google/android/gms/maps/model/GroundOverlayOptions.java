package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/GroundOverlayOptions.class */
public final class GroundOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new zzd();
    public static final float NO_DIMENSION = -1.0f;
    private float bearing;
    private float height;
    private float width;
    private float zzcs;
    private boolean zzct;
    private boolean zzcu;
    private BitmapDescriptor zzcx;
    private LatLng zzcy;
    private LatLngBounds zzcz;
    private float zzda;
    private float zzdb;
    private float zzdc;

    public GroundOverlayOptions() {
        this.zzct = true;
        this.zzda = BitmapDescriptorFactory.HUE_RED;
        this.zzdb = 0.5f;
        this.zzdc = 0.5f;
        this.zzcu = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GroundOverlayOptions(IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7, boolean z2) {
        this.zzct = true;
        this.zzda = BitmapDescriptorFactory.HUE_RED;
        this.zzdb = 0.5f;
        this.zzdc = 0.5f;
        this.zzcu = false;
        this.zzcx = new BitmapDescriptor(b.a.a(iBinder));
        this.zzcy = latLng;
        this.width = f;
        this.height = f2;
        this.zzcz = latLngBounds;
        this.bearing = f3;
        this.zzcs = f4;
        this.zzct = z;
        this.zzda = f5;
        this.zzdb = f6;
        this.zzdc = f7;
        this.zzcu = z2;
    }

    private final GroundOverlayOptions zza(LatLng latLng, float f, float f2) {
        this.zzcy = latLng;
        this.width = f;
        this.height = f2;
        return this;
    }

    public final GroundOverlayOptions anchor(float f, float f2) {
        this.zzdb = f;
        this.zzdc = f2;
        return this;
    }

    public final GroundOverlayOptions bearing(float f) {
        this.bearing = ((f % 360.0f) + 360.0f) % 360.0f;
        return this;
    }

    public final GroundOverlayOptions clickable(boolean z) {
        this.zzcu = z;
        return this;
    }

    public final float getAnchorU() {
        return this.zzdb;
    }

    public final float getAnchorV() {
        return this.zzdc;
    }

    public final float getBearing() {
        return this.bearing;
    }

    public final LatLngBounds getBounds() {
        return this.zzcz;
    }

    public final float getHeight() {
        return this.height;
    }

    public final BitmapDescriptor getImage() {
        return this.zzcx;
    }

    public final LatLng getLocation() {
        return this.zzcy;
    }

    public final float getTransparency() {
        return this.zzda;
    }

    public final float getWidth() {
        return this.width;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        o.a(bitmapDescriptor, "imageDescriptor must not be null");
        this.zzcx = bitmapDescriptor;
        return this;
    }

    public final boolean isClickable() {
        return this.zzcu;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final GroundOverlayOptions position(LatLng latLng, float f) {
        boolean z = true;
        o.a(this.zzcz == null, "Position has already been set using positionFromBounds");
        o.b(latLng != null, "Location must be specified");
        if (f < BitmapDescriptorFactory.HUE_RED) {
            z = false;
        }
        o.b(z, "Width must be non-negative");
        return zza(latLng, f, -1.0f);
    }

    public final GroundOverlayOptions position(LatLng latLng, float f, float f2) {
        boolean z = true;
        o.a(this.zzcz == null, "Position has already been set using positionFromBounds");
        o.b(latLng != null, "Location must be specified");
        o.b(f >= BitmapDescriptorFactory.HUE_RED, "Width must be non-negative");
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            z = false;
        }
        o.b(z, "Height must be non-negative");
        return zza(latLng, f, f2);
    }

    public final GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        LatLng latLng = this.zzcy;
        boolean z = latLng == null;
        String valueOf = String.valueOf(latLng);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46);
        sb.append("Position has already been set using position: ");
        sb.append(valueOf);
        o.a(z, sb.toString());
        this.zzcz = latLngBounds;
        return this;
    }

    public final GroundOverlayOptions transparency(float f) {
        o.b(f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f, "Transparency must be in the range [0..1]");
        this.zzda = f;
        return this;
    }

    public final GroundOverlayOptions visible(boolean z) {
        this.zzct = z;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzcx.zzb().asBinder());
        a.a(parcel, 3, getLocation(), i, false);
        a.a(parcel, 4, getWidth());
        a.a(parcel, 5, getHeight());
        a.a(parcel, 6, getBounds(), i, false);
        a.a(parcel, 7, getBearing());
        a.a(parcel, 8, getZIndex());
        a.a(parcel, 9, isVisible());
        a.a(parcel, 10, getTransparency());
        a.a(parcel, 11, getAnchorU());
        a.a(parcel, 12, getAnchorV());
        a.a(parcel, 13, isClickable());
        a.b(parcel, a2);
    }

    public final GroundOverlayOptions zIndex(float f) {
        this.zzcs = f;
        return this;
    }
}

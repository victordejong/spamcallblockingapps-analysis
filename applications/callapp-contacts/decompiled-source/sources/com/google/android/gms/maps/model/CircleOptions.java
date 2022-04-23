package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/CircleOptions.class */
public final class CircleOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CircleOptions> CREATOR = new zzc();
    private int fillColor;
    private int strokeColor;
    private LatLng zzcp;
    private double zzcq;
    private float zzcr;
    private float zzcs;
    private boolean zzct;
    private boolean zzcu;
    private List<PatternItem> zzcv;

    public CircleOptions() {
        this.zzcp = null;
        this.zzcq = 0.0d;
        this.zzcr = 10.0f;
        this.strokeColor = -16777216;
        this.fillColor = 0;
        this.zzcs = BitmapDescriptorFactory.HUE_RED;
        this.zzct = true;
        this.zzcu = false;
        this.zzcv = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CircleOptions(LatLng latLng, double d2, float f, int i, int i2, float f2, boolean z, boolean z2, List<PatternItem> list) {
        this.zzcp = null;
        this.zzcq = 0.0d;
        this.zzcr = 10.0f;
        this.strokeColor = -16777216;
        this.fillColor = 0;
        this.zzcs = BitmapDescriptorFactory.HUE_RED;
        this.zzct = true;
        this.zzcu = false;
        this.zzcv = null;
        this.zzcp = latLng;
        this.zzcq = d2;
        this.zzcr = f;
        this.strokeColor = i;
        this.fillColor = i2;
        this.zzcs = f2;
        this.zzct = z;
        this.zzcu = z2;
        this.zzcv = list;
    }

    public final CircleOptions center(LatLng latLng) {
        this.zzcp = latLng;
        return this;
    }

    public final CircleOptions clickable(boolean z) {
        this.zzcu = z;
        return this;
    }

    public final CircleOptions fillColor(int i) {
        this.fillColor = i;
        return this;
    }

    public final LatLng getCenter() {
        return this.zzcp;
    }

    public final int getFillColor() {
        return this.fillColor;
    }

    public final double getRadius() {
        return this.zzcq;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final List<PatternItem> getStrokePattern() {
        return this.zzcv;
    }

    public final float getStrokeWidth() {
        return this.zzcr;
    }

    public final float getZIndex() {
        return this.zzcs;
    }

    public final boolean isClickable() {
        return this.zzcu;
    }

    public final boolean isVisible() {
        return this.zzct;
    }

    public final CircleOptions radius(double d2) {
        this.zzcq = d2;
        return this;
    }

    public final CircleOptions strokeColor(int i) {
        this.strokeColor = i;
        return this;
    }

    public final CircleOptions strokePattern(List<PatternItem> list) {
        this.zzcv = list;
        return this;
    }

    public final CircleOptions strokeWidth(float f) {
        this.zzcr = f;
        return this;
    }

    public final CircleOptions visible(boolean z) {
        this.zzct = z;
        return this;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, getCenter(), i, false);
        a.a(parcel, 3, getRadius());
        a.a(parcel, 4, getStrokeWidth());
        a.a(parcel, 5, getStrokeColor());
        a.a(parcel, 6, getFillColor());
        a.a(parcel, 7, getZIndex());
        a.a(parcel, 8, isVisible());
        a.a(parcel, 9, isClickable());
        a.a(parcel, 10, (List) getStrokePattern(), false);
        a.b(parcel, a2);
    }

    public final CircleOptions zIndex(float f) {
        this.zzcs = f;
        return this;
    }
}

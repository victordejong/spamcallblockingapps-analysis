package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8916k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/LatLng.class */
public final class LatLng extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LatLng> CREATOR = new C8916k();

    /* renamed from: a */
    public final double f7058a;

    /* renamed from: b */
    public final double f7059b;

    public LatLng(double d, double d2) {
        this.f7059b = (-180.0d > d2 || d2 >= 180.0d) ? ((((d2 - 180.0d) % 360.0d) + 360.0d) % 360.0d) - 180.0d : d2;
        this.f7058a = Math.max(-90.0d, Math.min(90.0d, d));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLng)) {
            return false;
        }
        LatLng latLng = (LatLng) obj;
        return Double.doubleToLongBits(this.f7058a) == Double.doubleToLongBits(latLng.f7058a) && Double.doubleToLongBits(this.f7059b) == Double.doubleToLongBits(latLng.f7059b);
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f7058a);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.f7059b);
        return ((i + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
    }

    public final String toString() {
        double d = this.f7058a;
        double d2 = this.f7059b;
        StringBuilder sb = new StringBuilder(60);
        sb.append("lat/lng: (");
        sb.append(d);
        sb.append(",");
        sb.append(d2);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21227a(parcel, 2, this.f7058a);
        C7031b.m21227a(parcel, 3, this.f7059b);
        C7031b.m21229a(parcel, a);
    }
}

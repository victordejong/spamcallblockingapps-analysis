package com.google.android.gms.maps.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.maps.GoogleMapOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/LatLngBounds.class */
public final class LatLngBounds extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new zze();
    public final LatLng northeast;
    public final LatLng southwest;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/LatLngBounds$Builder.class */
    public static final class Builder {
        private double zzdh = Double.POSITIVE_INFINITY;
        private double zzdi = Double.NEGATIVE_INFINITY;
        private double zzdj = Double.NaN;
        private double zzdk = Double.NaN;

        public final LatLngBounds build() {
            Preconditions.checkState(!Double.isNaN(this.zzdj), "no included points");
            return new LatLngBounds(new LatLng(this.zzdh, this.zzdj), new LatLng(this.zzdi, this.zzdk));
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
            if (r0 <= r0) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0074, code lost:
            if (r0 <= r0) goto L15;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.android.gms.maps.model.LatLngBounds.Builder include(com.google.android.gms.maps.model.LatLng r8) {
            /*
                r7 = this;
                r0 = r7
                r1 = r7
                double r1 = r1.zzdh
                r2 = r8
                double r2 = r2.latitude
                double r1 = java.lang.Math.min(r1, r2)
                r0.zzdh = r1
                r0 = r7
                r1 = r7
                double r1 = r1.zzdi
                r2 = r8
                double r2 = r2.latitude
                double r1 = java.lang.Math.max(r1, r2)
                r0.zzdi = r1
                r0 = r8
                double r0 = r0.longitude
                r9 = r0
                r0 = r7
                double r0 = r0.zzdj
                boolean r0 = java.lang.Double.isNaN(r0)
                if (r0 == 0) goto L35
                r0 = r7
                r1 = r9
                r0.zzdj = r1
                goto L99
            L35:
                r0 = r7
                double r0 = r0.zzdj
                r11 = r0
                r0 = r7
                double r0 = r0.zzdk
                r13 = r0
                r0 = 0
                r15 = r0
                r0 = r11
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L65
                r0 = r15
                r16 = r0
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L7a
                r0 = r15
                r16 = r0
                r0 = r9
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L7a
                goto L77
            L65:
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L77
                r0 = r15
                r16 = r0
                r0 = r9
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L7a
            L77:
                r0 = 1
                r16 = r0
            L7a:
                r0 = r16
                if (r0 != 0) goto L9e
                r0 = r11
                r1 = r9
                double r0 = com.google.android.gms.maps.model.LatLngBounds.zzc(r0, r1)
                r1 = r7
                double r1 = r1.zzdk
                r2 = r9
                double r1 = com.google.android.gms.maps.model.LatLngBounds.zzd(r1, r2)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L99
                r0 = r7
                r1 = r9
                r0.zzdj = r1
                goto L9e
            L99:
                r0 = r7
                r1 = r9
                r0.zzdk = r1
            L9e:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.LatLngBounds.Builder.include(com.google.android.gms.maps.model.LatLng):com.google.android.gms.maps.model.LatLngBounds$Builder");
        }
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        Preconditions.checkNotNull(latLng, "null southwest");
        Preconditions.checkNotNull(latLng2, "null northeast");
        Preconditions.checkArgument(latLng2.latitude >= latLng.latitude, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(latLng.latitude), Double.valueOf(latLng2.latitude));
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static LatLngBounds createFromAttributes(Context context, AttributeSet attributeSet) {
        return GoogleMapOptions.zza(context, attributeSet);
    }

    public static double zza(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    private final boolean zza(double d) {
        return this.southwest.longitude <= this.northeast.longitude ? this.southwest.longitude <= d && d <= this.northeast.longitude : this.southwest.longitude <= d || d <= this.northeast.longitude;
    }

    public static double zzb(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    public final boolean contains(LatLng latLng) {
        double d = latLng.latitude;
        return ((this.southwest.latitude > d ? 1 : (this.southwest.latitude == d ? 0 : -1)) <= 0 && (d > this.northeast.latitude ? 1 : (d == this.northeast.latitude ? 0 : -1)) <= 0) && zza(latLng.longitude);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.southwest.equals(latLngBounds.southwest) && this.northeast.equals(latLngBounds.northeast);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    public final LatLng getCenter() {
        double d = (this.southwest.latitude + this.northeast.latitude) / 2.0d;
        char c = this.northeast.longitude;
        double d2 = this.southwest.longitude;
        if (d2 > c) {
            c += 0;
        }
        return new LatLng(d, (c + d2) / 2.0d);
    }

    public final int hashCode() {
        return Objects.hashCode(this.southwest, this.northeast);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    public final LatLngBounds including(LatLng latLng) {
        double min = Math.min(this.southwest.latitude, latLng.latitude);
        double max = Math.max(this.northeast.latitude, latLng.latitude);
        ?? r0 = this.northeast.longitude;
        ?? r02 = this.southwest.longitude;
        ?? r03 = latLng.longitude;
        char c = r0;
        char c2 = r02;
        if (!zza(r03)) {
            if (zza(r02, r03) < zzb(r0, r03)) {
                c2 = r03;
                c = r0;
            } else {
                c = r03;
                c2 = r02;
            }
        }
        return new LatLngBounds(new LatLng(min, c2), new LatLng(max, c));
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("southwest", this.southwest).add("northeast", this.northeast).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.southwest, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.northeast, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}

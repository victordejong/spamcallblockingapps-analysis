package com.google.android.gms.maps.model;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.maps.GoogleMapOptions;
import java.util.Arrays;
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
            o.a(!Double.isNaN(this.zzdj), "no included points");
            return new LatLngBounds(new LatLng(this.zzdh, this.zzdj), new LatLng(this.zzdi, this.zzdk));
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
            if (r0 <= r0) goto L_0x0077;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0074, code lost:
            if (r0 <= r0) goto L_0x0077;
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
                if (r0 == 0) goto L_0x0035
                r0 = r7
                r1 = r9
                r0.zzdj = r1
                goto L_0x0099
            L_0x0035:
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
                if (r0 > 0) goto L_0x0065
                r0 = r15
                r16 = r0
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x007a
                r0 = r15
                r16 = r0
                r0 = r9
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x007a
                goto L_0x0077
            L_0x0065:
                r0 = r11
                r1 = r9
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0077
                r0 = r15
                r16 = r0
                r0 = r9
                r1 = r13
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x007a
            L_0x0077:
                r0 = 1
                r16 = r0
            L_0x007a:
                r0 = r16
                if (r0 != 0) goto L_0x009e
                r0 = r11
                r1 = r9
                double r0 = com.google.android.gms.maps.model.LatLngBounds.zzc(r0, r1)
                r1 = r7
                double r1 = r1.zzdk
                r2 = r9
                double r1 = com.google.android.gms.maps.model.LatLngBounds.zzd(r1, r2)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x0099
                r0 = r7
                r1 = r9
                r0.zzdj = r1
                goto L_0x009e
            L_0x0099:
                r0 = r7
                r1 = r9
                r0.zzdk = r1
            L_0x009e:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.LatLngBounds.Builder.include(com.google.android.gms.maps.model.LatLng):com.google.android.gms.maps.model.LatLngBounds$Builder");
        }
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        o.a(latLng, "null southwest");
        o.a(latLng2, "null northeast");
        o.a(latLng2.latitude >= latLng.latitude, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(latLng.latitude), Double.valueOf(latLng2.latitude));
        this.southwest = latLng;
        this.northeast = latLng2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static LatLngBounds createFromAttributes(Context context, AttributeSet attributeSet) {
        return GoogleMapOptions.zza(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double zza(double d2, double d3) {
        return ((d2 - d3) + 360.0d) % 360.0d;
    }

    private final boolean zza(double d2) {
        return this.southwest.longitude <= this.northeast.longitude ? this.southwest.longitude <= d2 && d2 <= this.northeast.longitude : this.southwest.longitude <= d2 || d2 <= this.northeast.longitude;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double zzb(double d2, double d3) {
        return ((d3 - d2) + 360.0d) % 360.0d;
    }

    public final boolean contains(LatLng latLng) {
        double d2 = latLng.latitude;
        return ((this.southwest.latitude > d2 ? 1 : (this.southwest.latitude == d2 ? 0 : -1)) <= 0 && (d2 > this.northeast.latitude ? 1 : (d2 == this.northeast.latitude ? 0 : -1)) <= 0) && zza(latLng.longitude);
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

    public final LatLng getCenter() {
        double d2 = (this.southwest.latitude + this.northeast.latitude) / 2.0d;
        double d3 = this.northeast.longitude;
        double d4 = this.southwest.longitude;
        if (d4 > d3) {
            d3 += 360.0d;
        }
        return new LatLng(d2, (d3 + d4) / 2.0d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.southwest, this.northeast});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.maps.model.LatLngBounds including(com.google.android.gms.maps.model.LatLng r11) {
        /*
            r10 = this;
            r0 = r10
            com.google.android.gms.maps.model.LatLng r0 = r0.southwest
            double r0 = r0.latitude
            r1 = r11
            double r1 = r1.latitude
            double r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = r10
            com.google.android.gms.maps.model.LatLng r0 = r0.northeast
            double r0 = r0.latitude
            r1 = r11
            double r1 = r1.latitude
            double r0 = java.lang.Math.max(r0, r1)
            r14 = r0
            r0 = r10
            com.google.android.gms.maps.model.LatLng r0 = r0.northeast
            double r0 = r0.longitude
            r16 = r0
            r0 = r10
            com.google.android.gms.maps.model.LatLng r0 = r0.southwest
            double r0 = r0.longitude
            r18 = r0
            r0 = r11
            double r0 = r0.longitude
            r20 = r0
            r0 = r16
            r22 = r0
            r0 = r18
            r24 = r0
            r0 = r10
            r1 = r20
            boolean r0 = r0.zza(r1)
            if (r0 != 0) goto L_0x006d
            r0 = r18
            r1 = r20
            double r0 = zza(r0, r1)
            r1 = r16
            r2 = r20
            double r1 = zzb(r1, r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0065
            r0 = r20
            r24 = r0
            r0 = r16
            r22 = r0
            goto L_0x006d
        L_0x0065:
            r0 = r20
            r22 = r0
            r0 = r18
            r24 = r0
        L_0x006d:
            com.google.android.gms.maps.model.LatLngBounds r0 = new com.google.android.gms.maps.model.LatLngBounds
            r1 = r0
            com.google.android.gms.maps.model.LatLng r2 = new com.google.android.gms.maps.model.LatLng
            r3 = r2
            r4 = r12
            r5 = r24
            r3.<init>(r4, r5)
            com.google.android.gms.maps.model.LatLng r3 = new com.google.android.gms.maps.model.LatLng
            r4 = r3
            r5 = r14
            r6 = r22
            r4.<init>(r5, r6)
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.LatLngBounds.including(com.google.android.gms.maps.model.LatLng):com.google.android.gms.maps.model.LatLngBounds");
    }

    public final String toString() {
        return m.a(this).a("southwest", this.southwest).a("northeast", this.northeast).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.southwest, i, false);
        a.a(parcel, 3, this.northeast, i, false);
        a.b(parcel, a2);
    }
}

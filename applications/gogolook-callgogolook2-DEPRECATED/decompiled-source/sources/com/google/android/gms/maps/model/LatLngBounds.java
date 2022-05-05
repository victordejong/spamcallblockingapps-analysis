package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8915j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/LatLngBounds.class */
public final class LatLngBounds extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new C8915j();

    /* renamed from: a */
    public final LatLng f7060a;

    /* renamed from: b */
    public final LatLng f7061b;

    /* renamed from: com.google.android.gms.maps.model.LatLngBounds$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/LatLngBounds$a.class */
    public static final class C3581a {

        /* renamed from: a */
        public double f7062a = Double.POSITIVE_INFINITY;

        /* renamed from: b */
        public double f7063b = Double.NEGATIVE_INFINITY;

        /* renamed from: c */
        public double f7064c = Double.NaN;

        /* renamed from: d */
        public double f7065d = Double.NaN;

        /* JADX WARN: Code restructure failed: missing block: B:10:0x005f, code lost:
            if (r0 <= r0) goto L_0x0077;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0074, code lost:
            if (r0 <= r0) goto L_0x0077;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.google.android.gms.maps.model.LatLngBounds.C3581a m31721a(com.google.android.gms.maps.model.LatLng r8) {
            /*
                r7 = this;
                r0 = r7
                r1 = r7
                double r1 = r1.f7062a
                r2 = r8
                double r2 = r2.f7058a
                double r1 = java.lang.Math.min(r1, r2)
                r0.f7062a = r1
                r0 = r7
                r1 = r7
                double r1 = r1.f7063b
                r2 = r8
                double r2 = r2.f7058a
                double r1 = java.lang.Math.max(r1, r2)
                r0.f7063b = r1
                r0 = r8
                double r0 = r0.f7059b
                r9 = r0
                r0 = r7
                double r0 = r0.f7064c
                boolean r0 = java.lang.Double.isNaN(r0)
                if (r0 == 0) goto L_0x0035
                r0 = r7
                r1 = r9
                r0.f7064c = r1
                goto L_0x009b
            L_0x0035:
                r0 = r7
                double r0 = r0.f7064c
                r11 = r0
                r0 = r7
                double r0 = r0.f7065d
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
                if (r0 != 0) goto L_0x00a0
                r0 = r7
                double r0 = r0.f7064c
                r1 = r9
                double r0 = com.google.android.gms.maps.model.LatLngBounds.m31724c(r0, r1)
                r1 = r7
                double r1 = r1.f7065d
                r2 = r9
                double r1 = com.google.android.gms.maps.model.LatLngBounds.m31723d(r1, r2)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x009b
                r0 = r7
                r1 = r9
                r0.f7064c = r1
                goto L_0x00a0
            L_0x009b:
                r0 = r7
                r1 = r9
                r0.f7065d = r1
            L_0x00a0:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.model.LatLngBounds.C3581a.m31721a(com.google.android.gms.maps.model.LatLng):com.google.android.gms.maps.model.LatLngBounds$a");
        }

        /* renamed from: a */
        public final LatLngBounds m31722a() {
            C7021t.m21281b(!Double.isNaN(this.f7064c), "no included points");
            return new LatLngBounds(new LatLng(this.f7062a, this.f7064c), new LatLng(this.f7063b, this.f7065d));
        }
    }

    public LatLngBounds(LatLng latLng, LatLng latLng2) {
        C7021t.m21289a(latLng, "null southwest");
        C7021t.m21289a(latLng2, "null northeast");
        C7021t.m21284a(latLng2.f7058a >= latLng.f7058a, "southern latitude exceeds northern latitude (%s > %s)", Double.valueOf(latLng.f7058a), Double.valueOf(latLng2.f7058a));
        this.f7060a = latLng;
        this.f7061b = latLng2;
    }

    /* renamed from: a */
    public static double m31728a(double d, double d2) {
        return ((d - d2) + 360.0d) % 360.0d;
    }

    /* renamed from: b */
    public static double m31726b(double d, double d2) {
        return ((d2 - d) + 360.0d) % 360.0d;
    }

    /* renamed from: a */
    public final boolean m31729a(double d) {
        double d2 = this.f7060a.f7059b;
        double d3 = this.f7061b.f7059b;
        return d2 <= d3 ? d2 <= d && d <= d3 : d2 <= d || d <= d3;
    }

    /* renamed from: a */
    public final boolean m31727a(LatLng latLng) {
        double d = latLng.f7058a;
        return ((this.f7060a.f7058a > d ? 1 : (this.f7060a.f7058a == d ? 0 : -1)) <= 0 && (d > this.f7061b.f7058a ? 1 : (d == this.f7061b.f7058a ? 0 : -1)) <= 0) && m31729a(latLng.f7059b);
    }

    /* renamed from: c */
    public final LatLng m31725c() {
        LatLng latLng = this.f7060a;
        double d = latLng.f7058a;
        LatLng latLng2 = this.f7061b;
        double d2 = (d + latLng2.f7058a) / 2.0d;
        double d3 = latLng2.f7059b;
        double d4 = latLng.f7059b;
        if (d4 > d3) {
            d3 += 360.0d;
        }
        return new LatLng(d2, (d3 + d4) / 2.0d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LatLngBounds)) {
            return false;
        }
        LatLngBounds latLngBounds = (LatLngBounds) obj;
        return this.f7060a.equals(latLngBounds.f7060a) && this.f7061b.equals(latLngBounds.f7061b);
    }

    public final int hashCode() {
        return C7018s.m21296a(this.f7060a, this.f7061b);
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("southwest", this.f7060a);
        a.m21295a("northeast", this.f7061b);
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) this.f7060a, i, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f7061b, i, false);
        C7031b.m21229a(parcel, a);
    }
}

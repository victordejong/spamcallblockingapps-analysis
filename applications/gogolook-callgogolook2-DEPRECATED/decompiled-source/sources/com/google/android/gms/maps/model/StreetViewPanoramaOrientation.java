package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8926u;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewPanoramaOrientation.class */
public class StreetViewPanoramaOrientation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOrientation> CREATOR = new C8926u();

    /* renamed from: a */
    public final float f7116a;

    /* renamed from: b */
    public final float f7117b;

    /* renamed from: com.google.android.gms.maps.model.StreetViewPanoramaOrientation$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewPanoramaOrientation$a.class */
    public static final class C3582a {

        /* renamed from: a */
        public float f7118a;

        /* renamed from: b */
        public float f7119b;

        /* renamed from: a */
        public final C3582a m31683a(float f) {
            this.f7118a = f;
            return this;
        }

        /* renamed from: a */
        public final StreetViewPanoramaOrientation m31684a() {
            return new StreetViewPanoramaOrientation(this.f7119b, this.f7118a);
        }

        /* renamed from: b */
        public final C3582a m31682b(float f) {
            this.f7119b = f;
            return this;
        }
    }

    public StreetViewPanoramaOrientation(float f, float f2) {
        boolean z = -90.0f <= f && f <= 90.0f;
        StringBuilder sb = new StringBuilder(62);
        sb.append("Tilt needs to be between -90 and 90 inclusive: ");
        sb.append(f);
        C7021t.m21285a(z, sb.toString());
        this.f7116a = f + 0.0f;
        this.f7117b = (((double) f2) <= 0.0d ? (f2 % 360.0f) + 360.0f : f2) % 360.0f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaOrientation)) {
            return false;
        }
        StreetViewPanoramaOrientation streetViewPanoramaOrientation = (StreetViewPanoramaOrientation) obj;
        return Float.floatToIntBits(this.f7116a) == Float.floatToIntBits(streetViewPanoramaOrientation.f7116a) && Float.floatToIntBits(this.f7117b) == Float.floatToIntBits(streetViewPanoramaOrientation.f7117b);
    }

    public int hashCode() {
        return C7018s.m21296a(Float.valueOf(this.f7116a), Float.valueOf(this.f7117b));
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("tilt", Float.valueOf(this.f7116a));
        a.m21295a("bearing", Float.valueOf(this.f7117b));
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21226a(parcel, 2, this.f7116a);
        C7031b.m21226a(parcel, 3, this.f7117b);
        C7031b.m21229a(parcel, a);
    }
}

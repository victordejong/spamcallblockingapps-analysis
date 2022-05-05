package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8923r;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewPanoramaCamera.class */
public class StreetViewPanoramaCamera extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaCamera> CREATOR = new C8923r();

    /* renamed from: a */
    public final float f7108a;

    /* renamed from: b */
    public final float f7109b;

    /* renamed from: c */
    public final float f7110c;

    public StreetViewPanoramaCamera(float f, float f2, float f3) {
        boolean z = -90.0f <= f2 && f2 <= 90.0f;
        StringBuilder sb = new StringBuilder(62);
        sb.append("Tilt needs to be between -90 and 90 inclusive: ");
        sb.append(f2);
        C7021t.m21285a(z, sb.toString());
        this.f7108a = ((double) f) <= 0.0d ? 0.0f : f;
        this.f7109b = 0.0f + f2;
        this.f7110c = (((double) f3) <= 0.0d ? (f3 % 360.0f) + 360.0f : f3) % 360.0f;
        StreetViewPanoramaOrientation.C3582a aVar = new StreetViewPanoramaOrientation.C3582a();
        aVar.m31682b(f2);
        aVar.m31683a(f3);
        aVar.m31684a();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaCamera)) {
            return false;
        }
        StreetViewPanoramaCamera streetViewPanoramaCamera = (StreetViewPanoramaCamera) obj;
        return Float.floatToIntBits(this.f7108a) == Float.floatToIntBits(streetViewPanoramaCamera.f7108a) && Float.floatToIntBits(this.f7109b) == Float.floatToIntBits(streetViewPanoramaCamera.f7109b) && Float.floatToIntBits(this.f7110c) == Float.floatToIntBits(streetViewPanoramaCamera.f7110c);
    }

    public int hashCode() {
        return C7018s.m21296a(Float.valueOf(this.f7108a), Float.valueOf(this.f7109b), Float.valueOf(this.f7110c));
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("zoom", Float.valueOf(this.f7108a));
        a.m21295a("tilt", Float.valueOf(this.f7109b));
        a.m21295a("bearing", Float.valueOf(this.f7110c));
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21226a(parcel, 2, this.f7108a);
        C7031b.m21226a(parcel, 3, this.f7109b);
        C7031b.m21226a(parcel, 4, this.f7110c);
        C7031b.m21229a(parcel, a);
    }
}

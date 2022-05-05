package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8924s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewPanoramaLink.class */
public class StreetViewPanoramaLink extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaLink> CREATOR = new C8924s();

    /* renamed from: a */
    public final String f7111a;

    /* renamed from: b */
    public final float f7112b;

    public StreetViewPanoramaLink(String str, float f) {
        this.f7111a = str;
        this.f7112b = (((double) f) <= 0.0d ? (f % 360.0f) + 360.0f : f) % 360.0f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaLink)) {
            return false;
        }
        StreetViewPanoramaLink streetViewPanoramaLink = (StreetViewPanoramaLink) obj;
        return this.f7111a.equals(streetViewPanoramaLink.f7111a) && Float.floatToIntBits(this.f7112b) == Float.floatToIntBits(streetViewPanoramaLink.f7112b);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f7111a, Float.valueOf(this.f7112b));
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("panoId", this.f7111a);
        a.m21295a("bearing", Float.valueOf(this.f7112b));
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7111a, false);
        C7031b.m21226a(parcel, 3, this.f7112b);
        C7031b.m21229a(parcel, a);
    }
}

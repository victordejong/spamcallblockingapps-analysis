package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8925t;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewPanoramaLocation.class */
public class StreetViewPanoramaLocation extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaLocation> CREATOR = new C8925t();

    /* renamed from: a */
    public final StreetViewPanoramaLink[] f7113a;

    /* renamed from: b */
    public final LatLng f7114b;

    /* renamed from: c */
    public final String f7115c;

    public StreetViewPanoramaLocation(StreetViewPanoramaLink[] streetViewPanoramaLinkArr, LatLng latLng, String str) {
        this.f7113a = streetViewPanoramaLinkArr;
        this.f7114b = latLng;
        this.f7115c = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreetViewPanoramaLocation)) {
            return false;
        }
        StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation) obj;
        return this.f7115c.equals(streetViewPanoramaLocation.f7115c) && this.f7114b.equals(streetViewPanoramaLocation.f7114b);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f7114b, this.f7115c);
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("panoId", this.f7115c);
        a.m21295a("position", this.f7114b.toString());
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21209a(parcel, 2, (Parcelable[]) this.f7113a, i, false);
        C7031b.m21220a(parcel, 3, (Parcelable) this.f7114b, i, false);
        C7031b.m21215a(parcel, 4, this.f7115c, false);
        C7031b.m21229a(parcel, a);
    }
}

package com.truecaller.placepicker.data;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/data/GeocodedPlace.class */
public final class GeocodedPlace implements Parcelable {
    public static final Parcelable.Creator<GeocodedPlace> CREATOR = new C4333a();

    /* renamed from: a */
    public final String f14180a;

    /* renamed from: b */
    public final String f14181b;

    /* renamed from: c */
    public final String f14182c;

    /* renamed from: d */
    public final Double f14183d;

    /* renamed from: e */
    public final Double f14184e;

    /* renamed from: f */
    public final String f14185f;

    /* renamed from: g */
    public final String f14186g;

    /* renamed from: h */
    public final String f14187h;

    /* renamed from: com.truecaller.placepicker.data.GeocodedPlace$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/data/GeocodedPlace$a.class */
    public static final class C4333a implements Parcelable.Creator<GeocodedPlace> {
        @Override // android.os.Parcelable.Creator
        public GeocodedPlace createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new GeocodedPlace(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null, parcel.readInt() != 0 ? Double.valueOf(parcel.readDouble()) : null, parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public GeocodedPlace[] newArray(int i) {
            return new GeocodedPlace[i];
        }
    }

    public GeocodedPlace() {
        this(null, null, null, null, null, null, null, null, 255);
    }

    public GeocodedPlace(String str, String str2, String str3, Double d, Double d2, String str4, String str5, String str6) {
        this.f14180a = str;
        this.f14181b = str2;
        this.f14182c = str3;
        this.f14183d = d;
        this.f14184e = d2;
        this.f14185f = str4;
        this.f14186g = str5;
        this.f14187h = str6;
    }

    public /* synthetic */ GeocodedPlace(String str, String str2, String str3, Double d, Double d2, String str4, String str5, String str6, int i) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? null : d, (i & 16) != 0 ? null : d2, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? "" : str5, (i & 128) != 0 ? "" : str6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof GeocodedPlace)) {
                return false;
            }
            GeocodedPlace geocodedPlace = (GeocodedPlace) obj;
            return l.a(this.f14180a, geocodedPlace.f14180a) && l.a(this.f14181b, geocodedPlace.f14181b) && l.a(this.f14182c, geocodedPlace.f14182c) && l.a(this.f14183d, geocodedPlace.f14183d) && l.a(this.f14184e, geocodedPlace.f14184e) && l.a(this.f14185f, geocodedPlace.f14185f) && l.a(this.f14186g, geocodedPlace.f14186g) && l.a(this.f14187h, geocodedPlace.f14187h);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f14180a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f14181b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f14182c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        Double d = this.f14183d;
        int hashCode4 = d != null ? d.hashCode() : 0;
        Double d2 = this.f14184e;
        int hashCode5 = d2 != null ? d2.hashCode() : 0;
        String str4 = this.f14185f;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f14186g;
        int hashCode7 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f14187h;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GeocodedPlace(name=");
        m8728C.append(this.f14180a);
        m8728C.append(", fullAddress=");
        m8728C.append(this.f14181b);
        m8728C.append(", placeId=");
        m8728C.append(this.f14182c);
        m8728C.append(", latitude=");
        m8728C.append(this.f14183d);
        m8728C.append(", longitude=");
        m8728C.append(this.f14184e);
        m8728C.append(", state=");
        m8728C.append(this.f14185f);
        m8728C.append(", city=");
        m8728C.append(this.f14186g);
        m8728C.append(", zipCode=");
        return C22128a.m8618h(m8728C, this.f14187h, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f14180a);
        parcel.writeString(this.f14181b);
        parcel.writeString(this.f14182c);
        Double d = this.f14183d;
        if (d != null) {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        } else {
            parcel.writeInt(0);
        }
        Double d2 = this.f14184e;
        if (d2 != null) {
            parcel.writeInt(1);
            parcel.writeDouble(d2.doubleValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f14185f);
        parcel.writeString(this.f14186g);
        parcel.writeString(this.f14187h);
    }
}

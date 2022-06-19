package com.truecaller.notifications.enhancing;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/enhancing/SourcedContact.class */
public final class SourcedContact implements Parcelable {
    public static final Parcelable.Creator<SourcedContact> CREATOR = new C4316a();

    /* renamed from: a */
    public final String f14102a;

    /* renamed from: b */
    public final String f14103b;

    /* renamed from: c */
    public final Long f14104c;

    /* renamed from: d */
    public final String f14105d;

    /* renamed from: e */
    public final String f14106e;

    /* renamed from: f */
    public final String f14107f;

    /* renamed from: g */
    public final Uri f14108g;

    /* renamed from: h */
    public final Uri f14109h;

    /* renamed from: com.truecaller.notifications.enhancing.SourcedContact$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/enhancing/SourcedContact$a.class */
    public static final class C4316a implements Parcelable.Creator<SourcedContact> {
        @Override // android.os.Parcelable.Creator
        public SourcedContact createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new SourcedContact(parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Long.valueOf(parcel.readLong()) : null, parcel.readString(), parcel.readString(), parcel.readString(), (Uri) parcel.readParcelable(SourcedContact.class.getClassLoader()), (Uri) parcel.readParcelable(SourcedContact.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public SourcedContact[] newArray(int i) {
            return new SourcedContact[i];
        }
    }

    public SourcedContact(String str, String str2, Long l, String str3, String str4, String str5, Uri uri, Uri uri2) {
        C22128a.m8703I0(str, "packageName", str2, "label", str5, "number");
        this.f14102a = str;
        this.f14103b = str2;
        this.f14104c = l;
        this.f14105d = str3;
        this.f14106e = str4;
        this.f14107f = str5;
        this.f14108g = uri;
        this.f14109h = uri2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SourcedContact)) {
            return false;
        }
        SourcedContact sourcedContact = (SourcedContact) obj;
        return !(l.a(this.f14102a, sourcedContact.f14102a) ^ true) && !(l.a(this.f14104c, sourcedContact.f14104c) ^ true);
    }

    public int hashCode() {
        int hashCode = this.f14102a.hashCode();
        Long l = this.f14104c;
        return (hashCode * 31) + (l != null ? C4876d.m34274a(l.longValue()) : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SourcedContact(packageName=");
        m8728C.append(this.f14102a);
        m8728C.append(", label=");
        m8728C.append(this.f14103b);
        m8728C.append(", id=");
        m8728C.append(this.f14104c);
        m8728C.append(", tcId=");
        m8728C.append(this.f14105d);
        m8728C.append(", name=");
        m8728C.append(this.f14106e);
        m8728C.append(", number=");
        m8728C.append(this.f14107f);
        m8728C.append(", photoUri=");
        m8728C.append(this.f14108g);
        m8728C.append(", thumbnailPhotoUri=");
        m8728C.append(this.f14109h);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f14102a);
        parcel.writeString(this.f14103b);
        Long l = this.f14104c;
        if (l != null) {
            parcel.writeInt(1);
            parcel.writeLong(l.longValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.f14105d);
        parcel.writeString(this.f14106e);
        parcel.writeString(this.f14107f);
        parcel.writeParcelable(this.f14108g, i);
        parcel.writeParcelable(this.f14109h, i);
    }
}

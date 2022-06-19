package com.truecaller.contactfeedback.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/model/Profile.class */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new C3752a();

    /* renamed from: a */
    public final String f11337a;

    /* renamed from: b */
    public final String f11338b;

    /* renamed from: com.truecaller.contactfeedback.model.Profile$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/model/Profile$a.class */
    public static final class C3752a implements Parcelable.Creator<Profile> {
        @Override // android.os.Parcelable.Creator
        public Profile createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new Profile(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public Profile[] newArray(int i) {
            return new Profile[i];
        }
    }

    public Profile(String str, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(str2, "avatarUrl");
        this.f11337a = str;
        this.f11338b = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Profile)) {
                return false;
            }
            Profile profile = (Profile) obj;
            return l.a(this.f11337a, profile.f11337a) && l.a(this.f11338b, profile.f11338b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f11337a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f11338b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Profile(name=");
        m8728C.append(this.f11337a);
        m8728C.append(", avatarUrl=");
        return C22128a.m8618h(m8728C, this.f11338b, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11337a);
        parcel.writeString(this.f11338b);
    }
}

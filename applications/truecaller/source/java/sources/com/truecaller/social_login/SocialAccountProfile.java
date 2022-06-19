package com.truecaller.social_login;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes13-dex2jar.jar:com/truecaller/social_login/SocialAccountProfile.class */
public final class SocialAccountProfile implements Parcelable {
    public static final Parcelable.Creator<SocialAccountProfile> CREATOR = new C4496a();

    /* renamed from: a */
    public final String f14870a;

    /* renamed from: b */
    public final String f14871b;

    /* renamed from: c */
    public final String f14872c;

    /* renamed from: d */
    public final String f14873d;

    /* renamed from: e */
    public final String f14874e;

    /* renamed from: com.truecaller.social_login.SocialAccountProfile$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/social_login/SocialAccountProfile$a.class */
    public static final class C4496a implements Parcelable.Creator<SocialAccountProfile> {
        @Override // android.os.Parcelable.Creator
        public SocialAccountProfile createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new SocialAccountProfile(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public SocialAccountProfile[] newArray(int i) {
            return new SocialAccountProfile[i];
        }
    }

    public SocialAccountProfile(String str, String str2, String str3, String str4, String str5) {
        this.f14870a = str;
        this.f14871b = str2;
        this.f14872c = str3;
        this.f14873d = str4;
        this.f14874e = str5;
    }

    public SocialAccountProfile(String str, String str2, String str3, String str4, String str5, int i) {
        this.f14870a = str;
        this.f14871b = str2;
        this.f14872c = str3;
        this.f14873d = str4;
        this.f14874e = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SocialAccountProfile)) {
                return false;
            }
            SocialAccountProfile socialAccountProfile = (SocialAccountProfile) obj;
            return l.a(this.f14870a, socialAccountProfile.f14870a) && l.a(this.f14871b, socialAccountProfile.f14871b) && l.a(this.f14872c, socialAccountProfile.f14872c) && l.a(this.f14873d, socialAccountProfile.f14873d) && l.a(this.f14874e, socialAccountProfile.f14874e);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f14870a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f14871b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f14872c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f14873d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f14874e;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SocialAccountProfile(firstName=");
        m8728C.append(this.f14870a);
        m8728C.append(", lastName=");
        m8728C.append(this.f14871b);
        m8728C.append(", email=");
        m8728C.append(this.f14872c);
        m8728C.append(", profilePicture=");
        m8728C.append(this.f14873d);
        m8728C.append(", idToken=");
        return C22128a.m8618h(m8728C, this.f14874e, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f14870a);
        parcel.writeString(this.f14871b);
        parcel.writeString(this.f14872c);
        parcel.writeString(this.f14873d);
        parcel.writeString(this.f14874e);
    }
}

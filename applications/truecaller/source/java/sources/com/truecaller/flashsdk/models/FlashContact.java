package com.truecaller.flashsdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashContact.class */
public final class FlashContact implements Parcelable {
    public static final Parcelable.Creator<FlashContact> CREATOR = new C3921a();

    /* renamed from: a */
    public final String f11999a;

    /* renamed from: b */
    public final String f12000b;

    /* renamed from: c */
    public final String f12001c;

    /* renamed from: com.truecaller.flashsdk.models.FlashContact$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/models/FlashContact$a.class */
    public static final class C3921a implements Parcelable.Creator<FlashContact> {
        @Override // android.os.Parcelable.Creator
        public FlashContact createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new FlashContact(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public FlashContact[] newArray(int i) {
            return new FlashContact[i];
        }
    }

    public FlashContact(String str, String str2, String str3) {
        l.e(str, AnalyticsConstants.PHONE);
        l.e(str2, "firstName");
        this.f11999a = str;
        this.f12000b = str2;
        this.f12001c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof FlashContact)) {
                return false;
            }
            FlashContact flashContact = (FlashContact) obj;
            return l.a(this.f11999a, flashContact.f11999a) && l.a(this.f12000b, flashContact.f12000b) && l.a(this.f12001c, flashContact.f12001c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f11999a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f12000b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f12001c;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("FlashContact(phone=");
        m8728C.append(this.f11999a);
        m8728C.append(", firstName=");
        m8728C.append(this.f12000b);
        m8728C.append(", lastName=");
        return C22128a.m8618h(m8728C, this.f12001c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11999a);
        parcel.writeString(this.f12000b);
        parcel.writeString(this.f12001c);
    }
}

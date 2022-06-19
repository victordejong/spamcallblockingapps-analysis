package com.truecaller.contactfeedback.p157db;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.truecaller.contactfeedback.db.NumberAndType */
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/db/NumberAndType.class */
public final class NumberAndType implements Parcelable {
    public static final Parcelable.Creator<NumberAndType> CREATOR = new C3751a();

    /* renamed from: a */
    public final String f11335a;

    /* renamed from: b */
    public final PhoneNumberType f11336b;

    /* renamed from: com.truecaller.contactfeedback.db.NumberAndType$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/db/NumberAndType$a.class */
    public static final class C3751a implements Parcelable.Creator<NumberAndType> {
        @Override // android.os.Parcelable.Creator
        public NumberAndType createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new NumberAndType(parcel.readString(), (PhoneNumberType) Enum.valueOf(PhoneNumberType.class, parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public NumberAndType[] newArray(int i) {
            return new NumberAndType[i];
        }
    }

    public NumberAndType(String str, PhoneNumberType phoneNumberType) {
        l.e(str, "number");
        l.e(phoneNumberType, "numberType");
        this.f11335a = str;
        this.f11336b = phoneNumberType;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof NumberAndType)) {
                return false;
            }
            NumberAndType numberAndType = (NumberAndType) obj;
            return l.a(this.f11335a, numberAndType.f11335a) && l.a(this.f11336b, numberAndType.f11336b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f11335a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        PhoneNumberType phoneNumberType = this.f11336b;
        if (phoneNumberType != null) {
            i = phoneNumberType.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("NumberAndType(number=");
        m8728C.append(this.f11335a);
        m8728C.append(", numberType=");
        m8728C.append(this.f11336b);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f11335a);
        parcel.writeString(this.f11336b.name());
    }
}

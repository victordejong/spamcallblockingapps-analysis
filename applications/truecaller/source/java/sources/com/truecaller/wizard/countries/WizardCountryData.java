package com.truecaller.wizard.countries;

import android.os.Parcel;
import android.os.Parcelable;
import s1.z.c.l;
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/countries/WizardCountryData.class */
public final class WizardCountryData implements Parcelable {
    public static final Parcelable.Creator<WizardCountryData> CREATOR = new C4869a();

    /* renamed from: a */
    public final String f16544a;

    /* renamed from: b */
    public final String f16545b;

    /* renamed from: c */
    public final String f16546c;

    /* renamed from: d */
    public final String f16547d;

    /* renamed from: com.truecaller.wizard.countries.WizardCountryData$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/countries/WizardCountryData$a.class */
    public static final class C4869a implements Parcelable.Creator<WizardCountryData> {
        @Override // android.os.Parcelable.Creator
        public WizardCountryData createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new WizardCountryData(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public WizardCountryData[] newArray(int i) {
            return new WizardCountryData[i];
        }
    }

    public WizardCountryData(String str, String str2, String str3, String str4) {
        this.f16544a = str;
        this.f16545b = str2;
        this.f16546c = str3;
        this.f16547d = str4;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f16544a);
        parcel.writeString(this.f16545b);
        parcel.writeString(this.f16546c);
        parcel.writeString(this.f16547d);
    }
}

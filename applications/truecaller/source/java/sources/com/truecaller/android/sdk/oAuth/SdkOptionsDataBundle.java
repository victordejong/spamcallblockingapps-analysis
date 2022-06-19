package com.truecaller.android.sdk.oAuth;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/SdkOptionsDataBundle.class */
public class SdkOptionsDataBundle implements Parcelable {
    public static final Parcelable.Creator<SdkOptionsDataBundle> CREATOR = new C2870a();

    /* renamed from: a */
    public final int f10009a;

    /* renamed from: b */
    public final int f10010b;

    /* renamed from: c */
    public final int f10011c;

    /* renamed from: d */
    public final int f10012d;

    /* renamed from: e */
    public final int f10013e;

    /* renamed from: com.truecaller.android.sdk.oAuth.SdkOptionsDataBundle$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/oAuth/SdkOptionsDataBundle$a.class */
    public class C2870a implements Parcelable.Creator<SdkOptionsDataBundle> {
        @Override // android.os.Parcelable.Creator
        public SdkOptionsDataBundle createFromParcel(Parcel parcel) {
            return new SdkOptionsDataBundle(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SdkOptionsDataBundle[] newArray(int i) {
            return new SdkOptionsDataBundle[i];
        }
    }

    public SdkOptionsDataBundle(int i, int i2, int i3, int i4, int i5) {
        this.f10009a = i;
        this.f10010b = i2;
        this.f10011c = i3;
        this.f10012d = i4;
        this.f10013e = i5;
    }

    public SdkOptionsDataBundle(Parcel parcel) {
        this.f10009a = parcel.readInt();
        this.f10010b = parcel.readInt();
        this.f10011c = parcel.readInt();
        this.f10012d = parcel.readInt();
        this.f10013e = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10009a);
        parcel.writeInt(this.f10010b);
        parcel.writeInt(this.f10011c);
        parcel.writeInt(this.f10012d);
        parcel.writeInt(this.f10013e);
    }
}

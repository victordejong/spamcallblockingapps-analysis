package com.truecaller.android.sdk.clients;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/clients/CustomDataBundle.class */
public class CustomDataBundle implements Parcelable {
    public static final Parcelable.Creator<CustomDataBundle> CREATOR = new C2865a();

    /* renamed from: a */
    public final int f9995a;

    /* renamed from: b */
    public final int f9996b;

    /* renamed from: c */
    public final String f9997c;

    /* renamed from: d */
    public final String f9998d;

    /* renamed from: e */
    public final int f9999e;

    /* renamed from: f */
    public final int f10000f;

    /* renamed from: g */
    public final int f10001g;

    /* renamed from: com.truecaller.android.sdk.clients.CustomDataBundle$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/clients/CustomDataBundle$a.class */
    public class C2865a implements Parcelable.Creator<CustomDataBundle> {
        @Override // android.os.Parcelable.Creator
        public CustomDataBundle createFromParcel(Parcel parcel) {
            return new CustomDataBundle(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CustomDataBundle[] newArray(int i) {
            return new CustomDataBundle[i];
        }
    }

    public CustomDataBundle(int i, int i2, String str, String str2, int i3, int i4, int i5) {
        this.f9995a = i;
        this.f9996b = i2;
        this.f9997c = str;
        this.f9998d = str2;
        this.f10001g = i3;
        this.f9999e = i4;
        this.f10000f = i5;
    }

    public CustomDataBundle(Bundle bundle) {
        this.f9995a = bundle.getInt("CUSTOMDATA_BTN_COLOR", 0);
        this.f9996b = bundle.getInt("CUSTOMDATA_BTN_TEXT_COLOR", 0);
        this.f9997c = bundle.getString("CUSTOMDATA_PRIVACY_URL", "");
        this.f9998d = bundle.getString("CUSTOMDATA_TERMS_URL", "");
        this.f10001g = bundle.getInt("CUSTOMDATA_CTA_TEXT_PREFIX_OPTION", 0);
        this.f9999e = bundle.getInt("CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION", 0);
        this.f10000f = bundle.getInt("CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION", 0);
    }

    public CustomDataBundle(Parcel parcel, C2865a c2865a) {
        this.f9995a = parcel.readInt();
        this.f9996b = parcel.readInt();
        this.f9997c = parcel.readString();
        this.f9998d = parcel.readString();
        this.f10001g = parcel.readInt();
        this.f9999e = parcel.readInt();
        this.f10000f = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f9995a);
        parcel.writeInt(this.f9996b);
        parcel.writeString(this.f9997c);
        parcel.writeString(this.f9998d);
        parcel.writeInt(this.f10001g);
        parcel.writeInt(this.f9999e);
        parcel.writeInt(this.f10000f);
    }
}

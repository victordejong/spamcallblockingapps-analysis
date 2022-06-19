package com.clevertap.android.sdk;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/CTInboxStyleConfig.class */
public class CTInboxStyleConfig implements Parcelable {
    public static final Parcelable.Creator<CTInboxStyleConfig> CREATOR = new C0866a();

    /* renamed from: a */
    public String f2227a;

    /* renamed from: b */
    public String f2228b;

    /* renamed from: c */
    public String f2229c;

    /* renamed from: d */
    public String f2230d;

    /* renamed from: e */
    public String f2231e;

    /* renamed from: f */
    public String f2232f;

    /* renamed from: g */
    public String f2233g;

    /* renamed from: h */
    public String f2234h;

    /* renamed from: i */
    public String f2235i;

    /* renamed from: j */
    public String f2236j;

    /* renamed from: k */
    public String f2237k;

    /* renamed from: l */
    public String[] f2238l;

    /* renamed from: m */
    public String f2239m;

    /* renamed from: com.clevertap.android.sdk.CTInboxStyleConfig$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/CTInboxStyleConfig$a.class */
    public class C0866a implements Parcelable.Creator<CTInboxStyleConfig> {
        @Override // android.os.Parcelable.Creator
        public CTInboxStyleConfig createFromParcel(Parcel parcel) {
            return new CTInboxStyleConfig(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public CTInboxStyleConfig[] newArray(int i) {
            return new CTInboxStyleConfig[i];
        }
    }

    public CTInboxStyleConfig() {
        this.f2230d = "#FFFFFF";
        this.f2231e = "App Inbox";
        this.f2232f = "#333333";
        this.f2229c = "#D3D4DA";
        this.f2227a = "#333333";
        this.f2235i = "#1C84FE";
        this.f2239m = "#808080";
        this.f2236j = "#1C84FE";
        this.f2237k = "#FFFFFF";
        this.f2238l = new String[0];
        this.f2233g = "No Message(s) to show";
        this.f2234h = "#000000";
        this.f2228b = "ALL";
    }

    public CTInboxStyleConfig(Parcel parcel) {
        this.f2230d = parcel.readString();
        this.f2231e = parcel.readString();
        this.f2232f = parcel.readString();
        this.f2229c = parcel.readString();
        this.f2238l = parcel.createStringArray();
        this.f2227a = parcel.readString();
        this.f2235i = parcel.readString();
        this.f2239m = parcel.readString();
        this.f2236j = parcel.readString();
        this.f2237k = parcel.readString();
        this.f2233g = parcel.readString();
        this.f2234h = parcel.readString();
        this.f2228b = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2230d);
        parcel.writeString(this.f2231e);
        parcel.writeString(this.f2232f);
        parcel.writeString(this.f2229c);
        parcel.writeStringArray(this.f2238l);
        parcel.writeString(this.f2227a);
        parcel.writeString(this.f2235i);
        parcel.writeString(this.f2239m);
        parcel.writeString(this.f2236j);
        parcel.writeString(this.f2237k);
        parcel.writeString(this.f2233g);
        parcel.writeString(this.f2234h);
        parcel.writeString(this.f2228b);
    }
}

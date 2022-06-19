package com.truecaller.multisim;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes11-dex2jar.jar:com/truecaller/multisim/SimInfo.class */
public class SimInfo implements Parcelable {
    public static final Parcelable.Creator<SimInfo> CREATOR = new C4295a();

    /* renamed from: a */
    public final int f13983a;

    /* renamed from: b */
    public final String f13984b;

    /* renamed from: c */
    public final String f13985c;

    /* renamed from: d */
    public final String f13986d;

    /* renamed from: e */
    public final String f13987e;

    /* renamed from: f */
    public final String f13988f;

    /* renamed from: g */
    public final String f13989g;

    /* renamed from: h */
    public final String f13990h;

    /* renamed from: i */
    public final String f13991i;

    /* renamed from: j */
    public final boolean f13992j;

    /* renamed from: com.truecaller.multisim.SimInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/multisim/SimInfo$a.class */
    public class C4295a implements Parcelable.Creator<SimInfo> {
        @Override // android.os.Parcelable.Creator
        public SimInfo createFromParcel(Parcel parcel) {
            return new SimInfo(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public SimInfo[] newArray(int i) {
            return new SimInfo[i];
        }
    }

    public SimInfo(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z) {
        this.f13983a = i;
        this.f13984b = str;
        this.f13985c = str2;
        this.f13986d = str3;
        this.f13987e = str4;
        this.f13988f = str5;
        this.f13989g = str6;
        this.f13990h = str7;
        this.f13991i = str8;
        this.f13992j = z;
    }

    public SimInfo(Parcel parcel, C4295a c4295a) {
        this.f13983a = parcel.readInt();
        this.f13984b = parcel.readString();
        this.f13985c = parcel.readString();
        this.f13986d = parcel.readString();
        this.f13987e = parcel.readString();
        this.f13988f = parcel.readString();
        this.f13989g = parcel.readString();
        this.f13990h = parcel.readString();
        this.f13991i = parcel.readString();
        this.f13992j = parcel.readInt() != 1 ? false : true;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f13983a);
        parcel.writeString(this.f13984b);
        parcel.writeString(this.f13985c);
        parcel.writeString(this.f13986d);
        parcel.writeString(this.f13987e);
        parcel.writeString(this.f13988f);
        parcel.writeString(this.f13989g);
        parcel.writeString(this.f13990h);
        parcel.writeString(this.f13991i);
        parcel.writeInt(this.f13992j ? 1 : 0);
    }
}

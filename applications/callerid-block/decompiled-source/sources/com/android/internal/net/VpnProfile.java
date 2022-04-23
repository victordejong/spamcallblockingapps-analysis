package com.android.internal.net;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/android/internal/net/VpnProfile.class */
public class VpnProfile implements Cloneable, Parcelable {
    public static final Parcelable.Creator<VpnProfile> CREATOR = new C0687a();

    /* renamed from: b */
    public final String f3314b;

    /* renamed from: c */
    public String f3315c;

    /* renamed from: d */
    public int f3316d;

    /* renamed from: e */
    public String f3317e;

    /* renamed from: f */
    public String f3318f;

    /* renamed from: g */
    public String f3319g;

    /* renamed from: h */
    public String f3320h;

    /* renamed from: i */
    public String f3321i;

    /* renamed from: j */
    public String f3322j;

    /* renamed from: k */
    public boolean f3323k;

    /* renamed from: l */
    public String f3324l;

    /* renamed from: m */
    public String f3325m;

    /* renamed from: n */
    public String f3326n;

    /* renamed from: o */
    public String f3327o;

    /* renamed from: p */
    public String f3328p;

    /* renamed from: q */
    public String f3329q;

    /* renamed from: r */
    public boolean f3330r;

    /* renamed from: com.android.internal.net.VpnProfile$a */
    /* loaded from: classes-dex2jar.jar:com/android/internal/net/VpnProfile$a.class */
    static final class C0687a implements Parcelable.Creator<VpnProfile> {
        C0687a() {
        }

        /* renamed from: a */
        public VpnProfile createFromParcel(Parcel parcel) {
            return new VpnProfile(parcel);
        }

        /* renamed from: b */
        public VpnProfile[] newArray(int i) {
            return new VpnProfile[i];
        }
    }

    public VpnProfile(Parcel parcel) {
        this.f3315c = "";
        boolean z = false;
        this.f3316d = 0;
        this.f3317e = "";
        this.f3318f = "";
        this.f3319g = "";
        this.f3320h = "";
        this.f3321i = "";
        this.f3322j = "";
        this.f3323k = true;
        this.f3324l = "";
        this.f3325m = "";
        this.f3326n = "";
        this.f3327o = "";
        this.f3328p = "";
        this.f3329q = "";
        this.f3330r = false;
        this.f3314b = parcel.readString();
        this.f3315c = parcel.readString();
        this.f3316d = parcel.readInt();
        this.f3317e = parcel.readString();
        this.f3318f = parcel.readString();
        this.f3319g = parcel.readString();
        this.f3320h = parcel.readString();
        this.f3321i = parcel.readString();
        this.f3322j = parcel.readString();
        this.f3323k = parcel.readInt() != 0;
        this.f3324l = parcel.readString();
        this.f3325m = parcel.readString();
        this.f3326n = parcel.readString();
        this.f3327o = parcel.readString();
        this.f3328p = parcel.readString();
        this.f3329q = parcel.readString();
        this.f3330r = parcel.readInt() != 0 ? true : z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3314b);
        parcel.writeString(this.f3315c);
        parcel.writeInt(this.f3316d);
        parcel.writeString(this.f3317e);
        parcel.writeString(this.f3318f);
        parcel.writeString(this.f3319g);
        parcel.writeString(this.f3320h);
        parcel.writeString(this.f3321i);
        parcel.writeString(this.f3322j);
        parcel.writeInt(this.f3323k ? 1 : 0);
        parcel.writeString(this.f3324l);
        parcel.writeString(this.f3325m);
        parcel.writeString(this.f3326n);
        parcel.writeString(this.f3327o);
        parcel.writeString(this.f3328p);
        parcel.writeString(this.f3329q);
        parcel.writeInt(this.f3330r ? 1 : 0);
    }
}

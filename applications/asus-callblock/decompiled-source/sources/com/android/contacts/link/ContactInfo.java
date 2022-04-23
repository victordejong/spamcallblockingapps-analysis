package com.android.contacts.link;

import android.os.Parcel;
import android.os.Parcelable;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/link/ContactInfo.class */
public class ContactInfo implements Parcelable {
    public long d;
    public int e;
    public int f;
    public boolean g;
    public String h;

    /* renamed from: a  reason: collision with root package name */
    public long f1601a = -1;

    /* renamed from: b  reason: collision with root package name */
    public int f1602b = 0;
    public long c = 0;
    public String i = "Unknown";
    public String j = BuildConfig.FLAVOR;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1601a);
        parcel.writeInt(this.f1602b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
    }
}

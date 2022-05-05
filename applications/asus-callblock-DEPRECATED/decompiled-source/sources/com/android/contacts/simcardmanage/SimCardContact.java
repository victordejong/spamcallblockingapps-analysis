package com.android.contacts.simcardmanage;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/SimCardContact.class */
public class SimCardContact implements Parcelable {
    public static final Parcelable.Creator<SimCardContact> CREATOR = new Parcelable.Creator<SimCardContact>() { // from class: com.android.contacts.simcardmanage.SimCardContact.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ SimCardContact createFromParcel(Parcel parcel) {
            return new SimCardContact(parcel, (byte) 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ SimCardContact[] newArray(int i) {
            return new SimCardContact[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public int f2133a;

    /* renamed from: b  reason: collision with root package name */
    public String f2134b;
    public String c;
    public long d;
    public String e;
    String f;
    public String g;
    public long h;
    public int i;
    public long j;
    public long k;
    long l;
    long m;
    public long n;
    private int o;

    public SimCardContact() {
        this.f2133a = -1;
        this.f2134b = null;
        this.c = null;
        this.o = 1;
        this.d = -1L;
        this.h = -1L;
        this.i = 1;
    }

    private SimCardContact(Parcel parcel) {
        this.f2133a = parcel.readInt();
        this.f2134b = parcel.readString();
        this.f = parcel.readString();
        this.c = parcel.readString();
        this.g = parcel.readString();
        this.e = parcel.readString();
        this.o = parcel.readInt();
        this.d = parcel.readLong();
        this.h = parcel.readLong();
        this.i = parcel.readInt();
        this.j = parcel.readLong();
        this.k = parcel.readLong();
        this.l = parcel.readLong();
        this.m = parcel.readLong();
        this.n = parcel.readLong();
    }

    /* synthetic */ SimCardContact(Parcel parcel, byte b2) {
        this(parcel);
    }

    public final void a(String str, long j) {
        this.f2134b = str;
        this.j = j;
    }

    public final void b(String str, long j) {
        this.c = str;
        this.k = j;
    }

    public final void c(String str, long j) {
        this.f = str;
        this.m = j;
    }

    public final void d(String str, long j) {
        this.g = str;
        this.n = j;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e(String str, long j) {
        this.e = str;
        this.l = j;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = true;
        SimCardContact simCardContact = (SimCardContact) obj;
        if (this.h == simCardContact.h && this.i == simCardContact.i) {
            z4 = (!TextUtils.isEmpty(this.f2134b) || !TextUtils.isEmpty(simCardContact.f2134b)) ? this.f2134b != null && this.f2134b.equals(simCardContact.f2134b) : true;
            z3 = (!TextUtils.isEmpty(this.c) || !TextUtils.isEmpty(simCardContact.c)) ? this.c != null && this.c.equals(simCardContact.c) : true;
            z2 = (!TextUtils.isEmpty(this.e) || !TextUtils.isEmpty(simCardContact.e)) ? this.e != null && this.e.equals(simCardContact.e) : true;
            z = simCardContact.d == this.d;
        } else {
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        if (!z4 || !z3 || !z2 || !z) {
            z5 = false;
        }
        return z5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2133a);
        parcel.writeString(this.f2134b);
        parcel.writeString(this.f);
        parcel.writeString(this.c);
        parcel.writeString(this.g);
        parcel.writeString(this.e);
        parcel.writeInt(this.o);
        parcel.writeLong(this.d);
        parcel.writeLong(this.h);
        parcel.writeInt(this.i);
        parcel.writeLong(this.j);
        parcel.writeLong(this.k);
        parcel.writeLong(this.l);
        parcel.writeLong(this.m);
        parcel.writeLong(this.n);
    }
}

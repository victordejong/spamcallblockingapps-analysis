package com.truecaller.calling.missedcallreminder;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/missedcallreminder/MissedCallReminder.class */
public class MissedCallReminder implements Parcelable {
    public static final Parcelable.Creator<MissedCallReminder> CREATOR = new C3623a();

    /* renamed from: e */
    public static int f10735e;
    @b(alternate = {"a"}, value = "rawNumber")

    /* renamed from: a */
    public String f10736a;
    @b(alternate = {C22021b.f61237c}, value = "normalizedNumber")

    /* renamed from: b */
    public String f10737b;
    @b(alternate = {AbstractC2405c.f7629a}, value = "timestamp")

    /* renamed from: c */
    public long f10738c;
    @b(alternate = {"d"}, value = "notificationId")

    /* renamed from: d */
    public int f10739d;

    /* renamed from: com.truecaller.calling.missedcallreminder.MissedCallReminder$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/missedcallreminder/MissedCallReminder$a.class */
    public class C3623a implements Parcelable.Creator<MissedCallReminder> {
        @Override // android.os.Parcelable.Creator
        public MissedCallReminder createFromParcel(Parcel parcel) {
            return new MissedCallReminder(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public MissedCallReminder[] newArray(int i) {
            return new MissedCallReminder[i];
        }
    }

    public MissedCallReminder() {
    }

    public MissedCallReminder(Parcel parcel) {
        this.f10736a = parcel.readString();
        this.f10737b = parcel.readString();
        this.f10738c = parcel.readLong();
        this.f10739d = parcel.readInt();
    }

    public MissedCallReminder(String str, String str2, long j) {
        this.f10736a = str;
        this.f10737b = str2;
        this.f10738c = j;
        int i = f10735e;
        f10735e = i + 1;
        this.f10739d = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f10736a);
        parcel.writeString(this.f10737b);
        parcel.writeLong(this.f10738c);
        parcel.writeInt(this.f10739d);
    }
}

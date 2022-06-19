package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$RequestState.class */
public class DeviceShareDialogFragment$RequestState implements Parcelable {
    public static final Parcelable.Creator<DeviceShareDialogFragment$RequestState> CREATOR = new C0356a();

    /* renamed from: a */
    public String f2590a;

    /* renamed from: b */
    public long f2591b;

    /* renamed from: com.facebook.share.internal.DeviceShareDialogFragment$RequestState$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/internal/DeviceShareDialogFragment$RequestState$a.class */
    public static final class C0356a implements Parcelable.Creator<DeviceShareDialogFragment$RequestState> {
        /* renamed from: a */
        public DeviceShareDialogFragment$RequestState createFromParcel(Parcel parcel) {
            return new DeviceShareDialogFragment$RequestState(parcel);
        }

        /* renamed from: b */
        public DeviceShareDialogFragment$RequestState[] newArray(int i) {
            return new DeviceShareDialogFragment$RequestState[i];
        }
    }

    public DeviceShareDialogFragment$RequestState() {
    }

    public DeviceShareDialogFragment$RequestState(Parcel parcel) {
        this.f2590a = parcel.readString();
        this.f2591b = parcel.readLong();
    }

    /* renamed from: a */
    public long m5005a() {
        return this.f2591b;
    }

    /* renamed from: b */
    public String m5004b() {
        return this.f2590a;
    }

    /* renamed from: c */
    public void m5003c(long j) {
        this.f2591b = j;
    }

    /* renamed from: d */
    public void m5002d(String str) {
        this.f2590a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2590a);
        parcel.writeLong(this.f2591b);
    }
}

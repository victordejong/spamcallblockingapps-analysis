package com.android.internal.net;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/android/internal/net/LegacyVpnInfo.class */
public class LegacyVpnInfo implements Parcelable {
    public static final Parcelable.Creator<LegacyVpnInfo> CREATOR = new C0685a();

    /* renamed from: b */
    public String f3300b;

    /* renamed from: c */
    public int f3301c = -1;

    /* renamed from: d */
    public PendingIntent f3302d;

    /* renamed from: com.android.internal.net.LegacyVpnInfo$a */
    /* loaded from: classes-dex2jar.jar:com/android/internal/net/LegacyVpnInfo$a.class */
    static final class C0685a implements Parcelable.Creator<LegacyVpnInfo> {
        C0685a() {
        }

        /* renamed from: a */
        public LegacyVpnInfo createFromParcel(Parcel parcel) {
            LegacyVpnInfo legacyVpnInfo = new LegacyVpnInfo();
            legacyVpnInfo.f3300b = parcel.readString();
            legacyVpnInfo.f3301c = parcel.readInt();
            legacyVpnInfo.f3302d = (PendingIntent) parcel.readParcelable(null);
            return legacyVpnInfo;
        }

        /* renamed from: b */
        public LegacyVpnInfo[] newArray(int i) {
            return new LegacyVpnInfo[i];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3300b);
        parcel.writeInt(this.f3301c);
        parcel.writeParcelable(this.f3302d, i);
    }
}

package com.android.internal.net;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/internal/net/VpnConfig.class */
public class VpnConfig implements Parcelable {
    public static final Parcelable.Creator<VpnConfig> CREATOR = new C0686a();

    /* renamed from: b */
    public String f3303b;

    /* renamed from: c */
    public String f3304c;

    /* renamed from: d */
    public String f3305d;

    /* renamed from: f */
    public String f3307f;

    /* renamed from: g */
    public String f3308g;

    /* renamed from: h */
    public List<String> f3309h;

    /* renamed from: i */
    public List<String> f3310i;

    /* renamed from: j */
    public PendingIntent f3311j;

    /* renamed from: l */
    public boolean f3313l;

    /* renamed from: e */
    public int f3306e = -1;

    /* renamed from: k */
    public long f3312k = -1;

    /* renamed from: com.android.internal.net.VpnConfig$a */
    /* loaded from: classes-dex2jar.jar:com/android/internal/net/VpnConfig$a.class */
    static final class C0686a implements Parcelable.Creator<VpnConfig> {
        C0686a() {
        }

        /* renamed from: a */
        public VpnConfig createFromParcel(Parcel parcel) {
            VpnConfig vpnConfig = new VpnConfig();
            vpnConfig.f3303b = parcel.readString();
            vpnConfig.f3304c = parcel.readString();
            vpnConfig.f3305d = parcel.readString();
            vpnConfig.f3306e = parcel.readInt();
            vpnConfig.f3307f = parcel.readString();
            vpnConfig.f3308g = parcel.readString();
            vpnConfig.f3309h = parcel.createStringArrayList();
            vpnConfig.f3310i = parcel.createStringArrayList();
            vpnConfig.f3311j = (PendingIntent) parcel.readParcelable(null);
            vpnConfig.f3312k = parcel.readLong();
            vpnConfig.f3313l = parcel.readInt() != 0;
            return vpnConfig;
        }

        /* renamed from: b */
        public VpnConfig[] newArray(int i) {
            return new VpnConfig[i];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3303b);
        parcel.writeString(this.f3304c);
        parcel.writeString(this.f3305d);
        parcel.writeInt(this.f3306e);
        parcel.writeString(this.f3307f);
        parcel.writeString(this.f3308g);
        parcel.writeStringList(this.f3309h);
        parcel.writeStringList(this.f3310i);
        parcel.writeParcelable(this.f3311j, i);
        parcel.writeLong(this.f3312k);
        parcel.writeInt(this.f3313l ? 1 : 0);
    }
}

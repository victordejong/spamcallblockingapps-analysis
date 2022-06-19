package android.net;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/net/NetworkQuotaInfo.class */
public class NetworkQuotaInfo implements Parcelable {
    public static final Parcelable.Creator<NetworkQuotaInfo> CREATOR = new C0005a();

    /* renamed from: b */
    private final long f17b;

    /* renamed from: c */
    private final long f18c;

    /* renamed from: d */
    private final long f19d;

    /* renamed from: android.net.NetworkQuotaInfo$a */
    /* loaded from: classes-dex2jar.jar:android/net/NetworkQuotaInfo$a.class */
    static final class C0005a implements Parcelable.Creator<NetworkQuotaInfo> {
        C0005a() {
        }

        /* renamed from: a */
        public NetworkQuotaInfo createFromParcel(Parcel parcel) {
            return new NetworkQuotaInfo(parcel);
        }

        /* renamed from: b */
        public NetworkQuotaInfo[] newArray(int i) {
            return new NetworkQuotaInfo[i];
        }
    }

    public NetworkQuotaInfo(Parcel parcel) {
        this.f17b = parcel.readLong();
        this.f18c = parcel.readLong();
        this.f19d = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f17b);
        parcel.writeLong(this.f18c);
        parcel.writeLong(this.f19d);
    }
}

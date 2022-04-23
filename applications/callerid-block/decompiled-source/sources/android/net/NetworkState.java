package android.net;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:android/net/NetworkState.class */
public class NetworkState implements Parcelable {
    public static final Parcelable.Creator<NetworkState> CREATOR = new C0006a();

    /* renamed from: b */
    public final NetworkInfo f20b;

    /* renamed from: c */
    public final LinkProperties f21c;

    /* renamed from: d */
    public final LinkCapabilities f22d;

    /* renamed from: e */
    public final String f23e;

    /* renamed from: f */
    public final String f24f;

    /* renamed from: android.net.NetworkState$a */
    /* loaded from: classes-dex2jar.jar:android/net/NetworkState$a.class */
    static final class C0006a implements Parcelable.Creator<NetworkState> {
        C0006a() {
        }

        /* renamed from: a */
        public NetworkState createFromParcel(Parcel parcel) {
            return new NetworkState(parcel);
        }

        /* renamed from: b */
        public NetworkState[] newArray(int i) {
            return new NetworkState[i];
        }
    }

    public NetworkState(Parcel parcel) {
        this.f20b = (NetworkInfo) parcel.readParcelable(null);
        this.f21c = (LinkProperties) parcel.readParcelable(null);
        this.f22d = (LinkCapabilities) parcel.readParcelable(null);
        this.f23e = parcel.readString();
        this.f24f = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f20b, i);
        parcel.writeParcelable(this.f21c, i);
        parcel.writeParcelable(this.f22d, i);
        parcel.writeString(this.f23e);
        parcel.writeString(this.f24f);
    }
}

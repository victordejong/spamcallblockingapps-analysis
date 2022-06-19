package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import e.a.a.a.a;
/* loaded from: classes-dex2jar.jar:android/net/NetworkTemplate.class */
public class NetworkTemplate implements Parcelable {
    public static final Parcelable.Creator<NetworkTemplate> CREATOR = new C0007a();

    /* renamed from: b */
    private final int f25b;

    /* renamed from: c */
    private final String f26c;

    /* renamed from: d */
    private final String f27d;

    /* renamed from: android.net.NetworkTemplate$a */
    /* loaded from: classes-dex2jar.jar:android/net/NetworkTemplate$a.class */
    static final class C0007a implements Parcelable.Creator<NetworkTemplate> {
        C0007a() {
        }

        /* renamed from: a */
        public NetworkTemplate createFromParcel(Parcel parcel) {
            return new NetworkTemplate(parcel, null);
        }

        /* renamed from: b */
        public NetworkTemplate[] newArray(int i) {
            return new NetworkTemplate[i];
        }
    }

    private NetworkTemplate(Parcel parcel) {
        this.f25b = parcel.readInt();
        this.f26c = parcel.readString();
        this.f27d = parcel.readString();
    }

    /* synthetic */ NetworkTemplate(Parcel parcel, C0007a c0007a) {
        this(parcel);
    }

    /* renamed from: a */
    private static String m15214a(int i) {
        switch (i) {
            case 1:
                return "MOBILE_ALL";
            case 2:
                return "MOBILE_3G_LOWER";
            case 3:
                return "MOBILE_4G";
            case 4:
                return "WIFI";
            case 5:
                return "ETHERNET";
            case 6:
                return "MOBILE_WILDCARD";
            case 7:
                return "WIFI_WILDCARD";
            default:
                return "UNKNOWN";
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof NetworkTemplate) {
            NetworkTemplate networkTemplate = (NetworkTemplate) obj;
            z = false;
            if (this.f25b == networkTemplate.f25b) {
                z = false;
                if (a.a(this.f26c, networkTemplate.f26c)) {
                    z = false;
                    if (a.a(this.f27d, networkTemplate.f27d)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return a.b(new Object[]{Integer.valueOf(this.f25b), this.f26c, this.f27d});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NetworkTemplate: ");
        sb.append("matchRule=");
        sb.append(m15214a(this.f25b));
        if (this.f26c != null) {
            sb.append(", subscriberId=");
            sb.append(C0010a.m15199a(this.f26c));
        }
        if (this.f27d != null) {
            sb.append(", networkId=");
            sb.append(this.f27d);
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f25b);
        parcel.writeString(this.f26c);
        parcel.writeString(this.f27d);
    }
}

package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes-dex2jar.jar:android/net/LinkAddress.class */
public class LinkAddress implements Parcelable {
    public static final Parcelable.Creator<LinkAddress> CREATOR = new C0001a();

    /* renamed from: b */
    private final InetAddress f0b;

    /* renamed from: c */
    private final int f1c;

    /* renamed from: android.net.LinkAddress$a */
    /* loaded from: classes-dex2jar.jar:android/net/LinkAddress$a.class */
    static final class C0001a implements Parcelable.Creator<LinkAddress> {
        C0001a() {
        }

        /* renamed from: a */
        public LinkAddress createFromParcel(Parcel parcel) {
            r9 = null;
            InetAddress inetAddress = null;
            int i = 0;
            if (parcel.readByte() == 1) {
                try {
                    InetAddress byAddress = InetAddress.getByAddress(parcel.createByteArray());
                    inetAddress = byAddress;
                    i = parcel.readInt();
                    inetAddress = byAddress;
                } catch (UnknownHostException e) {
                    i = 0;
                }
            }
            return new LinkAddress(inetAddress, i);
        }

        /* renamed from: b */
        public LinkAddress[] newArray(int i) {
            return new LinkAddress[i];
        }
    }

    public LinkAddress(InetAddress inetAddress, int i) {
        if (inetAddress == null || i < 0 || (((inetAddress instanceof Inet4Address) && i > 32) || i > 128)) {
            throw new IllegalArgumentException("Bad LinkAddress haloParams " + inetAddress + i);
        }
        this.f0b = inetAddress;
        this.f1c = i;
    }

    /* renamed from: a */
    public InetAddress m15246a() {
        return this.f0b;
    }

    /* renamed from: b */
    public int m15245b() {
        return this.f1c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LinkAddress)) {
            return false;
        }
        LinkAddress linkAddress = (LinkAddress) obj;
        boolean z = false;
        if (this.f0b.equals(linkAddress.f0b)) {
            z = false;
            if (this.f1c == linkAddress.f1c) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        InetAddress inetAddress = this.f0b;
        return (inetAddress == null ? 0 : inetAddress.hashCode()) + this.f1c;
    }

    public String toString() {
        String str;
        if (this.f0b == null) {
            str = "";
        } else {
            str = this.f0b.getHostAddress() + "/" + this.f1c;
        }
        return str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f0b != null) {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.f0b.getAddress());
            parcel.writeInt(this.f1c);
            return;
        }
        parcel.writeByte((byte) 0);
    }
}

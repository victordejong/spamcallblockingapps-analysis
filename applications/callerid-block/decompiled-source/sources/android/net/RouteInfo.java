package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import e.d.a.a.a;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
/* loaded from: classes-dex2jar.jar:android/net/RouteInfo.class */
public class RouteInfo implements Parcelable {
    public static final Parcelable.Creator<RouteInfo> CREATOR = new C0009a();

    /* renamed from: b */
    private final LinkAddress f32b;

    /* renamed from: c */
    private final InetAddress f33c;

    /* renamed from: d */
    private final boolean f34d;

    /* renamed from: android.net.RouteInfo$a */
    /* loaded from: classes-dex2jar.jar:android/net/RouteInfo$a.class */
    static final class C0009a implements Parcelable.Creator<RouteInfo> {
        C0009a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.net.RouteInfo createFromParcel(android.os.Parcel r6) {
            /*
                r5 = this;
                r0 = r6
                byte r0 = r0.readByte()
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = r7
                r1 = 1
                if (r0 != r1) goto L_0x0021
                r0 = r6
                byte[] r0 = r0.createByteArray()
                r9 = r0
                r0 = r6
                int r0 = r0.readInt()
                r7 = r0
                r0 = r9
                java.net.InetAddress r0 = java.net.InetAddress.getByAddress(r0)     // Catch: UnknownHostException -> 0x0057
                r9 = r0
                goto L_0x0026
            L_0x0021:
                r0 = 0
                r7 = r0
            L_0x0023:
                r0 = 0
                r9 = r0
            L_0x0026:
                r0 = r6
                byte r0 = r0.readByte()
                r1 = 1
                if (r0 != r1) goto L_0x003b
                r0 = r6
                byte[] r0 = r0.createByteArray()
                r6 = r0
                r0 = r6
                java.net.InetAddress r0 = java.net.InetAddress.getByAddress(r0)     // Catch: UnknownHostException -> 0x005c
                r6 = r0
                goto L_0x003d
            L_0x003b:
                r0 = 0
                r6 = r0
            L_0x003d:
                r0 = r9
                if (r0 == 0) goto L_0x004d
                android.net.LinkAddress r0 = new android.net.LinkAddress
                r1 = r0
                r2 = r9
                r3 = r7
                r1.<init>(r2, r3)
                r8 = r0
            L_0x004d:
                android.net.RouteInfo r0 = new android.net.RouteInfo
                r1 = r0
                r2 = r8
                r3 = r6
                r1.<init>(r2, r3)
                return r0
            L_0x0057:
                r9 = move-exception
                goto L_0x0023
            L_0x005c:
                r6 = move-exception
                goto L_0x003b
            */
            throw new UnsupportedOperationException("Method not decompiled: android.net.RouteInfo.C0009a.createFromParcel(android.os.Parcel):android.net.RouteInfo");
        }

        /* renamed from: b */
        public RouteInfo[] newArray(int i) {
            return new RouteInfo[i];
        }
    }

    public RouteInfo(LinkAddress linkAddress, InetAddress inetAddress) {
        linkAddress = linkAddress;
        if (linkAddress == null) {
            if (inetAddress != null) {
                try {
                    linkAddress = inetAddress instanceof Inet4Address ? new LinkAddress(Inet4Address.getLocalHost(), 0) : new LinkAddress(Inet6Address.getLocalHost(), 0);
                    linkAddress = linkAddress;
                } catch (UnknownHostException e) {
                    a.c("RouteInfo", "exception thrown", e);
                }
            } else {
                throw new RuntimeException("Invalid arguments passed in.");
            }
        }
        InetAddress inetAddress2 = inetAddress;
        if (inetAddress == null) {
            try {
                inetAddress2 = linkAddress.m15246a() instanceof Inet4Address ? Inet4Address.getLocalHost() : Inet6Address.getLocalHost();
            } catch (UnknownHostException e2) {
                a.c("RouteInfo", "exception thrown", e2);
                inetAddress2 = inetAddress;
            }
        }
        this.f32b = new LinkAddress(NetworkUtilsHelper.m15211a(linkAddress.m15246a(), linkAddress.m15245b()), linkAddress.m15245b());
        this.f33c = inetAddress2;
        this.f34d = m15203c();
        m15202d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (r0.m15245b() == 0) goto L_0x0026;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r0.m15245b() == 0) goto L_0x0026;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m15203c() {
        /*
            r2 = this;
            r0 = r2
            java.net.InetAddress r0 = r0.f33c
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0040
            r0 = r3
            boolean r0 = r0 instanceof java.net.Inet4Address
            if (r0 == 0) goto L_0x002b
            r0 = r2
            android.net.LinkAddress r0 = r0.f32b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0026
            r0 = r4
            r5 = r0
            r0 = r3
            int r0 = r0.m15245b()
            if (r0 != 0) goto L_0x0040
        L_0x0026:
            r0 = 1
            r5 = r0
            goto L_0x0040
        L_0x002b:
            r0 = r2
            android.net.LinkAddress r0 = r0.f32b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0026
            r0 = r4
            r5 = r0
            r0 = r3
            int r0 = r0.m15245b()
            if (r0 != 0) goto L_0x0040
            goto L_0x0026
        L_0x0040:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.net.RouteInfo.m15203c():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
        if (r3.f33c.equals(java.net.Inet6Address.getLocalHost()) != false) goto L_0x001e;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m15202d() {
        /*
            r3 = this;
            r0 = 0
            r4 = r0
            r0 = r3
            java.net.InetAddress r0 = r0.f33c     // Catch: UnknownHostException -> 0x0022
            java.net.InetAddress r1 = java.net.Inet4Address.getLocalHost()     // Catch: UnknownHostException -> 0x0022
            boolean r0 = r0.equals(r1)     // Catch: UnknownHostException -> 0x0022
            if (r0 != 0) goto L_0x001e
            r0 = r3
            java.net.InetAddress r0 = r0.f33c     // Catch: UnknownHostException -> 0x0022
            java.net.InetAddress r1 = java.net.Inet6Address.getLocalHost()     // Catch: UnknownHostException -> 0x0022
            boolean r0 = r0.equals(r1)     // Catch: UnknownHostException -> 0x0022
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0020
        L_0x001e:
            r0 = 1
            r4 = r0
        L_0x0020:
            r0 = r4
            return r0
        L_0x0022:
            r6 = move-exception
            goto L_0x0020
        */
        throw new UnsupportedOperationException("Method not decompiled: android.net.RouteInfo.m15202d():boolean");
    }

    /* renamed from: a */
    public LinkAddress m15205a() {
        return this.f32b;
    }

    /* renamed from: b */
    public InetAddress m15204b() {
        return this.f33c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RouteInfo)) {
            return false;
        }
        RouteInfo routeInfo = (RouteInfo) obj;
        LinkAddress linkAddress = this.f32b;
        boolean equals = linkAddress == null ? routeInfo.m15205a() == null : linkAddress.equals(routeInfo.m15205a());
        InetAddress inetAddress = this.f33c;
        boolean equals2 = inetAddress == null ? routeInfo.m15204b() == null : inetAddress.equals(routeInfo.m15204b());
        if (!equals || !equals2 || this.f34d != routeInfo.f34d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        LinkAddress linkAddress = this.f32b;
        int i = 0;
        int hashCode = linkAddress == null ? 0 : linkAddress.hashCode();
        InetAddress inetAddress = this.f33c;
        if (inetAddress != null) {
            i = inetAddress.hashCode();
        }
        return hashCode + i + (this.f34d ? 3 : 7);
    }

    public String toString() {
        LinkAddress linkAddress = this.f32b;
        String linkAddress2 = linkAddress != null ? linkAddress.toString() : "";
        String str = linkAddress2;
        if (this.f33c != null) {
            str = linkAddress2 + " -> " + this.f33c.getHostAddress();
        }
        return str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.f32b == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeByteArray(this.f32b.m15246a().getAddress());
            parcel.writeInt(this.f32b.m15245b());
        }
        if (this.f33c == null) {
            parcel.writeByte((byte) 0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeByteArray(this.f33c.getAddress());
    }
}

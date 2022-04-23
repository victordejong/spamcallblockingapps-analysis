package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:android/net/LinkProperties.class */
public class LinkProperties implements Parcelable {
    public static final Parcelable.Creator<LinkProperties> CREATOR = new C0003a();

    /* renamed from: b */
    String f3b;

    /* renamed from: c */
    private Collection<LinkAddress> f4c = new ArrayList();

    /* renamed from: d */
    private Collection<InetAddress> f5d = new ArrayList();

    /* renamed from: e */
    private Collection<RouteInfo> f6e = new ArrayList();

    /* renamed from: f */
    private ProxyProperties f7f;

    /* renamed from: android.net.LinkProperties$a */
    /* loaded from: classes-dex2jar.jar:android/net/LinkProperties$a.class */
    static final class C0003a implements Parcelable.Creator<LinkProperties> {
        C0003a() {
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x009b -> B:16:0x005c). Please submit an issue!!! */
        /* renamed from: a */
        public LinkProperties createFromParcel(Parcel parcel) {
            LinkProperties linkProperties = new LinkProperties();
            String readString = parcel.readString();
            if (readString != null) {
                try {
                    linkProperties.m15224s(readString);
                } catch (Exception e) {
                    return null;
                }
            }
            int readInt = parcel.readInt();
            for (int i = 0; i < readInt; i++) {
                linkProperties.m15238b((LinkAddress) parcel.readParcelable(null));
            }
            int readInt2 = parcel.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                try {
                    linkProperties.m15239a(InetAddress.getByAddress(parcel.createByteArray()));
                } catch (UnknownHostException e2) {
                }
            }
            int readInt3 = parcel.readInt();
            for (int i3 = 0; i3 < readInt3; i3++) {
                linkProperties.m15237c((RouteInfo) parcel.readParcelable(null));
            }
            if (parcel.readByte() == 1) {
                linkProperties.m15225q((ProxyProperties) parcel.readParcelable(null));
            }
            return linkProperties;
        }

        /* renamed from: b */
        public LinkProperties[] newArray(int i) {
            return new LinkProperties[i];
        }
    }

    public LinkProperties() {
        m15236d();
    }

    /* renamed from: a */
    public void m15239a(InetAddress inetAddress) {
        if (inetAddress != null) {
            this.f5d.add(inetAddress);
        }
    }

    /* renamed from: b */
    public void m15238b(LinkAddress linkAddress) {
        if (linkAddress != null) {
            this.f4c.add(linkAddress);
        }
    }

    /* renamed from: c */
    public void m15237c(RouteInfo routeInfo) {
        if (routeInfo != null) {
            this.f6e.add(routeInfo);
        }
    }

    /* renamed from: d */
    public void m15236d() {
        this.f3b = null;
        this.f4c.clear();
        this.f5d.clear();
        this.f6e.clear();
        this.f7f = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public Collection<InetAddress> m15235e() {
        ArrayList arrayList = new ArrayList();
        for (LinkAddress linkAddress : this.f4c) {
            arrayList.add(linkAddress.m15246a());
        }
        return Collections.unmodifiableCollection(arrayList);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LinkProperties)) {
            return false;
        }
        LinkProperties linkProperties = (LinkProperties) obj;
        if (!m15227o(linkProperties) || !m15230l(linkProperties) || !m15229m(linkProperties) || !m15226p(linkProperties) || !m15228n(linkProperties)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public Collection<InetAddress> m15234f() {
        return Collections.unmodifiableCollection(this.f5d);
    }

    /* renamed from: g */
    public ProxyProperties m15233g() {
        return this.f7f;
    }

    /* renamed from: h */
    public String m15232h() {
        return this.f3b;
    }

    public int hashCode() {
        String str = this.f3b;
        int i = 0;
        int i2 = 0;
        if (str != null) {
            int hashCode = str.hashCode();
            int size = this.f4c.size();
            int size2 = this.f5d.size();
            int size3 = this.f6e.size();
            ProxyProperties proxyProperties = this.f7f;
            if (proxyProperties != null) {
                i2 = proxyProperties.hashCode();
            }
            i = i2 + hashCode + (size * 31) + (size2 * 37) + (size3 * 41);
        }
        return i;
    }

    /* renamed from: i */
    public Collection<RouteInfo> m15231i() {
        return Collections.unmodifiableCollection(this.f6e);
    }

    /* renamed from: l */
    public boolean m15230l(LinkProperties linkProperties) {
        Collection<InetAddress> e = linkProperties.m15235e();
        Collection<InetAddress> e2 = m15235e();
        return e2.size() == e.size() ? e2.containsAll(e) : false;
    }

    /* renamed from: m */
    public boolean m15229m(LinkProperties linkProperties) {
        Collection<InetAddress> f = linkProperties.m15234f();
        return this.f5d.size() == f.size() ? this.f5d.containsAll(f) : false;
    }

    /* renamed from: n */
    public boolean m15228n(LinkProperties linkProperties) {
        return m15233g() == null ? linkProperties.m15233g() == null : m15233g().equals(linkProperties.m15233g());
    }

    /* renamed from: o */
    public boolean m15227o(LinkProperties linkProperties) {
        return TextUtils.equals(m15232h(), linkProperties.m15232h());
    }

    /* renamed from: p */
    public boolean m15226p(LinkProperties linkProperties) {
        Collection<RouteInfo> i = linkProperties.m15231i();
        return this.f6e.size() == i.size() ? this.f6e.containsAll(i) : false;
    }

    /* renamed from: q */
    public void m15225q(ProxyProperties proxyProperties) {
        this.f7f = proxyProperties;
    }

    /* renamed from: s */
    public void m15224s(String str) {
        this.f3b = str;
    }

    public String toString() {
        String str = "";
        String str2 = this.f3b == null ? "" : "InterfaceName: " + this.f3b + " ";
        String str3 = "LinkAddresses: [";
        for (LinkAddress linkAddress : this.f4c) {
            str3 = str3 + linkAddress.toString() + ",";
        }
        String str4 = str3 + "] ";
        String str5 = "DnsAddresses: [";
        for (InetAddress inetAddress : this.f5d) {
            str5 = str5 + inetAddress.getHostAddress() + ",";
        }
        String str6 = str5 + "] ";
        String str7 = "Routes: [";
        for (RouteInfo routeInfo : this.f6e) {
            str7 = str7 + routeInfo.toString() + ",";
        }
        String str8 = str7 + "] ";
        if (this.f7f != null) {
            str = "HttpProxy: " + this.f7f.toString() + " ";
        }
        return str2 + str4 + str8 + str6 + str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(m15232h());
        parcel.writeInt(this.f4c.size());
        for (LinkAddress linkAddress : this.f4c) {
            parcel.writeParcelable(linkAddress, i);
        }
        parcel.writeInt(this.f5d.size());
        for (InetAddress inetAddress : this.f5d) {
            parcel.writeByteArray(inetAddress.getAddress());
        }
        parcel.writeInt(this.f6e.size());
        for (RouteInfo routeInfo : this.f6e) {
            parcel.writeParcelable(routeInfo, i);
        }
        if (this.f7f != null) {
            parcel.writeByte((byte) 1);
            parcel.writeParcelable(this.f7f, i);
            return;
        }
        parcel.writeByte((byte) 0);
    }
}

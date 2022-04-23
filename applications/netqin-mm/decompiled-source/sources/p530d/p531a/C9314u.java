package p530d.p531a;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9210a;
/* renamed from: d.a.u */
/* loaded from: classes2-dex2jar.jar:d/a/u.class */
public final class C9314u {

    /* renamed from: d */
    public static final C9210a.C9213c<String> f35891d = C9210a.C9213c.m3148a("io.grpc.EquivalentAddressGroup.authorityOverride");

    /* renamed from: a */
    public final List<SocketAddress> f35892a;

    /* renamed from: b */
    public final C9210a f35893b;

    /* renamed from: c */
    public final int f35894c;

    public C9314u(SocketAddress socketAddress) {
        this(socketAddress, C9210a.f35760b);
    }

    public C9314u(SocketAddress socketAddress, C9210a aVar) {
        this(Collections.singletonList(socketAddress), aVar);
    }

    public C9314u(List<SocketAddress> list) {
        this(list, C9210a.f35760b);
    }

    public C9314u(List<SocketAddress> list, C9210a aVar) {
        C4933n.m24790a(!list.isEmpty(), "addrs is empty");
        this.f35892a = Collections.unmodifiableList(new ArrayList(list));
        C4933n.m24794a(aVar, "attrs");
        this.f35893b = aVar;
        this.f35894c = this.f35892a.hashCode();
    }

    /* renamed from: a */
    public List<SocketAddress> m2945a() {
        return this.f35892a;
    }

    /* renamed from: b */
    public C9210a m2944b() {
        return this.f35893b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9314u)) {
            return false;
        }
        C9314u uVar = (C9314u) obj;
        if (this.f35892a.size() != uVar.f35892a.size()) {
            return false;
        }
        for (int i = 0; i < this.f35892a.size(); i++) {
            if (!this.f35892a.get(i).equals(uVar.f35892a.get(i))) {
                return false;
            }
        }
        return this.f35893b.equals(uVar.f35893b);
    }

    public int hashCode() {
        return this.f35894c;
    }

    public String toString() {
        return "[" + this.f35892a + "/" + this.f35893b + "]";
    }
}

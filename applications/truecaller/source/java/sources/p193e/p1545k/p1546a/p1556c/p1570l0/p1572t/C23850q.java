package p193e.p1545k.p1546a.p1556c.p1570l0.p1572t;

import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.p1555z.C23422b;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.p1567j0.AbstractC23712h;
/* renamed from: e.k.a.c.l0.t.q */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/t/q.class */
public class C23850q extends AbstractC23849p0<InetSocketAddress> {
    public C23850q() {
        super(InetSocketAddress.class);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: f */
    public /* bridge */ /* synthetic */ void mo5894f(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException {
        m6017p((InetSocketAddress) obj, abstractC23372g);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1570l0.p1572t.AbstractC23849p0, p193e.p1545k.p1546a.p1556c.AbstractC23890n
    /* renamed from: g */
    public void mo5893g(Object obj, AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0, AbstractC23712h abstractC23712h) throws IOException {
        InetSocketAddress inetSocketAddress = (InetSocketAddress) obj;
        C23422b m6216d = abstractC23712h.m6216d(inetSocketAddress, EnumC23381m.VALUE_STRING);
        m6216d.f64977b = InetSocketAddress.class;
        C23422b mo6002e = abstractC23712h.mo6002e(abstractC23372g, m6216d);
        m6017p(inetSocketAddress, abstractC23372g);
        abstractC23712h.mo6001f(abstractC23372g, mo6002e);
    }

    /* renamed from: p */
    public void m6017p(InetSocketAddress inetSocketAddress, AbstractC23372g abstractC23372g) throws IOException {
        String str;
        InetAddress address = inetSocketAddress.getAddress();
        String hostName = address == null ? inetSocketAddress.getHostName() : address.toString().trim();
        int indexOf = hostName.indexOf(47);
        String str2 = hostName;
        if (indexOf >= 0) {
            if (indexOf == 0) {
                if (address instanceof Inet6Address) {
                    StringBuilder m8728C = C22128a.m8728C("[");
                    m8728C.append(hostName.substring(1));
                    m8728C.append("]");
                    str = m8728C.toString();
                } else {
                    str = hostName.substring(1);
                }
                str2 = str;
            } else {
                str2 = hostName.substring(0, indexOf);
            }
        }
        StringBuilder m8696K = C22128a.m8696K(str2, StringConstant.COLON);
        m8696K.append(inetSocketAddress.getPort());
        abstractC23372g.mo5868T1(m8696K.toString());
    }
}

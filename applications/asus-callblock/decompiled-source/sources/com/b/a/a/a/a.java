package com.b.a.a.a;

import com.b.a.b;
import com.b.a.g;
import com.b.a.l;
import com.b.a.u;
import com.b.a.w;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/a.class */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3189a = new a();

    private static InetAddress a(Proxy proxy, URL url) {
        return (proxy == null || proxy.type() == Proxy.Type.DIRECT) ? InetAddress.getByName(url.getHost()) : ((InetSocketAddress) proxy.address()).getAddress();
    }

    @Override // com.b.a.b
    public final u a(Proxy proxy, w wVar) {
        u uVar;
        PasswordAuthentication requestPasswordAuthentication;
        List<g> b2 = wVar.b();
        u uVar2 = wVar.f3350a;
        URL a2 = uVar2.a();
        int size = b2.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                uVar = null;
                break;
            }
            g gVar = b2.get(i);
            if ("Basic".equalsIgnoreCase(gVar.f3317a) && (requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(a2.getHost(), a(proxy, a2), a2.getPort(), a2.getProtocol(), gVar.f3318b, gVar.f3317a, a2, Authenticator.RequestorType.SERVER)) != null) {
                uVar = uVar2.c().a("Authorization", l.a(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()))).a();
                break;
            }
            i++;
        }
        return uVar;
    }

    @Override // com.b.a.b
    public final u b(Proxy proxy, w wVar) {
        u uVar;
        List<g> b2 = wVar.b();
        u uVar2 = wVar.f3350a;
        URL a2 = uVar2.a();
        int size = b2.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                uVar = null;
                break;
            }
            g gVar = b2.get(i);
            if ("Basic".equalsIgnoreCase(gVar.f3317a)) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                PasswordAuthentication requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), a(proxy, a2), inetSocketAddress.getPort(), a2.getProtocol(), gVar.f3318b, gVar.f3317a, a2, Authenticator.RequestorType.PROXY);
                if (requestPasswordAuthentication != null) {
                    uVar = uVar2.c().a("Proxy-Authorization", l.a(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()))).a();
                    break;
                }
            }
            i++;
        }
        return uVar;
    }
}

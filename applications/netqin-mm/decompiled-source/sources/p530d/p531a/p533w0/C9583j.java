package p530d.p531a.p533w0;

import io.grpc.okhttp.internal.Protocol;
import java.io.IOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.p533w0.p534o.C9591a;
import p530d.p531a.p533w0.p534o.C9595c;
/* renamed from: d.a.w0.j */
/* loaded from: classes2-dex2jar.jar:d/a/w0/j.class */
public final class C9583j {

    /* renamed from: a */
    public static final List<Protocol> f36590a = Collections.unmodifiableList(Arrays.asList(Protocol.HTTP_2));

    /* renamed from: a */
    public static String m2352a(String str) {
        String str2 = str;
        if (str.startsWith("[")) {
            str2 = str;
            if (str.endsWith("]")) {
                str2 = str.substring(1, str.length() - 1);
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static SSLSocket m2351a(SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, Socket socket, String str, int i, C9591a aVar) throws IOException {
        C4933n.m24794a(sSLSocketFactory, "sslSocketFactory");
        C4933n.m24794a(socket, "socket");
        C4933n.m24794a(aVar, "spec");
        SSLSocket sSLSocket = (SSLSocket) sSLSocketFactory.createSocket(socket, str, i, true);
        aVar.m2317a(sSLSocket, false);
        String b = C9579g.m2362b().mo2359b(sSLSocket, str, aVar.m2316b() ? f36590a : null);
        boolean contains = f36590a.contains(Protocol.get(b));
        C4933n.m24772b(contains, "Only " + f36590a + " are supported, but negotiated protocol is %s", b);
        HostnameVerifier hostnameVerifier2 = hostnameVerifier;
        if (hostnameVerifier == null) {
            hostnameVerifier2 = C9595c.f36623a;
        }
        if (hostnameVerifier2.verify(m2352a(str), sSLSocket.getSession())) {
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: " + str);
    }
}

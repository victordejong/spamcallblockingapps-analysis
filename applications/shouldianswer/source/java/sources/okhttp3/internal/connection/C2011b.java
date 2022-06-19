package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import okhttp3.C2074k;
import okhttp3.internal.AbstractC1974a;
/* renamed from: okhttp3.internal.connection.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/b.class */
public final class C2011b {

    /* renamed from: a */
    private final List<C2074k> f5030a;

    /* renamed from: b */
    private int f5031b = 0;

    /* renamed from: c */
    private boolean f5032c;

    /* renamed from: d */
    private boolean f5033d;

    public C2011b(List<C2074k> list) {
        this.f5030a = list;
    }

    /* renamed from: b */
    private boolean m2308b(SSLSocket sSLSocket) {
        for (int i = this.f5031b; i < this.f5030a.size(); i++) {
            if (this.f5030a.get(i).m2030a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public C2074k m2309a(SSLSocket sSLSocket) {
        C2074k c2074k;
        int i = this.f5031b;
        int size = this.f5030a.size();
        while (true) {
            if (i >= size) {
                c2074k = null;
                break;
            }
            c2074k = this.f5030a.get(i);
            if (c2074k.m2030a(sSLSocket)) {
                this.f5031b = i + 1;
                break;
            }
            i++;
        }
        if (c2074k != null) {
            this.f5032c = m2308b(sSLSocket);
            AbstractC1974a.f4904a.mo1847a(c2074k, sSLSocket, this.f5033d);
            return c2074k;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f5033d + ", modes=" + this.f5030a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    /* renamed from: a */
    public boolean m2310a(IOException iOException) {
        this.f5033d = true;
        if (this.f5032c && !(iOException instanceof ProtocolException) && !(iOException instanceof InterruptedIOException)) {
            boolean z = iOException instanceof SSLHandshakeException;
            if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
                return false;
            }
            boolean z2 = true;
            if (!z) {
                z2 = iOException instanceof SSLProtocolException;
            }
            return z2;
        }
        return false;
    }
}

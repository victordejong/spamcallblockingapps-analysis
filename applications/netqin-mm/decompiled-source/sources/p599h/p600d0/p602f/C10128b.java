package p599h.p600d0.p602f;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import p599h.C10221k;
import p599h.p600d0.AbstractC10107a;
/* renamed from: h.d0.f.b */
/* loaded from: classes2-dex2jar.jar:h/d0/f/b.class */
public final class C10128b {

    /* renamed from: a */
    public final List<C10221k> f37394a;

    /* renamed from: b */
    public int f37395b = 0;

    /* renamed from: c */
    public boolean f37396c;

    /* renamed from: d */
    public boolean f37397d;

    public C10128b(List<C10221k> list) {
        this.f37394a = list;
    }

    /* renamed from: a */
    public C10221k m1382a(SSLSocket sSLSocket) throws IOException {
        C10221k kVar;
        int i = this.f37395b;
        int size = this.f37394a.size();
        while (true) {
            if (i >= size) {
                kVar = null;
                break;
            }
            kVar = this.f37394a.get(i);
            if (kVar.m1036a(sSLSocket)) {
                this.f37395b = i + 1;
                break;
            }
            i++;
        }
        if (kVar != null) {
            this.f37396c = m1381b(sSLSocket);
            AbstractC10107a.f37312a.mo844a(kVar, sSLSocket, this.f37397d);
            return kVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f37397d + ", modes=" + this.f37394a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    /* renamed from: a */
    public boolean m1383a(IOException iOException) {
        this.f37397d = true;
        if (!this.f37396c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        boolean z2 = true;
        if (!z) {
            z2 = true;
            if (!(iOException instanceof SSLProtocolException)) {
                z2 = iOException instanceof SSLException;
            }
        }
        return z2;
    }

    /* renamed from: b */
    public final boolean m1381b(SSLSocket sSLSocket) {
        for (int i = this.f37395b; i < this.f37394a.size(); i++) {
            if (this.f37394a.get(i).m1036a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }
}

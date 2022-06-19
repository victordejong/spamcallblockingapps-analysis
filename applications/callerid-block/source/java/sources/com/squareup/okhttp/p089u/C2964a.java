package com.squareup.okhttp.p089u;

import com.squareup.okhttp.C2864h;
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
/* renamed from: com.squareup.okhttp.u.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/a.class */
public final class C2964a {

    /* renamed from: a */
    private final List<C2864h> f12493a;

    /* renamed from: b */
    private int f12494b = 0;

    /* renamed from: c */
    private boolean f12495c;

    /* renamed from: d */
    private boolean f12496d;

    public C2964a(List<C2864h> list) {
        this.f12493a = list;
    }

    /* renamed from: c */
    private boolean m705c(SSLSocket sSLSocket) {
        for (int i = this.f12494b; i < this.f12493a.size(); i++) {
            if (this.f12493a.get(i).m1257f(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public C2864h m707a(SSLSocket sSLSocket) {
        C2864h c2864h;
        int i = this.f12494b;
        int size = this.f12493a.size();
        while (true) {
            if (i >= size) {
                c2864h = null;
                break;
            }
            c2864h = this.f12493a.get(i);
            int i2 = i + 1;
            i = i2;
            if (c2864h.m1257f(sSLSocket)) {
                this.f12494b = i2;
                break;
            }
        }
        if (c2864h != null) {
            this.f12495c = m705c(sSLSocket);
            AbstractC2965b.f12498b.mo703b(c2864h, sSLSocket, this.f12496d);
            return c2864h;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f12496d + ", modes=" + this.f12493a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    /* renamed from: b */
    public boolean m706b(IOException iOException) {
        boolean z = true;
        this.f12496d = true;
        if (!(iOException instanceof ProtocolException) && !(iOException instanceof InterruptedIOException)) {
            boolean z2 = iOException instanceof SSLHandshakeException;
            if ((z2 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
                return false;
            }
            if ((!z2 && !(iOException instanceof SSLProtocolException)) || !this.f12495c) {
                z = false;
            }
            return z;
        }
        return false;
    }
}

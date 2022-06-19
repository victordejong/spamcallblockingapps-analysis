package com.bytedance.sdk.p127a.p129b.p130a.p132b;

import com.bytedance.sdk.p127a.p129b.C4119k;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
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
/* renamed from: com.bytedance.sdk.a.b.a.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/b.class */
public final class C4007b {

    /* renamed from: a */
    private final List<C4119k> f14527a;

    /* renamed from: b */
    private int f14528b = 0;

    /* renamed from: c */
    private boolean f14529c;

    /* renamed from: d */
    private boolean f14530d;

    public C4007b(List<C4119k> list) {
        this.f14527a = list;
    }

    /* renamed from: b */
    private boolean m36967b(SSLSocket sSLSocket) {
        for (int i = this.f14528b; i < this.f14527a.size(); i++) {
            if (this.f14527a.get(i).m36530a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final C4119k m36968a(SSLSocket sSLSocket) throws IOException {
        C4119k c4119k;
        int i = this.f14528b;
        int size = this.f14527a.size();
        while (true) {
            if (i >= size) {
                c4119k = null;
                break;
            }
            c4119k = this.f14527a.get(i);
            if (c4119k.m36530a(sSLSocket)) {
                this.f14528b = i + 1;
                break;
            }
            i++;
        }
        if (c4119k != null) {
            this.f14529c = m36967b(sSLSocket);
            AbstractC3995a.f14478a.mo36363a(c4119k, sSLSocket, this.f14530d);
            return c4119k;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f14530d + ", modes=" + this.f14527a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    /* renamed from: a */
    public final boolean m36969a(IOException iOException) {
        this.f14530d = true;
        if (this.f14529c && !(iOException instanceof ProtocolException) && !(iOException instanceof InterruptedIOException)) {
            boolean z = iOException instanceof SSLHandshakeException;
            if ((z && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
                return false;
            }
            return z || (iOException instanceof SSLProtocolException);
        }
        return false;
    }
}

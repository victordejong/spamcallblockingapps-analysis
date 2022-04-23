package com.bytedance.sdk.a.b.a.b;

import com.bytedance.sdk.a.b.a.a;
import com.bytedance.sdk.a.b.k;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final List<k> f7856a;

    /* renamed from: b  reason: collision with root package name */
    private int f7857b = 0;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7858c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7859d;

    public b(List<k> list) {
        this.f7856a = list;
    }

    private boolean b(SSLSocket sSLSocket) {
        for (int i = this.f7857b; i < this.f7856a.size(); i++) {
            if (this.f7856a.get(i).a(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public final k a(SSLSocket sSLSocket) throws IOException {
        k kVar;
        int i = this.f7857b;
        int size = this.f7856a.size();
        while (true) {
            if (i >= size) {
                kVar = null;
                break;
            }
            kVar = this.f7856a.get(i);
            if (kVar.a(sSLSocket)) {
                this.f7857b = i + 1;
                break;
            }
            i++;
        }
        if (kVar != null) {
            this.f7858c = b(sSLSocket);
            a.f7830a.a(kVar, sSLSocket, this.f7859d);
            return kVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f7859d + ", modes=" + this.f7856a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public final boolean a(IOException iOException) {
        this.f7859d = true;
        if (!this.f7858c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z = iOException instanceof SSLHandshakeException;
        if ((!z || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException)) {
            return z || (iOException instanceof SSLProtocolException);
        }
        return false;
    }
}

package okhttp3.internal.connection;

import java.net.UnknownServiceException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import okhttp3.C5524k;
import okhttp3.internal.AbstractC5424a;
/* renamed from: okhttp3.internal.connection.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/b.class */
public final class C5461b {

    /* renamed from: a */
    private final List<C5524k> f22804a;

    /* renamed from: b */
    private int f22805b = 0;

    /* renamed from: c */
    private boolean f22806c;

    /* renamed from: d */
    private boolean f22807d;

    public C5461b(List<C5524k> list) {
        this.f22804a = list;
    }

    /* renamed from: b */
    private boolean m628b(SSLSocket sSLSocket) {
        boolean z;
        int i = this.f22805b;
        while (true) {
            if (i >= this.f22804a.size()) {
                z = false;
                break;
            } else if (this.f22804a.get(i).m348a(sSLSocket)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: a */
    public C5524k m629a(SSLSocket sSLSocket) {
        C5524k c5524k;
        int i = this.f22805b;
        int size = this.f22804a.size();
        while (true) {
            if (i >= size) {
                c5524k = null;
                break;
            }
            c5524k = this.f22804a.get(i);
            if (c5524k.m348a(sSLSocket)) {
                this.f22805b = i + 1;
                break;
            }
            i++;
        }
        if (c5524k == null) {
            throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f22807d + ", modes=" + this.f22804a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        this.f22806c = m628b(sSLSocket);
        AbstractC5424a.f22678a.mo167a(c5524k, sSLSocket, this.f22807d);
        return c5524k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        if ((r4.getCause() instanceof java.security.cert.CertificateException) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if ((r4 instanceof javax.net.ssl.SSLProtocolException) != false) goto L21;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m630a(java.io.IOException r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r3
            r1 = 1
            r0.f22807d = r1
            r0 = r3
            boolean r0 = r0.f22806c
            if (r0 != 0) goto L12
            r0 = r5
            r6 = r0
        L10:
            r0 = r6
            return r0
        L12:
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.net.ProtocolException
            if (r0 != 0) goto L10
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.io.InterruptedIOException
            if (r0 != 0) goto L10
            r0 = r4
            boolean r0 = r0 instanceof javax.net.ssl.SSLHandshakeException
            if (r0 == 0) goto L37
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.Throwable r0 = r0.getCause()
            boolean r0 = r0 instanceof java.security.cert.CertificateException
            if (r0 != 0) goto L10
        L37:
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof javax.net.ssl.SSLPeerUnverifiedException
            if (r0 != 0) goto L10
            r0 = r4
            boolean r0 = r0 instanceof javax.net.ssl.SSLHandshakeException
            if (r0 != 0) goto L50
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof javax.net.ssl.SSLProtocolException
            if (r0 == 0) goto L10
        L50:
            r0 = 1
            r6 = r0
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.C5461b.m630a(java.io.IOException):boolean");
    }
}

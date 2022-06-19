package p204p9;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import p214q9.C4171c;
/* renamed from: p9.q */
/* loaded from: classes2-dex2jar.jar:p9/q.class */
public final class C4120q {

    /* renamed from: a */
    public final EnumC4101f0 f12948a;

    /* renamed from: b */
    public final C4104h f12949b;

    /* renamed from: c */
    public final List<Certificate> f12950c;

    /* renamed from: d */
    public final List<Certificate> f12951d;

    public C4120q(EnumC4101f0 enumC4101f0, C4104h c4104h, List<Certificate> list, List<Certificate> list2) {
        this.f12948a = enumC4101f0;
        this.f12949b = c4104h;
        this.f12950c = list;
        this.f12951d = list2;
    }

    /* renamed from: a */
    public static C4120q m1404a(SSLSession sSLSession) throws IOException {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
                throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
            }
            C4104h m1418a = C4104h.m1418a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            }
            if ("NONE".equals(protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            EnumC4101f0 m1421a = EnumC4101f0.m1421a(protocol);
            try {
                certificateArr = sSLSession.getPeerCertificates();
            } catch (SSLPeerUnverifiedException e) {
                certificateArr = null;
            }
            List m1321o = certificateArr != null ? C4171c.m1321o(certificateArr) : Collections.emptyList();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            return new C4120q(m1421a, m1418a, m1321o, localCertificates != null ? C4171c.m1321o(localCertificates) : Collections.emptyList());
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C4120q)) {
            return false;
        }
        C4120q c4120q = (C4120q) obj;
        boolean z = false;
        if (this.f12948a.equals(c4120q.f12948a)) {
            z = false;
            if (this.f12949b.equals(c4120q.f12949b)) {
                z = false;
                if (this.f12950c.equals(c4120q.f12950c)) {
                    z = false;
                    if (this.f12951d.equals(c4120q.f12951d)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f12948a.hashCode();
        int hashCode2 = this.f12949b.hashCode();
        return this.f12951d.hashCode() + ((this.f12950c.hashCode() + ((hashCode2 + ((hashCode + 527) * 31)) * 31)) * 31);
    }
}

package okhttp3;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.q */
/* loaded from: classes-dex2jar.jar:okhttp3/q.class */
public final class C2086q {

    /* renamed from: a */
    private final EnumC1960ae f5342a;

    /* renamed from: b */
    private final C1971h f5343b;

    /* renamed from: c */
    private final List<Certificate> f5344c;

    /* renamed from: d */
    private final List<Certificate> f5345d;

    private C2086q(EnumC1960ae enumC1960ae, C1971h c1971h, List<Certificate> list, List<Certificate> list2) {
        this.f5342a = enumC1960ae;
        this.f5343b = c1971h;
        this.f5344c = list;
        this.f5345d = list2;
    }

    /* renamed from: a */
    public static C2086q m1972a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            C1971h m2428a = C1971h.m2428a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            }
            EnumC1960ae m2455a = EnumC1960ae.m2455a(protocol);
            try {
                certificateArr = sSLSession.getPeerCertificates();
            } catch (SSLPeerUnverifiedException e) {
                certificateArr = null;
            }
            List m2335a = certificateArr != null ? C1999c.m2335a(certificateArr) : Collections.emptyList();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            return new C2086q(m2455a, m2428a, m2335a, localCertificates != null ? C1999c.m2335a(localCertificates) : Collections.emptyList());
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    /* renamed from: a */
    public C1971h m1973a() {
        return this.f5343b;
    }

    /* renamed from: b */
    public List<Certificate> m1971b() {
        return this.f5344c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof C2086q)) {
            return false;
        }
        C2086q c2086q = (C2086q) obj;
        boolean z = false;
        if (this.f5342a.equals(c2086q.f5342a)) {
            z = false;
            if (this.f5343b.equals(c2086q.f5343b)) {
                z = false;
                if (this.f5344c.equals(c2086q.f5344c)) {
                    z = false;
                    if (this.f5345d.equals(c2086q.f5345d)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f5342a.hashCode()) * 31) + this.f5343b.hashCode()) * 31) + this.f5344c.hashCode()) * 31) + this.f5345d.hashCode();
    }
}

package okhttp3;

import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.r */
/* loaded from: classes-dex2jar.jar:okhttp3/r.class */
public final class C5538r {

    /* renamed from: a */
    private final EnumC5409af f23122a;

    /* renamed from: b */
    private final C5421h f23123b;

    /* renamed from: c */
    private final List<Certificate> f23124c;

    /* renamed from: d */
    private final List<Certificate> f23125d;

    private C5538r(EnumC5409af enumC5409af, C5421h c5421h, List<Certificate> list, List<Certificate> list2) {
        this.f23122a = enumC5409af;
        this.f23123b = c5421h;
        this.f23124c = list;
        this.f23125d = list2;
    }

    /* renamed from: a */
    public static C5538r m286a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        C5421h m746a = C5421h.m746a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        EnumC5409af m773a = EnumC5409af.m773a(protocol);
        try {
            certificateArr = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException e) {
            certificateArr = null;
        }
        List m655a = certificateArr != null ? C5449c.m655a(certificateArr) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new C5538r(m773a, m746a, m655a, localCertificates != null ? C5449c.m655a(localCertificates) : Collections.emptyList());
    }

    /* renamed from: a */
    public C5421h m287a() {
        return this.f23123b;
    }

    /* renamed from: b */
    public List<Certificate> m285b() {
        return this.f23124c;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (!(obj instanceof C5538r)) {
            z = false;
        } else {
            C5538r c5538r = (C5538r) obj;
            z = false;
            if (this.f23122a.equals(c5538r.f23122a)) {
                z = false;
                if (this.f23123b.equals(c5538r.f23123b)) {
                    z = false;
                    if (this.f23124c.equals(c5538r.f23124c)) {
                        z = false;
                        if (this.f23125d.equals(c5538r.f23125d)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f23122a.hashCode() + 527) * 31) + this.f23123b.hashCode()) * 31) + this.f23124c.hashCode()) * 31) + this.f23125d.hashCode();
    }
}

package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.b.a.c;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final ad f8127a;

    /* renamed from: b  reason: collision with root package name */
    private final h f8128b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Certificate> f8129c;

    /* renamed from: d  reason: collision with root package name */
    private final List<Certificate> f8130d;

    private q(ad adVar, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f8127a = adVar;
        this.f8128b = hVar;
        this.f8129c = list;
        this.f8130d = list2;
    }

    public static q a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            h a2 = h.a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol != null) {
                ad a3 = ad.a(protocol);
                try {
                    certificateArr = sSLSession.getPeerCertificates();
                } catch (SSLPeerUnverifiedException e) {
                    certificateArr = null;
                }
                List a4 = certificateArr != null ? c.a(certificateArr) : Collections.emptyList();
                Certificate[] localCertificates = sSLSession.getLocalCertificates();
                return new q(a3, a2, a4, localCertificates != null ? c.a(localCertificates) : Collections.emptyList());
            }
            throw new IllegalStateException("tlsVersion == null");
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    public final h a() {
        return this.f8128b;
    }

    public final List<Certificate> b() {
        return this.f8129c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f8127a.equals(qVar.f8127a) && this.f8128b.equals(qVar.f8128b) && this.f8129c.equals(qVar.f8129c) && this.f8130d.equals(qVar.f8130d);
    }

    public final int hashCode() {
        return ((((((this.f8127a.hashCode() + 527) * 31) + this.f8128b.hashCode()) * 31) + this.f8129c.hashCode()) * 31) + this.f8130d.hashCode();
    }
}

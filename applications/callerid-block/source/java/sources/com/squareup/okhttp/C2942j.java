package com.squareup.okhttp;

import com.squareup.okhttp.p089u.C2975i;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* renamed from: com.squareup.okhttp.j */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/j.class */
public final class C2942j {

    /* renamed from: a */
    private final String f12405a;

    /* renamed from: b */
    private final List<Certificate> f12406b;

    /* renamed from: c */
    private final List<Certificate> f12407c;

    private C2942j(String str, List<Certificate> list, List<Certificate> list2) {
        this.f12405a = str;
        this.f12406b = list;
        this.f12407c = list2;
    }

    /* renamed from: b */
    public static C2942j m907b(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            try {
                certificateArr = sSLSession.getPeerCertificates();
            } catch (SSLPeerUnverifiedException e) {
                certificateArr = null;
            }
            List m651i = certificateArr != null ? C2975i.m651i(certificateArr) : Collections.emptyList();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            return new C2942j(cipherSuite, m651i, localCertificates != null ? C2975i.m651i(localCertificates) : Collections.emptyList());
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    /* renamed from: a */
    public String m908a() {
        return this.f12405a;
    }

    /* renamed from: c */
    public List<Certificate> m906c() {
        return this.f12407c;
    }

    /* renamed from: d */
    public Principal m905d() {
        return !this.f12407c.isEmpty() ? ((X509Certificate) this.f12407c.get(0)).getSubjectX500Principal() : null;
    }

    /* renamed from: e */
    public List<Certificate> m904e() {
        return this.f12406b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C2942j)) {
            return false;
        }
        C2942j c2942j = (C2942j) obj;
        boolean z = false;
        if (this.f12405a.equals(c2942j.f12405a)) {
            z = false;
            if (this.f12406b.equals(c2942j.f12406b)) {
                z = false;
                if (this.f12407c.equals(c2942j.f12407c)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public Principal m903f() {
        return !this.f12406b.isEmpty() ? ((X509Certificate) this.f12406b.get(0)).getSubjectX500Principal() : null;
    }

    public int hashCode() {
        return ((((527 + this.f12405a.hashCode()) * 31) + this.f12406b.hashCode()) * 31) + this.f12407c.hashCode();
    }
}

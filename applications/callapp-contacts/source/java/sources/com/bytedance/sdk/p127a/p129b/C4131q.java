package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
/* renamed from: com.bytedance.sdk.a.b.q */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/q.class */
public final class C4131q {

    /* renamed from: a */
    private final EnumC4103ad f15108a;

    /* renamed from: b */
    private final C4114h f15109b;

    /* renamed from: c */
    private final List<Certificate> f15110c;

    /* renamed from: d */
    private final List<Certificate> f15111d;

    private C4131q(EnumC4103ad enumC4103ad, C4114h c4114h, List<Certificate> list, List<Certificate> list2) {
        this.f15108a = enumC4103ad;
        this.f15109b = c4114h;
        this.f15110c = list;
        this.f15111d = list2;
    }

    /* renamed from: a */
    public static C4131q m36473a(SSLSession sSLSession) {
        Certificate[] certificateArr;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite != null) {
            C4114h m36542a = C4114h.m36542a(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null");
            }
            EnumC4103ad m36571a = EnumC4103ad.m36571a(protocol);
            try {
                certificateArr = sSLSession.getPeerCertificates();
            } catch (SSLPeerUnverifiedException e) {
                certificateArr = null;
            }
            List m36897a = certificateArr != null ? C4015c.m36897a(certificateArr) : Collections.emptyList();
            Certificate[] localCertificates = sSLSession.getLocalCertificates();
            return new C4131q(m36571a, m36542a, m36897a, localCertificates != null ? C4015c.m36897a(localCertificates) : Collections.emptyList());
        }
        throw new IllegalStateException("cipherSuite == null");
    }

    /* renamed from: a */
    public final C4114h m36474a() {
        return this.f15109b;
    }

    /* renamed from: b */
    public final List<Certificate> m36472b() {
        return this.f15110c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C4131q)) {
            return false;
        }
        C4131q c4131q = (C4131q) obj;
        return this.f15108a.equals(c4131q.f15108a) && this.f15109b.equals(c4131q.f15109b) && this.f15110c.equals(c4131q.f15110c) && this.f15111d.equals(c4131q.f15111d);
    }

    public final int hashCode() {
        return ((((((this.f15108a.hashCode() + 527) * 31) + this.f15109b.hashCode()) * 31) + this.f15110c.hashCode()) * 31) + this.f15111d.hashCode();
    }
}

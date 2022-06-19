package com.bytedance.sdk.p127a.p129b;

import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4094c;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
/* renamed from: com.bytedance.sdk.a.b.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/g.class */
public final class C4111g {

    /* renamed from: a */
    public static final C4111g f14940a = new C4112a().m36544a();

    /* renamed from: b */
    private final Set<C4113b> f14941b;

    /* renamed from: c */
    private final AbstractC4094c f14942c;

    /* renamed from: com.bytedance.sdk.a.b.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/g$a.class */
    public static final class C4112a {

        /* renamed from: a */
        private final List<C4113b> f14943a = new ArrayList();

        /* renamed from: a */
        public final C4111g m36544a() {
            return new C4111g(new LinkedHashSet(this.f14943a), null);
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.g$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/g$b.class */
    public static final class C4113b {

        /* renamed from: a */
        final String f14944a;

        /* renamed from: b */
        final String f14945b;

        /* renamed from: c */
        final String f14946c;

        /* renamed from: d */
        final C3973f f14947d;

        /* renamed from: a */
        final boolean m36543a(String str) {
            if (this.f14944a.startsWith("*.")) {
                int indexOf = str.indexOf(46);
                if ((str.length() - indexOf) - 1 != this.f14945b.length()) {
                    return false;
                }
                String str2 = this.f14945b;
                return str.regionMatches(false, indexOf + 1, str2, 0, str2.length());
            }
            return str.equals(this.f14945b);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C4113b) {
                C4113b c4113b = (C4113b) obj;
                return this.f14944a.equals(c4113b.f14944a) && this.f14946c.equals(c4113b.f14946c) && this.f14947d.equals(c4113b.f14947d);
            }
            return false;
        }

        public final int hashCode() {
            return ((((this.f14944a.hashCode() + 527) * 31) + this.f14946c.hashCode()) * 31) + this.f14947d.hashCode();
        }

        public final String toString() {
            return this.f14946c + this.f14947d.mo37032b();
        }
    }

    C4111g(Set<C4113b> set, AbstractC4094c abstractC4094c) {
        this.f14941b = set;
        this.f14942c = abstractC4094c;
    }

    /* renamed from: a */
    static C3973f m36546a(X509Certificate x509Certificate) {
        return C3973f.m37099a(x509Certificate.getPublicKey().getEncoded()).mo37030c();
    }

    /* renamed from: a */
    public static String m36547a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + m36545b((X509Certificate) certificate).mo37032b();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    /* renamed from: b */
    static C3973f m36545b(X509Certificate x509Certificate) {
        return C3973f.m37099a(x509Certificate.getPublicKey().getEncoded()).mo37029d();
    }

    /* renamed from: a */
    public final C4111g m36550a(AbstractC4094c abstractC4094c) {
        return C4015c.m36912a(this.f14942c, abstractC4094c) ? this : new C4111g(this.f14941b, abstractC4094c);
    }

    /* renamed from: a */
    final List<C4113b> m36549a(String str) {
        List<C4113b> emptyList = Collections.emptyList();
        for (C4113b c4113b : this.f14941b) {
            if (c4113b.m36543a(str)) {
                ArrayList arrayList = emptyList;
                if (emptyList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(c4113b);
                emptyList = arrayList;
            }
        }
        return emptyList;
    }

    /* renamed from: a */
    public final void m36548a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<C4113b> m36549a = m36549a(str);
        if (m36549a.isEmpty()) {
            return;
        }
        AbstractC4094c abstractC4094c = this.f14942c;
        List<Certificate> list2 = list;
        if (abstractC4094c != null) {
            list2 = abstractC4094c.mo36631a(list, str);
        }
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list2.get(i);
            int size2 = m36549a.size();
            C3973f c3973f = null;
            C3973f c3973f2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                C4113b c4113b = m36549a.get(i2);
                if (c4113b.f14946c.equals("sha256/")) {
                    C3973f c3973f3 = c3973f;
                    if (c3973f == null) {
                        c3973f3 = m36545b(x509Certificate);
                    }
                    c3973f = c3973f3;
                    if (c4113b.f14947d.equals(c3973f3)) {
                        return;
                    }
                } else if (!c4113b.f14946c.equals("sha1/")) {
                    throw new AssertionError("unsupported hashAlgorithm: " + c4113b.f14946c);
                } else {
                    C3973f c3973f4 = c3973f2;
                    if (c3973f2 == null) {
                        c3973f4 = m36546a(x509Certificate);
                    }
                    c3973f2 = c3973f4;
                    if (c4113b.f14947d.equals(c3973f4)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list2.get(i3);
            sb.append("\n    ");
            sb.append(m36547a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = m36549a.size();
        for (int i4 = 0; i4 < size4; i4++) {
            sb.append("\n    ");
            sb.append(m36549a.get(i4));
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4111g)) {
            return false;
        }
        C4111g c4111g = (C4111g) obj;
        return C4015c.m36912a(this.f14942c, c4111g.f14942c) && this.f14941b.equals(c4111g.f14941b);
    }

    public final int hashCode() {
        AbstractC4094c abstractC4094c = this.f14942c;
        return ((abstractC4094c != null ? abstractC4094c.hashCode() : 0) * 31) + this.f14941b.hashCode();
    }
}

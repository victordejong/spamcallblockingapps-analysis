package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal.C5449c;
import okhttp3.internal.p197f.AbstractC5483c;
import p000a.C0008f;
/* renamed from: okhttp3.g */
/* loaded from: classes-dex2jar.jar:okhttp3/g.class */
public final class C5418g {

    /* renamed from: a */
    public static final C5418g f22555a = new C5419a().m748a();

    /* renamed from: b */
    private final Set<C5420b> f22556b;
    @Nullable

    /* renamed from: c */
    private final AbstractC5483c f22557c;

    /* renamed from: okhttp3.g$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/g$a.class */
    public static final class C5419a {

        /* renamed from: a */
        private final List<C5420b> f22558a = new ArrayList();

        /* renamed from: a */
        public C5418g m748a() {
            return new C5418g(new LinkedHashSet(this.f22558a), null);
        }
    }

    /* renamed from: okhttp3.g$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/g$b.class */
    public static final class C5420b {

        /* renamed from: a */
        final String f22559a;

        /* renamed from: b */
        final String f22560b;

        /* renamed from: c */
        final String f22561c;

        /* renamed from: d */
        final C0008f f22562d;

        /* renamed from: a */
        boolean m747a(String str) {
            boolean equals;
            if (this.f22559a.startsWith("*.")) {
                int indexOf = str.indexOf(46);
                equals = false;
                if ((str.length() - indexOf) - 1 == this.f22560b.length()) {
                    equals = false;
                    if (str.regionMatches(false, indexOf + 1, this.f22560b, 0, this.f22560b.length())) {
                        equals = true;
                    }
                }
            } else {
                equals = str.equals(this.f22560b);
            }
            return equals;
        }

        public boolean equals(Object obj) {
            return (obj instanceof C5420b) && this.f22559a.equals(((C5420b) obj).f22559a) && this.f22561c.equals(((C5420b) obj).f22561c) && this.f22562d.equals(((C5420b) obj).f22562d);
        }

        public int hashCode() {
            return ((((this.f22559a.hashCode() + 527) * 31) + this.f22561c.hashCode()) * 31) + this.f22562d.hashCode();
        }

        public String toString() {
            return this.f22561c + this.f22562d.mo22468b();
        }
    }

    C5418g(Set<C5420b> set, @Nullable AbstractC5483c abstractC5483c) {
        this.f22556b = set;
        this.f22557c = abstractC5483c;
    }

    /* renamed from: a */
    static C0008f m751a(X509Certificate x509Certificate) {
        return C0008f.m22536a(x509Certificate.getPublicKey().getEncoded()).mo22466c();
    }

    /* renamed from: a */
    public static String m752a(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + m749b((X509Certificate) certificate).mo22468b();
    }

    /* renamed from: b */
    static C0008f m749b(X509Certificate x509Certificate) {
        return C0008f.m22536a(x509Certificate.getPublicKey().getEncoded()).mo22465d();
    }

    /* renamed from: a */
    List<C5420b> m754a(String str) {
        List<C5420b> emptyList = Collections.emptyList();
        for (C5420b c5420b : this.f22556b) {
            if (c5420b.m747a(str)) {
                ArrayList arrayList = emptyList;
                if (emptyList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(c5420b);
                emptyList = arrayList;
            }
        }
        return emptyList;
    }

    /* renamed from: a */
    public C5418g m750a(@Nullable AbstractC5483c abstractC5483c) {
        return C5449c.m671a(this.f22557c, abstractC5483c) ? this : new C5418g(this.f22556b, abstractC5483c);
    }

    /* renamed from: a */
    public void m753a(String str, List<Certificate> list) {
        List<C5420b> m754a = m754a(str);
        if (m754a.isEmpty()) {
            return;
        }
        List<Certificate> list2 = list;
        if (this.f22557c != null) {
            list2 = this.f22557c.mo538a(list, str);
        }
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list2.get(i);
            int size2 = m754a.size();
            C0008f c0008f = null;
            C0008f c0008f2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                C5420b c5420b = m754a.get(i2);
                if (c5420b.f22561c.equals("sha256/")) {
                    C0008f c0008f3 = c0008f;
                    if (c0008f == null) {
                        c0008f3 = m749b(x509Certificate);
                    }
                    if (c5420b.f22562d.equals(c0008f3)) {
                        return;
                    }
                    c0008f = c0008f3;
                } else if (!c5420b.f22561c.equals("sha1/")) {
                    throw new AssertionError("unsupported hashAlgorithm: " + c5420b.f22561c);
                } else {
                    C0008f c0008f4 = c0008f2;
                    if (c0008f2 == null) {
                        c0008f4 = m751a(x509Certificate);
                    }
                    c0008f2 = c0008f4;
                    if (c5420b.f22562d.equals(c0008f4)) {
                        return;
                    }
                }
            }
        }
        StringBuilder append = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list2.get(i3);
            append.append("\n    ").append(m752a((Certificate) x509Certificate2)).append(": ").append(x509Certificate2.getSubjectDN().getName());
        }
        append.append("\n  Pinned certificates for ").append(str).append(":");
        int size4 = m754a.size();
        for (int i4 = 0; i4 < size4; i4++) {
            append.append("\n    ").append(m754a.get(i4));
        }
        throw new SSLPeerUnverifiedException(append.toString());
    }

    public boolean equals(@Nullable Object obj) {
        boolean z = true;
        if (obj != this) {
            z = (obj instanceof C5418g) && C5449c.m671a(this.f22557c, ((C5418g) obj).f22557c) && this.f22556b.equals(((C5418g) obj).f22556b);
        }
        return z;
    }

    public int hashCode() {
        return ((this.f22557c != null ? this.f22557c.hashCode() : 0) * 31) + this.f22556b.hashCode();
    }
}

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
import okhttp3.internal.C1999c;
import okhttp3.internal.p096f.AbstractC2033c;
import p000a.C0009f;
/* renamed from: okhttp3.g */
/* loaded from: classes-dex2jar.jar:okhttp3/g.class */
public final class C1968g {

    /* renamed from: a */
    public static final C1968g f4781a = new C1969a().m2430a();

    /* renamed from: b */
    private final Set<C1970b> f4782b;
    @Nullable

    /* renamed from: c */
    private final AbstractC2033c f4783c;

    /* renamed from: okhttp3.g$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/g$a.class */
    public static final class C1969a {

        /* renamed from: a */
        private final List<C1970b> f4784a = new ArrayList();

        /* renamed from: a */
        public C1968g m2430a() {
            return new C1968g(new LinkedHashSet(this.f4784a), null);
        }
    }

    /* renamed from: okhttp3.g$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/g$b.class */
    public static final class C1970b {

        /* renamed from: a */
        final String f4785a;

        /* renamed from: b */
        final String f4786b;

        /* renamed from: c */
        final String f4787c;

        /* renamed from: d */
        final C0009f f4788d;

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
            if (r8.regionMatches(false, r0 + 1, r0, 0, r0.length()) != false) goto L9;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean m2429a(java.lang.String r8) {
            /*
                r7 = this;
                r0 = r7
                java.lang.String r0 = r0.f4785a
                java.lang.String r1 = "*."
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L4c
                r0 = r8
                r1 = 46
                int r0 = r0.indexOf(r1)
                r9 = r0
                r0 = r8
                int r0 = r0.length()
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r10
                r1 = r9
                int r0 = r0 - r1
                r1 = 1
                int r0 = r0 - r1
                r1 = r7
                java.lang.String r1 = r1.f4786b
                int r1 = r1.length()
                if (r0 != r1) goto L46
                r0 = r7
                java.lang.String r0 = r0.f4786b
                r12 = r0
                r0 = r8
                r1 = 0
                r2 = r9
                r3 = 1
                int r2 = r2 + r3
                r3 = r12
                r4 = 0
                r5 = r12
                int r5 = r5.length()
                boolean r0 = r0.regionMatches(r1, r2, r3, r4, r5)
                if (r0 == 0) goto L46
                goto L49
            L46:
                r0 = 0
                r11 = r0
            L49:
                r0 = r11
                return r0
            L4c:
                r0 = r8
                r1 = r7
                java.lang.String r1 = r1.f4786b
                boolean r0 = r0.equals(r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.C1968g.C1970b.m2429a(java.lang.String):boolean");
        }

        public boolean equals(Object obj) {
            boolean z;
            if (obj instanceof C1970b) {
                C1970b c1970b = (C1970b) obj;
                if (this.f4785a.equals(c1970b.f4785a) && this.f4787c.equals(c1970b.f4787c) && this.f4788d.equals(c1970b.f4788d)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        public int hashCode() {
            return ((((527 + this.f4785a.hashCode()) * 31) + this.f4787c.hashCode()) * 31) + this.f4788d.hashCode();
        }

        public String toString() {
            return this.f4787c + this.f4788d.mo8044b();
        }
    }

    C1968g(Set<C1970b> set, @Nullable AbstractC2033c abstractC2033c) {
        this.f4782b = set;
        this.f4783c = abstractC2033c;
    }

    /* renamed from: a */
    static C0009f m2433a(X509Certificate x509Certificate) {
        return C0009f.m8112a(x509Certificate.getPublicKey().getEncoded()).mo8042c();
    }

    /* renamed from: a */
    public static String m2434a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + m2431b((X509Certificate) certificate).mo8044b();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    /* renamed from: b */
    static C0009f m2431b(X509Certificate x509Certificate) {
        return C0009f.m8112a(x509Certificate.getPublicKey().getEncoded()).mo8041d();
    }

    /* renamed from: a */
    List<C1970b> m2436a(String str) {
        List<C1970b> emptyList = Collections.emptyList();
        for (C1970b c1970b : this.f4782b) {
            if (c1970b.m2429a(str)) {
                ArrayList arrayList = emptyList;
                if (emptyList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(c1970b);
                emptyList = arrayList;
            }
        }
        return emptyList;
    }

    /* renamed from: a */
    public C1968g m2432a(@Nullable AbstractC2033c abstractC2033c) {
        return C1999c.m2351a(this.f4783c, abstractC2033c) ? this : new C1968g(this.f4782b, abstractC2033c);
    }

    /* renamed from: a */
    public void m2435a(String str, List<Certificate> list) {
        List<C1970b> m2436a = m2436a(str);
        if (m2436a.isEmpty()) {
            return;
        }
        AbstractC2033c abstractC2033c = this.f4783c;
        List<Certificate> list2 = list;
        if (abstractC2033c != null) {
            list2 = abstractC2033c.mo2220a(list, str);
        }
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list2.get(i);
            int size2 = m2436a.size();
            C0009f c0009f = null;
            C0009f c0009f2 = null;
            for (int i2 = 0; i2 < size2; i2++) {
                C1970b c1970b = m2436a.get(i2);
                if (c1970b.f4787c.equals("sha256/")) {
                    C0009f c0009f3 = c0009f;
                    if (c0009f == null) {
                        c0009f3 = m2431b(x509Certificate);
                    }
                    c0009f = c0009f3;
                    if (c1970b.f4788d.equals(c0009f3)) {
                        return;
                    }
                } else if (!c1970b.f4787c.equals("sha1/")) {
                    throw new AssertionError("unsupported hashAlgorithm: " + c1970b.f4787c);
                } else {
                    C0009f c0009f4 = c0009f2;
                    if (c0009f2 == null) {
                        c0009f4 = m2433a(x509Certificate);
                    }
                    c0009f2 = c0009f4;
                    if (c1970b.f4788d.equals(c0009f4)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list2.get(i3);
            sb.append("\n    ");
            sb.append(m2434a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = m2436a.size();
        for (int i4 = 0; i4 < size4; i4++) {
            sb.append("\n    ");
            sb.append(m2436a.get(i4));
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r3.f4782b.equals(r0.f4782b) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@javax.annotation.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof okhttp3.C1968g
            if (r0 == 0) goto L38
            r0 = r3
            okhttp3.internal.f.c r0 = r0.f4783c
            r6 = r0
            r0 = r4
            okhttp3.g r0 = (okhttp3.C1968g) r0
            r4 = r0
            r0 = r6
            r1 = r4
            okhttp3.internal.f.c r1 = r1.f4783c
            boolean r0 = okhttp3.internal.C1999c.m2351a(r0, r1)
            if (r0 == 0) goto L38
            r0 = r3
            java.util.Set<okhttp3.g$b> r0 = r0.f4782b
            r1 = r4
            java.util.Set<okhttp3.g$b> r1 = r1.f4782b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
            goto L3a
        L38:
            r0 = 0
            r5 = r0
        L3a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.C1968g.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        AbstractC2033c abstractC2033c = this.f4783c;
        return ((abstractC2033c != null ? abstractC2033c.hashCode() : 0) * 31) + this.f4782b.hashCode();
    }
}

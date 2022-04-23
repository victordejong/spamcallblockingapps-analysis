package com.bytedance.sdk.a.b;

import com.bytedance.sdk.a.a.f;
import com.bytedance.sdk.a.b.a.i.c;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f8090a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    private final Set<b> f8091b;

    /* renamed from: c  reason: collision with root package name */
    private final c f8092c;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<b> f8093a = new ArrayList();

        public final g a() {
            return new g(new LinkedHashSet(this.f8093a), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/g$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f8094a;

        /* renamed from: b  reason: collision with root package name */
        final String f8095b;

        /* renamed from: c  reason: collision with root package name */
        final String f8096c;

        /* renamed from: d  reason: collision with root package name */
        final f f8097d;

        final boolean a(String str) {
            if (!this.f8094a.startsWith("*.")) {
                return str.equals(this.f8095b);
            }
            int indexOf = str.indexOf(46);
            if ((str.length() - indexOf) - 1 != this.f8095b.length()) {
                return false;
            }
            String str2 = this.f8095b;
            return str.regionMatches(false, indexOf + 1, str2, 0, str2.length());
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f8094a.equals(bVar.f8094a) && this.f8096c.equals(bVar.f8096c) && this.f8097d.equals(bVar.f8097d);
        }

        public final int hashCode() {
            return ((((this.f8094a.hashCode() + 527) * 31) + this.f8096c.hashCode()) * 31) + this.f8097d.hashCode();
        }

        public final String toString() {
            return this.f8096c + this.f8097d.b();
        }
    }

    g(Set<b> set, c cVar) {
        this.f8091b = set;
        this.f8092c = cVar;
    }

    static f a(X509Certificate x509Certificate) {
        return f.a(x509Certificate.getPublicKey().getEncoded()).c();
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + b((X509Certificate) certificate).b();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    static f b(X509Certificate x509Certificate) {
        return f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a(c cVar) {
        return com.bytedance.sdk.a.b.a.c.a(this.f8092c, cVar) ? this : new g(this.f8091b, cVar);
    }

    final List<b> a(String str) {
        List<b> emptyList = Collections.emptyList();
        for (b bVar : this.f8091b) {
            if (bVar.a(str)) {
                List<b> list = emptyList;
                if (emptyList.isEmpty()) {
                    list = new ArrayList<>();
                }
                list.add(bVar);
                emptyList = list;
            }
        }
        return emptyList;
    }

    public final void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> a2 = a(str);
        if (!a2.isEmpty()) {
            c cVar = this.f8092c;
            List<Certificate> list2 = list;
            if (cVar != null) {
                list2 = cVar.a(list, str);
            }
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list2.get(i);
                int size2 = a2.size();
                f fVar = null;
                f fVar2 = null;
                for (int i2 = 0; i2 < size2; i2++) {
                    b bVar = a2.get(i2);
                    if (bVar.f8096c.equals("sha256/")) {
                        f fVar3 = fVar;
                        if (fVar == null) {
                            fVar3 = b(x509Certificate);
                        }
                        fVar = fVar3;
                        if (bVar.f8097d.equals(fVar3)) {
                            return;
                        }
                    } else if (bVar.f8096c.equals("sha1/")) {
                        f fVar4 = fVar2;
                        if (fVar2 == null) {
                            fVar4 = a(x509Certificate);
                        }
                        fVar2 = fVar4;
                        if (bVar.f8097d.equals(fVar4)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: " + bVar.f8096c);
                    }
                }
            }
            StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
            int size3 = list2.size();
            for (int i3 = 0; i3 < size3; i3++) {
                X509Certificate x509Certificate2 = (X509Certificate) list2.get(i3);
                sb.append("\n    ");
                sb.append(a((Certificate) x509Certificate2));
                sb.append(": ");
                sb.append(x509Certificate2.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ");
            sb.append(str);
            sb.append(":");
            int size4 = a2.size();
            for (int i4 = 0; i4 < size4; i4++) {
                sb.append("\n    ");
                sb.append(a2.get(i4));
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return com.bytedance.sdk.a.b.a.c.a(this.f8092c, gVar.f8092c) && this.f8091b.equals(gVar.f8091b);
    }

    public final int hashCode() {
        c cVar = this.f8092c;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f8091b.hashCode();
    }
}

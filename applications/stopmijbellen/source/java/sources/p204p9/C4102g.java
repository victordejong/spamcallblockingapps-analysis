package p204p9;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import p011aa.C0056i;
import p310z9.AbstractC5118c;
/* renamed from: p9.g */
/* loaded from: classes2-dex2jar.jar:p9/g.class */
public final class C4102g {

    /* renamed from: c */
    public static final C4102g f12885c = new C4102g(new LinkedHashSet(new ArrayList()), null);

    /* renamed from: a */
    public final Set<C4103a> f12886a;
    @Nullable

    /* renamed from: b */
    public final AbstractC5118c f12887b;

    /* renamed from: p9.g$a */
    /* loaded from: classes2-dex2jar.jar:p9/g$a.class */
    public static final class C4103a {
        public boolean equals(Object obj) {
            if (!(obj instanceof C4103a)) {
                return false;
            }
            Objects.requireNonNull((C4103a) obj);
            throw null;
        }

        public int hashCode() {
            throw null;
        }

        public String toString() {
            new StringBuilder().append((String) null);
            throw null;
        }
    }

    public C4102g(Set<C4103a> set, @Nullable AbstractC5118c abstractC5118c) {
        this.f12886a = set;
        this.f12887b = abstractC5118c;
    }

    /* renamed from: b */
    public static String m1419b(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            StringBuilder m8752j = C0082b.m8752j("sha256/");
            m8752j.append(C0056i.m8834i(((X509Certificate) certificate).getPublicKey().getEncoded()).m8836e("SHA-256").mo8790a());
            return m8752j.toString();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    /* renamed from: a */
    public void m1420a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List emptyList = Collections.emptyList();
        Iterator<C4103a> it2 = this.f12886a.iterator();
        if (it2.hasNext()) {
            Objects.requireNonNull(it2.next());
            throw null;
        } else if (!emptyList.isEmpty()) {
            AbstractC5118c abstractC5118c = this.f12887b;
            List<Certificate> list2 = list;
            if (abstractC5118c != null) {
                list2 = abstractC5118c.mo4a(list, str);
            }
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                X509Certificate x509Certificate = (X509Certificate) list2.get(i);
                if (emptyList.size() > 0) {
                    Objects.requireNonNull((C4103a) emptyList.get(0));
                    throw null;
                }
            }
            StringBuilder m7624k = C0608b.m7624k("Certificate pinning failure!", "\n  Peer certificate chain:");
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                X509Certificate x509Certificate2 = (X509Certificate) list2.get(i2);
                m7624k.append("\n    ");
                m7624k.append(m1419b(x509Certificate2));
                m7624k.append(": ");
                m7624k.append(x509Certificate2.getSubjectDN().getName());
            }
            m7624k.append("\n  Pinned certificates for ");
            m7624k.append(str);
            m7624k.append(":");
            int size3 = emptyList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                m7624k.append("\n    ");
                m7624k.append((C4103a) emptyList.get(i3));
            }
            throw new SSLPeerUnverifiedException(m7624k.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r3.f12886a.equals(r0.f12886a) != false) goto L12;
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
            boolean r0 = r0 instanceof p204p9.C4102g
            if (r0 == 0) goto L38
            r0 = r3
            z9.c r0 = r0.f12887b
            r6 = r0
            r0 = r4
            p9.g r0 = (p204p9.C4102g) r0
            r4 = r0
            r0 = r6
            r1 = r4
            z9.c r1 = r1.f12887b
            boolean r0 = p214q9.C4171c.m1325k(r0, r1)
            if (r0 == 0) goto L38
            r0 = r3
            java.util.Set<p9.g$a> r0 = r0.f12886a
            r1 = r4
            java.util.Set<p9.g$a> r1 = r1.f12886a
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
        throw new UnsupportedOperationException("Method not decompiled: p204p9.C4102g.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        AbstractC5118c abstractC5118c = this.f12887b;
        return this.f12886a.hashCode() + ((abstractC5118c != null ? abstractC5118c.hashCode() : 0) * 31);
    }
}

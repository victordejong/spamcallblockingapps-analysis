package com.squareup.okhttp;

import com.squareup.okhttp.p089u.C2975i;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;
/* renamed from: com.squareup.okhttp.e */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/e.class */
public final class C2858e {

    /* renamed from: a */
    private final Map<String, Set<ByteString>> f12092a;

    /* renamed from: com.squareup.okhttp.e$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/e$b.class */
    public static final class C2860b {

        /* renamed from: a */
        private final Map<String, Set<ByteString>> f12093a = new LinkedHashMap();

        /* renamed from: b */
        public C2858e m1295b() {
            return new C2858e(this);
        }
    }

    static {
        new C2860b().m1295b();
    }

    private C2858e(C2860b c2860b) {
        this.f12092a = C2975i.m650j(c2860b.f12093a);
    }

    /* renamed from: c */
    public static String m1298c(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha1/" + m1297d((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    /* renamed from: d */
    private static ByteString m1297d(X509Certificate x509Certificate) {
        return C2975i.m646n(ByteString.of(x509Certificate.getPublicKey().getEncoded()));
    }

    /* renamed from: a */
    public void m1300a(String str, List<Certificate> list) {
        Set<ByteString> m1299b = m1299b(str);
        if (m1299b == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (m1299b.contains(m1297d((X509Certificate) list.get(i)))) {
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i2);
            sb.append("\n    ");
            sb.append(m1298c(x509Certificate));
            sb.append(": ");
            sb.append(x509Certificate.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        for (ByteString byteString : m1299b) {
            sb.append("\n    sha1/");
            sb.append(byteString.base64());
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    /* renamed from: b */
    Set<ByteString> m1299b(String str) {
        int indexOf;
        Set<ByteString> set;
        Set<ByteString> set2 = this.f12092a.get(str);
        if (str.indexOf(46) != str.lastIndexOf(46)) {
            set = this.f12092a.get("*." + str.substring(indexOf + 1));
        } else {
            set = null;
        }
        if (set2 == null && set == null) {
            return null;
        }
        if (set2 == null || set == null) {
            return set2 != null ? set2 : set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(set2);
        linkedHashSet.addAll(set);
        return linkedHashSet;
    }
}

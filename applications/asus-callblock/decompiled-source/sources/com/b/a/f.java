package com.b.a;

import b.b;
import com.b.a.a.h;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;
/* loaded from: classes-dex2jar.jar:com/b/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f3314a = new f(new a(), (byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<b.f>> f3315b;

    /* loaded from: classes-dex2jar.jar:com/b/a/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Map<String, List<b.f>> f3316a = new LinkedHashMap();
    }

    private f(a aVar) {
        this.f3315b = h.a(aVar.f3316a);
    }

    private /* synthetic */ f(a aVar, byte b2) {
        this(aVar);
    }

    private static b.f a(X509Certificate x509Certificate) {
        return h.a(b.f.a(x509Certificate.getPublicKey().getEncoded()));
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha1/" + b.a(a((X509Certificate) certificate).c);
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public final void a(String str, List<Certificate> list) {
        List<b.f> list2 = this.f3315b.get(str);
        if (list2 != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (list2.contains(a((X509Certificate) list.get(i)))) {
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                X509Certificate x509Certificate = (X509Certificate) list.get(i2);
                sb.append("\n    ").append(a((Certificate) x509Certificate)).append(": ").append(x509Certificate.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ").append(str).append(":");
            int size3 = list2.size();
            for (int i3 = 0; i3 < size3; i3++) {
                sb.append("\n    sha1/").append(b.a(list2.get(i3).c));
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }
}

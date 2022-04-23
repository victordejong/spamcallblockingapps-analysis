package p599h.p600d0.p609m;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import p599h.p600d0.p607k.C10203f;
/* renamed from: h.d0.m.c */
/* loaded from: classes2-dex2jar.jar:h/d0/m/c.class */
public abstract class AbstractC10207c {
    /* renamed from: a */
    public static AbstractC10207c m1067a(X509TrustManager x509TrustManager) {
        return C10203f.m1071d().mo1078a(x509TrustManager);
    }

    /* renamed from: a */
    public abstract List<Certificate> mo1068a(List<Certificate> list, String str) throws SSLPeerUnverifiedException;
}

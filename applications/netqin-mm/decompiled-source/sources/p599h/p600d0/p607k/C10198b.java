package p599h.p600d0.p607k;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Protocol;
import org.conscrypt.Conscrypt;
/* renamed from: h.d0.k.b */
/* loaded from: classes2-dex2jar.jar:h/d0/k/b.class */
public class C10198b extends C10203f {
    /* renamed from: g */
    public static C10198b m1097g() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (!Conscrypt.isAvailable()) {
                return null;
            }
            return new C10198b();
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1080a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) C10203f.m1082a(list).toArray(new String[0]));
            return;
        }
        super.mo1080a(sSLSocket, str, list);
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1079a(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public String mo1074b(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.mo1074b(sSLSocket);
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public SSLContext mo1077b() {
        try {
            return SSLContext.getInstance("TLSv1.3", m1098f());
        } catch (NoSuchAlgorithmException e) {
            try {
                return SSLContext.getInstance("TLS", m1098f());
            } catch (NoSuchAlgorithmException e2) {
                throw new IllegalStateException("No TLS provider", e);
            }
        }
    }

    /* renamed from: f */
    public final Provider m1098f() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }
}

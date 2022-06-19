package okhttp3.internal.p095e;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import okhttp3.EnumC2101x;
import org.conscrypt.Conscrypt;
import org.conscrypt.OpenSSLProvider;
/* renamed from: okhttp3.internal.e.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/b.class */
public class C2025b extends C2030f {
    private C2025b() {
    }

    /* renamed from: b */
    public static C2030f m2248b() {
        try {
            Class.forName("org.conscrypt.ConscryptEngineSocket");
            if (!Conscrypt.isAvailable()) {
                return null;
            }
            Conscrypt.setUseEngineSocketByDefault(true);
            return new C2025b();
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: e */
    private Provider m2247e() {
        return new OpenSSLProvider();
    }

    @Override // okhttp3.internal.p095e.C2030f
    @Nullable
    /* renamed from: a */
    public String mo2232a(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.mo2232a(sSLSocket);
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2231a(SSLSocket sSLSocket, String str, List<EnumC2101x> list) {
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.mo2231a(sSLSocket, str, list);
            return;
        }
        if (str != null) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setHostname(sSLSocket, str);
        }
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) C2030f.m2233a(list).toArray(new String[0]));
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: s_ */
    public SSLContext mo2222s_() {
        try {
            return SSLContext.getInstance("TLS", m2247e());
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }
}

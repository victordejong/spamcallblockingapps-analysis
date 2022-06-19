package okhttp3.internal.p196e;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import okhttp3.EnumC5553y;
import org.conscrypt.Conscrypt;
import org.conscrypt.OpenSSLProvider;
/* renamed from: okhttp3.internal.e.b */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/b.class */
public class C5475b extends C5480f {
    private C5475b() {
    }

    /* renamed from: b */
    public static C5480f m566b() {
        C5475b c5475b = null;
        try {
            Class.forName("org.conscrypt.ConscryptEngineSocket");
            if (Conscrypt.isAvailable()) {
                Conscrypt.setUseEngineSocketByDefault(true);
                c5475b = new C5475b();
            }
        } catch (ClassNotFoundException e) {
        }
        return c5475b;
    }

    /* renamed from: e */
    private Provider m565e() {
        return new OpenSSLProvider();
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: K_ */
    public SSLContext mo555K_() {
        try {
            return SSLContext.getInstance("TLS", m565e());
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException("No TLS provider", e);
        }
    }

    @Override // okhttp3.internal.p196e.C5480f
    @Nullable
    /* renamed from: a */
    public String mo549a(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.mo549a(sSLSocket);
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo548a(SSLSocket sSLSocket, String str, List<EnumC5553y> list) {
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.mo548a(sSLSocket, str, list);
            return;
        }
        if (str != null) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setHostname(sSLSocket, str);
        }
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) C5480f.m550a(list).toArray(new String[0]));
    }
}

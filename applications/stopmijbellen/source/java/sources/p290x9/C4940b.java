package p290x9;

import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.conscrypt.Conscrypt;
import p204p9.EnumC4131w;
/* renamed from: x9.b */
/* loaded from: classes2-dex2jar.jar:x9/b.class */
public class C4940b extends C4945f {
    /* renamed from: n */
    public static C4940b m227n() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new C4940b();
            }
            return null;
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: e */
    public void mo217e(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: f */
    public void mo216f(SSLSocket sSLSocket, String str, List<EnumC4131w> list) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) ((ArrayList) C4945f.m220b(list)).toArray(new String[0]));
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: h */
    public SSLContext mo214h() {
        try {
            return SSLContext.getInstance("TLSv1.3", m226o());
        } catch (NoSuchAlgorithmException e) {
            try {
                return SSLContext.getInstance("TLS", m226o());
            } catch (NoSuchAlgorithmException e2) {
                throw new IllegalStateException("No TLS provider", e);
            }
        }
    }

    @Override // p290x9.C4945f
    @Nullable
    /* renamed from: i */
    public String mo213i(SSLSocket sSLSocket) {
        if (Conscrypt.isConscrypt(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    /* renamed from: o */
    public final Provider m226o() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }
}

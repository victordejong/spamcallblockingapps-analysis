package p290x9;

import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import p204p9.EnumC4131w;
import p310z9.AbstractC5118c;
import p310z9.AbstractC5120e;
import p310z9.C5116a;
import p310z9.C5117b;
/* renamed from: x9.f */
/* loaded from: classes2-dex2jar.jar:x9/f.class */
public class C4945f {

    /* renamed from: a */
    public static final C4945f f15078a;

    /* renamed from: b */
    public static final Logger f15079b;

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e2, code lost:
        if (r9 != null) goto L43;
     */
    static {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p290x9.C4945f.m11084clinit():void");
    }

    /* renamed from: b */
    public static List<String> m220b(List<EnumC4131w> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC4131w enumC4131w = list.get(i);
            if (enumC4131w != EnumC4131w.HTTP_1_0) {
                arrayList.add(enumC4131w.f13030a);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void mo221a(SSLSocket sSLSocket) {
    }

    /* renamed from: c */
    public AbstractC5118c mo219c(X509TrustManager x509TrustManager) {
        return new C5116a(mo218d(x509TrustManager));
    }

    /* renamed from: d */
    public AbstractC5120e mo218d(X509TrustManager x509TrustManager) {
        return new C5117b(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: e */
    public void mo217e(SSLSocketFactory sSLSocketFactory) {
    }

    /* renamed from: f */
    public void mo216f(SSLSocket sSLSocket, @Nullable String str, List<EnumC4131w> list) {
    }

    /* renamed from: g */
    public void mo215g(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: h */
    public SSLContext mo214h() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException e) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException("No TLS provider", e2);
        }
    }

    @Nullable
    /* renamed from: i */
    public String mo213i(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: j */
    public Object mo212j(String str) {
        if (f15079b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* renamed from: k */
    public boolean mo211k(String str) {
        return true;
    }

    /* renamed from: l */
    public void mo210l(int i, String str, @Nullable Throwable th) {
        f15079b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: m */
    public void mo209m(String str, Object obj) {
        String str2 = str;
        if (obj == null) {
            str2 = C1676a.m4789h(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        mo210l(5, str2, (Throwable) obj);
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}

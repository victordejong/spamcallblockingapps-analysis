package com.bytedance.sdk.p127a.p129b.p130a.p137g;

import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4094c;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4097f;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.C4092a;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.C4093b;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.bytedance.sdk.a.b.a.g.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/e.class */
public class C4090e {

    /* renamed from: a */
    private static final C4090e f14856a = m36652a();

    /* renamed from: b */
    private static final Logger f14857b = Logger.getLogger(C4140v.class.getName());

    /* renamed from: a */
    private static C4090e m36652a() {
        C4090e m36668a = C4082a.m36668a();
        if (m36668a != null) {
            return m36668a;
        }
        C4086b m36661a = C4086b.m36661a();
        if (m36661a != null) {
            return m36661a;
        }
        C4090e m36660a = C4087c.m36660a();
        return m36660a != null ? m36660a : new C4090e();
    }

    /* renamed from: a */
    public static List<String> m36647a(List<EnumC4143w> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC4143w enumC4143w = list.get(i);
            if (enumC4143w != EnumC4143w.HTTP_1_0) {
                arrayList.add(enumC4143w.toString());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static C4090e m36643b() {
        return f14856a;
    }

    /* renamed from: b */
    public static byte[] m36641b(List<EnumC4143w> list) {
        C3969c c3969c = new C3969c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            EnumC4143w enumC4143w = list.get(i);
            if (enumC4143w != EnumC4143w.HTTP_1_0) {
                c3969c.mo37072i(enumC4143w.toString().length());
                c3969c.mo37077b(enumC4143w.toString());
            }
        }
        return c3969c.m37107q();
    }

    /* renamed from: a */
    public AbstractC4094c mo36644a(X509TrustManager x509TrustManager) {
        return new C4092a(mo36639b(x509TrustManager));
    }

    /* renamed from: a */
    public Object mo36650a(String str) {
        if (f14857b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    /* renamed from: a */
    public String mo36646a(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: a */
    public void mo36651a(int i, String str, Throwable th) {
        f14857b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: a */
    public void mo36649a(String str, Object obj) {
        String str2 = str;
        if (obj == null) {
            str2 = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        mo36651a(5, str2, (Throwable) obj);
    }

    /* renamed from: a */
    public void mo36648a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: a */
    public void mo36645a(SSLSocket sSLSocket, String str, List<EnumC4143w> list) {
    }

    /* renamed from: b */
    public AbstractC4097f mo36639b(X509TrustManager x509TrustManager) {
        return new C4093b(x509TrustManager.getAcceptedIssuers());
    }

    /* renamed from: b */
    public void mo36640b(SSLSocket sSLSocket) {
    }

    /* renamed from: b */
    public boolean mo36642b(String str) {
        return true;
    }
}

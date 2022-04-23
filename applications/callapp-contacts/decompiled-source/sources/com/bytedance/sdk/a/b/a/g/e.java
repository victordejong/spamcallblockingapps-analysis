package com.bytedance.sdk.a.b.a.g;

import com.bytedance.sdk.a.a.c;
import com.bytedance.sdk.a.b.a.i.a;
import com.bytedance.sdk.a.b.a.i.b;
import com.bytedance.sdk.a.b.a.i.f;
import com.bytedance.sdk.a.b.v;
import com.bytedance.sdk.a.b.w;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final e f8048a = a();

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f8049b = Logger.getLogger(v.class.getName());

    private static e a() {
        e a2 = a.a();
        if (a2 != null) {
            return a2;
        }
        b a3 = b.a();
        if (a3 != null) {
            return a3;
        }
        e a4 = c.a();
        return a4 != null ? a4 : new e();
    }

    public static List<String> a(List<w> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            w wVar = list.get(i);
            if (wVar != w.HTTP_1_0) {
                arrayList.add(wVar.toString());
            }
        }
        return arrayList;
    }

    public static e b() {
        return f8048a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(List<w> list) {
        c cVar = new c();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            w wVar = list.get(i);
            if (wVar != w.HTTP_1_0) {
                cVar.i(wVar.toString().length());
                cVar.b(wVar.toString());
            }
        }
        return cVar.q();
    }

    public com.bytedance.sdk.a.b.a.i.c a(X509TrustManager x509TrustManager) {
        return new a(b(x509TrustManager));
    }

    public Object a(String str) {
        if (f8049b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public String a(SSLSocket sSLSocket) {
        return null;
    }

    public void a(int i, String str, Throwable th) {
        f8049b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void a(String str, Object obj) {
        String str2 = str;
        if (obj == null) {
            str2 = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str2, (Throwable) obj);
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void a(SSLSocket sSLSocket, String str, List<w> list) {
    }

    public f b(X509TrustManager x509TrustManager) {
        return new b(x509TrustManager.getAcceptedIssuers());
    }

    public void b(SSLSocket sSLSocket) {
    }

    public boolean b(String str) {
        return true;
    }
}

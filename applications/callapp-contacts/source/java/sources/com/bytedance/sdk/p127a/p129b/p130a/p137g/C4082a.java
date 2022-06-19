package com.bytedance.sdk.p127a.p129b.p130a.p137g;

import android.os.Build;
import android.util.Log;
import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4094c;
import com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4097f;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.bytedance.sdk.a.b.a.g.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a.class */
public class C4082a extends C4090e {

    /* renamed from: a */
    private final Class<?> f14830a;

    /* renamed from: b */
    private final C4089d<Socket> f14831b;

    /* renamed from: c */
    private final C4089d<Socket> f14832c;

    /* renamed from: d */
    private final C4089d<Socket> f14833d;

    /* renamed from: e */
    private final C4089d<Socket> f14834e;

    /* renamed from: f */
    private final C4085c f14835f = C4085c.m36664a();

    /* renamed from: com.bytedance.sdk.a.b.a.g.a$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a$a.class */
    static final class C4083a extends AbstractC4094c {

        /* renamed from: a */
        private final Object f14836a;

        /* renamed from: b */
        private final Method f14837b;

        C4083a(Object obj, Method method) {
            this.f14836a = obj;
            this.f14837b = method;
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4094c
        /* renamed from: a */
        public final List<Certificate> mo36631a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f14837b.invoke(this.f14836a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public final boolean equals(Object obj) {
            return obj instanceof C4083a;
        }

        public final int hashCode() {
            return 0;
        }
    }

    /* renamed from: com.bytedance.sdk.a.b.a.g.a$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a$b.class */
    static final class C4084b implements AbstractC4097f {

        /* renamed from: a */
        private final X509TrustManager f14838a;

        /* renamed from: b */
        private final Method f14839b;

        C4084b(X509TrustManager x509TrustManager, Method method) {
            this.f14839b = method;
            this.f14838a = x509TrustManager;
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p139i.AbstractC4097f
        /* renamed from: a */
        public final X509Certificate mo36615a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f14839b.invoke(this.f14838a, x509Certificate);
                if (trustAnchor == null) {
                    return null;
                }
                return trustAnchor.getTrustedCert();
            } catch (IllegalAccessException e) {
                throw C4015c.m36905a("unable to get issues and signature", (Exception) e);
            } catch (InvocationTargetException e2) {
                return null;
            }
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C4084b)) {
                return false;
            }
            C4084b c4084b = (C4084b) obj;
            return this.f14838a.equals(c4084b.f14838a) && this.f14839b.equals(c4084b.f14839b);
        }

        public final int hashCode() {
            return this.f14838a.hashCode() + (this.f14839b.hashCode() * 31);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.a.b.a.g.a$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a$c.class */
    public static final class C4085c {

        /* renamed from: a */
        private final Method f14840a;

        /* renamed from: b */
        private final Method f14841b;

        /* renamed from: c */
        private final Method f14842c;

        C4085c(Method method, Method method2, Method method3) {
            this.f14840a = method;
            this.f14841b = method2;
            this.f14842c = method3;
        }

        /* renamed from: a */
        static C4085c m36664a() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method = cls.getMethod("open", String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception e) {
                method2 = null;
                method = null;
            }
            return new C4085c(method3, method, method2);
        }

        /* renamed from: a */
        final Object m36662a(String str) {
            Method method = this.f14840a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    this.f14841b.invoke(invoke, str);
                    return invoke;
                } catch (Exception e) {
                    return null;
                }
            }
            return null;
        }

        /* renamed from: a */
        final boolean m36663a(Object obj) {
            boolean z = false;
            if (obj != null) {
                try {
                    this.f14842c.invoke(obj, new Object[0]);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
            }
            return z;
        }
    }

    C4082a(Class<?> cls, C4089d<Socket> c4089d, C4089d<Socket> c4089d2, C4089d<Socket> c4089d3, C4089d<Socket> c4089d4) {
        this.f14830a = cls;
        this.f14831b = c4089d;
        this.f14832c = c4089d2;
        this.f14833d = c4089d3;
        this.f14834e = c4089d4;
    }

    /* renamed from: a */
    public static C4090e m36668a() {
        Class<?> cls;
        C4089d c4089d;
        C4089d c4089d2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            C4089d c4089d3 = new C4089d(null, "setUseSessionTickets", Boolean.TYPE);
            C4089d c4089d4 = new C4089d(null, "setHostname", String.class);
            if (m36665c()) {
                c4089d2 = new C4089d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                c4089d = new C4089d(null, "setAlpnProtocols", byte[].class);
            } else {
                c4089d2 = null;
                c4089d = null;
            }
            return new C4082a(cls, c4089d3, c4089d4, c4089d2, c4089d);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    /* renamed from: a */
    private boolean m36667a(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            return m36666b(str, cls, obj);
        }
    }

    /* renamed from: b */
    private boolean m36666b(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            return super.mo36642b(str);
        }
    }

    /* renamed from: c */
    private static boolean m36665c() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public AbstractC4094c mo36644a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C4083a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.mo36644a(x509TrustManager);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public Object mo36650a(String str) {
        return this.f14835f.m36662a(str);
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public String mo36646a(SSLSocket sSLSocket) {
        byte[] bArr;
        C4089d<Socket> c4089d = this.f14833d;
        if (c4089d == null || !c4089d.m36657a((C4089d<Socket>) sSLSocket) || (bArr = (byte[]) this.f14833d.m36653d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, C4015c.f14578e);
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public void mo36651a(int i, String str, Throwable th) {
        int min;
        int i2 = 5;
        if (i != 5) {
            i2 = 3;
        }
        String str2 = str;
        if (th != null) {
            str2 = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str2.length();
        while (i3 < length) {
            int indexOf = str2.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + ConferenceActivity.SNACK_BAR_DURATION);
                Log.println(i2, "OkHttp", str2.substring(i3, min));
                if (min >= indexOf) {
                    break;
                }
                i3 = min;
            }
            i3 = min + 1;
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public void mo36649a(String str, Object obj) {
        if (!this.f14835f.m36663a(obj)) {
            mo36651a(5, str, (Throwable) null);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public void mo36648a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!C4015c.m36913a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e2;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e2);
            throw iOException;
        } catch (SecurityException e3) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e3);
            throw iOException2;
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public void mo36645a(SSLSocket sSLSocket, String str, List<EnumC4143w> list) {
        if (str != null) {
            this.f14831b.m36655b(sSLSocket, Boolean.TRUE);
            this.f14832c.m36655b(sSLSocket, str);
        }
        C4089d<Socket> c4089d = this.f14834e;
        if (c4089d == null || !c4089d.m36657a((C4089d<Socket>) sSLSocket)) {
            return;
        }
        this.f14834e.m36653d(sSLSocket, m36641b(list));
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: b */
    public AbstractC4097f mo36639b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C4084b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return super.mo36639b(x509TrustManager);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: b */
    public boolean mo36642b(String str) {
        Exception e;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return m36667a(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return super.mo36642b(str);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw C4015c.m36905a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw C4015c.m36905a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw C4015c.m36905a("unable to determine cleartext support", e);
        }
    }
}

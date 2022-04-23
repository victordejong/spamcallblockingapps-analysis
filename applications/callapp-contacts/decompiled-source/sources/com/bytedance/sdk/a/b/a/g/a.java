package com.bytedance.sdk.a.b.a.g;

import android.os.Build;
import android.util.Log;
import com.bytedance.sdk.a.b.a.i.f;
import com.bytedance.sdk.a.b.w;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a.class */
public class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f8025a;

    /* renamed from: b  reason: collision with root package name */
    private final d<Socket> f8026b;

    /* renamed from: c  reason: collision with root package name */
    private final d<Socket> f8027c;

    /* renamed from: d  reason: collision with root package name */
    private final d<Socket> f8028d;
    private final d<Socket> e;
    private final c f = c.a();

    /* renamed from: com.bytedance.sdk.a.b.a.g.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a$a.class */
    static final class C0154a extends com.bytedance.sdk.a.b.a.i.c {

        /* renamed from: a  reason: collision with root package name */
        private final Object f8029a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f8030b;

        C0154a(Object obj, Method method) {
            this.f8029a = obj;
            this.f8030b = method;
        }

        @Override // com.bytedance.sdk.a.b.a.i.c
        public final List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f8030b.invoke(this.f8029a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public final boolean equals(Object obj) {
            return obj instanceof C0154a;
        }

        public final int hashCode() {
            return 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a$b.class */
    static final class b implements f {

        /* renamed from: a  reason: collision with root package name */
        private final X509TrustManager f8031a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f8032b;

        b(X509TrustManager x509TrustManager, Method method) {
            this.f8032b = method;
            this.f8031a = x509TrustManager;
        }

        @Override // com.bytedance.sdk.a.b.a.i.f
        public final X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f8032b.invoke(this.f8031a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e) {
                throw com.bytedance.sdk.a.b.a.c.a("unable to get issues and signature", (Exception) e);
            } catch (InvocationTargetException e2) {
                return null;
            }
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f8031a.equals(bVar.f8031a) && this.f8032b.equals(bVar.f8032b);
        }

        public final int hashCode() {
            return this.f8031a.hashCode() + (this.f8032b.hashCode() * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/a$c.class */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Method f8033a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f8034b;

        /* renamed from: c  reason: collision with root package name */
        private final Method f8035c;

        c(Method method, Method method2, Method method3) {
            this.f8033a = method;
            this.f8034b = method2;
            this.f8035c = method3;
        }

        static c a() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method3 = cls.getMethod("get", new Class[0]);
                method = cls.getMethod("open", String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception e) {
                method2 = null;
                method = null;
            }
            return new c(method3, method, method2);
        }

        final Object a(String str) {
            Method method = this.f8033a;
            if (method == null) {
                return null;
            }
            try {
                Object invoke = method.invoke(null, new Object[0]);
                this.f8034b.invoke(invoke, str);
                return invoke;
            } catch (Exception e) {
                return null;
            }
        }

        final boolean a(Object obj) {
            boolean z = false;
            if (obj != null) {
                try {
                    this.f8035c.invoke(obj, new Object[0]);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
            }
            return z;
        }
    }

    a(Class<?> cls, d<Socket> dVar, d<Socket> dVar2, d<Socket> dVar3, d<Socket> dVar4) {
        this.f8025a = cls;
        this.f8026b = dVar;
        this.f8027c = dVar2;
        this.f8028d = dVar3;
        this.e = dVar4;
    }

    public static e a() {
        Class<?> cls;
        d dVar;
        d dVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            d dVar3 = new d(null, "setUseSessionTickets", Boolean.TYPE);
            d dVar4 = new d(null, "setHostname", String.class);
            if (c()) {
                dVar2 = new d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                dVar = new d(null, "setAlpnProtocols", byte[].class);
            } else {
                dVar2 = null;
                dVar = null;
            }
            return new a(cls, dVar3, dVar4, dVar2, dVar);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    private boolean a(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            return b(str, cls, obj);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            return super.b(str);
        }
    }

    private static boolean c() {
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

    @Override // com.bytedance.sdk.a.b.a.g.e
    public com.bytedance.sdk.a.b.a.i.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C0154a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.a(x509TrustManager);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public Object a(String str) {
        return this.f.a(str);
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public String a(SSLSocket sSLSocket) {
        byte[] bArr;
        d<Socket> dVar = this.f8028d;
        if (dVar == null || !dVar.a((d<Socket>) sSLSocket) || (bArr = (byte[]) this.f8028d.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.bytedance.sdk.a.b.a.c.e);
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public void a(int i, String str, Throwable th) {
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

    @Override // com.bytedance.sdk.a.b.a.g.e
    public void a(String str, Object obj) {
        if (!this.f.a(obj)) {
            a(5, str, (Throwable) null);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (com.bytedance.sdk.a.b.a.c.a(e)) {
                throw new IOException(e);
            }
            throw e;
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e2);
                throw iOException;
            }
            throw e2;
        } catch (SecurityException e3) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e3);
            throw iOException2;
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public void a(SSLSocket sSLSocket, String str, List<w> list) {
        if (str != null) {
            this.f8026b.b(sSLSocket, Boolean.TRUE);
            this.f8027c.b(sSLSocket, str);
        }
        d<Socket> dVar = this.e;
        if (dVar != null && dVar.a((d<Socket>) sSLSocket)) {
            this.e.d(sSLSocket, b(list));
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public f b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return super.b(x509TrustManager);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public boolean b(String str) {
        Exception e;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return a(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return super.b(str);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw com.bytedance.sdk.a.b.a.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw com.bytedance.sdk.a.b.a.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw com.bytedance.sdk.a.b.a.c.a("unable to determine cleartext support", e);
        }
    }
}

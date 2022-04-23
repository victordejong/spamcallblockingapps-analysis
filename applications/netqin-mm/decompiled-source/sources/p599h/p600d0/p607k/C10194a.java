package p599h.p600d0.p607k;

import android.os.Build;
import android.util.Log;
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
import okhttp3.Protocol;
import p599h.p600d0.C10109c;
import p599h.p600d0.p609m.AbstractC10207c;
import p599h.p600d0.p609m.AbstractC10209e;
/* renamed from: h.d0.k.a */
/* loaded from: classes2-dex2jar.jar:h/d0/k/a.class */
public class C10194a extends C10203f {

    /* renamed from: c */
    public final C10202e<Socket> f37645c;

    /* renamed from: d */
    public final C10202e<Socket> f37646d;

    /* renamed from: e */
    public final C10202e<Socket> f37647e;

    /* renamed from: f */
    public final C10202e<Socket> f37648f;

    /* renamed from: g */
    public final C10197c f37649g = C10197c.m1101a();

    /* renamed from: h.d0.k.a$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/k/a$a.class */
    public static final class C10195a extends AbstractC10207c {

        /* renamed from: a */
        public final Object f37650a;

        /* renamed from: b */
        public final Method f37651b;

        public C10195a(Object obj, Method method) {
            this.f37650a = obj;
            this.f37651b = method;
        }

        @Override // p599h.p600d0.p609m.AbstractC10207c
        /* renamed from: a */
        public List<Certificate> mo1068a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f37651b.invoke(this.f37650a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C10195a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* renamed from: h.d0.k.a$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/k/a$b.class */
    public static final class C10196b implements AbstractC10209e {

        /* renamed from: a */
        public final X509TrustManager f37652a;

        /* renamed from: b */
        public final Method f37653b;

        public C10196b(X509TrustManager x509TrustManager, Method method) {
            this.f37653b = method;
            this.f37652a = x509TrustManager;
        }

        @Override // p599h.p600d0.p609m.AbstractC10209e
        /* renamed from: a */
        public X509Certificate mo1060a(X509Certificate x509Certificate) {
            X509Certificate x509Certificate2;
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f37653b.invoke(this.f37652a, x509Certificate);
                x509Certificate2 = null;
                if (trustAnchor != null) {
                    x509Certificate2 = trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e) {
                throw C10109c.m1454a("unable to get issues and signature", (Exception) e);
            } catch (InvocationTargetException e2) {
                x509Certificate2 = null;
            }
            return x509Certificate2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C10196b)) {
                return false;
            }
            C10196b bVar = (C10196b) obj;
            if (!this.f37652a.equals(bVar.f37652a) || !this.f37653b.equals(bVar.f37653b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f37652a.hashCode() + (this.f37653b.hashCode() * 31);
        }
    }

    /* renamed from: h.d0.k.a$c */
    /* loaded from: classes2-dex2jar.jar:h/d0/k/a$c.class */
    public static final class C10197c {

        /* renamed from: a */
        public final Method f37654a;

        /* renamed from: b */
        public final Method f37655b;

        /* renamed from: c */
        public final Method f37656c;

        public C10197c(Method method, Method method2, Method method3) {
            this.f37654a = method;
            this.f37655b = method2;
            this.f37656c = method3;
        }

        /* renamed from: a */
        public static C10197c m1101a() {
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
            return new C10197c(method3, method, method2);
        }

        /* renamed from: a */
        public Object m1099a(String str) {
            Method method = this.f37654a;
            if (method == null) {
                return null;
            }
            try {
                Object invoke = method.invoke(null, new Object[0]);
                this.f37655b.invoke(invoke, str);
                return invoke;
            } catch (Exception e) {
                return null;
            }
        }

        /* renamed from: a */
        public boolean m1100a(Object obj) {
            boolean z = false;
            if (obj != null) {
                try {
                    this.f37656c.invoke(obj, new Object[0]);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
            }
            return z;
        }
    }

    public C10194a(Class<?> cls, C10202e<Socket> eVar, C10202e<Socket> eVar2, C10202e<Socket> eVar3, C10202e<Socket> eVar4) {
        this.f37645c = eVar;
        this.f37646d = eVar2;
        this.f37647e = eVar3;
        this.f37648f = eVar4;
    }

    /* renamed from: f */
    public static C10203f m1103f() {
        Class<?> cls;
        C10202e eVar;
        C10202e eVar2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            C10202e eVar3 = new C10202e(null, "setUseSessionTickets", Boolean.TYPE);
            C10202e eVar4 = new C10202e(null, "setHostname", String.class);
            if (m1102g()) {
                eVar2 = new C10202e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                eVar = new C10202e(null, "setAlpnProtocols", byte[].class);
            } else {
                eVar = null;
                eVar2 = null;
            }
            return new C10194a(cls, eVar3, eVar4, eVar2, eVar);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m1102g() {
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

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public AbstractC10207c mo1078a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C10195a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.mo1078a(x509TrustManager);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public Object mo1085a(String str) {
        return this.f37649g.m1099a(str);
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1086a(int i, String str, Throwable th) {
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
                min = Math.min(indexOf, i3 + 4000);
                Log.println(i2, "OkHttp", str2.substring(i3, min));
                if (min >= indexOf) {
                    break;
                }
                i3 = min;
            }
            i3 = min + 1;
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1084a(String str, Object obj) {
        if (!this.f37649g.m1100a(obj)) {
            mo1086a(5, str, (Throwable) null);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1083a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (C10109c.m1462a(e)) {
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

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: a */
    public void mo1080a(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (str != null) {
            this.f37645c.m1089c(sSLSocket, true);
            this.f37646d.m1089c(sSLSocket, str);
        }
        C10202e<Socket> eVar = this.f37648f;
        if (eVar != null && eVar.m1092a((C10202e<Socket>) sSLSocket)) {
            this.f37648f.m1088d(sSLSocket, C10203f.m1075b(list));
        }
    }

    /* renamed from: a */
    public final boolean m1105a(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            return super.mo1076b(str);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public AbstractC10209e mo1073b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C10196b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return super.mo1073b(x509TrustManager);
        }
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public String mo1074b(SSLSocket sSLSocket) {
        C10202e<Socket> eVar = this.f37647e;
        String str = null;
        if (eVar == null || !eVar.m1092a((C10202e<Socket>) sSLSocket)) {
            return null;
        }
        byte[] bArr = (byte[]) this.f37647e.m1088d(sSLSocket, new Object[0]);
        if (bArr != null) {
            str = new String(bArr, C10109c.f37322i);
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (android.os.Build.VERSION.SDK_INT < 22) goto L_0x001d;
     */
    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.net.ssl.SSLContext mo1077b() {
        /*
            r5 = this;
            r0 = 1
            r6 = r0
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: NoClassDefFoundError -> 0x001c
            r1 = 16
            if (r0 < r1) goto L_0x0017
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: NoClassDefFoundError -> 0x001c
            r7 = r0
            r0 = r7
            r1 = 22
            if (r0 >= r1) goto L_0x0017
            goto L_0x001d
        L_0x0017:
            r0 = 0
            r6 = r0
            goto L_0x001d
        L_0x001c:
            r8 = move-exception
        L_0x001d:
            r0 = r6
            if (r0 == 0) goto L_0x002a
            java.lang.String r0 = "TLSv1.2"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: NoSuchAlgorithmException -> 0x0040
            r8 = r0
            r0 = r8
            return r0
        L_0x002a:
            java.lang.String r0 = "TLS"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: NoSuchAlgorithmException -> 0x0033
            r8 = r0
            r0 = r8
            return r0
        L_0x0033:
            r8 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "No TLS provider"
            r3 = r8
            r1.<init>(r2, r3)
            throw r0
        L_0x0040:
            r8 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p607k.C10194a.mo1077b():javax.net.ssl.SSLContext");
    }

    @Override // p599h.p600d0.p607k.C10203f
    /* renamed from: b */
    public boolean mo1076b(String str) {
        Exception e;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return m1104b(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return super.mo1076b(str);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw C10109c.m1454a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw C10109c.m1454a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw C10109c.m1454a("unable to determine cleartext support", e);
        }
    }

    /* renamed from: b */
    public final boolean m1104b(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            return m1105a(str, cls, obj);
        }
    }
}

package okhttp3.internal.p095e;

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
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import okhttp3.EnumC2101x;
import okhttp3.internal.C1999c;
import okhttp3.internal.p096f.AbstractC2033c;
import okhttp3.internal.p096f.AbstractC2035e;
/* renamed from: okhttp3.internal.e.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a.class */
public class C2021a extends C2030f {

    /* renamed from: a */
    private final Class<?> f5076a;

    /* renamed from: b */
    private final C2029e<Socket> f5077b;

    /* renamed from: c */
    private final C2029e<Socket> f5078c;

    /* renamed from: d */
    private final C2029e<Socket> f5079d;

    /* renamed from: e */
    private final C2029e<Socket> f5080e;

    /* renamed from: f */
    private final C2024c f5081f = C2024c.m2251a();

    /* renamed from: okhttp3.internal.e.a$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a$a.class */
    static final class C2022a extends AbstractC2033c {

        /* renamed from: a */
        private final Object f5082a;

        /* renamed from: b */
        private final Method f5083b;

        C2022a(Object obj, Method method) {
            this.f5082a = obj;
            this.f5083b = method;
        }

        @Override // okhttp3.internal.p096f.AbstractC2033c
        /* renamed from: a */
        public List<Certificate> mo2220a(List<Certificate> list, String str) {
            try {
                return (List) this.f5083b.invoke(this.f5082a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C2022a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* renamed from: okhttp3.internal.e.a$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a$b.class */
    static final class C2023b implements AbstractC2035e {

        /* renamed from: a */
        private final X509TrustManager f5084a;

        /* renamed from: b */
        private final Method f5085b;

        C2023b(X509TrustManager x509TrustManager, Method method) {
            this.f5085b = method;
            this.f5084a = x509TrustManager;
        }

        @Override // okhttp3.internal.p096f.AbstractC2035e
        /* renamed from: a */
        public X509Certificate mo2212a(X509Certificate x509Certificate) {
            X509Certificate x509Certificate2;
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f5085b.invoke(this.f5084a, x509Certificate);
                x509Certificate2 = null;
                if (trustAnchor != null) {
                    x509Certificate2 = trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e) {
                throw C1999c.m2344a("unable to get issues and signature", (Exception) e);
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
            if (!(obj instanceof C2023b)) {
                return false;
            }
            C2023b c2023b = (C2023b) obj;
            if (!this.f5084a.equals(c2023b.f5084a) || !this.f5085b.equals(c2023b.f5085b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f5084a.hashCode() + (this.f5085b.hashCode() * 31);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: okhttp3.internal.e.a$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a$c.class */
    public static final class C2024c {

        /* renamed from: a */
        private final Method f5086a;

        /* renamed from: b */
        private final Method f5087b;

        /* renamed from: c */
        private final Method f5088c;

        C2024c(Method method, Method method2, Method method3) {
            this.f5086a = method;
            this.f5087b = method2;
            this.f5088c = method3;
        }

        /* renamed from: a */
        static C2024c m2251a() {
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
            return new C2024c(method3, method, method2);
        }

        /* renamed from: a */
        Object m2249a(String str) {
            Method method = this.f5086a;
            if (method != null) {
                try {
                    Object invoke = method.invoke(null, new Object[0]);
                    this.f5087b.invoke(invoke, str);
                    return invoke;
                } catch (Exception e) {
                    return null;
                }
            }
            return null;
        }

        /* renamed from: a */
        boolean m2250a(Object obj) {
            boolean z = false;
            if (obj != null) {
                try {
                    this.f5088c.invoke(obj, new Object[0]);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
            }
            return z;
        }
    }

    C2021a(Class<?> cls, C2029e<Socket> c2029e, C2029e<Socket> c2029e2, C2029e<Socket> c2029e3, C2029e<Socket> c2029e4) {
        this.f5076a = cls;
        this.f5077b = c2029e;
        this.f5078c = c2029e2;
        this.f5079d = c2029e3;
        this.f5080e = c2029e4;
    }

    /* renamed from: a */
    public static C2030f m2255a() {
        Class<?> cls;
        C2029e c2029e;
        C2029e c2029e2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            C2029e c2029e3 = new C2029e(null, "setUseSessionTickets", Boolean.TYPE);
            C2029e c2029e4 = new C2029e(null, "setHostname", String.class);
            if (m2253b()) {
                c2029e2 = new C2029e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                c2029e = new C2029e(null, "setAlpnProtocols", byte[].class);
            } else {
                c2029e2 = null;
                c2029e = null;
            }
            return new C2021a(cls, c2029e3, c2029e4, c2029e2, c2029e);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    /* renamed from: a */
    private boolean m2254a(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            return m2252b(str, cls, obj);
        }
    }

    /* renamed from: b */
    private static boolean m2253b() {
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

    /* renamed from: b */
    private boolean m2252b(String str, Class<?> cls, Object obj) {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            return super.mo2228b(str);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public Object mo2236a(String str) {
        return this.f5081f.m2249a(str);
    }

    @Override // okhttp3.internal.p095e.C2030f
    @Nullable
    /* renamed from: a */
    public String mo2232a(SSLSocket sSLSocket) {
        C2029e<Socket> c2029e = this.f5079d;
        if (c2029e != null && c2029e.m2242a((C2029e<Socket>) sSLSocket)) {
            byte[] bArr = (byte[]) this.f5079d.m2238d(sSLSocket, new Object[0]);
            String str = null;
            if (bArr != null) {
                str = new String(bArr, C1999c.f4986e);
            }
            return str;
        }
        return null;
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public AbstractC2033c mo2230a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C2022a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.mo2230a(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2237a(int i, String str, Throwable th) {
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

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2235a(String str, Object obj) {
        if (!this.f5081f.m2250a(obj)) {
            mo2237a(5, str, (Throwable) null);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2234a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!C1999c.m2352a(e)) {
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

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2231a(SSLSocket sSLSocket, String str, List<EnumC2101x> list) {
        if (str != null) {
            this.f5077b.m2240b(sSLSocket, true);
            this.f5078c.m2240b(sSLSocket, str);
        }
        C2029e<Socket> c2029e = this.f5080e;
        if (c2029e == null || !c2029e.m2242a((C2029e<Socket>) sSLSocket)) {
            return;
        }
        this.f5080e.m2238d(sSLSocket, m2227b(list));
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: b */
    public AbstractC2035e mo2225b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C2023b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return super.mo2225b(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: b */
    public boolean mo2228b(String str) {
        Exception e;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return m2254a(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return super.mo2228b(str);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw C1999c.m2344a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw C1999c.m2344a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw C1999c.m2344a("unable to determine cleartext support", e);
        }
    }
}

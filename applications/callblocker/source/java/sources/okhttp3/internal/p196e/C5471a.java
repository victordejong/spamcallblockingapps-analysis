package okhttp3.internal.p196e;

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
import okhttp3.EnumC5553y;
import okhttp3.internal.C5449c;
import okhttp3.internal.p197f.AbstractC5483c;
import okhttp3.internal.p197f.AbstractC5485e;
/* renamed from: okhttp3.internal.e.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a.class */
public class C5471a extends C5480f {

    /* renamed from: a */
    private final Class<?> f22850a;

    /* renamed from: b */
    private final C5479e<Socket> f22851b;

    /* renamed from: c */
    private final C5479e<Socket> f22852c;

    /* renamed from: d */
    private final C5479e<Socket> f22853d;

    /* renamed from: e */
    private final C5479e<Socket> f22854e;

    /* renamed from: f */
    private final C5474c f22855f = C5474c.m569a();

    /* renamed from: okhttp3.internal.e.a$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a$a.class */
    static final class C5472a extends AbstractC5483c {

        /* renamed from: a */
        private final Object f22856a;

        /* renamed from: b */
        private final Method f22857b;

        C5472a(Object obj, Method method) {
            this.f22856a = obj;
            this.f22857b = method;
        }

        @Override // okhttp3.internal.p197f.AbstractC5483c
        /* renamed from: a */
        public List<Certificate> mo538a(List<Certificate> list, String str) {
            try {
                return (List) this.f22857b.invoke(this.f22856a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C5472a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* renamed from: okhttp3.internal.e.a$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a$b.class */
    static final class C5473b implements AbstractC5485e {

        /* renamed from: a */
        private final X509TrustManager f22858a;

        /* renamed from: b */
        private final Method f22859b;

        C5473b(X509TrustManager x509TrustManager, Method method) {
            this.f22859b = method;
            this.f22858a = x509TrustManager;
        }

        @Override // okhttp3.internal.p197f.AbstractC5485e
        /* renamed from: a */
        public X509Certificate mo530a(X509Certificate x509Certificate) {
            X509Certificate x509Certificate2;
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f22859b.invoke(this.f22858a, x509Certificate);
                x509Certificate2 = trustAnchor != null ? trustAnchor.getTrustedCert() : null;
            } catch (IllegalAccessException e) {
                throw C5449c.m664a("unable to get issues and signature", (Exception) e);
            } catch (InvocationTargetException e2) {
                x509Certificate2 = null;
            }
            return x509Certificate2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj != this) {
                if (!(obj instanceof C5473b)) {
                    z = false;
                } else {
                    C5473b c5473b = (C5473b) obj;
                    if (!this.f22858a.equals(c5473b.f22858a) || !this.f22859b.equals(c5473b.f22859b)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return this.f22858a.hashCode() + (this.f22859b.hashCode() * 31);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: okhttp3.internal.e.a$c */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/a$c.class */
    public static final class C5474c {

        /* renamed from: a */
        private final Method f22860a;

        /* renamed from: b */
        private final Method f22861b;

        /* renamed from: c */
        private final Method f22862c;

        C5474c(Method method, Method method2, Method method3) {
            this.f22860a = method;
            this.f22861b = method2;
            this.f22862c = method3;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0038 -> B:3:0x002c). Please submit an issue!!! */
        /* renamed from: a */
        static C5474c m569a() {
            Method method;
            Method method2;
            Method method3;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method3 = cls.getMethod("get", new Class[0]);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception e) {
                method = null;
                method2 = null;
                method3 = null;
            }
            return new C5474c(method3, method2, method);
        }

        /* renamed from: a */
        Object m567a(String str) {
            Object obj;
            if (this.f22860a != null) {
                try {
                    Object invoke = this.f22860a.invoke(null, new Object[0]);
                    this.f22861b.invoke(invoke, str);
                    obj = invoke;
                } catch (Exception e) {
                }
                return obj;
            }
            obj = null;
            return obj;
        }

        /* renamed from: a */
        boolean m568a(Object obj) {
            boolean z = false;
            if (obj != null) {
                try {
                    this.f22862c.invoke(obj, new Object[0]);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
            }
            return z;
        }
    }

    C5471a(Class<?> cls, C5479e<Socket> c5479e, C5479e<Socket> c5479e2, C5479e<Socket> c5479e3, C5479e<Socket> c5479e4) {
        this.f22850a = cls;
        this.f22851b = c5479e;
        this.f22852c = c5479e2;
        this.f22853d = c5479e3;
        this.f22854e = c5479e4;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0071 -> B:3:0x0006). Please submit an issue!!! */
    /* renamed from: a */
    public static C5480f m573a() {
        C5471a c5471a;
        Class<?> cls;
        C5479e c5479e;
        C5479e c5479e2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            C5479e c5479e3 = new C5479e(null, "setUseSessionTickets", Boolean.TYPE);
            C5479e c5479e4 = new C5479e(null, "setHostname", String.class);
            if (m571b()) {
                c5479e2 = new C5479e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                c5479e = new C5479e(null, "setAlpnProtocols", byte[].class);
            } else {
                c5479e = null;
                c5479e2 = null;
            }
            c5471a = new C5471a(cls, c5479e3, c5479e4, c5479e2, c5479e);
        } catch (ClassNotFoundException e2) {
            c5471a = null;
        }
        return c5471a;
    }

    /* renamed from: a */
    private boolean m572a(String str, Class<?> cls, Object obj) {
        boolean m570b;
        try {
            m570b = ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            m570b = m570b(str, cls, obj);
        }
        return m570b;
    }

    /* renamed from: b */
    private static boolean m571b() {
        boolean z = true;
        if (Security.getProvider("GMSCore_OpenSSL") == null) {
            try {
                Class.forName("android.net.Network");
            } catch (ClassNotFoundException e) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private boolean m570b(String str, Class<?> cls, Object obj) {
        boolean mo545b;
        try {
            mo545b = ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            mo545b = super.mo545b(str);
        }
        return mo545b;
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public Object mo553a(String str) {
        return this.f22855f.m567a(str);
    }

    @Override // okhttp3.internal.p196e.C5480f
    @Nullable
    /* renamed from: a */
    public String mo549a(SSLSocket sSLSocket) {
        String str = null;
        if (this.f22853d != null && this.f22853d.m560a((C5479e<Socket>) sSLSocket)) {
            byte[] bArr = (byte[]) this.f22853d.m556d(sSLSocket, new Object[0]);
            str = bArr != null ? new String(bArr, C5449c.f22760e) : null;
        }
        return str;
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public AbstractC5483c mo547a(X509TrustManager x509TrustManager) {
        C5472a mo547a;
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            mo547a = new C5472a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            mo547a = super.mo547a(x509TrustManager);
        }
        return mo547a;
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo554a(int i, String str, Throwable th) {
        int min;
        int i2 = i == 5 ? 5 : 3;
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

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo552a(String str, Object obj) {
        if (!this.f22855f.m568a(obj)) {
            mo554a(5, str, (Throwable) null);
        }
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo551a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!C5449c.m672a(e)) {
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

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo548a(SSLSocket sSLSocket, String str, List<EnumC5553y> list) {
        if (str != null) {
            this.f22851b.m558b(sSLSocket, true);
            this.f22852c.m558b(sSLSocket, str);
        }
        if (this.f22854e == null || !this.f22854e.m560a((C5479e<Socket>) sSLSocket)) {
            return;
        }
        this.f22854e.m556d(sSLSocket, m544b(list));
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: b */
    public AbstractC5485e mo542b(X509TrustManager x509TrustManager) {
        C5473b mo542b;
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            mo542b = new C5473b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            mo542b = super.mo542b(x509TrustManager);
        }
        return mo542b;
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: b */
    public boolean mo545b(String str) {
        boolean mo545b;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            mo545b = m572a(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException e) {
            mo545b = super.mo545b(str);
            return mo545b;
        } catch (IllegalAccessException e2) {
            e = e2;
            throw C5449c.m664a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw C5449c.m664a("unable to determine cleartext support", e);
        } catch (NoSuchMethodException e4) {
            mo545b = super.mo545b(str);
            return mo545b;
        } catch (InvocationTargetException e5) {
            e = e5;
            throw C5449c.m664a("unable to determine cleartext support", e);
        }
        return mo545b;
    }
}

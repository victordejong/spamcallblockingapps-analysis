package p290x9;

import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import p011aa.C0053f;
import p204p9.EnumC4131w;
import p214q9.C4171c;
import p310z9.AbstractC5118c;
import p310z9.AbstractC5120e;
import p310z9.C5116a;
import p310z9.C5117b;
/* renamed from: x9.a */
/* loaded from: classes2-dex2jar.jar:x9/a.class */
public class C4936a extends C4945f {

    /* renamed from: c */
    public final C4944e<Socket> f15053c;

    /* renamed from: d */
    public final C4944e<Socket> f15054d;

    /* renamed from: e */
    public final C4944e<Socket> f15055e;

    /* renamed from: f */
    public final C4944e<Socket> f15056f;

    /* renamed from: g */
    public final C4939c f15057g;

    /* renamed from: x9.a$a */
    /* loaded from: classes2-dex2jar.jar:x9/a$a.class */
    public static final class C4937a extends AbstractC5118c {

        /* renamed from: a */
        public final Object f15058a;

        /* renamed from: b */
        public final Method f15059b;

        public C4937a(Object obj, Method method) {
            this.f15058a = obj;
            this.f15059b = method;
        }

        @Override // p310z9.AbstractC5118c
        /* renamed from: a */
        public List<Certificate> mo4a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f15059b.invoke(this.f15058a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof C4937a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* renamed from: x9.a$b */
    /* loaded from: classes2-dex2jar.jar:x9/a$b.class */
    public static final class C4938b implements AbstractC5120e {

        /* renamed from: a */
        public final X509TrustManager f15060a;

        /* renamed from: b */
        public final Method f15061b;

        public C4938b(X509TrustManager x509TrustManager, Method method) {
            this.f15061b = method;
            this.f15060a = x509TrustManager;
        }

        @Override // p310z9.AbstractC5120e
        /* renamed from: a */
        public X509Certificate mo0a(X509Certificate x509Certificate) {
            X509Certificate x509Certificate2;
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f15061b.invoke(this.f15060a, x509Certificate);
                x509Certificate2 = null;
                if (trustAnchor != null) {
                    x509Certificate2 = trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e) {
                throw C4171c.m1335a("unable to get issues and signature", e);
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
            if (!(obj instanceof C4938b)) {
                return false;
            }
            C4938b c4938b = (C4938b) obj;
            if (!this.f15060a.equals(c4938b.f15060a) || !this.f15061b.equals(c4938b.f15061b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f15061b.hashCode() * 31) + this.f15060a.hashCode();
        }
    }

    /* renamed from: x9.a$c */
    /* loaded from: classes2-dex2jar.jar:x9/a$c.class */
    public static final class C4939c {

        /* renamed from: a */
        public final Method f15062a;

        /* renamed from: b */
        public final Method f15063b;

        /* renamed from: c */
        public final Method f15064c;

        public C4939c(Method method, Method method2, Method method3) {
            this.f15062a = method;
            this.f15063b = method2;
            this.f15064c = method3;
        }
    }

    public C4936a(Class<?> cls, C4944e<Socket> c4944e, C4944e<Socket> c4944e2, C4944e<Socket> c4944e3, C4944e<Socket> c4944e4) {
        Method method;
        Method method2;
        Method method3 = null;
        try {
            Class<?> cls2 = Class.forName("dalvik.system.CloseGuard");
            Method method4 = cls2.getMethod("get", new Class[0]);
            method = cls2.getMethod("open", String.class);
            method2 = cls2.getMethod("warnIfOpen", new Class[0]);
            method3 = method4;
        } catch (Exception e) {
            method2 = null;
            method = null;
        }
        this.f15057g = new C4939c(method3, method, method2);
        this.f15053c = c4944e;
        this.f15054d = c4944e2;
        this.f15055e = c4944e3;
        this.f15056f = c4944e4;
    }

    @Override // p290x9.C4945f
    /* renamed from: c */
    public AbstractC5118c mo219c(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new C4937a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return new C5116a(mo218d(x509TrustManager));
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: d */
    public AbstractC5120e mo218d(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C4938b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return new C5117b(x509TrustManager.getAcceptedIssuers());
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: f */
    public void mo216f(SSLSocket sSLSocket, String str, List<EnumC4131w> list) {
        if (str != null) {
            this.f15053c.m223c(sSLSocket, Boolean.TRUE);
            this.f15054d.m223c(sSLSocket, str);
        }
        C4944e<Socket> c4944e = this.f15056f;
        if (c4944e != null) {
            if (!(c4944e.m225a(sSLSocket.getClass()) != null)) {
                return;
            }
            C0053f c0053f = new C0053f();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                EnumC4131w enumC4131w = list.get(i);
                if (enumC4131w != EnumC4131w.HTTP_1_0) {
                    c0053f.m8854Y(enumC4131w.f13030a.length());
                    c0053f.m8848d0(enumC4131w.f13030a);
                }
            }
            this.f15056f.m222d(sSLSocket, c0053f.m8841r());
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: g */
    public void mo215g(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (!C4171c.m1318r(e)) {
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

    @Override // p290x9.C4945f
    /* renamed from: h */
    public SSLContext mo214h() {
        boolean z = true;
        try {
            if (Build.VERSION.SDK_INT >= 22) {
                z = false;
            }
        } catch (NoClassDefFoundError e) {
        }
        if (z) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e3) {
            throw new IllegalStateException("No TLS provider", e3);
        }
    }

    @Override // p290x9.C4945f
    @Nullable
    /* renamed from: i */
    public String mo213i(SSLSocket sSLSocket) {
        C4944e<Socket> c4944e = this.f15055e;
        if (c4944e == null) {
            return null;
        }
        if (!(c4944e.m225a(sSLSocket.getClass()) != null)) {
            return null;
        }
        byte[] bArr = (byte[]) this.f15055e.m222d(sSLSocket, new Object[0]);
        String str = null;
        if (bArr != null) {
            str = new String(bArr, C4171c.f13147d);
        }
        return str;
    }

    @Override // p290x9.C4945f
    /* renamed from: j */
    public Object mo212j(String str) {
        C4939c c4939c = this.f15057g;
        Method method = c4939c.f15062a;
        Object obj = null;
        if (method != null) {
            try {
                obj = method.invoke(null, new Object[0]);
                c4939c.f15063b.invoke(obj, str);
            } catch (Exception e) {
                obj = null;
            }
        }
        return obj;
    }

    @Override // p290x9.C4945f
    /* renamed from: k */
    public boolean mo211k(String str) {
        Exception e;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return m228n(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return true;
        } catch (IllegalAccessException e3) {
            e = e3;
            throw C4171c.m1335a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw C4171c.m1335a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw C4171c.m1335a("unable to determine cleartext support", e);
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: l */
    public void mo210l(int i, String str, @Nullable Throwable th) {
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

    @Override // p290x9.C4945f
    /* renamed from: m */
    public void mo209m(String str, Object obj) {
        C4939c c4939c = this.f15057g;
        Objects.requireNonNull(c4939c);
        boolean z = false;
        if (obj != null) {
            try {
                c4939c.f15064c.invoke(obj, new Object[0]);
                z = true;
            } catch (Exception e) {
                z = false;
            }
        }
        if (!z) {
            mo210l(5, str, null);
        }
    }

    /* renamed from: n */
    public final boolean m228n(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        boolean z = true;
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            try {
                z = ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
            } catch (NoSuchMethodException e2) {
            }
            return z;
        }
    }
}

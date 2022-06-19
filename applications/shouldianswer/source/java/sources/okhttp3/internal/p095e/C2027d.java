package okhttp3.internal.p095e;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.EnumC2101x;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.internal.e.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/d.class */
public class C2027d extends C2030f {

    /* renamed from: a */
    private final Method f5091a;

    /* renamed from: b */
    private final Method f5092b;

    /* renamed from: c */
    private final Method f5093c;

    /* renamed from: d */
    private final Class<?> f5094d;

    /* renamed from: e */
    private final Class<?> f5095e;

    /* renamed from: okhttp3.internal.e.d$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/d$a.class */
    private static class C2028a implements InvocationHandler {

        /* renamed from: a */
        boolean f5096a;

        /* renamed from: b */
        String f5097b;

        /* renamed from: c */
        private final List<String> f5098c;

        C2028a(List<String> list) {
            this.f5098c = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            String[] strArr = objArr;
            if (objArr == null) {
                strArr = C1999c.f4983b;
            }
            if (!name.equals("supports") || Boolean.TYPE != returnType) {
                if (name.equals("unsupported") && Void.TYPE == returnType) {
                    this.f5096a = true;
                    return null;
                } else if (name.equals("protocols") && strArr.length == 0) {
                    return this.f5098c;
                } else {
                    if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || strArr.length != 1 || !(strArr[0] instanceof List)) {
                        if ((!name.equals("protocolSelected") && !name.equals("selected")) || strArr.length != 1) {
                            return method.invoke(this, strArr);
                        }
                        this.f5097b = (String) strArr[0];
                        return null;
                    }
                    List list = (List) strArr[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f5098c.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f5097b = str;
                            return str;
                        }
                    }
                    String str2 = this.f5098c.get(0);
                    this.f5097b = str2;
                    return str2;
                }
            }
            return true;
        }
    }

    C2027d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f5091a = method;
        this.f5092b = method2;
        this.f5093c = method3;
        this.f5094d = cls;
        this.f5095e = cls2;
    }

    /* renamed from: b */
    public static C2030f m2245b() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider");
            return new C2027d(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), cls3, Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            return null;
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    @Nullable
    /* renamed from: a */
    public String mo2232a(SSLSocket sSLSocket) {
        try {
            C2028a c2028a = (C2028a) Proxy.getInvocationHandler(this.f5092b.invoke(null, sSLSocket));
            if (c2028a.f5096a || c2028a.f5097b != null) {
                return c2028a.f5096a ? null : c2028a.f5097b;
            }
            C2030f.m2224c().mo2237a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C1999c.m2344a("unable to get selected protocol", (Exception) e);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: a */
    public void mo2231a(SSLSocket sSLSocket, String str, List<EnumC2101x> list) {
        List<String> a = m2233a(list);
        try {
            this.f5091a.invoke(null, sSLSocket, Proxy.newProxyInstance(C2030f.class.getClassLoader(), new Class[]{this.f5094d, this.f5095e}, new C2028a(a)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C1999c.m2344a("unable to set alpn", (Exception) e);
        }
    }

    @Override // okhttp3.internal.p095e.C2030f
    /* renamed from: b */
    public void mo2226b(SSLSocket sSLSocket) {
        try {
            this.f5093c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C1999c.m2344a("unable to remove alpn", (Exception) e);
        }
    }
}

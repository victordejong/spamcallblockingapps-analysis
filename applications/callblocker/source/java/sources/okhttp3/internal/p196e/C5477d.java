package okhttp3.internal.p196e;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import okhttp3.EnumC5553y;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.internal.e.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/e/d.class */
public class C5477d extends C5480f {

    /* renamed from: a */
    private final Method f22865a;

    /* renamed from: b */
    private final Method f22866b;

    /* renamed from: c */
    private final Method f22867c;

    /* renamed from: d */
    private final Class<?> f22868d;

    /* renamed from: e */
    private final Class<?> f22869e;

    /* renamed from: okhttp3.internal.e.d$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/e/d$a.class */
    private static class C5478a implements InvocationHandler {

        /* renamed from: a */
        boolean f22870a;

        /* renamed from: b */
        String f22871b;

        /* renamed from: c */
        private final List<String> f22872c;

        C5478a(List<String> list) {
            this.f22872c = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Boolean invoke;
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            String[] strArr = objArr;
            if (objArr == null) {
                strArr = C5449c.f22757b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                invoke = true;
            } else if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f22870a = true;
                invoke = null;
            } else if (name.equals("protocols") && strArr.length == 0) {
                invoke = this.f22872c;
            } else if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && strArr.length == 1 && (strArr[0] instanceof List)) {
                List list = (List) strArr[0];
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        String str = this.f22872c.get(0);
                        this.f22871b = str;
                        invoke = str;
                        break;
                    } else if (this.f22872c.contains(list.get(i))) {
                        String str2 = (String) list.get(i);
                        this.f22871b = str2;
                        invoke = str2;
                        break;
                    } else {
                        i++;
                    }
                }
            } else if ((name.equals("protocolSelected") || name.equals("selected")) && strArr.length == 1) {
                this.f22871b = (String) strArr[0];
                invoke = null;
            } else {
                invoke = method.invoke(this, strArr);
            }
            return invoke;
        }
    }

    C5477d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f22865a = method;
        this.f22866b = method2;
        this.f22867c = method3;
        this.f22868d = cls;
        this.f22869e = cls2;
    }

    /* renamed from: b */
    public static C5480f m563b() {
        C5477d c5477d;
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            c5477d = new C5477d(cls.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            c5477d = null;
        }
        return c5477d;
    }

    @Override // okhttp3.internal.p196e.C5480f
    @Nullable
    /* renamed from: a */
    public String mo549a(SSLSocket sSLSocket) {
        String str;
        try {
            C5478a c5478a = (C5478a) Proxy.getInvocationHandler(this.f22866b.invoke(null, sSLSocket));
            if (c5478a.f22870a || c5478a.f22871b != null) {
                str = c5478a.f22870a ? null : c5478a.f22871b;
            } else {
                C5480f.m541c().mo554a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                str = null;
            }
            return str;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C5449c.m664a("unable to get selected protocol", (Exception) e);
        }
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: a */
    public void mo548a(SSLSocket sSLSocket, String str, List<EnumC5553y> list) {
        List<String> a = m550a(list);
        try {
            this.f22865a.invoke(null, sSLSocket, Proxy.newProxyInstance(C5480f.class.getClassLoader(), new Class[]{this.f22868d, this.f22869e}, new C5478a(a)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C5449c.m664a("unable to set alpn", (Exception) e);
        }
    }

    @Override // okhttp3.internal.p196e.C5480f
    /* renamed from: b */
    public void mo543b(SSLSocket sSLSocket) {
        try {
            this.f22867c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C5449c.m664a("unable to remove alpn", (Exception) e);
        }
    }
}

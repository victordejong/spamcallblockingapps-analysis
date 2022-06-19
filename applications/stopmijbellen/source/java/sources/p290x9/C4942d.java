package p290x9;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import p204p9.EnumC4131w;
import p214q9.C4171c;
/* renamed from: x9.d */
/* loaded from: classes2-dex2jar.jar:x9/d.class */
public class C4942d extends C4945f {

    /* renamed from: c */
    public final Method f15067c;

    /* renamed from: d */
    public final Method f15068d;

    /* renamed from: e */
    public final Method f15069e;

    /* renamed from: f */
    public final Class<?> f15070f;

    /* renamed from: g */
    public final Class<?> f15071g;

    /* renamed from: x9.d$a */
    /* loaded from: classes2-dex2jar.jar:x9/d$a.class */
    public static class C4943a implements InvocationHandler {

        /* renamed from: a */
        public final List<String> f15072a;

        /* renamed from: b */
        public boolean f15073b;

        /* renamed from: c */
        public String f15074c;

        public C4943a(List<String> list) {
            this.f15072a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            String[] strArr = objArr;
            if (objArr == null) {
                strArr = C4171c.f13145b;
            }
            if (!name.equals("supports") || Boolean.TYPE != returnType) {
                if (name.equals("unsupported") && Void.TYPE == returnType) {
                    this.f15073b = true;
                    return null;
                } else if (name.equals("protocols") && strArr.length == 0) {
                    return this.f15072a;
                } else {
                    if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || strArr.length != 1 || !(strArr[0] instanceof List)) {
                        if ((!name.equals("protocolSelected") && !name.equals("selected")) || strArr.length != 1) {
                            return method.invoke(this, strArr);
                        }
                        this.f15074c = (String) strArr[0];
                        return null;
                    }
                    List list = (List) strArr[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f15072a.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f15074c = str;
                            return str;
                        }
                    }
                    String str2 = this.f15072a.get(0);
                    this.f15074c = str2;
                    return str2;
                }
            }
            return Boolean.TRUE;
        }
    }

    public C4942d(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f15067c = method;
        this.f15068d = method2;
        this.f15069e = method3;
        this.f15070f = cls;
        this.f15071g = cls2;
    }

    @Override // p290x9.C4945f
    /* renamed from: a */
    public void mo221a(SSLSocket sSLSocket) {
        try {
            this.f15069e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4171c.m1335a("unable to remove alpn", e);
        }
    }

    @Override // p290x9.C4945f
    /* renamed from: f */
    public void mo216f(SSLSocket sSLSocket, String str, List<EnumC4131w> list) {
        List<String> m220b = C4945f.m220b(list);
        try {
            this.f15067c.invoke(null, sSLSocket, Proxy.newProxyInstance(C4945f.class.getClassLoader(), new Class[]{this.f15070f, this.f15071g}, new C4943a(m220b)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4171c.m1335a("unable to set alpn", e);
        }
    }

    @Override // p290x9.C4945f
    @Nullable
    /* renamed from: i */
    public String mo213i(SSLSocket sSLSocket) {
        try {
            C4943a c4943a = (C4943a) Proxy.getInvocationHandler(this.f15068d.invoke(null, sSLSocket));
            boolean z = c4943a.f15073b;
            if (z || c4943a.f15074c != null) {
                return z ? null : c4943a.f15074c;
            }
            C4945f.f15078a.mo210l(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4171c.m1335a("unable to get selected protocol", e);
        }
    }
}

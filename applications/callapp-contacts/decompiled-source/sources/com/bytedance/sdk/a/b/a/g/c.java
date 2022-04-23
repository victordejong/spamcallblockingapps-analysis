package com.bytedance.sdk.a.b.a.g;

import com.bytedance.sdk.a.b.w;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/c.class */
public class c extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Method f8038a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f8039b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f8040c;

    /* renamed from: d  reason: collision with root package name */
    private final Class<?> f8041d;
    private final Class<?> e;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/c$a.class */
    static class a implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        boolean f8042a;

        /* renamed from: b  reason: collision with root package name */
        String f8043b;

        /* renamed from: c  reason: collision with root package name */
        private final List<String> f8044c;

        a(List<String> list) {
            this.f8044c = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            Object[] objArr2 = objArr;
            if (objArr == null) {
                objArr2 = com.bytedance.sdk.a.b.a.c.f7879b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f8042a = true;
                return null;
            } else if (name.equals("protocols") && objArr2.length == 0) {
                return this.f8044c;
            } else {
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr2.length == 1 && (objArr2[0] instanceof List)) {
                    List list = (List) objArr2[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f8044c.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f8043b = str;
                            return str;
                        }
                    }
                    String str2 = this.f8044c.get(0);
                    this.f8043b = str2;
                    return str2;
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr2.length != 1) {
                    return method.invoke(this, objArr2);
                } else {
                    this.f8043b = (String) objArr2[0];
                    return null;
                }
            }
        }
    }

    c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f8038a = method;
        this.f8039b = method2;
        this.f8040c = method3;
        this.f8041d = cls;
        this.e = cls2;
    }

    public static e a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider");
            return new c(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), cls3, Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public String a(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f8039b.invoke(null, sSLSocket));
            if (!aVar.f8042a && aVar.f8043b == null) {
                e.b().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            } else if (aVar.f8042a) {
                return null;
            } else {
                return aVar.f8043b;
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw com.bytedance.sdk.a.b.a.c.a("unable to get selected protocol", (Exception) e);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public void a(SSLSocket sSLSocket, String str, List<w> list) {
        List<String> a2 = a(list);
        try {
            this.f8038a.invoke(null, sSLSocket, Proxy.newProxyInstance(e.class.getClassLoader(), new Class[]{this.f8041d, this.e}, new a(a2)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw com.bytedance.sdk.a.b.a.c.a("unable to set alpn", (Exception) e);
        }
    }

    @Override // com.bytedance.sdk.a.b.a.g.e
    public void b(SSLSocket sSLSocket) {
        try {
            this.f8040c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw com.bytedance.sdk.a.b.a.c.a("unable to remove alpn", (Exception) e);
        }
    }
}

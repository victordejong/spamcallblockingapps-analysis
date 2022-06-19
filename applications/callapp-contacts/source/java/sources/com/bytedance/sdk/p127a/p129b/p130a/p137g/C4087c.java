package com.bytedance.sdk.p127a.p129b.p130a.p137g;

import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;
/* renamed from: com.bytedance.sdk.a.b.a.g.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/c.class */
public class C4087c extends C4090e {

    /* renamed from: a */
    private final Method f14845a;

    /* renamed from: b */
    private final Method f14846b;

    /* renamed from: c */
    private final Method f14847c;

    /* renamed from: d */
    private final Class<?> f14848d;

    /* renamed from: e */
    private final Class<?> f14849e;

    /* renamed from: com.bytedance.sdk.a.b.a.g.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/g/c$a.class */
    static class C4088a implements InvocationHandler {

        /* renamed from: a */
        boolean f14850a;

        /* renamed from: b */
        String f14851b;

        /* renamed from: c */
        private final List<String> f14852c;

        C4088a(List<String> list) {
            this.f14852c = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            String[] strArr = objArr;
            if (objArr == null) {
                strArr = C4015c.f14575b;
            }
            if (!name.equals("supports") || Boolean.TYPE != returnType) {
                if (name.equals("unsupported") && Void.TYPE == returnType) {
                    this.f14850a = true;
                    return null;
                } else if (name.equals("protocols") && strArr.length == 0) {
                    return this.f14852c;
                } else {
                    if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || strArr.length != 1 || !(strArr[0] instanceof List)) {
                        if ((!name.equals("protocolSelected") && !name.equals("selected")) || strArr.length != 1) {
                            return method.invoke(this, strArr);
                        }
                        this.f14851b = (String) strArr[0];
                        return null;
                    }
                    List list = (List) strArr[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f14852c.contains(list.get(i))) {
                            String str = (String) list.get(i);
                            this.f14851b = str;
                            return str;
                        }
                    }
                    String str2 = this.f14852c.get(0);
                    this.f14851b = str2;
                    return str2;
                }
            }
            return Boolean.TRUE;
        }
    }

    C4087c(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f14845a = method;
        this.f14846b = method2;
        this.f14847c = method3;
        this.f14848d = cls;
        this.f14849e = cls2;
    }

    /* renamed from: a */
    public static C4090e m36660a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider");
            return new C4087c(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), cls3, Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public String mo36646a(SSLSocket sSLSocket) {
        try {
            C4088a c4088a = (C4088a) Proxy.getInvocationHandler(this.f14846b.invoke(null, sSLSocket));
            if (!c4088a.f14850a && c4088a.f14851b == null) {
                C4090e.m36643b().mo36651a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            } else if (!c4088a.f14850a) {
                return c4088a.f14851b;
            } else {
                return null;
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4015c.m36905a("unable to get selected protocol", (Exception) e);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: a */
    public void mo36645a(SSLSocket sSLSocket, String str, List<EnumC4143w> list) {
        List<String> a = m36647a(list);
        try {
            this.f14845a.invoke(null, sSLSocket, Proxy.newProxyInstance(C4090e.class.getClassLoader(), new Class[]{this.f14848d, this.f14849e}, new C4088a(a)));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4015c.m36905a("unable to set alpn", (Exception) e);
        }
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p137g.C4090e
    /* renamed from: b */
    public void mo36640b(SSLSocket sSLSocket) {
        try {
            this.f14847c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw C4015c.m36905a("unable to remove alpn", (Exception) e);
        }
    }
}

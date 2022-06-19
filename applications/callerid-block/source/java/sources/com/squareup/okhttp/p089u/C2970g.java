package com.squareup.okhttp.p089u;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import okio.Buffer;
/* renamed from: com.squareup.okhttp.u.g */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/g.class */
public class C2970g {

    /* renamed from: a */
    private static final C2970g f12503a = m674e();

    /* renamed from: com.squareup.okhttp.u.g$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/g$a.class */
    public static class C2971a extends C2970g {

        /* renamed from: b */
        private final C2969f<Socket> f12504b;

        /* renamed from: c */
        private final C2969f<Socket> f12505c;

        /* renamed from: d */
        private final Method f12506d;

        /* renamed from: e */
        private final Method f12507e;

        /* renamed from: f */
        private final C2969f<Socket> f12508f;

        /* renamed from: g */
        private final C2969f<Socket> f12509g;

        public C2971a(C2969f<Socket> c2969f, C2969f<Socket> c2969f2, Method method, Method method2, C2969f<Socket> c2969f3, C2969f<Socket> c2969f4) {
            this.f12504b = c2969f;
            this.f12505c = c2969f2;
            this.f12506d = method;
            this.f12507e = method2;
            this.f12508f = c2969f3;
            this.f12509g = c2969f4;
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: c */
        public void mo666c(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                this.f12504b.m678e(sSLSocket, Boolean.TRUE);
                this.f12505c.m678e(sSLSocket, str);
            }
            C2969f<Socket> c2969f = this.f12509g;
            if (c2969f == null || !c2969f.m676g(sSLSocket)) {
                return;
            }
            this.f12509g.m677f(sSLSocket, C2970g.m675b(list));
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: d */
        public void mo670d(Socket socket, InetSocketAddress inetSocketAddress, int i) {
            try {
                socket.connect(inetSocketAddress, i);
            } catch (SecurityException e) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e);
                throw iOException;
            }
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: h */
        public String mo665h(SSLSocket sSLSocket) {
            C2969f<Socket> c2969f = this.f12508f;
            if (c2969f != null && c2969f.m676g(sSLSocket)) {
                byte[] bArr = (byte[]) this.f12508f.m677f(sSLSocket, new Object[0]);
                String str = null;
                if (bArr != null) {
                    str = new String(bArr, C2975i.f12521c);
                }
                return str;
            }
            return null;
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: j */
        public void mo669j(Socket socket) {
            Method method = this.f12506d;
            if (method == null) {
                return;
            }
            try {
                method.invoke(null, socket);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: k */
        public void mo668k(Socket socket) {
            Method method = this.f12507e;
            if (method == null) {
                return;
            }
            try {
                method.invoke(null, socket);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: com.squareup.okhttp.u.g$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/g$b.class */
    public static class C2972b extends C2970g {

        /* renamed from: b */
        private final Method f12510b;

        /* renamed from: c */
        private final Method f12511c;

        /* renamed from: d */
        private final Method f12512d;

        /* renamed from: e */
        private final Class<?> f12513e;

        /* renamed from: f */
        private final Class<?> f12514f;

        public C2972b(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
            this.f12510b = method;
            this.f12511c = method2;
            this.f12512d = method3;
            this.f12513e = cls;
            this.f12514f = cls2;
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: a */
        public void mo667a(SSLSocket sSLSocket) {
            try {
                this.f12512d.invoke(null, sSLSocket);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError();
            }
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: c */
        public void mo666c(SSLSocket sSLSocket, String str, List<Protocol> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Protocol protocol = list.get(i);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f12510b.invoke(null, sSLSocket, Proxy.newProxyInstance(C2970g.class.getClassLoader(), new Class[]{this.f12513e, this.f12514f}, new C2973c(arrayList)));
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.squareup.okhttp.p089u.C2970g
        /* renamed from: h */
        public String mo665h(SSLSocket sSLSocket) {
            try {
                C2973c c2973c = (C2973c) Proxy.getInvocationHandler(this.f12511c.invoke(null, sSLSocket));
                if (c2973c.f12516b || c2973c.f12517c != null) {
                    return c2973c.f12516b ? null : c2973c.f12517c;
                }
                AbstractC2965b.f12497a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                return null;
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError();
            }
        }
    }

    /* renamed from: com.squareup.okhttp.u.g$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/g$c.class */
    private static class C2973c implements InvocationHandler {

        /* renamed from: a */
        private final List<String> f12515a;

        /* renamed from: b */
        private boolean f12516b;

        /* renamed from: c */
        private String f12517c;

        public C2973c(List<String> list) {
            this.f12515a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            String[] strArr = objArr;
            if (objArr == null) {
                strArr = C2975i.f12520b;
            }
            if (!name.equals("supports") || Boolean.TYPE != returnType) {
                if (name.equals("unsupported") && Void.TYPE == returnType) {
                    this.f12516b = true;
                    return null;
                } else if (name.equals("protocols") && strArr.length == 0) {
                    return this.f12515a;
                } else {
                    if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || strArr.length != 1 || !(strArr[0] instanceof List)) {
                        if ((!name.equals("protocolSelected") && !name.equals("selected")) || strArr.length != 1) {
                            return method.invoke(this, strArr);
                        }
                        this.f12517c = (String) strArr[0];
                        return null;
                    }
                    List list = (List) strArr[0];
                    int size = list.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            obj2 = this.f12515a.get(0);
                            break;
                        } else if (this.f12515a.contains(list.get(i))) {
                            obj2 = list.get(i);
                            break;
                        } else {
                            i++;
                        }
                    }
                    String str = (String) obj2;
                    this.f12517c = str;
                    return str;
                }
            }
            return Boolean.TRUE;
        }
    }

    /* renamed from: b */
    static byte[] m675b(List<Protocol> list) {
        Buffer buffer = new Buffer();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                buffer.writeByte(protocol.toString().length());
                buffer.writeUtf8(protocol.toString());
            }
        }
        return buffer.readByteArray();
    }

    /* renamed from: e */
    private static C2970g m674e() {
        Method method;
        Method method2;
        C2969f c2969f;
        try {
            try {
                Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e) {
                Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            }
            C2969f c2969f2 = null;
            C2969f c2969f3 = new C2969f(null, "setUseSessionTickets", Boolean.TYPE);
            C2969f c2969f4 = new C2969f(null, "setHostname", String.class);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                method2 = cls.getMethod("tagSocket", Socket.class);
                try {
                    method = cls.getMethod("untagSocket", Socket.class);
                    try {
                        Class.forName("android.net.Network");
                        c2969f = new C2969f(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                        try {
                            c2969f2 = new C2969f(null, "setAlpnProtocols", byte[].class);
                        } catch (ClassNotFoundException | NoSuchMethodException e2) {
                        }
                    } catch (ClassNotFoundException | NoSuchMethodException e3) {
                        c2969f = null;
                    }
                } catch (ClassNotFoundException | NoSuchMethodException e4) {
                    method = null;
                    c2969f = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException e5) {
                c2969f = null;
                method2 = null;
                method = null;
            }
            return new C2971a(c2969f3, c2969f4, method2, method, c2969f, c2969f2);
        } catch (ClassNotFoundException e6) {
            try {
                Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                return new C2972b(cls2.getMethod("put", SSLSocket.class, cls3), cls2.getMethod("get", SSLSocket.class), cls2.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
            } catch (ClassNotFoundException | NoSuchMethodException e7) {
                return new C2970g();
            }
        }
    }

    /* renamed from: f */
    public static C2970g m673f() {
        return f12503a;
    }

    /* renamed from: a */
    public void mo667a(SSLSocket sSLSocket) {
    }

    /* renamed from: c */
    public void mo666c(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    /* renamed from: d */
    public void mo670d(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    /* renamed from: g */
    public String m672g() {
        return "OkHttp";
    }

    /* renamed from: h */
    public String mo665h(SSLSocket sSLSocket) {
        return null;
    }

    /* renamed from: i */
    public void m671i(String str) {
        System.out.println(str);
    }

    /* renamed from: j */
    public void mo669j(Socket socket) {
    }

    /* renamed from: k */
    public void mo668k(Socket socket) {
    }
}

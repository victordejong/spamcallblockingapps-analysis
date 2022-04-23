package com.b.a.a;

import com.b.a.t;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
/* loaded from: classes-dex2jar.jar:com/b/a/a/f.class */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final f f3293a = c();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/f$a.class */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        private final e<Socket> f3294a;

        /* renamed from: b  reason: collision with root package name */
        private final e<Socket> f3295b;
        private final Method c;
        private final Method d;
        private final e<Socket> e;
        private final e<Socket> f;

        public a(e<Socket> eVar, e<Socket> eVar2, Method method, Method method2, e<Socket> eVar3, e<Socket> eVar4) {
            this.f3294a = eVar;
            this.f3295b = eVar2;
            this.c = method;
            this.d = method2;
            this.e = eVar3;
            this.f = eVar4;
        }

        @Override // com.b.a.a.f
        public final void a(Socket socket) {
            if (this.c != null) {
                try {
                    this.c.invoke(null, socket);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2.getCause());
                }
            }
        }

        @Override // com.b.a.a.f
        public final void a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
            try {
                socket.connect(inetSocketAddress, i);
            } catch (SecurityException e) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e);
                throw iOException;
            }
        }

        @Override // com.b.a.a.f
        public final void a(SSLSocket sSLSocket, String str, List<t> list) {
            if (str != null) {
                this.f3294a.a(sSLSocket, true);
                this.f3295b.a(sSLSocket, str);
            }
            if (this.f != null && this.f.a((e<Socket>) sSLSocket)) {
                b.c cVar = new b.c();
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    t tVar = list.get(i);
                    if (tVar != t.HTTP_1_0) {
                        cVar.g(tVar.toString().length());
                        cVar.b(tVar.toString());
                    }
                }
                this.f.b(sSLSocket, cVar.m());
            }
        }

        @Override // com.b.a.a.f
        public final String b(SSLSocket sSLSocket) {
            String str;
            if (this.e == null) {
                str = null;
            } else if (!this.e.a((e<Socket>) sSLSocket)) {
                str = null;
            } else {
                byte[] bArr = (byte[]) this.e.b(sSLSocket, new Object[0]);
                str = bArr != null ? new String(bArr, h.c) : null;
            }
            return str;
        }

        @Override // com.b.a.a.f
        public final void b(Socket socket) {
            if (this.d != null) {
                try {
                    this.d.invoke(null, socket);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2.getCause());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/f$b.class */
    public static final class b extends f {

        /* renamed from: a  reason: collision with root package name */
        private final Method f3296a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f3297b;
        private final Method c;
        private final Class<?> d;
        private final Class<?> e;

        public b(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
            this.f3296a = method;
            this.f3297b = method2;
            this.c = method3;
            this.d = cls;
            this.e = cls2;
        }

        @Override // com.b.a.a.f
        public final void a(SSLSocket sSLSocket) {
            try {
                this.c.invoke(null, sSLSocket);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError();
            }
        }

        @Override // com.b.a.a.f
        public final void a(SSLSocket sSLSocket, String str, List<t> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                t tVar = list.get(i);
                if (tVar != t.HTTP_1_0) {
                    arrayList.add(tVar.toString());
                }
            }
            try {
                this.f3296a.invoke(null, sSLSocket, Proxy.newProxyInstance(f.class.getClassLoader(), new Class[]{this.d, this.e}, new c(arrayList)));
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.b.a.a.f
        public final String b(SSLSocket sSLSocket) {
            String str;
            try {
                c cVar = (c) Proxy.getInvocationHandler(this.f3297b.invoke(null, sSLSocket));
                if (cVar.f3299b || cVar.c != null) {
                    str = cVar.f3299b ? null : cVar.c;
                } else {
                    com.b.a.a.a.f3187a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    str = null;
                }
                return str;
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new AssertionError();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/b/a/a/f$c.class */
    private static final class c implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f3298a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f3299b;
        private String c;

        public c(List<String> list) {
            this.f3298a = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            Boolean bool;
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            Object[] objArr2 = objArr;
            if (objArr == null) {
                objArr2 = h.f3302b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                bool = true;
            } else if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f3299b = true;
                bool = null;
            } else if (name.equals("protocols") && objArr2.length == 0) {
                bool = this.f3298a;
            } else if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr2.length == 1 && (objArr2[0] instanceof List)) {
                List list = (List) objArr2[0];
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        String str = this.f3298a.get(0);
                        this.c = str;
                        bool = str;
                        break;
                    } else if (this.f3298a.contains(list.get(i))) {
                        String str2 = (String) list.get(i);
                        this.c = str2;
                        bool = str2;
                        break;
                    } else {
                        i++;
                    }
                }
            } else if ((name.equals("protocolSelected") || name.equals("selected")) && objArr2.length == 1) {
                this.c = (String) objArr2[0];
                bool = null;
            } else {
                bool = method.invoke(this, objArr2);
            }
            return bool;
        }
    }

    public static f a() {
        return f3293a;
    }

    public static URI a(URL url) {
        return url.toURI();
    }

    public static void a(String str) {
        System.out.println(str);
    }

    public static String b() {
        return "OkHttp";
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x009f -> B:4:0x0008). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0164 -> B:14:0x0086). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0174 -> B:14:0x0086). Please submit an issue!!! */
    private static f c() {
        f fVar;
        e eVar;
        e eVar2;
        e eVar3;
        Method method;
        Method method2;
        e eVar4;
        try {
            try {
                Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
            } catch (ClassNotFoundException e) {
                Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
            }
            eVar = new e(null, "setUseSessionTickets", Boolean.TYPE);
            eVar2 = new e(null, "setHostname", String.class);
            try {
                Class<?> cls = Class.forName("android.net.TrafficStats");
                method = cls.getMethod("tagSocket", Socket.class);
                try {
                    method2 = cls.getMethod("untagSocket", Socket.class);
                } catch (ClassNotFoundException e2) {
                    eVar3 = null;
                    method2 = null;
                    eVar4 = null;
                    fVar = new a(eVar, eVar2, method, method2, eVar3, eVar4);
                    return fVar;
                } catch (NoSuchMethodException e3) {
                    eVar3 = null;
                    method2 = null;
                    method = method;
                }
            } catch (ClassNotFoundException e4) {
                method = null;
            } catch (NoSuchMethodException e5) {
                eVar3 = null;
                method2 = null;
                method = null;
            }
        } catch (ClassNotFoundException e6) {
            try {
                Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN");
                fVar = new b(cls2.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls2.getMethod("get", SSLSocket.class), cls2.getMethod(ProductAction.ACTION_REMOVE, SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
            } catch (ClassNotFoundException | NoSuchMethodException e7) {
                fVar = new f();
            }
        }
        try {
            Class.forName("android.net.Network");
            eVar3 = new e(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
            try {
                eVar4 = new e(null, "setAlpnProtocols", byte[].class);
            } catch (ClassNotFoundException e8) {
                eVar4 = null;
                fVar = new a(eVar, eVar2, method, method2, eVar3, eVar4);
                return fVar;
            } catch (NoSuchMethodException e9) {
                eVar4 = null;
                fVar = new a(eVar, eVar2, method, method2, eVar3, eVar4);
                return fVar;
            }
        } catch (ClassNotFoundException e10) {
            eVar3 = null;
            eVar4 = null;
            fVar = new a(eVar, eVar2, method, method2, eVar3, eVar4);
            return fVar;
        } catch (NoSuchMethodException e11) {
            eVar3 = null;
            method = method;
            eVar4 = null;
            fVar = new a(eVar, eVar2, method, method2, eVar3, eVar4);
            return fVar;
        }
        fVar = new a(eVar, eVar2, method, method2, eVar3, eVar4);
        return fVar;
    }

    public void a(Socket socket) {
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void a(SSLSocket sSLSocket, String str, List<t> list) {
    }

    public String b(SSLSocket sSLSocket) {
        return null;
    }

    public void b(Socket socket) {
    }
}

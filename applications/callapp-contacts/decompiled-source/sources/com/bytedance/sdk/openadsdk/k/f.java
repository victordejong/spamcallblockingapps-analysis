package com.bytedance.sdk.openadsdk.k;

import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.k.a.b;
import com.bytedance.sdk.openadsdk.k.b.c;
import com.bytedance.sdk.openadsdk.k.g;
import com.bytedance.sdk.openadsdk.k.g.d;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f.class */
public class f {
    private static volatile f e;

    /* renamed from: a  reason: collision with root package name */
    private volatile ServerSocket f9734a;

    /* renamed from: b  reason: collision with root package name */
    private volatile int f9735b;
    private volatile c f;
    private volatile com.bytedance.sdk.openadsdk.k.a.c g;
    private volatile b h;
    private final SparseArray<Set<g>> i;
    private volatile c k;
    private volatile c l;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f9736c = new AtomicInteger(0);

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f9737d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.k.f.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("video-proxyserver-" + thread.getId());
            return thread;
        }
    });
    private final g.c j = new g.c() { // from class: com.bytedance.sdk.openadsdk.k.f.2
        @Override // com.bytedance.sdk.openadsdk.k.g.c
        public void a(g gVar) {
            synchronized (f.this.i) {
                Set set = (Set) f.this.i.get(gVar.f());
                if (set != null) {
                    set.add(gVar);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.k.g.c
        public void b(g gVar) {
            if (e.f9723c) {
                new StringBuilder("afterExecute, ProxyTask: ").append(gVar);
            }
            int f = gVar.f();
            synchronized (f.this.i) {
                Set set = (Set) f.this.i.get(f);
                if (set != null) {
                    set.remove(gVar);
                }
            }
        }
    };
    private final Runnable m = new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.f.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                int i = 0;
                f.this.f9734a = new ServerSocket(0, 50, InetAddress.getByName("127.0.0.1"));
                f fVar = f.this;
                fVar.f9735b = fVar.f9734a.getLocalPort();
                if (f.this.f9735b == -1) {
                    f.b("socket not bound", "");
                    f.this.e();
                    return;
                }
                j.a("127.0.0.1", f.this.f9735b);
                if (f.this.g() && f.this.f9736c.compareAndSet(0, 1)) {
                    boolean z = e.f9723c;
                    while (f.this.f9736c.get() == 1) {
                        try {
                            try {
                                Socket accept = f.this.f9734a.accept();
                                c cVar = f.this.f;
                                if (cVar != null) {
                                    f.this.f9737d.execute(new g.a().a(cVar).a(f.this.f9737d).a(accept).a(f.this.j).a());
                                } else {
                                    d.a(accept);
                                }
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                f.b("accept error", Log.getStackTraceString(e2));
                                i++;
                                if (i > 3) {
                                    break;
                                }
                            }
                        } catch (Throwable th) {
                            String stackTraceString = Log.getStackTraceString(th);
                            Log.e("TAG_PROXY_ProxyServer", "proxy server crashed!  ".concat(String.valueOf(stackTraceString)));
                            f.b("error", stackTraceString);
                        }
                    }
                    boolean z2 = e.f9723c;
                    f.this.e();
                }
            } catch (IOException e3) {
                if (e.f9723c) {
                    Log.e("TAG_PROXY_ProxyServer", "create ServerSocket error!  " + Log.getStackTraceString(e3));
                }
                f.b("create ServerSocket error", Log.getStackTraceString(e3));
                f.this.e();
            }
        }
    };
    private final AtomicBoolean n = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f$a.class */
    public static final class a implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private final String f9741a;

        /* renamed from: b  reason: collision with root package name */
        private final int f9742b;

        a(String str, int i) {
            this.f9741a = str;
            this.f9742b = i;
        }

        /* renamed from: a */
        public final Boolean call() {
            Throwable th;
            Socket socket;
            Socket socket2;
            try {
                socket = new Socket(this.f9741a, this.f9742b);
                try {
                    socket.setSoTimeout(2000);
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("Ping\n".getBytes(d.f9773a));
                    outputStream.flush();
                    socket2 = socket;
                    if (Payload.RESPONSE_OK.equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                        return Boolean.TRUE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        f.b("ping error", Log.getStackTraceString(th));
                        socket2 = socket;
                        d.a(socket2);
                        return Boolean.FALSE;
                    } finally {
                        d.a(socket);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                socket = null;
            }
            d.a(socket2);
            return Boolean.FALSE;
        }
    }

    private f() {
        SparseArray<Set<g>> sparseArray = new SparseArray<>(2);
        this.i = sparseArray;
        sparseArray.put(0, new HashSet());
        sparseArray.put(1, new HashSet());
    }

    public static f a() {
        if (e == null) {
            synchronized (f.class) {
                try {
                    if (e == null) {
                        e = new f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f9736c.compareAndSet(1, 2) || this.f9736c.compareAndSet(0, 2)) {
            d.a(this.f9734a);
            this.f9737d.shutdownNow();
            f();
        }
    }

    private void f() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.i) {
            int size = this.i.size();
            for (int i = 0; i < size; i++) {
                SparseArray<Set<g>> sparseArray = this.i;
                Set<g> set = sparseArray.get(sparseArray.keyAt(i));
                if (set != null) {
                    arrayList.addAll(set);
                    set.clear();
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((g) it2.next()).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        Future submit = this.f9737d.submit(new a("127.0.0.1", this.f9735b));
        h();
        try {
            if (!((Boolean) submit.get()).booleanValue()) {
                Log.e("TAG_PROXY_ProxyServer", "Ping error");
                b("ping error", "");
                e();
                return false;
            }
            boolean z = e.f9723c;
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            b("ping error", Log.getStackTraceString(th));
            e();
            return false;
        }
    }

    private void h() {
        Socket socket = null;
        Socket socket2 = null;
        try {
            socket2 = this.f9734a.accept();
            socket2.setSoTimeout(2000);
            if ("Ping".equals(new BufferedReader(new InputStreamReader(socket2.getInputStream())).readLine())) {
                OutputStream outputStream = socket2.getOutputStream();
                outputStream.write("OK\n".getBytes(d.f9773a));
                socket2 = socket2;
                socket = socket2;
                outputStream.flush();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            socket2 = socket2;
            b("ping error", Log.getStackTraceString(e2));
        } finally {
            d.a(socket2);
        }
    }

    public String a(boolean z, boolean z2, String str, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            b("url", "url is empty");
            return null;
        } else if (TextUtils.isEmpty(str)) {
            b("key", "key is empty");
            return strArr[0];
        } else if (this.f == null) {
            b("db", "VideoProxyDB is null");
            return strArr[0];
        } else {
            if ((z ? this.h : this.g) == null) {
                b("cache", "Cache is null");
                return strArr[0];
            }
            int i = this.f9736c.get();
            if (i != 1) {
                b(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "ProxyServer is not running, ".concat(String.valueOf(i)));
                return strArr[0];
            }
            List<String> a2 = d.a(strArr);
            if (a2 == null) {
                b("url", "url not start with http/https");
                return strArr[0];
            }
            String a3 = i.a(str, z2 ? str : com.bytedance.sdk.openadsdk.k.g.b.a(str), a2);
            if (a3 == null) {
                b("url", "combine proxy url error");
                return strArr[0];
            } else if (z) {
                return "http://127.0.0.1:" + this.f9735b + "?f=1&" + a3;
            } else {
                return "http://127.0.0.1:" + this.f9735b + "?" + a3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.bytedance.sdk.openadsdk.k.a.c cVar) {
        this.g = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        this.f = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i, String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.i) {
            Set<g> set = this.i.get(i);
            if (set != null) {
                for (g gVar : set) {
                    if (gVar != null && str.equals(gVar.h)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c b() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c c() {
        return this.l;
    }

    public void d() {
        if (this.n.compareAndSet(false, true)) {
            new Thread(this.m).start();
        }
    }
}

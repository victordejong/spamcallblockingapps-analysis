package com.bytedance.sdk.openadsdk.p176k;

import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.p176k.C5022g;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4964b;
import com.bytedance.sdk.openadsdk.p176k.p177a.C4966c;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
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
/* renamed from: com.bytedance.sdk.openadsdk.k.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f.class */
public class C5011f {

    /* renamed from: e */
    private static volatile C5011f f18159e;

    /* renamed from: a */
    private volatile ServerSocket f18160a;

    /* renamed from: b */
    private volatile int f18161b;

    /* renamed from: f */
    private volatile C4982c f18164f;

    /* renamed from: g */
    private volatile C4966c f18165g;

    /* renamed from: h */
    private volatile C4964b f18166h;

    /* renamed from: i */
    private final SparseArray<Set<C5022g>> f18167i;

    /* renamed from: k */
    private volatile C4986c f18169k;

    /* renamed from: l */
    private volatile C4986c f18170l;

    /* renamed from: c */
    private final AtomicInteger f18162c = new AtomicInteger(0);

    /* renamed from: d */
    private final ExecutorService f18163d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.openadsdk.k.f.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("video-proxyserver-" + thread.getId());
            return thread;
        }
    });

    /* renamed from: j */
    private final C5022g.AbstractC5026c f18168j = new C5022g.AbstractC5026c() { // from class: com.bytedance.sdk.openadsdk.k.f.2
        @Override // com.bytedance.sdk.openadsdk.p176k.C5022g.AbstractC5026c
        /* renamed from: a */
        public void mo33237a(C5022g c5022g) {
            synchronized (C5011f.this.f18167i) {
                Set set = (Set) C5011f.this.f18167i.get(c5022g.m33409f());
                if (set != null) {
                    set.add(c5022g);
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.p176k.C5022g.AbstractC5026c
        /* renamed from: b */
        public void mo33235b(C5022g c5022g) {
            if (C5001e.f18140c) {
                new StringBuilder("afterExecute, ProxyTask: ").append(c5022g);
            }
            int f = c5022g.m33409f();
            synchronized (C5011f.this.f18167i) {
                Set set = (Set) C5011f.this.f18167i.get(f);
                if (set != null) {
                    set.remove(c5022g);
                }
            }
        }
    };

    /* renamed from: m */
    private final Runnable f18171m = new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.f.3
        @Override // java.lang.Runnable
        public void run() {
            try {
                int i = 0;
                C5011f.this.f18160a = new ServerSocket(0, 50, InetAddress.getByName("127.0.0.1"));
                C5011f c5011f = C5011f.this;
                c5011f.f18161b = c5011f.f18160a.getLocalPort();
                if (C5011f.this.f18161b == -1) {
                    C5011f.m33304b("socket not bound", "");
                    C5011f.this.m33299e();
                    return;
                }
                C5039j.m33200a("127.0.0.1", C5011f.this.f18161b);
                if (!C5011f.this.m33295g() || !C5011f.this.f18162c.compareAndSet(0, 1)) {
                    return;
                }
                boolean z = C5001e.f18140c;
                while (C5011f.this.f18162c.get() == 1) {
                    try {
                        try {
                            Socket accept = C5011f.this.f18160a.accept();
                            C4982c c4982c = C5011f.this.f18164f;
                            if (c4982c != null) {
                                C5011f.this.f18163d.execute(new C5022g.C5024a().m33256a(c4982c).m33250a(C5011f.this.f18163d).m33251a(accept).m33255a(C5011f.this.f18168j).m33259a());
                            } else {
                                C5030d.m33221a(accept);
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                            C5011f.m33304b("accept error", Log.getStackTraceString(e));
                            i++;
                            if (i > 3) {
                                break;
                            }
                        }
                    } catch (Throwable th) {
                        String stackTraceString = Log.getStackTraceString(th);
                        Log.e("TAG_PROXY_ProxyServer", "proxy server crashed!  ".concat(String.valueOf(stackTraceString)));
                        C5011f.m33304b("error", stackTraceString);
                    }
                }
                boolean z2 = C5001e.f18140c;
                C5011f.this.m33299e();
            } catch (IOException e2) {
                if (C5001e.f18140c) {
                    Log.e("TAG_PROXY_ProxyServer", "create ServerSocket error!  " + Log.getStackTraceString(e2));
                }
                C5011f.m33304b("create ServerSocket error", Log.getStackTraceString(e2));
                C5011f.this.m33299e();
            }
        }
    };

    /* renamed from: n */
    private final AtomicBoolean f18172n = new AtomicBoolean();

    /* renamed from: com.bytedance.sdk.openadsdk.k.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f$a.class */
    public static final class CallableC5015a implements Callable<Boolean> {

        /* renamed from: a */
        private final String f18176a;

        /* renamed from: b */
        private final int f18177b;

        CallableC5015a(String str, int i) {
            this.f18176a = str;
            this.f18177b = i;
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        public final Boolean call() {
            Throwable th;
            Socket socket;
            Socket socket2;
            try {
                socket = new Socket(this.f18176a, this.f18177b);
                try {
                    socket.setSoTimeout(2000);
                    OutputStream outputStream = socket.getOutputStream();
                    outputStream.write("Ping\n".getBytes(C5030d.f18220a));
                    outputStream.flush();
                    socket2 = socket;
                    if (Payload.RESPONSE_OK.equals(new BufferedReader(new InputStreamReader(socket.getInputStream())).readLine())) {
                        Boolean bool = Boolean.TRUE;
                        C5030d.m33221a(socket);
                        return bool;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        C5011f.m33304b("ping error", Log.getStackTraceString(th));
                        socket2 = socket;
                        C5030d.m33221a(socket2);
                        return Boolean.FALSE;
                    } catch (Throwable th3) {
                        C5030d.m33221a(socket);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                socket = null;
            }
            C5030d.m33221a(socket2);
            return Boolean.FALSE;
        }
    }

    private C5011f() {
        SparseArray<Set<C5022g>> sparseArray = new SparseArray<>(2);
        this.f18167i = sparseArray;
        sparseArray.put(0, new HashSet());
        sparseArray.put(1, new HashSet());
    }

    /* renamed from: a */
    public static C5011f m33315a() {
        if (f18159e == null) {
            synchronized (C5011f.class) {
                try {
                    if (f18159e == null) {
                        f18159e = new C5011f();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f18159e;
    }

    /* renamed from: b */
    public static void m33304b(String str, String str2) {
    }

    /* renamed from: e */
    public void m33299e() {
        if (this.f18162c.compareAndSet(1, 2) || this.f18162c.compareAndSet(0, 2)) {
            C5030d.m33222a(this.f18160a);
            this.f18163d.shutdownNow();
            m33297f();
        }
    }

    /* renamed from: f */
    private void m33297f() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f18167i) {
            int size = this.f18167i.size();
            for (int i = 0; i < size; i++) {
                SparseArray<Set<C5022g>> sparseArray = this.f18167i;
                Set<C5022g> set = sparseArray.get(sparseArray.keyAt(i));
                if (set != null) {
                    arrayList.addAll(set);
                    set.clear();
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((C5022g) it2.next()).mo33272a();
        }
    }

    /* renamed from: g */
    public boolean m33295g() {
        Future submit = this.f18163d.submit(new CallableC5015a("127.0.0.1", this.f18161b));
        m33293h();
        try {
            if (((Boolean) submit.get()).booleanValue()) {
                boolean z = C5001e.f18140c;
                return true;
            }
            Log.e("TAG_PROXY_ProxyServer", "Ping error");
            m33304b("ping error", "");
            m33299e();
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            m33304b("ping error", Log.getStackTraceString(th));
            m33299e();
            return false;
        }
    }

    /* renamed from: h */
    private void m33293h() {
        Socket socket = null;
        Socket socket2 = null;
        try {
            try {
                Socket accept = this.f18160a.accept();
                accept.setSoTimeout(2000);
                if ("Ping".equals(new BufferedReader(new InputStreamReader(accept.getInputStream())).readLine())) {
                    OutputStream outputStream = accept.getOutputStream();
                    outputStream.write("OK\n".getBytes(C5030d.f18220a));
                    socket2 = accept;
                    socket = accept;
                    outputStream.flush();
                }
                C5030d.m33221a(accept);
            } catch (IOException e) {
                e.printStackTrace();
                socket2 = socket;
                m33304b("ping error", Log.getStackTraceString(e));
                C5030d.m33221a(socket);
            }
        } catch (Throwable th) {
            C5030d.m33221a(socket2);
            throw th;
        }
    }

    /* renamed from: a */
    public String m33307a(boolean z, boolean z2, String str, String... strArr) {
        if (strArr == null || strArr.length == 0) {
            m33304b("url", "url is empty");
            return null;
        } else if (TextUtils.isEmpty(str)) {
            m33304b("key", "key is empty");
            return strArr[0];
        } else if (this.f18164f == null) {
            m33304b("db", "VideoProxyDB is null");
            return strArr[0];
        } else {
            if ((z ? this.f18166h : this.f18165g) == null) {
                m33304b("cache", "Cache is null");
                return strArr[0];
            }
            int i = this.f18162c.get();
            if (i != 1) {
                m33304b(VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "ProxyServer is not running, ".concat(String.valueOf(i)));
                return strArr[0];
            }
            List<String> m33218a = C5030d.m33218a(strArr);
            if (m33218a == null) {
                m33304b("url", "url not start with http/https");
                return strArr[0];
            }
            String m33205a = C5034i.m33205a(str, z2 ? str : C5028b.m33243a(str), m33218a);
            if (m33205a == null) {
                m33304b("url", "combine proxy url error");
                return strArr[0];
            } else if (z) {
                return "http://127.0.0.1:" + this.f18161b + "?f=1&" + m33205a;
            } else {
                return "http://127.0.0.1:" + this.f18161b + "?" + m33205a;
            }
        }
    }

    /* renamed from: a */
    public void m33313a(C4966c c4966c) {
        this.f18165g = c4966c;
    }

    /* renamed from: a */
    public void m33312a(C4982c c4982c) {
        this.f18164f = c4982c;
    }

    /* renamed from: a */
    public boolean m33314a(int i, String str) {
        if (str == null) {
            return false;
        }
        synchronized (this.f18167i) {
            Set<C5022g> set = this.f18167i.get(i);
            if (set != null) {
                for (C5022g c5022g : set) {
                    if (c5022g != null && str.equals(c5022g.f18043h)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* renamed from: b */
    public C4986c m33306b() {
        return this.f18169k;
    }

    /* renamed from: c */
    public C4986c m33303c() {
        return this.f18170l;
    }

    /* renamed from: d */
    public void m33301d() {
        if (this.f18172n.compareAndSet(false, true)) {
            new Thread(this.f18171m).start();
        }
    }
}

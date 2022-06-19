package p148k7;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import androidx.emoji2.text.RunnableC0375k;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.Comparator;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p158l6.RunnableC3504a;
import p159l7.AbstractC3512b;
import p159l7.AbstractC3515d;
import p159l7.AbstractC3517f;
import p170m7.AbstractC3653a;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p170m7.C3661g;
import p241t4.C4398d;
import p255u7.C4534a;
import p291y.C4951d;
/* renamed from: k7.h */
/* loaded from: classes2-dex2jar.jar:k7/h.class */
public class C3343h {

    /* renamed from: f */
    public static ExecutorService f11330f = m2360f("AsyncServer-worker-");

    /* renamed from: g */
    public static final Comparator<InetAddress> f11331g = new C3345b();

    /* renamed from: h */
    public static ExecutorService f11332h = m2360f("AsyncServer-resolver-");

    /* renamed from: i */
    public static final ThreadLocal<C3343h> f11333i = new ThreadLocal<>();

    /* renamed from: a */
    public C3376u f11334a;

    /* renamed from: b */
    public String f11335b;

    /* renamed from: c */
    public int f11336c = 0;

    /* renamed from: d */
    public PriorityQueue<RunnableC3351h> f11337d = new PriorityQueue<>(1, C3352i.f11359a);

    /* renamed from: e */
    public Thread f11338e;

    /* renamed from: k7.h$a */
    /* loaded from: classes2-dex2jar.jar:k7/h$a.class */
    public class C3344a implements AbstractC3656d<InetAddress> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3512b f11339a;

        /* renamed from: b */
        public final /* synthetic */ C3661g f11340b;

        /* renamed from: c */
        public final /* synthetic */ InetSocketAddress f11341c;

        public C3344a(AbstractC3512b abstractC3512b, C3661g c3661g, InetSocketAddress inetSocketAddress) {
            C3343h.this = r4;
            this.f11339a = abstractC3512b;
            this.f11340b = c3661g;
            this.f11341c = inetSocketAddress;
        }

        @Override // p170m7.AbstractC3656d
        /* renamed from: a */
        public void mo99a(Exception exc, InetAddress inetAddress) {
            InetAddress inetAddress2 = inetAddress;
            if (exc == null) {
                this.f11340b.m1917m((C3348e) C3343h.this.m2364b(new InetSocketAddress(inetAddress2, this.f11341c.getPort()), this.f11339a), null);
                return;
            }
            this.f11339a.mo152a(exc, null);
            this.f11340b.m1914p(exc, null, null);
        }
    }

    /* renamed from: k7.h$b */
    /* loaded from: classes2-dex2jar.jar:k7/h$b.class */
    public static final class C3345b implements Comparator<InetAddress> {
        @Override // java.util.Comparator
        public int compare(InetAddress inetAddress, InetAddress inetAddress2) {
            InetAddress inetAddress3 = inetAddress;
            InetAddress inetAddress4 = inetAddress2;
            boolean z = inetAddress3 instanceof Inet4Address;
            int i = 0;
            if ((!z || !(inetAddress4 instanceof Inet4Address)) && (!(inetAddress3 instanceof Inet6Address) || !(inetAddress4 instanceof Inet6Address))) {
                i = (!z || !(inetAddress4 instanceof Inet6Address)) ? 1 : -1;
            }
            return i;
        }
    }

    /* renamed from: k7.h$c */
    /* loaded from: classes2-dex2jar.jar:k7/h$c.class */
    public class C3346c extends Thread {

        /* renamed from: a */
        public final /* synthetic */ C3376u f11343a;

        /* renamed from: b */
        public final /* synthetic */ PriorityQueue f11344b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3346c(String str, C3376u c3376u, PriorityQueue priorityQueue) {
            super(str);
            C3343h.this = r4;
            this.f11343a = c3376u;
            this.f11344b = priorityQueue;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                ThreadLocal<C3343h> threadLocal = C3343h.f11333i;
                threadLocal.set(C3343h.this);
                C3343h.m2365a(C3343h.this, this.f11343a, this.f11344b);
                threadLocal.remove();
            } catch (Throwable th) {
                C3343h.f11333i.remove();
                throw th;
            }
        }
    }

    /* renamed from: k7.h$d */
    /* loaded from: classes2-dex2jar.jar:k7/h$d.class */
    public static class C3347d extends IOException {
        public C3347d(Exception exc) {
            super(exc);
        }
    }

    /* renamed from: k7.h$e */
    /* loaded from: classes2-dex2jar.jar:k7/h$e.class */
    public class C3348e extends C3661g<C3328a> {

        /* renamed from: j */
        public SocketChannel f11346j;

        /* renamed from: k */
        public AbstractC3512b f11347k;

        public C3348e(C3343h c3343h, RunnableC3341f runnableC3341f) {
        }

        @Override // p170m7.C3658f
        /* renamed from: b */
        public void mo488b() {
            try {
                SocketChannel socketChannel = this.f11346j;
                if (socketChannel == null) {
                    return;
                }
                socketChannel.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: k7.h$f */
    /* loaded from: classes2-dex2jar.jar:k7/h$f.class */
    public static class ThreadFactoryC3349f implements ThreadFactory {

        /* renamed from: a */
        public final ThreadGroup f11348a;

        /* renamed from: b */
        public final AtomicInteger f11349b = new AtomicInteger(1);

        /* renamed from: c */
        public final String f11350c;

        public ThreadFactoryC3349f(String str) {
            SecurityManager securityManager = System.getSecurityManager();
            this.f11348a = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.f11350c = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f11348a;
            Thread thread = new Thread(threadGroup, runnable, this.f11350c + this.f11349b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    /* renamed from: k7.h$g */
    /* loaded from: classes2-dex2jar.jar:k7/h$g.class */
    public static class RunnableC3350g implements Runnable {

        /* renamed from: a */
        public boolean f11351a;

        /* renamed from: b */
        public Runnable f11352b;

        /* renamed from: c */
        public C3378w f11353c;

        /* renamed from: d */
        public Handler f11354d;

        public RunnableC3350g(RunnableC3341f runnableC3341f) {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (this.f11351a) {
                    return;
                }
                this.f11351a = true;
                try {
                    this.f11352b.run();
                } finally {
                    this.f11353c.remove(this);
                    this.f11354d.removeCallbacks(this);
                    this.f11353c = null;
                    this.f11354d = null;
                    this.f11352b = null;
                }
            }
        }
    }

    /* renamed from: k7.h$h */
    /* loaded from: classes2-dex2jar.jar:k7/h$h.class */
    public static class RunnableC3351h implements AbstractC3653a, Runnable {

        /* renamed from: a */
        public C3343h f11355a;

        /* renamed from: b */
        public Runnable f11356b;

        /* renamed from: c */
        public long f11357c;

        /* renamed from: d */
        public boolean f11358d;

        public RunnableC3351h(C3343h c3343h, Runnable runnable, long j) {
            this.f11355a = c3343h;
            this.f11356b = runnable;
            this.f11357c = j;
        }

        @Override // p170m7.AbstractC3653a
        public boolean cancel() {
            boolean remove;
            synchronized (this.f11355a) {
                remove = this.f11355a.f11337d.remove(this);
                this.f11358d = remove;
            }
            return remove;
        }

        @Override // p170m7.AbstractC3653a
        public boolean isCancelled() {
            return this.f11358d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11356b.run();
        }
    }

    /* renamed from: k7.h$i */
    /* loaded from: classes2-dex2jar.jar:k7/h$i.class */
    public static class C3352i implements Comparator<RunnableC3351h> {

        /* renamed from: a */
        public static C3352i f11359a = new C3352i();

        @Override // java.util.Comparator
        public int compare(RunnableC3351h runnableC3351h, RunnableC3351h runnableC3351h2) {
            int i = (runnableC3351h.f11357c > runnableC3351h2.f11357c ? 1 : (runnableC3351h.f11357c == runnableC3351h2.f11357c ? 0 : -1));
            return i == 0 ? 0 : i > 0 ? 1 : -1;
        }
    }

    static {
        new C3343h(null);
    }

    public C3343h(String str) {
        this.f11335b = str == null ? "AsyncServer" : str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        r0 = r6.m2333d().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
        if (r0.hasNext() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005f, code lost:
        r0 = r0.next();
        p291y.C4951d.m198e(r0.channel());
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
        r0.cancel();
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2365a(p148k7.C3343h r5, p148k7.C3376u r6, java.util.PriorityQueue r7) {
        /*
        L0:
            r0 = r5
            r1 = r6
            r2 = r7
            m2354l(r0, r1, r2)     // Catch: p148k7.C3343h.C3347d -> L9
            goto L28
        L9:
            r8 = move-exception
            r0 = r8
            java.lang.Throwable r0 = r0.getCause()
            boolean r0 = r0 instanceof java.nio.channels.ClosedSelectorException
            if (r0 != 0) goto L1d
            java.lang.String r0 = "NIO"
            java.lang.String r1 = "Selector exception, shutting down"
            r2 = r8
            int r0 = android.util.Log.i(r0, r1, r2)
        L1d:
            r0 = 1
            java.io.Closeable[] r0 = new java.io.Closeable[r0]
            r1 = r0
            r2 = 0
            r3 = r6
            r1[r2] = r3
            p291y.C4951d.m198e(r0)
        L28:
            r0 = r5
            monitor-enter(r0)
            r0 = r6
            java.nio.channels.Selector r0 = r0.f11410a     // Catch: java.lang.Throwable -> Laf
            boolean r0 = r0.isOpen()     // Catch: java.lang.Throwable -> Laf
            if (r0 == 0) goto L4c
            r0 = r6
            java.util.Set r0 = r0.m2333d()     // Catch: java.lang.Throwable -> Laf
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Laf
            if (r0 > 0) goto L47
            r0 = r7
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Laf
            if (r0 <= 0) goto L4c
        L47:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laf
            goto L0
        L4c:
            r0 = r6
            java.util.Set r0 = r0.m2333d()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            r7 = r0
        L56:
            r0 = r7
            boolean r0 = r0.hasNext()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            if (r0 == 0) goto L7e
            r0 = r7
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            java.nio.channels.SelectionKey r0 = (java.nio.channels.SelectionKey) r0     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            r8 = r0
            r0 = 1
            java.io.Closeable[] r0 = new java.io.Closeable[r0]     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            r1 = r0
            r2 = 0
            r3 = r8
            java.nio.channels.SelectableChannel r3 = r3.channel()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            r1[r2] = r3     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            p291y.C4951d.m198e(r0)     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb4
            r0 = r8
            r0.cancel()     // Catch: java.lang.Throwable -> Laf java.lang.Exception -> Lb8
            goto L56
        L7e:
            r0 = 1
            java.io.Closeable[] r0 = new java.io.Closeable[r0]     // Catch: java.lang.Throwable -> Laf
            r1 = r0
            r2 = 0
            r3 = r6
            r1[r2] = r3     // Catch: java.lang.Throwable -> Laf
            p291y.C4951d.m198e(r0)     // Catch: java.lang.Throwable -> Laf
            r0 = r5
            k7.u r0 = r0.f11334a     // Catch: java.lang.Throwable -> Laf
            r1 = r6
            if (r0 != r1) goto Lac
            java.util.PriorityQueue r0 = new java.util.PriorityQueue     // Catch: java.lang.Throwable -> Laf
            r6 = r0
            r0 = r6
            r1 = 1
            k7.h$i r2 = p148k7.C3343h.C3352i.f11359a     // Catch: java.lang.Throwable -> Laf
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> Laf
            r0 = r5
            r1 = r6
            r0.f11337d = r1     // Catch: java.lang.Throwable -> Laf
            r0 = r5
            r1 = 0
            r0.f11334a = r1     // Catch: java.lang.Throwable -> Laf
            r0 = r5
            r1 = 0
            r0.f11338e = r1     // Catch: java.lang.Throwable -> Laf
        Lac:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laf
            return
        Laf:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Laf
            r0 = r6
            throw r0
        Lb4:
            r7 = move-exception
            goto L7e
        Lb8:
            r8 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: p148k7.C3343h.m2365a(k7.h, k7.u, java.util.PriorityQueue):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: e */
    public static long m2361e(C3343h c3343h, PriorityQueue<RunnableC3351h> priorityQueue) {
        char c;
        RunnableC3351h runnableC3351h;
        ?? r0 = 9223372036854775807;
        while (true) {
            char c2 = r0;
            synchronized (c3343h) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                c = c2;
                runnableC3351h = null;
                if (priorityQueue.size() > 0) {
                    runnableC3351h = priorityQueue.remove();
                    long j = runnableC3351h.f11357c;
                    if (j <= elapsedRealtime) {
                        c = c2;
                    } else {
                        priorityQueue.add(runnableC3351h);
                        c = j - elapsedRealtime;
                        runnableC3351h = null;
                    }
                }
            }
            if (runnableC3351h == null) {
                c3343h.f11336c = 0;
                return c;
            }
            runnableC3351h.f11356b.run();
            r0 = c;
        }
    }

    /* renamed from: f */
    public static ExecutorService m2360f(String str) {
        return new ThreadPoolExecutor(0, 4, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC3349f(str));
    }

    /* renamed from: h */
    public static void m2358h(Handler handler, Runnable runnable) {
        RunnableC3350g runnableC3350g = new RunnableC3350g(null);
        C3378w m2329b = C3378w.m2329b(handler.getLooper().getThread());
        runnableC3350g.f11353c = m2329b;
        runnableC3350g.f11354d = handler;
        runnableC3350g.f11352b = runnable;
        m2329b.m2330a(runnableC3350g);
        handler.post(runnableC3350g);
        m2329b.f11417b.release();
    }

    /* renamed from: l */
    public static void m2354l(C3343h c3343h, C3376u c3376u, PriorityQueue<RunnableC3351h> priorityQueue) throws C3347d {
        boolean z;
        SocketChannel socketChannel;
        SelectionKey selectionKey;
        long m2361e = m2361e(c3343h, priorityQueue);
        try {
            synchronized (c3343h) {
                if (c3376u.f11410a.selectNow() != 0) {
                    z = false;
                } else if (c3376u.m2333d().size() == 0 && m2361e == Long.MAX_VALUE) {
                    return;
                } else {
                    z = true;
                }
                if (z) {
                    if (m2361e == Long.MAX_VALUE) {
                        c3376u.m2332k(0L);
                    } else {
                        c3376u.m2332k(m2361e);
                    }
                }
                Set<SelectionKey> selectedKeys = c3376u.f11410a.selectedKeys();
                for (SelectionKey selectionKey2 : selectedKeys) {
                    try {
                        socketChannel = null;
                    } catch (CancelledKeyException e) {
                    }
                    if (selectionKey2.isAcceptable()) {
                        try {
                            SocketChannel accept = ((ServerSocketChannel) selectionKey2.channel()).accept();
                            if (accept != null) {
                                try {
                                    accept.configureBlocking(false);
                                    SelectionKey register = accept.register(c3376u.f11410a, 1);
                                    AbstractC3515d abstractC3515d = (AbstractC3515d) selectionKey2.attachment();
                                    C3328a c3328a = new C3328a();
                                    InetSocketAddress inetSocketAddress = (InetSocketAddress) accept.socket().getRemoteSocketAddress();
                                    c3328a.f11288e = new C4534a();
                                    c3328a.f11284a = new C3377v(accept);
                                    c3328a.f11286c = c3343h;
                                    c3328a.f11285b = register;
                                    register.attach(c3328a);
                                    abstractC3515d.m2219b(c3328a);
                                } catch (IOException e2) {
                                    selectionKey = null;
                                    socketChannel = accept;
                                    C4951d.m198e(socketChannel);
                                    if (selectionKey != null) {
                                        selectionKey.cancel();
                                    }
                                }
                            }
                        } catch (IOException e3) {
                            selectionKey = null;
                        }
                    } else if (selectionKey2.isReadable()) {
                        ((C3328a) selectionKey2.attachment()).m2371n();
                    } else if (!selectionKey2.isWritable()) {
                        if (!selectionKey2.isConnectable()) {
                            Log.i("NIO", "wtf");
                            throw new RuntimeException("Unknown key state.");
                            break;
                        }
                        C3348e c3348e = (C3348e) selectionKey2.attachment();
                        SocketChannel socketChannel2 = (SocketChannel) selectionKey2.channel();
                        selectionKey2.interestOps(1);
                        try {
                            socketChannel2.finishConnect();
                            C3328a c3328a2 = new C3328a();
                            c3328a2.f11286c = c3343h;
                            c3328a2.f11285b = selectionKey2;
                            InetSocketAddress inetSocketAddress2 = (InetSocketAddress) socketChannel2.socket().getRemoteSocketAddress();
                            c3328a2.f11288e = new C4534a();
                            c3328a2.f11284a = new C3377v(socketChannel2);
                            selectionKey2.attach(c3328a2);
                            if (c3348e.m1914p(null, c3328a2, null)) {
                                c3348e.f11347k.mo152a(null, c3328a2);
                            }
                        } catch (IOException e4) {
                            selectionKey2.cancel();
                            C4951d.m198e(socketChannel2);
                            if (c3348e.m1914p(e4, null, null)) {
                                c3348e.f11347k.mo152a(e4, null);
                            }
                        }
                    } else {
                        C3328a c3328a3 = (C3328a) selectionKey2.attachment();
                        Objects.requireNonNull(c3328a3.f11284a);
                        SelectionKey selectionKey3 = c3328a3.f11285b;
                        selectionKey3.interestOps(selectionKey3.interestOps() & (-5));
                        AbstractC3517f abstractC3517f = c3328a3.f11290g;
                        if (abstractC3517f != null) {
                            abstractC3517f.mo148f();
                        }
                    }
                }
                selectedKeys.clear();
            }
        } catch (Exception e5) {
            throw new C3347d(e5);
        }
    }

    /* renamed from: b */
    public AbstractC3653a m2364b(InetSocketAddress inetSocketAddress, AbstractC3512b abstractC3512b) {
        C3348e c3348e = new C3348e(this, null);
        m2357i(new RunnableC3342g(this, c3348e, abstractC3512b, null, inetSocketAddress), 0L);
        return c3348e;
    }

    /* renamed from: c */
    public AbstractC3653a m2363c(InetSocketAddress inetSocketAddress, AbstractC3512b abstractC3512b) {
        if (!inetSocketAddress.isUnresolved()) {
            return m2364b(inetSocketAddress, abstractC3512b);
        }
        C3661g c3661g = new C3661g();
        String hostName = inetSocketAddress.getHostName();
        C3661g c3661g2 = new C3661g();
        ExecutorService executorService = f11332h;
        ((ThreadPoolExecutor) executorService).execute(new RunnableC3353i(this, hostName, c3661g2));
        AbstractFutureC3655c m1910t = c3661g2.m1910t(C4398d.f13703e);
        c3661g.mo1926d(m1910t);
        ((C3661g) m1910t).m1919k(new C3344a(abstractC3512b, c3661g, inetSocketAddress));
        return c3661g;
    }

    /* renamed from: d */
    public boolean m2362d() {
        return this.f11338e == Thread.currentThread();
    }

    /* renamed from: g */
    public AbstractC3653a m2359g(Runnable runnable) {
        return m2357i(runnable, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* renamed from: i */
    public AbstractC3653a m2357i(Runnable runnable, long j) {
        ?? r9;
        RunnableC3351h runnableC3351h;
        synchronized (this) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i > 0) {
                r9 = SystemClock.elapsedRealtime() + j;
            } else if (i == 0) {
                int i2 = this.f11336c;
                this.f11336c = i2 + 1;
                r9 = i2;
            } else {
                r9 = false;
                if (this.f11337d.size() > 0) {
                    r9 = Math.min(0L, this.f11337d.peek().f11357c - 1);
                }
            }
            PriorityQueue<RunnableC3351h> priorityQueue = this.f11337d;
            runnableC3351h = new RunnableC3351h(this, runnable, r9 == true ? 1L : 0L);
            priorityQueue.add(runnableC3351h);
            if (this.f11334a == null) {
                m2356j();
            }
            if (!m2362d()) {
                C3376u c3376u = this.f11334a;
                ((ThreadPoolExecutor) f11330f).execute(new RunnableC0375k(c3376u, 3));
            }
        }
        return runnableC3351h;
    }

    /* renamed from: j */
    public final void m2356j() {
        synchronized (this) {
            C3376u c3376u = this.f11334a;
            if (c3376u != null) {
                PriorityQueue<RunnableC3351h> priorityQueue = this.f11337d;
                try {
                    m2354l(this, c3376u, priorityQueue);
                    return;
                } catch (C3347d e) {
                    Log.i("NIO", "Selector closed", e);
                    try {
                        c3376u.f11410a.close();
                        return;
                    } catch (Exception e2) {
                        return;
                    }
                }
            }
            try {
                C3376u c3376u2 = new C3376u(SelectorProvider.provider().openSelector());
                this.f11334a = c3376u2;
                C3346c c3346c = new C3346c(this.f11335b, c3376u2, this.f11337d);
                this.f11338e = c3346c;
                c3346c.start();
            } catch (IOException e3) {
                throw new RuntimeException("unable to create selector?", e3);
            }
        }
    }

    /* renamed from: k */
    public void m2355k(Runnable runnable) {
        Semaphore semaphore;
        if (Thread.currentThread() == this.f11338e) {
            m2357i(runnable, 0L);
            m2361e(this, this.f11337d);
            return;
        }
        synchronized (this) {
            semaphore = new Semaphore(0);
            m2357i(new RunnableC3504a(runnable, semaphore, 2), 0L);
        }
        try {
            semaphore.acquire();
        } catch (InterruptedException e) {
        }
    }
}

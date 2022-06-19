package com.danikula.videocache;

import android.content.Context;
import android.net.Uri;
import com.danikula.videocache.p227q.AbstractC4445a;
import com.danikula.videocache.p227q.AbstractC4447c;
import com.danikula.videocache.p227q.C4453f;
import com.danikula.videocache.p227q.C4454g;
import com.danikula.videocache.p228r.AbstractC4456b;
import com.danikula.videocache.p228r.C4455a;
import com.danikula.videocache.p229s.AbstractC4459c;
import com.danikula.videocache.p229s.C4460d;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.f */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/f.class */
public class C4425f {

    /* renamed from: a */
    private static final AbstractC9605b f13514a = C9606c.m352i("HttpProxyCacheServer");

    /* renamed from: b */
    private final Object f13515b;

    /* renamed from: c */
    private final ExecutorService f13516c;

    /* renamed from: d */
    private final Map<String, C4430g> f13517d;

    /* renamed from: e */
    private final ServerSocket f13518e;

    /* renamed from: f */
    private final int f13519f;

    /* renamed from: g */
    private final Thread f13520g;

    /* renamed from: h */
    private final C4422c f13521h;

    /* renamed from: i */
    private final C4434j f13522i;

    /* renamed from: com.danikula.videocache.f$b */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/f$b.class */
    public static final class C4427b {

        /* renamed from: a */
        private File f13523a;

        /* renamed from: d */
        private AbstractC4459c f13526d;

        /* renamed from: c */
        private AbstractC4445a f13525c = new C4454g(536870912);

        /* renamed from: b */
        private AbstractC4447c f13524b = new C4453f();

        /* renamed from: e */
        private AbstractC4456b f13527e = new C4455a();

        public C4427b(Context context) {
            this.f13526d = C4460d.m22421b(context);
            this.f13523a = C4444p.m22449c(context);
        }

        /* renamed from: b */
        private C4422c m22504b() {
            return new C4422c(this.f13523a, this.f13524b, this.f13525c, this.f13526d, this.f13527e);
        }

        /* renamed from: a */
        public C4425f m22505a() {
            return new C4425f(m22504b());
        }

        /* renamed from: c */
        public C4427b m22503c(AbstractC4447c abstractC4447c) {
            this.f13524b = (AbstractC4447c) C4437k.m22476d(abstractC4447c);
            return this;
        }

        /* renamed from: d */
        public C4427b m22502d(long j) {
            this.f13525c = new C4454g(j);
            return this;
        }
    }

    /* renamed from: com.danikula.videocache.f$c */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/f$c.class */
    public final class RunnableC4428c implements Runnable {

        /* renamed from: d */
        private final Socket f13528d;

        public RunnableC4428c(Socket socket) {
            C4425f.this = r4;
            this.f13528d = socket;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4425f.this.m22509o(this.f13528d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.danikula.videocache.f$d */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/f$d.class */
    public final class RunnableC4429d implements Runnable {

        /* renamed from: d */
        private final CountDownLatch f13530d;

        public RunnableC4429d(CountDownLatch countDownLatch) {
            C4425f.this = r4;
            this.f13530d = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f13530d.countDown();
            C4425f.this.m22506r();
        }
    }

    private C4425f(C4422c c4422c) {
        this.f13515b = new Object();
        this.f13516c = Executors.newFixedThreadPool(8);
        this.f13517d = new ConcurrentHashMap();
        this.f13521h = (C4422c) C4437k.m22476d(c4422c);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
            this.f13518e = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f13519f = localPort;
            C4433i.m22488a("127.0.0.1", localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new RunnableC4429d(countDownLatch));
            this.f13520g = thread;
            thread.start();
            countDownLatch.await();
            this.f13522i = new C4434j("127.0.0.1", localPort);
            AbstractC9605b abstractC9605b = f13514a;
            abstractC9605b.info("Proxy cache server started. Is it alive? " + m22512l());
        } catch (IOException | InterruptedException e) {
            this.f13516c.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e);
        }
    }

    /* renamed from: c */
    private String m22521c(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", "127.0.0.1", Integer.valueOf(this.f13519f), C4441m.m22454f(str));
    }

    /* renamed from: d */
    private void m22520d(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException e) {
            m22510n(new ProxyCacheException("Error closing socket", e));
        }
    }

    /* renamed from: e */
    private void m22519e(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException e) {
            f13514a.debug("Releasing input stream… Socket is closed by client.");
        } catch (IOException e2) {
            m22510n(new ProxyCacheException("Error closing socket input stream", e2));
        }
    }

    /* renamed from: f */
    private void m22518f(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException e) {
            f13514a.warn("Failed to close socket on proxy side: {}. It seems client have already closed connection.", e.getMessage());
        }
    }

    /* renamed from: g */
    private File m22517g(String str) {
        C4422c c4422c = this.f13521h;
        return new File(c4422c.f13501a, c4422c.f13502b.mo22429a(str));
    }

    /* renamed from: h */
    private C4430g m22516h(String str) {
        C4430g c4430g;
        synchronized (this.f13515b) {
            C4430g c4430g2 = this.f13517d.get(str);
            c4430g = c4430g2;
            if (c4430g2 == null) {
                c4430g = new C4430g(str, this.f13521h);
                this.f13517d.put(str, c4430g);
            }
        }
        return c4430g;
    }

    /* renamed from: i */
    private int m22515i() {
        int i;
        synchronized (this.f13515b) {
            i = 0;
            for (C4430g c4430g : this.f13517d.values()) {
                i += c4430g.m22500b();
            }
        }
        return i;
    }

    /* renamed from: l */
    private boolean m22512l() {
        return this.f13522i.m22483e(3, 70);
    }

    /* renamed from: n */
    private void m22510n(Throwable th) {
        f13514a.error("HttpProxyCacheServer error", th);
    }

    /* renamed from: o */
    public void m22509o(Socket socket) {
        Throwable e;
        try {
            try {
                C4423d m22531c = C4423d.m22531c(socket.getInputStream());
                AbstractC9605b abstractC9605b = f13514a;
                abstractC9605b.debug("Request to cache proxy:" + m22531c);
                String m22455e = C4441m.m22455e(m22531c.f13508c);
                if (this.f13522i.m22484d(m22455e)) {
                    this.f13522i.m22481g(socket);
                } else {
                    m22516h(m22455e).m22498d(m22531c, socket);
                }
                m22508p(socket);
                abstractC9605b.debug("Opened connections: " + m22515i());
            } catch (ProxyCacheException e2) {
                e = e2;
                m22510n(new ProxyCacheException("Error processing request", e));
            } catch (SocketException e3) {
                AbstractC9605b abstractC9605b2 = f13514a;
                abstractC9605b2.debug("Closing socket… Socket is closed by client.");
                m22508p(socket);
                abstractC9605b2.debug("Opened connections: " + m22515i());
            } catch (IOException e4) {
                e = e4;
                m22510n(new ProxyCacheException("Error processing request", e));
            }
        } finally {
            m22508p(socket);
            AbstractC9605b abstractC9605b3 = f13514a;
            abstractC9605b3.debug("Opened connections: " + m22515i());
        }
    }

    /* renamed from: p */
    private void m22508p(Socket socket) {
        m22519e(socket);
        m22518f(socket);
        m22520d(socket);
    }

    /* renamed from: q */
    private void m22507q(File file) {
        try {
            this.f13521h.f13503c.mo22435a(file);
        } catch (IOException e) {
            AbstractC9605b abstractC9605b = f13514a;
            abstractC9605b.error("Error touching file " + file, e);
        }
    }

    /* renamed from: r */
    public void m22506r() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                Socket accept = this.f13518e.accept();
                AbstractC9605b abstractC9605b = f13514a;
                abstractC9605b.debug("Accept new socket " + accept);
                this.f13516c.submit(new RunnableC4428c(accept));
            } catch (IOException e) {
                m22510n(new ProxyCacheException("Error during waiting connection", e));
                return;
            }
        }
    }

    /* renamed from: j */
    public String m22514j(String str) {
        return m22513k(str, true);
    }

    /* renamed from: k */
    public String m22513k(String str, boolean z) {
        if (z && m22511m(str)) {
            File m22517g = m22517g(str);
            m22507q(m22517g);
            return Uri.fromFile(m22517g).toString();
        }
        String str2 = str;
        if (m22512l()) {
            str2 = m22521c(str);
        }
        return str2;
    }

    /* renamed from: m */
    public boolean m22511m(String str) {
        C4437k.m22475e(str, "Url can't be null!");
        return m22517g(str).exists();
    }
}

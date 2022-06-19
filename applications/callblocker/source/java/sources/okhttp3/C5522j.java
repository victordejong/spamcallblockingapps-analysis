package okhttp3;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5462c;
import okhttp3.internal.connection.C5463d;
import okhttp3.internal.connection.C5466f;
import okhttp3.internal.p196e.C5480f;
/* renamed from: okhttp3.j */
/* loaded from: classes-dex2jar.jar:okhttp3/j.class */
public final class C5522j {

    /* renamed from: c */
    static final /* synthetic */ boolean f23071c;

    /* renamed from: d */
    private static final Executor f23072d;

    /* renamed from: a */
    final C5463d f23073a;

    /* renamed from: b */
    boolean f23074b;

    /* renamed from: e */
    private final int f23075e;

    /* renamed from: f */
    private final long f23076f;

    /* renamed from: g */
    private final Runnable f23077g;

    /* renamed from: h */
    private final Deque<C5462c> f23078h;

    static {
        f23071c = !C5522j.class.desiredAssertionStatus();
        f23072d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C5449c.m663a("OkHttp ConnectionPool", true));
    }

    public C5522j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public C5522j(int i, long j, TimeUnit timeUnit) {
        this.f23077g = new Runnable() { // from class: okhttp3.j.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long m355a = C5522j.this.m355a(System.nanoTime());
                    if (m355a == -1) {
                        return;
                    }
                    if (m355a > 0) {
                        long j2 = m355a / 1000000;
                        synchronized (C5522j.this) {
                            try {
                                C5522j.this.wait(j2, (int) (m355a - (j2 * 1000000)));
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        };
        this.f23078h = new ArrayDeque();
        this.f23073a = new C5463d();
        this.f23075e = i;
        this.f23076f = timeUnit.toNanos(j);
        if (j <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
        }
    }

    /* renamed from: a */
    private int m351a(C5462c c5462c, long j) {
        int size;
        List<Reference<C5466f>> list = c5462c.f22811d;
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                size = list.size();
                break;
            }
            Reference<C5466f> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                C5480f.m541c().mo552a("A connection to " + c5462c.m627a().m777a().m839a() + " was leaked. Did you forget to close a response body?", ((C5466f.C5467a) reference).f22848a);
                list.remove(i);
                c5462c.f22808a = true;
                if (list.isEmpty()) {
                    c5462c.f22812e = j - this.f23076f;
                    size = 0;
                    break;
                }
            }
        }
        return size;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* renamed from: a */
    long m355a(long j) {
        char c;
        C5462c c5462c = null;
        char c2 = 0;
        synchronized (this) {
            int i = 0;
            int i2 = 0;
            for (C5462c c5462c2 : this.f23078h) {
                if (m351a(c5462c2, j) > 0) {
                    i2++;
                } else {
                    i++;
                    ?? r0 = j - c5462c2.f22812e;
                    if (r0 > c2) {
                        c2 = r0;
                        c5462c = c5462c2;
                    }
                }
            }
            if (c2 >= this.f23076f || i > this.f23075e) {
                this.f23078h.remove(c5462c);
                C5449c.m661a(c5462c.m614c());
                c = 0;
            } else if (i > 0) {
                c = this.f23076f - c2;
            } else if (i2 > 0) {
                c = this.f23076f;
            } else {
                this.f23074b = false;
                c = 65535;
            }
        }
        return c;
    }

    @Nullable
    /* renamed from: a */
    public Socket m354a(C5399a c5399a, C5466f c5466f) {
        Socket socket;
        if (f23071c || Thread.holdsLock(this)) {
            Iterator<C5462c> it = this.f23078h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    socket = null;
                    break;
                }
                C5462c next = it.next();
                if (next.m621a(c5399a, null) && next.m612e() && next != c5466f.m585c()) {
                    socket = c5466f.m592a(next);
                    break;
                }
            }
            return socket;
        }
        throw new AssertionError();
    }

    @Nullable
    /* renamed from: a */
    public C5462c m353a(C5399a c5399a, C5466f c5466f, C5408ae c5408ae) {
        C5462c c5462c;
        if (f23071c || Thread.holdsLock(this)) {
            Iterator<C5462c> it = this.f23078h.iterator();
            while (true) {
                if (!it.hasNext()) {
                    c5462c = null;
                    break;
                }
                C5462c next = it.next();
                if (next.m621a(c5399a, c5408ae)) {
                    c5466f.m591a(next, true);
                    c5462c = next;
                    break;
                }
            }
            return c5462c;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m352a(C5462c c5462c) {
        if (f23071c || Thread.holdsLock(this)) {
            if (!this.f23074b) {
                this.f23074b = true;
                f23072d.execute(this.f23077g);
            }
            this.f23078h.add(c5462c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public boolean m350b(C5462c c5462c) {
        boolean z;
        if (f23071c || Thread.holdsLock(this)) {
            if (c5462c.f22808a || this.f23075e == 0) {
                this.f23078h.remove(c5462c);
                z = true;
            } else {
                notifyAll();
                z = false;
            }
            return z;
        }
        throw new AssertionError();
    }
}

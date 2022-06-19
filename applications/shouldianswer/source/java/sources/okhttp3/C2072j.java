package okhttp3;

import com.google.android.gms.common.api.Api;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2012c;
import okhttp3.internal.connection.C2013d;
import okhttp3.internal.connection.C2016f;
import okhttp3.internal.p095e.C2030f;
/* renamed from: okhttp3.j */
/* loaded from: classes-dex2jar.jar:okhttp3/j.class */
public final class C2072j {

    /* renamed from: c */
    static final /* synthetic */ boolean f5297c = !C2072j.class.desiredAssertionStatus();

    /* renamed from: d */
    private static final Executor f5298d = new ThreadPoolExecutor(0, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 60, TimeUnit.SECONDS, new SynchronousQueue(), C1999c.m2343a("OkHttp ConnectionPool", true));

    /* renamed from: a */
    final C2013d f5299a;

    /* renamed from: b */
    boolean f5300b;

    /* renamed from: e */
    private final int f5301e;

    /* renamed from: f */
    private final long f5302f;

    /* renamed from: g */
    private final Runnable f5303g;

    /* renamed from: h */
    private final Deque<C2012c> f5304h;

    public C2072j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    public C2072j(int i, long j, TimeUnit timeUnit) {
        this.f5303g = new Runnable() { // from class: okhttp3.j.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long m2037a = C2072j.this.m2037a(System.nanoTime());
                    if (m2037a == -1) {
                        return;
                    }
                    if (m2037a > 0) {
                        long j2 = m2037a / 1000000;
                        synchronized (C2072j.this) {
                            try {
                                C2072j.this.wait(j2, (int) (m2037a - (1000000 * j2)));
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
            }
        };
        this.f5304h = new ArrayDeque();
        this.f5299a = new C2013d();
        this.f5301e = i;
        this.f5302f = timeUnit.toNanos(j);
        if (j > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j);
    }

    /* renamed from: a */
    private int m2033a(C2012c c2012c, long j) {
        List<Reference<C2016f>> list = c2012c.f5037d;
        int i = 0;
        while (i < list.size()) {
            Reference<C2016f> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                C2030f.m2224c().mo2235a("A connection to " + c2012c.m2307a().m2459a().m2509a() + " was leaked. Did you forget to close a response body?", ((C2016f.C2017a) reference).f5074a);
                list.remove(i);
                c2012c.f5034a = true;
                if (list.isEmpty()) {
                    c2012c.f5038e = j - this.f5302f;
                    return 0;
                }
            }
        }
        return list.size();
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: a */
    long m2037a(long j) {
        synchronized (this) {
            char c = 0;
            int i = 0;
            C2012c c2012c = null;
            int i2 = 0;
            for (C2012c c2012c2 : this.f5304h) {
                if (m2033a(c2012c2, j) > 0) {
                    i++;
                } else {
                    int i3 = i2 + 1;
                    ?? r0 = j - c2012c2.f5038e;
                    i2 = i3;
                    if (r0 > c) {
                        c2012c = c2012c2;
                        c = r0;
                        i2 = i3;
                    }
                }
            }
            if (c < this.f5302f && i2 <= this.f5301e) {
                if (i2 > 0) {
                    return this.f5302f - c;
                } else if (i > 0) {
                    return this.f5302f;
                } else {
                    this.f5300b = false;
                    return -1L;
                }
            }
            this.f5304h.remove(c2012c);
            C1999c.m2341a(c2012c.m2295b());
            return 0L;
        }
    }

    @Nullable
    /* renamed from: a */
    public Socket m2036a(C1952a c1952a, C2016f c2016f) {
        if (f5297c || Thread.holdsLock(this)) {
            for (C2012c c2012c : this.f5304h) {
                if (c2012c.m2301a(c1952a, null) && c2012c.m2293d() && c2012c != c2016f.m2266c()) {
                    return c2016f.m2273a(c2012c);
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    @Nullable
    /* renamed from: a */
    public C2012c m2035a(C1952a c1952a, C2016f c2016f, C1959ad c1959ad) {
        if (f5297c || Thread.holdsLock(this)) {
            for (C2012c c2012c : this.f5304h) {
                if (c2012c.m2301a(c1952a, c1959ad)) {
                    c2016f.m2272a(c2012c, true);
                    return c2012c;
                }
            }
            return null;
        }
        throw new AssertionError();
    }

    /* renamed from: a */
    public void m2034a(C2012c c2012c) {
        if (f5297c || Thread.holdsLock(this)) {
            if (!this.f5300b) {
                this.f5300b = true;
                f5298d.execute(this.f5303g);
            }
            this.f5304h.add(c2012c);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: b */
    public boolean m2032b(C2012c c2012c) {
        if (f5297c || Thread.holdsLock(this)) {
            if (c2012c.f5034a || this.f5301e == 0) {
                this.f5304h.remove(c2012c);
                return true;
            }
            notifyAll();
            return false;
        }
        throw new AssertionError();
    }
}

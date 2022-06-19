package okhttp3;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.C5554z;
import okhttp3.internal.C5449c;
/* renamed from: okhttp3.n */
/* loaded from: classes-dex2jar.jar:okhttp3/n.class */
public final class C5529n {
    @Nullable

    /* renamed from: c */
    private Runnable f23108c;
    @Nullable

    /* renamed from: d */
    private ExecutorService f23109d;

    /* renamed from: a */
    private int f23106a = 64;

    /* renamed from: b */
    private int f23107b = 5;

    /* renamed from: e */
    private final Deque<C5554z.C5555a> f23110e = new ArrayDeque();

    /* renamed from: f */
    private final Deque<C5554z.C5555a> f23111f = new ArrayDeque();

    /* renamed from: g */
    private final Deque<C5554z> f23112g = new ArrayDeque();

    /* renamed from: a */
    private <T> void m322a(Deque<T> deque, T t, boolean z) {
        int m319b;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                m316c();
            }
            m319b = m319b();
            runnable = this.f23108c;
        }
        if (m319b != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: c */
    private int m315c(C5554z.C5555a c5555a) {
        int i = 0;
        for (C5554z.C5555a c5555a2 : this.f23111f) {
            if (!c5555a2.m145b().f23242d && c5555a2.m146a().equals(c5555a.m146a())) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: c */
    private void m316c() {
        if (this.f23111f.size() < this.f23106a && !this.f23110e.isEmpty()) {
            Iterator<C5554z.C5555a> it = this.f23110e.iterator();
            while (it.hasNext()) {
                C5554z.C5555a next = it.next();
                if (m315c(next) < this.f23107b) {
                    it.remove();
                    this.f23111f.add(next);
                    m323a().execute(next);
                }
                if (this.f23111f.size() >= this.f23106a) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public ExecutorService m323a() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.f23109d == null) {
                this.f23109d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C5449c.m663a("OkHttp Dispatcher", false));
            }
            executorService = this.f23109d;
        }
        return executorService;
    }

    /* renamed from: a */
    public void m321a(C5554z.C5555a c5555a) {
        synchronized (this) {
            if (this.f23111f.size() >= this.f23106a || m315c(c5555a) >= this.f23107b) {
                this.f23110e.add(c5555a);
            } else {
                this.f23111f.add(c5555a);
                m323a().execute(c5555a);
            }
        }
    }

    /* renamed from: a */
    public void m320a(C5554z c5554z) {
        synchronized (this) {
            this.f23112g.add(c5554z);
        }
    }

    /* renamed from: b */
    public int m319b() {
        int size;
        int size2;
        synchronized (this) {
            size = this.f23111f.size();
            size2 = this.f23112g.size();
        }
        return size + size2;
    }

    /* renamed from: b */
    public void m318b(C5554z.C5555a c5555a) {
        m322a(this.f23111f, c5555a, true);
    }

    /* renamed from: b */
    public void m317b(C5554z c5554z) {
        m322a(this.f23112g, c5554z, false);
    }
}

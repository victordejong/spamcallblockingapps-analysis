package okhttp3;

import com.google.android.gms.common.api.Api;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.C2102y;
import okhttp3.internal.C1999c;
/* renamed from: okhttp3.n */
/* loaded from: classes-dex2jar.jar:okhttp3/n.class */
public final class C2079n {
    @Nullable

    /* renamed from: c */
    private Runnable f5334c;
    @Nullable

    /* renamed from: d */
    private ExecutorService f5335d;

    /* renamed from: a */
    private int f5332a = 64;

    /* renamed from: b */
    private int f5333b = 5;

    /* renamed from: e */
    private final Deque<C2102y.C2103a> f5336e = new ArrayDeque();

    /* renamed from: f */
    private final Deque<C2102y.C2103a> f5337f = new ArrayDeque();

    /* renamed from: g */
    private final Deque<C2102y> f5338g = new ArrayDeque();

    /* renamed from: a */
    private <T> void m2004a(Deque<T> deque, T t, boolean z) {
        int m2001b;
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            if (z) {
                m1998c();
            }
            m2001b = m2001b();
            runnable = this.f5334c;
        }
        if (m2001b != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    /* renamed from: c */
    private int m1997c(C2102y.C2103a c2103a) {
        int i = 0;
        for (C2102y.C2103a c2103a2 : this.f5337f) {
            if (!c2103a2.m1825b().f5462d && c2103a2.m1826a().equals(c2103a.m1826a())) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: c */
    private void m1998c() {
        if (this.f5337f.size() < this.f5332a && !this.f5336e.isEmpty()) {
            Iterator<C2102y.C2103a> it = this.f5336e.iterator();
            while (it.hasNext()) {
                C2102y.C2103a next = it.next();
                if (m1997c(next) < this.f5333b) {
                    it.remove();
                    this.f5337f.add(next);
                    m2005a().execute(next);
                }
                if (this.f5337f.size() >= this.f5332a) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public ExecutorService m2005a() {
        ExecutorService executorService;
        synchronized (this) {
            if (this.f5335d == null) {
                this.f5335d = new ThreadPoolExecutor(0, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, TimeUnit.SECONDS, new SynchronousQueue(), C1999c.m2343a("OkHttp Dispatcher", false));
            }
            executorService = this.f5335d;
        }
        return executorService;
    }

    /* renamed from: a */
    public void m2003a(C2102y.C2103a c2103a) {
        synchronized (this) {
            if (this.f5337f.size() >= this.f5332a || m1997c(c2103a) >= this.f5333b) {
                this.f5336e.add(c2103a);
            } else {
                this.f5337f.add(c2103a);
                m2005a().execute(c2103a);
            }
        }
    }

    /* renamed from: a */
    public void m2002a(C2102y c2102y) {
        synchronized (this) {
            this.f5338g.add(c2102y);
        }
    }

    /* renamed from: b */
    public int m2001b() {
        int size;
        int size2;
        synchronized (this) {
            size = this.f5337f.size();
            size2 = this.f5338g.size();
        }
        return size + size2;
    }

    /* renamed from: b */
    public void m2000b(C2102y.C2103a c2103a) {
        m2004a(this.f5337f, c2103a, true);
    }

    /* renamed from: b */
    public void m1999b(C2102y c2102y) {
        m2004a(this.f5338g, c2102y, false);
    }
}

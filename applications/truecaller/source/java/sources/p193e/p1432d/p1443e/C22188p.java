package p193e.p1432d.p1443e;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: e.d.e.p */
/* loaded from: classes-dex2jar.jar:e/d/e/p.class */
public class C22188p {

    /* renamed from: e */
    public final AbstractC22169b f61648e;

    /* renamed from: f */
    public final AbstractC22179i f61649f;

    /* renamed from: g */
    public final AbstractC22193r f61650g;

    /* renamed from: i */
    public C22172d f61652i;

    /* renamed from: a */
    public final AtomicInteger f61644a = new AtomicInteger();

    /* renamed from: b */
    public final Set<AbstractC22184o<?>> f61645b = new HashSet();

    /* renamed from: c */
    public final PriorityBlockingQueue<AbstractC22184o<?>> f61646c = new PriorityBlockingQueue<>();

    /* renamed from: d */
    public final PriorityBlockingQueue<AbstractC22184o<?>> f61647d = new PriorityBlockingQueue<>();

    /* renamed from: j */
    public final List<AbstractC22189a> f61653j = new ArrayList();

    /* renamed from: h */
    public final C22180j[] f61651h = new C22180j[4];

    /* renamed from: e.d.e.p$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/p$a.class */
    public interface AbstractC22189a<T> {
        /* renamed from: a */
        void m8485a(AbstractC22184o<T> abstractC22184o);
    }

    public C22188p(AbstractC22169b abstractC22169b, AbstractC22179i abstractC22179i) {
        C22175g c22175g = new C22175g(new Handler(Looper.getMainLooper()));
        this.f61648e = abstractC22169b;
        this.f61649f = abstractC22179i;
        this.f61650g = c22175g;
    }

    /* renamed from: a */
    public <T> AbstractC22184o<T> m8486a(AbstractC22184o<T> abstractC22184o) {
        abstractC22184o.setRequestQueue(this);
        synchronized (this.f61645b) {
            this.f61645b.add(abstractC22184o);
        }
        abstractC22184o.setSequence(this.f61644a.incrementAndGet());
        abstractC22184o.addMarker("add-to-queue");
        if (!abstractC22184o.shouldCache()) {
            this.f61647d.add(abstractC22184o);
            return abstractC22184o;
        }
        this.f61646c.add(abstractC22184o);
        return abstractC22184o;
    }
}

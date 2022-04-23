package p530d.p531a.p532v0;

import io.grpc.internal.GrpcUtil;
import java.util.IdentityHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.v0.s1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/s1.class */
public final class C9495s1 {

    /* renamed from: d */
    public static final C9495s1 f36321d = new C9495s1(new C9496a());

    /* renamed from: a */
    public final IdentityHashMap<AbstractC9499d<?>, C9498c> f36322a = new IdentityHashMap<>();

    /* renamed from: b */
    public final AbstractC9500e f36323b;

    /* renamed from: c */
    public ScheduledExecutorService f36324c;

    /* renamed from: d.a.v0.s1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/s1$a.class */
    public class C9496a implements AbstractC9500e {
        @Override // p530d.p531a.p532v0.C9495s1.AbstractC9500e
        /* renamed from: a */
        public ScheduledExecutorService mo2587a() {
            return Executors.newSingleThreadScheduledExecutor(GrpcUtil.m528a("grpc-shared-destroyer-%d", true));
        }
    }

    /* renamed from: d.a.v0.s1$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/s1$b.class */
    public class RunnableC9497b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C9498c f36325a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9499d f36326b;

        /* renamed from: c */
        public final /* synthetic */ Object f36327c;

        public RunnableC9497b(C9498c cVar, AbstractC9499d dVar, Object obj) {
            this.f36325a = cVar;
            this.f36326b = dVar;
            this.f36327c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (C9495s1.this) {
                if (this.f36325a.f36330b == 0) {
                    this.f36326b.mo313a(this.f36327c);
                    C9495s1.this.f36322a.remove(this.f36326b);
                    if (C9495s1.this.f36322a.isEmpty()) {
                        C9495s1.this.f36324c.shutdown();
                        C9495s1.this.f36324c = null;
                    }
                }
            }
        }
    }

    /* renamed from: d.a.v0.s1$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/s1$c.class */
    public static class C9498c {

        /* renamed from: a */
        public final Object f36329a;

        /* renamed from: b */
        public int f36330b;

        /* renamed from: c */
        public ScheduledFuture<?> f36331c;

        public C9498c(Object obj) {
            this.f36329a = obj;
        }
    }

    /* renamed from: d.a.v0.s1$d */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/s1$d.class */
    public interface AbstractC9499d<T> {
        /* renamed from: a */
        T mo314a();

        /* renamed from: a */
        void mo313a(T t);
    }

    /* renamed from: d.a.v0.s1$e */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/s1$e.class */
    public interface AbstractC9500e {
        /* renamed from: a */
        ScheduledExecutorService mo2587a();
    }

    public C9495s1(AbstractC9500e eVar) {
        this.f36323b = eVar;
    }

    /* renamed from: b */
    public static <T> T m2590b(AbstractC9499d<T> dVar) {
        return (T) f36321d.m2594a(dVar);
    }

    /* renamed from: b */
    public static <T> T m2589b(AbstractC9499d<T> dVar, T t) {
        return (T) f36321d.m2593a((AbstractC9499d<AbstractC9499d<T>>) dVar, (AbstractC9499d<T>) t);
    }

    /* renamed from: a */
    public <T> T m2594a(AbstractC9499d<T> dVar) {
        T t;
        synchronized (this) {
            C9498c cVar = this.f36322a.get(dVar);
            C9498c cVar2 = cVar;
            if (cVar == null) {
                cVar2 = new C9498c(dVar.mo314a());
                this.f36322a.put(dVar, cVar2);
            }
            if (cVar2.f36331c != null) {
                cVar2.f36331c.cancel(false);
                cVar2.f36331c = null;
            }
            cVar2.f36330b++;
            t = (T) cVar2.f36329a;
        }
        return t;
    }

    /* renamed from: a */
    public <T> T m2593a(AbstractC9499d<T> dVar, T t) {
        synchronized (this) {
            C9498c cVar = this.f36322a.get(dVar);
            if (cVar != null) {
                boolean z = false;
                C4933n.m24790a(t == cVar.f36329a, "Releasing the wrong instance");
                C4933n.m24775b(cVar.f36330b > 0, "Refcount has already reached zero");
                int i = cVar.f36330b - 1;
                cVar.f36330b = i;
                if (i == 0) {
                    if (cVar.f36331c == null) {
                        z = true;
                    }
                    C4933n.m24775b(z, "Destroy task already scheduled");
                    if (this.f36324c == null) {
                        this.f36324c = this.f36323b.mo2587a();
                    }
                    cVar.f36331c = this.f36324c.schedule(new RunnableC9494s0(new RunnableC9497b(cVar, dVar, t)), 1L, TimeUnit.SECONDS);
                }
            } else {
                throw new IllegalArgumentException("No cached instance found for " + dVar);
            }
        }
        return null;
    }
}

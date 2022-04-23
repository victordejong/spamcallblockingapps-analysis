package p131c.p161d.p282e.p315q.p328q0;

import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p282e.p315q.AbstractC5878s;
import p131c.p161d.p282e.p315q.AbstractC5879t;
import p131c.p161d.p282e.p315q.AbstractC5880u;
import p131c.p161d.p282e.p315q.AbstractC5881v;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
/* renamed from: c.d.e.q.q0.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s.class */
public class C5730s {

    /* renamed from: e */
    public static BlockingQueue<Runnable> f18899e = new LinkedBlockingQueue();

    /* renamed from: f */
    public static final ThreadPoolExecutor f18900f;

    /* renamed from: a */
    public Map<AbstractC5878s, C5731a> f18901a = new HashMap();

    /* renamed from: b */
    public Map<AbstractC5879t, C5732b> f18902b = new HashMap();

    /* renamed from: c */
    public Map<AbstractC5880u, C5733c> f18903c = new HashMap();

    /* renamed from: d */
    public Map<AbstractC5881v, C5736f> f18904d = new HashMap();

    /* renamed from: c.d.e.q.q0.s$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s$a.class */
    public static class C5731a extends AbstractC5734d<AbstractC5878s> {

        /* renamed from: b */
        public AbstractC5878s f18905b;

        /* renamed from: a */
        public AbstractC5878s m23113a() {
            return this.f18905b;
        }
    }

    /* renamed from: c.d.e.q.q0.s$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s$b.class */
    public static class C5732b extends AbstractC5734d<AbstractC5879t> {

        /* renamed from: b */
        public AbstractC5879t f18906b;

        /* renamed from: a */
        public AbstractC5879t m23112a() {
            return this.f18906b;
        }
    }

    /* renamed from: c.d.e.q.q0.s$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s$c.class */
    public static class C5733c extends AbstractC5734d<AbstractC5880u> {

        /* renamed from: b */
        public AbstractC5880u f18907b;

        /* renamed from: a */
        public AbstractC5880u m23111a() {
            return this.f18907b;
        }
    }

    /* renamed from: c.d.e.q.q0.s$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s$d.class */
    public static abstract class AbstractC5734d<T> {

        /* renamed from: a */
        public final Executor f18908a;

        /* renamed from: a */
        public Executor m23110a(Executor executor) {
            Executor executor2 = this.f18908a;
            return executor2 == null ? executor : executor2;
        }
    }

    /* renamed from: c.d.e.q.q0.s$e */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s$e.class */
    public static class ThreadFactoryC5735e implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f18909a = new AtomicInteger(1);

        /* renamed from: b */
        public final String f18910b;

        public ThreadFactoryC5735e(String str) {
            this.f18910b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "FIAM-" + this.f18910b + this.f18909a.getAndIncrement());
            thread.setDaemon(false);
            thread.setPriority(9);
            return thread;
        }
    }

    /* renamed from: c.d.e.q.q0.s$f */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/s$f.class */
    public static class C5736f extends AbstractC5734d<AbstractC5881v> {

        /* renamed from: b */
        public AbstractC5881v f18911b;

        /* renamed from: a */
        public AbstractC5881v m23109a() {
            return this.f18911b;
        }
    }

    static {
        new C5730s();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 15L, TimeUnit.SECONDS, f18899e, new ThreadFactoryC5735e("EventListeners-"));
        f18900f = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    /* renamed from: a */
    public void m23122a() {
        this.f18901a.clear();
        this.f18904d.clear();
        this.f18903c.clear();
    }

    /* renamed from: a */
    public void m23117a(AbstractC5863i iVar) {
        for (C5736f fVar : this.f18904d.values()) {
            fVar.m23110a(f18900f).execute(RunnableC5706o.m23178a(fVar, iVar));
        }
    }

    /* renamed from: a */
    public void m23116a(AbstractC5863i iVar, C5842a aVar) {
        for (C5731a aVar2 : this.f18901a.values()) {
            aVar2.m23110a(f18900f).execute(RunnableC5716q.m23162a(aVar2, iVar, aVar));
        }
    }

    /* renamed from: a */
    public void m23115a(AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        for (C5733c cVar : this.f18903c.values()) {
            cVar.m23110a(f18900f).execute(RunnableC5711p.m23172a(cVar, iVar, inAppMessagingErrorReason));
        }
    }

    /* renamed from: b */
    public void m23114b(AbstractC5863i iVar) {
        for (C5732b bVar : this.f18902b.values()) {
            bVar.m23110a(f18900f).execute(RunnableC5724r.m23134a(bVar, iVar));
        }
    }
}

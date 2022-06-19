package kotlinx.coroutines.p570b;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.C20159ao;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010��\b��\u0018��2\u00020*B\u0007¢\u0006\u0004\b\u0001\u0010\u0002J!\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020��¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020��¢\u0006\u0004\b\u001a\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\r*\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u001e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020#8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020#8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b'\u0010%¨\u0006)"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "<init>", "()V", "Lkotlinx/coroutines/scheduling/Task;", "task", "", "fair", "add", "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "addLast", "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "", "offloadAllWorkTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V", "poll", "()Lkotlinx/coroutines/scheduling/Task;", "pollBuffer", "queue", "pollTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z", "victim", "", "tryStealBlockingFrom", "(Lkotlinx/coroutines/scheduling/WorkQueue;)J", "tryStealFrom", "blockingOnly", "tryStealLastScheduled", "(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J", "decrementIfBlocking", "(Lkotlinx/coroutines/scheduling/Task;)V", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "", "getBufferSize$kotlinx_coroutines_core", "()I", "bufferSize", "getSize$kotlinx_coroutines_core", "size", "kotlinx-coroutines-core", ""}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.n */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/n.class */
public final class C20190n {

    /* renamed from: b */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f66632b = AtomicReferenceFieldUpdater.newUpdater(C20190n.class, Object.class, "lastScheduledTask");

    /* renamed from: c */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66633c = AtomicIntegerFieldUpdater.newUpdater(C20190n.class, "producerIndex");

    /* renamed from: d */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66634d = AtomicIntegerFieldUpdater.newUpdater(C20190n.class, "consumerIndex");

    /* renamed from: e */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66635e = AtomicIntegerFieldUpdater.newUpdater(C20190n.class, "blockingTasksInBuffer");

    /* renamed from: a */
    private final AtomicReferenceArray<AbstractRunnableC20186j> f66636a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    /* renamed from: a */
    private final long m1020a(C20190n c20190n, boolean z) {
        AbstractRunnableC20186j abstractRunnableC20186j;
        do {
            abstractRunnableC20186j = (AbstractRunnableC20186j) c20190n.lastScheduledTask;
            if (abstractRunnableC20186j == null) {
                return -2L;
            }
            if (z) {
                boolean z2 = true;
                if (abstractRunnableC20186j.f66624h.mo1027d() != 1) {
                    z2 = false;
                }
                if (!z2) {
                    return -2L;
                }
            }
            long mo1029a = C20189m.f66631f.mo1029a() - abstractRunnableC20186j.f66623g;
            if (mo1029a < C20189m.f66626a) {
                return C20189m.f66626a - mo1029a;
            }
        } while (!f66632b.compareAndSet(c20190n, abstractRunnableC20186j, null));
        m1023a(abstractRunnableC20186j, false);
        return -1L;
    }

    /* renamed from: a */
    private final AbstractRunnableC20186j m1024a(AbstractRunnableC20186j abstractRunnableC20186j) {
        boolean z = true;
        if (abstractRunnableC20186j.f66624h.mo1027d() != 1) {
            z = false;
        }
        if (z) {
            f66635e.incrementAndGet(this);
        }
        if (m1016c() == 127) {
            return abstractRunnableC20186j;
        }
        int i = this.producerIndex & 127;
        while (this.f66636a.get(i) != null) {
            Thread.yield();
        }
        this.f66636a.lazySet(i, abstractRunnableC20186j);
        f66633c.incrementAndGet(this);
        return null;
    }

    /* renamed from: b */
    private final void m1018b(AbstractRunnableC20186j abstractRunnableC20186j) {
        if (abstractRunnableC20186j != null) {
            if (!(abstractRunnableC20186j.f66624h.mo1027d() == 1)) {
                return;
            }
            int decrementAndGet = f66635e.decrementAndGet(this);
            if (!C20159ao.m1083a()) {
                return;
            }
            boolean z = false;
            if (decrementAndGet >= 0) {
                z = true;
            }
            if (!z) {
                throw new AssertionError();
            }
        }
    }

    /* renamed from: c */
    private int m1016c() {
        return this.producerIndex - this.consumerIndex;
    }

    /* renamed from: d */
    private final AbstractRunnableC20186j m1015d() {
        AbstractRunnableC20186j andSet;
        while (true) {
            int i = this.consumerIndex;
            if (i - this.producerIndex == 0) {
                return null;
            }
            if (f66634d.compareAndSet(this, i, i + 1) && (andSet = this.f66636a.getAndSet(i & 127, null)) != null) {
                m1018b(andSet);
                return andSet;
            }
        }
    }

    /* renamed from: a */
    public final int m1026a() {
        return this.lastScheduledTask != null ? m1016c() + 1 : m1016c();
    }

    /* renamed from: a */
    public final long m1022a(C20190n c20190n) {
        if (C20159ao.m1083a()) {
            if (!(m1016c() == 0)) {
                throw new AssertionError();
            }
        }
        AbstractRunnableC20186j m1015d = c20190n.m1015d();
        if (m1015d != null) {
            AbstractRunnableC20186j m1023a = m1023a(m1015d, false);
            if (!C20159ao.m1083a()) {
                return -1L;
            }
            if (!(m1023a == null)) {
                throw new AssertionError();
            }
            return -1L;
        }
        return m1020a(c20190n, false);
    }

    /* renamed from: a */
    public final AbstractRunnableC20186j m1023a(AbstractRunnableC20186j abstractRunnableC20186j, boolean z) {
        if (z) {
            return m1024a(abstractRunnableC20186j);
        }
        AbstractRunnableC20186j abstractRunnableC20186j2 = (AbstractRunnableC20186j) f66632b.getAndSet(this, abstractRunnableC20186j);
        if (abstractRunnableC20186j2 != null) {
            return m1024a(abstractRunnableC20186j2);
        }
        return null;
    }

    /* renamed from: a */
    public final void m1025a(C20181e c20181e) {
        boolean z;
        AbstractRunnableC20186j abstractRunnableC20186j = (AbstractRunnableC20186j) f66632b.getAndSet(this, null);
        if (abstractRunnableC20186j != null) {
            c20181e.m848a(abstractRunnableC20186j);
        }
        do {
            AbstractRunnableC20186j m1015d = m1015d();
            if (m1015d == null) {
                z = false;
            } else {
                c20181e.m848a(m1015d);
                z = true;
            }
        } while (z);
    }

    /* renamed from: b */
    public final long m1017b(C20190n c20190n) {
        if (C20159ao.m1083a()) {
            if (!(m1016c() == 0)) {
                throw new AssertionError();
            }
        }
        int i = c20190n.producerIndex;
        AtomicReferenceArray<AbstractRunnableC20186j> atomicReferenceArray = c20190n.f66636a;
        for (int i2 = c20190n.consumerIndex; i2 != i; i2++) {
            int i3 = i2 & 127;
            if (c20190n.blockingTasksInBuffer == 0) {
                break;
            }
            AbstractRunnableC20186j abstractRunnableC20186j = atomicReferenceArray.get(i3);
            if (abstractRunnableC20186j != null) {
                if ((abstractRunnableC20186j.f66624h.mo1027d() == 1) && atomicReferenceArray.compareAndSet(i3, abstractRunnableC20186j, null)) {
                    f66635e.decrementAndGet(c20190n);
                    m1023a(abstractRunnableC20186j, false);
                    return -1L;
                }
            }
        }
        return m1020a(c20190n, true);
    }

    /* renamed from: b */
    public final AbstractRunnableC20186j m1019b() {
        AbstractRunnableC20186j abstractRunnableC20186j = (AbstractRunnableC20186j) f66632b.getAndSet(this, null);
        AbstractRunnableC20186j abstractRunnableC20186j2 = abstractRunnableC20186j;
        if (abstractRunnableC20186j == null) {
            abstractRunnableC20186j2 = m1015d();
        }
        return abstractRunnableC20186j2;
    }
}

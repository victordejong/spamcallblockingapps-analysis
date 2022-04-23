package kotlinx.coroutines.b;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.ao;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010��\b��\u0018��2\u00020*B\u0007¢\u0006\u0004\b\u0001\u0010\u0002J!\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020��¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020��¢\u0006\u0004\b\u001a\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020��2\u0006\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u00020\r*\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u001e\u0010\u001fR\u001e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030 8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020#8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0016\u0010(\u001a\u00020#8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b'\u0010%¨\u0006)"}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "<init>", "()V", "Lkotlinx/coroutines/scheduling/Task;", "task", "", "fair", "add", "(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;", "addLast", "(Lkotlinx/coroutines/scheduling/Task;)Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalQueue", "", "offloadAllWorkTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V", "poll", "()Lkotlinx/coroutines/scheduling/Task;", "pollBuffer", "queue", "pollTo", "(Lkotlinx/coroutines/scheduling/GlobalQueue;)Z", "victim", "", "tryStealBlockingFrom", "(Lkotlinx/coroutines/scheduling/WorkQueue;)J", "tryStealFrom", "blockingOnly", "tryStealLastScheduled", "(Lkotlinx/coroutines/scheduling/WorkQueue;Z)J", "decrementIfBlocking", "(Lkotlinx/coroutines/scheduling/Task;)V", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "", "getBufferSize$kotlinx_coroutines_core", "()I", "bufferSize", "getSize$kotlinx_coroutines_core", "size", "kotlinx-coroutines-core", ""}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/n.class */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f38726b = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "lastScheduledTask");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f38727c = AtomicIntegerFieldUpdater.newUpdater(n.class, "producerIndex");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f38728d = AtomicIntegerFieldUpdater.newUpdater(n.class, "consumerIndex");
    private static final /* synthetic */ AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(n.class, "blockingTasksInBuffer");

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReferenceArray<j> f38729a = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    private final long a(n nVar, boolean z) {
        j jVar;
        do {
            jVar = (j) nVar.lastScheduledTask;
            if (jVar == null) {
                return -2L;
            }
            if (z) {
                boolean z2 = true;
                if (jVar.h.d() != 1) {
                    z2 = false;
                }
                if (!z2) {
                    return -2L;
                }
            }
            long a2 = m.f.a() - jVar.g;
            if (a2 < m.f38722a) {
                return m.f38722a - a2;
            }
        } while (!f38726b.compareAndSet(nVar, jVar, null));
        a(jVar, false);
        return -1L;
    }

    private final j a(j jVar) {
        boolean z = true;
        if (jVar.h.d() != 1) {
            z = false;
        }
        if (z) {
            e.incrementAndGet(this);
        }
        if (c() == 127) {
            return jVar;
        }
        int i = this.producerIndex & 127;
        while (this.f38729a.get(i) != null) {
            Thread.yield();
        }
        this.f38729a.lazySet(i, jVar);
        f38727c.incrementAndGet(this);
        return null;
    }

    private final void b(j jVar) {
        if (jVar != null) {
            boolean z = false;
            if (jVar.h.d() == 1) {
                int decrementAndGet = e.decrementAndGet(this);
                if (ao.a()) {
                    if (decrementAndGet >= 0) {
                        z = true;
                    }
                    if (!z) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    private int c() {
        return this.producerIndex - this.consumerIndex;
    }

    private final j d() {
        j andSet;
        while (true) {
            int i = this.consumerIndex;
            if (i - this.producerIndex == 0) {
                return null;
            }
            if (f38728d.compareAndSet(this, i, i + 1) && (andSet = this.f38729a.getAndSet(i & 127, null)) != null) {
                b(andSet);
                return andSet;
            }
        }
    }

    public final int a() {
        return this.lastScheduledTask != null ? c() + 1 : c();
    }

    public final long a(n nVar) {
        boolean z = true;
        if (ao.a()) {
            if (!(c() == 0)) {
                throw new AssertionError();
            }
        }
        j d2 = nVar.d();
        if (d2 == null) {
            return a(nVar, false);
        }
        j a2 = a(d2, false);
        if (!ao.a()) {
            return -1L;
        }
        if (a2 != null) {
            z = false;
        }
        if (z) {
            return -1L;
        }
        throw new AssertionError();
    }

    public final j a(j jVar, boolean z) {
        if (z) {
            return a(jVar);
        }
        j jVar2 = (j) f38726b.getAndSet(this, jVar);
        if (jVar2 == null) {
            return null;
        }
        return a(jVar2);
    }

    public final void a(e eVar) {
        boolean z;
        j jVar = (j) f38726b.getAndSet(this, null);
        if (jVar != null) {
            eVar.a(jVar);
        }
        do {
            j d2 = d();
            if (d2 == null) {
                z = false;
            } else {
                eVar.a(d2);
                z = true;
            }
        } while (z);
    }

    public final long b(n nVar) {
        if (ao.a()) {
            if (!(c() == 0)) {
                throw new AssertionError();
            }
        }
        int i = nVar.producerIndex;
        AtomicReferenceArray<j> atomicReferenceArray = nVar.f38729a;
        for (int i2 = nVar.consumerIndex; i2 != i; i2++) {
            int i3 = i2 & 127;
            if (nVar.blockingTasksInBuffer == 0) {
                break;
            }
            j jVar = atomicReferenceArray.get(i3);
            if (jVar != null) {
                if ((jVar.h.d() == 1) && atomicReferenceArray.compareAndSet(i3, jVar, null)) {
                    e.decrementAndGet(nVar);
                    a(jVar, false);
                    return -1L;
                }
            }
        }
        return a(nVar, true);
    }

    public final j b() {
        j jVar = (j) f38726b.getAndSet(this, null);
        j jVar2 = jVar;
        if (jVar == null) {
            jVar2 = d();
        }
        return jVar2;
    }
}

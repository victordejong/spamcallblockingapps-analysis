package kotlinx.coroutines.p090b;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
/* renamed from: kotlinx.coroutines.b.o */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/o.class */
public final class C1839o {

    /* renamed from: d */
    private static final AtomicReferenceFieldUpdater f4582d = AtomicReferenceFieldUpdater.newUpdater(C1839o.class, Object.class, "lastScheduledTask");

    /* renamed from: a */
    static final AtomicIntegerFieldUpdater f4580a = AtomicIntegerFieldUpdater.newUpdater(C1839o.class, "producerIndex");

    /* renamed from: b */
    static final AtomicIntegerFieldUpdater f4581b = AtomicIntegerFieldUpdater.newUpdater(C1839o.class, "consumerIndex");

    /* renamed from: c */
    private final AtomicReferenceArray<AbstractRunnableC1833i> f4583c = new AtomicReferenceArray<>(128);
    private volatile Object lastScheduledTask = null;
    volatile int producerIndex = 0;
    volatile int consumerIndex = 0;

    /* renamed from: a */
    private final void m2824a(C1829e c1829e, AbstractRunnableC1833i abstractRunnableC1833i) {
        if (c1829e.m2637a((C1829e) abstractRunnableC1833i)) {
            return;
        }
        throw new IllegalStateException("GlobalQueue could not be closed yet".toString());
    }

    /* renamed from: a */
    private final boolean m2826a(long j, C1839o c1839o, C1829e c1829e) {
        AbstractRunnableC1833i abstractRunnableC1833i = (AbstractRunnableC1833i) c1839o.lastScheduledTask;
        if (abstractRunnableC1833i == null || j - abstractRunnableC1833i.f4567f < C1837m.f4573a || !f4582d.compareAndSet(c1839o, abstractRunnableC1833i, null)) {
            return false;
        }
        m2822a(abstractRunnableC1833i, c1829e);
        return true;
    }

    /* renamed from: a */
    private final boolean m2823a(AbstractRunnableC1833i abstractRunnableC1833i) {
        if (m2827a() == 127) {
            return false;
        }
        int i = this.producerIndex & 127;
        if (this.f4583c.get(i) != null) {
            return false;
        }
        this.f4583c.lazySet(i, abstractRunnableC1833i);
        f4580a.incrementAndGet(this);
        return true;
    }

    /* renamed from: b */
    private final void m2818b(C1829e c1829e) {
        AbstractRunnableC1833i abstractRunnableC1833i;
        int c = C1713d.m3076c(m2827a() / 2, 1);
        for (int i = 0; i < c; i++) {
            while (true) {
                int i2 = this.consumerIndex;
                abstractRunnableC1833i = null;
                if (i2 - this.producerIndex == 0) {
                    break;
                }
                int i3 = i2 & 127;
                if (((AbstractRunnableC1833i) this.f4583c.get(i3)) != null && f4581b.compareAndSet(this, i2, i2 + 1)) {
                    abstractRunnableC1833i = (AbstractRunnableC1833i) this.f4583c.getAndSet(i3, null);
                    break;
                }
            }
            if (abstractRunnableC1833i == null) {
                return;
            }
            m2824a(c1829e, abstractRunnableC1833i);
        }
    }

    /* renamed from: a */
    public final int m2827a() {
        return this.producerIndex - this.consumerIndex;
    }

    /* renamed from: a */
    public final void m2825a(C1829e c1829e) {
        AbstractRunnableC1833i abstractRunnableC1833i;
        C1694h.m3117b(c1829e, "globalQueue");
        AbstractRunnableC1833i abstractRunnableC1833i2 = (AbstractRunnableC1833i) f4582d.getAndSet(this, null);
        if (abstractRunnableC1833i2 != null) {
            m2824a(c1829e, abstractRunnableC1833i2);
        }
        while (true) {
            int i = this.consumerIndex;
            if (i - this.producerIndex == 0) {
                abstractRunnableC1833i = null;
            } else {
                int i2 = i & 127;
                if (((AbstractRunnableC1833i) this.f4583c.get(i2)) != null && f4581b.compareAndSet(this, i, i + 1)) {
                    abstractRunnableC1833i = (AbstractRunnableC1833i) this.f4583c.getAndSet(i2, null);
                }
            }
            if (abstractRunnableC1833i != null) {
                m2824a(c1829e, abstractRunnableC1833i);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public final boolean m2822a(AbstractRunnableC1833i abstractRunnableC1833i, C1829e c1829e) {
        C1694h.m3117b(abstractRunnableC1833i, "task");
        C1694h.m3117b(c1829e, "globalQueue");
        AbstractRunnableC1833i abstractRunnableC1833i2 = (AbstractRunnableC1833i) f4582d.getAndSet(this, abstractRunnableC1833i);
        if (abstractRunnableC1833i2 != null) {
            return m2817b(abstractRunnableC1833i2, c1829e);
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m2820a(C1839o c1839o, C1829e c1829e) {
        boolean z;
        AbstractRunnableC1833i abstractRunnableC1833i;
        C1694h.m3117b(c1839o, "victim");
        C1694h.m3117b(c1829e, "globalQueue");
        long mo2828a = C1837m.f4579g.mo2828a();
        int m2827a = c1839o.m2827a();
        if (m2827a == 0) {
            return m2826a(mo2828a, c1839o, c1829e);
        }
        int c = C1713d.m3076c(m2827a / 2, 1);
        int i = 0;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i >= c) {
                break;
            }
            while (true) {
                int i2 = c1839o.consumerIndex;
                abstractRunnableC1833i = null;
                if (i2 - c1839o.producerIndex != 0) {
                    int i3 = i2 & 127;
                    AbstractRunnableC1833i abstractRunnableC1833i2 = (AbstractRunnableC1833i) c1839o.f4583c.get(i3);
                    if (abstractRunnableC1833i2 != null) {
                        if (!(mo2828a - abstractRunnableC1833i2.f4567f >= C1837m.f4573a || c1839o.m2827a() > C1837m.f4574b)) {
                            break;
                        } else if (f4581b.compareAndSet(c1839o, i2, i2 + 1)) {
                            abstractRunnableC1833i = (AbstractRunnableC1833i) c1839o.f4583c.getAndSet(i3, null);
                            break;
                        }
                    }
                } else {
                    break;
                }
            }
            if (abstractRunnableC1833i == null) {
                break;
            }
            m2822a(abstractRunnableC1833i, c1829e);
            i++;
            z2 = true;
        }
        return z;
    }

    /* renamed from: b */
    public final AbstractRunnableC1833i m2819b() {
        AbstractRunnableC1833i abstractRunnableC1833i = null;
        AbstractRunnableC1833i abstractRunnableC1833i2 = (AbstractRunnableC1833i) f4582d.getAndSet(this, null);
        if (abstractRunnableC1833i2 == null) {
            while (true) {
                int i = this.consumerIndex;
                if (i - this.producerIndex != 0) {
                    int i2 = i & 127;
                    if (((AbstractRunnableC1833i) this.f4583c.get(i2)) != null && f4581b.compareAndSet(this, i, i + 1)) {
                        abstractRunnableC1833i = (AbstractRunnableC1833i) this.f4583c.getAndSet(i2, null);
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            abstractRunnableC1833i = abstractRunnableC1833i2;
        }
        return abstractRunnableC1833i;
    }

    /* renamed from: b */
    public final boolean m2817b(AbstractRunnableC1833i abstractRunnableC1833i, C1829e c1829e) {
        C1694h.m3117b(abstractRunnableC1833i, "task");
        C1694h.m3117b(c1829e, "globalQueue");
        boolean z = true;
        while (true) {
            boolean z2 = z;
            if (!m2823a(abstractRunnableC1833i)) {
                m2818b(c1829e);
                z = false;
            } else {
                return z2;
            }
        }
    }

    /* renamed from: c */
    public final int m2816c() {
        return this.lastScheduledTask != null ? m2827a() + 1 : m2827a();
    }
}

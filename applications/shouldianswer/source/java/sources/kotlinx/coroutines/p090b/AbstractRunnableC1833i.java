package kotlinx.coroutines.p090b;

import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.b.i */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/i.class */
public abstract class AbstractRunnableC1833i implements Runnable {

    /* renamed from: f */
    public long f4567f;

    /* renamed from: g */
    public AbstractC1834j f4568g;

    public AbstractRunnableC1833i() {
        this(0L, C1832h.f4565a);
    }

    public AbstractRunnableC1833i(long j, AbstractC1834j abstractC1834j) {
        C1694h.m3117b(abstractC1834j, "taskContext");
        this.f4567f = j;
        this.f4568g = abstractC1834j;
    }

    /* renamed from: j */
    public final EnumC1836l m2831j() {
        return this.f4568g.mo2829c();
    }
}

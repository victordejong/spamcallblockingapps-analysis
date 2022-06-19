package kotlinx.coroutines.p090b;

import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.C1789ag;
/* renamed from: kotlinx.coroutines.b.k */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/k.class */
public final class C1835k extends AbstractRunnableC1833i {

    /* renamed from: a */
    public final Runnable f4569a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1835k(Runnable runnable, long j, AbstractC1834j abstractC1834j) {
        super(j, abstractC1834j);
        C1694h.m3117b(runnable, "block");
        C1694h.m3117b(abstractC1834j, "taskContext");
        this.f4569a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f4569a.run();
        } finally {
            this.f4568g.mo2830b();
        }
    }

    public String toString() {
        return "Task[" + C1789ag.m2954b(this.f4569a) + '@' + C1789ag.m2956a(this.f4569a) + ", " + this.f4567f + ", " + this.f4568g + ']';
    }
}

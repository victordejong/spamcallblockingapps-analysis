package kotlinx.coroutines.p090b;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1841bb;
import kotlinx.coroutines.AbstractC1950y;
import kotlinx.coroutines.RunnableC1790ah;
/* renamed from: kotlinx.coroutines.b.d */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/d.class */
public class C1828d extends AbstractC1841bb {

    /* renamed from: b */
    private ExecutorC1822a f4554b;

    /* renamed from: c */
    private final int f4555c;

    /* renamed from: d */
    private final int f4556d;

    /* renamed from: e */
    private final long f4557e;

    /* renamed from: f */
    private final String f4558f;

    public C1828d(int i, int i2, long j, String str) {
        C1694h.m3117b(str, "schedulerName");
        this.f4555c = i;
        this.f4556d = i2;
        this.f4557e = j;
        this.f4558f = str;
        this.f4554b = m2834b();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1828d(int i, int i2, String str) {
        this(i, i2, C1837m.f4578f, str);
        C1694h.m3117b(str, "schedulerName");
    }

    public /* synthetic */ C1828d(int i, int i2, String str, int i3, C1691e c1691e) {
        this((i3 & 1) != 0 ? C1837m.f4576d : i, (i3 & 2) != 0 ? C1837m.f4577e : i2, (i3 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    /* renamed from: b */
    private final ExecutorC1822a m2834b() {
        return new ExecutorC1822a(this.f4555c, this.f4556d, this.f4557e, this.f4558f);
    }

    @Override // kotlinx.coroutines.AbstractC1841bb
    /* renamed from: a */
    public Executor mo2525a() {
        return this.f4554b;
    }

    /* renamed from: a */
    public final AbstractC1950y m2836a(int i) {
        if (i > 0) {
            return new ExecutorC1830f(this, i, EnumC1836l.PROBABLY_BLOCKING);
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but have " + i).toString());
    }

    /* renamed from: a */
    public final void m2835a(Runnable runnable, AbstractC1834j abstractC1834j, boolean z) {
        C1694h.m3117b(runnable, "block");
        C1694h.m3117b(abstractC1834j, "context");
        try {
            this.f4554b.m2892a(runnable, abstractC1834j, z);
        } catch (RejectedExecutionException e) {
            RunnableC1790ah.f4472b.m2914a(this.f4554b.m2893a(runnable, abstractC1834j));
        }
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        try {
            ExecutorC1822a.m2888a(this.f4554b, runnable, null, false, 6, null);
        } catch (RejectedExecutionException e) {
            RunnableC1790ah.f4472b.mo2512a(abstractC1646f, runnable);
        }
    }

    public void close() {
        this.f4554b.close();
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return super.toString() + "[scheduler = " + this.f4554b + ']';
    }
}

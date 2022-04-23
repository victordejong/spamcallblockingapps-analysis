package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.schedulers.RxThreadFactory;
import java.util.concurrent.ThreadFactory;
import p530d.p541c.AbstractC9845s;
/* renamed from: d.c.b0.g.d */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/d.class */
public final class C9782d extends AbstractC9845s {

    /* renamed from: c */
    public static final RxThreadFactory f36962c = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));

    /* renamed from: b */
    public final ThreadFactory f36963b;

    public C9782d() {
        this(f36962c);
    }

    public C9782d(ThreadFactory threadFactory) {
        this.f36963b = threadFactory;
    }

    @Override // p530d.p541c.AbstractC9845s
    /* renamed from: a */
    public AbstractC9845s.AbstractC9848c mo1834a() {
        return new C9783e(this.f36963b);
    }
}

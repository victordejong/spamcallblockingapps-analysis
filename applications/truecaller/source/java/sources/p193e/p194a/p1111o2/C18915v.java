package p193e.p194a.p1111o2;

import java.util.concurrent.atomic.AtomicLong;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.o2.v */
/* loaded from: classes4-dex2jar.jar:e/a/o2/v.class */
public final class C18915v extends m implements a<Long> {

    /* renamed from: b */
    public final /* synthetic */ AtomicLong f53048b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18915v(AtomicLong atomicLong) {
        super(0);
        this.f53048b = atomicLong;
    }

    public Object invoke() {
        return Long.valueOf(this.f53048b.getAndIncrement());
    }
}

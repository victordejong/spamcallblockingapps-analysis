package p081h.p203i.p204a.p224e.p259j.p268i;

import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* renamed from: h.i.a.e.j.i.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/i/c.class */
public final class C7752c implements AbstractC7751b {
    public C7752c() {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p268i.AbstractC7751b
    @NonNull
    /* renamed from: a */
    public final ScheduledExecutorService mo19589a(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}

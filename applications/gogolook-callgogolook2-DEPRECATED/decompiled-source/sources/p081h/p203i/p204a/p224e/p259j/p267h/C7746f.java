package p081h.p203i.p204a.p224e.p259j.p267h;

import androidx.annotation.NonNull;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: h.i.a.e.j.h.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/h/f.class */
public final class C7746f implements AbstractC7745e {
    public C7746f() {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p267h.AbstractC7745e
    @NonNull
    /* renamed from: a */
    public final ScheduledExecutorService mo19591a(int i, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
    }
}

package p081h.p203i.p204a.p224e.p259j.p265f;

import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: h.i.a.e.j.f.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/f/h.class */
public final class C7536h implements AbstractC7533e {
    public C7536h() {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p265f.AbstractC7533e
    @NonNull
    /* renamed from: a */
    public final ExecutorService mo20385a(int i, ThreadFactory threadFactory, int i2) {
        return Executors.newFixedThreadPool(2, threadFactory);
    }
}

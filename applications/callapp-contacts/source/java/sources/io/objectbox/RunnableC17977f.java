package io.objectbox;

import io.objectbox.p503c.AbstractC17958a;
import io.objectbox.p503c.AbstractC17959b;
import io.objectbox.p503c.C17960c;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Deque;
import org.p579a.p580a.p581a.C20718c;
/* renamed from: io.objectbox.f */
/* loaded from: classes5-dex2jar.jar:io/objectbox/f.class */
public final class RunnableC17977f implements AbstractC17959b<Class>, Runnable {

    /* renamed from: a */
    final BoxStore f62802a;

    /* renamed from: b */
    final C20718c<Integer, AbstractC17958a<Class>> f62803b = C20718c.m607a(C20718c.EnumC20720a.THREAD_SAFE);

    /* renamed from: c */
    final Deque<int[]> f62804c = new ArrayDeque();

    /* renamed from: d */
    volatile boolean f62805d;

    public RunnableC17977f(BoxStore boxStore) {
        this.f62802a = boxStore;
    }

    /* renamed from: a */
    private void m4656a(AbstractC17958a<Class> abstractC17958a, int i) {
        C17960c.m4681a(this.f62803b.get(Integer.valueOf(i)), abstractC17958a);
    }

    /* renamed from: a */
    private static void m4655a(Class cls) {
        RuntimeException runtimeException = new RuntimeException("Observer failed while processing data for " + cls + ". Consider using an ErrorObserver");
        runtimeException.printStackTrace();
        throw runtimeException;
    }

    /* renamed from: a */
    public /* synthetic */ void m4654a(Object obj, AbstractC17958a abstractC17958a) {
        for (Class<?> cls : obj != null ? Collections.singletonList((Class) obj) : this.f62802a.m4731c()) {
            try {
                abstractC17958a.onData(cls);
            } catch (RuntimeException e) {
                m4655a(cls);
            }
        }
    }

    @Override // io.objectbox.p503c.AbstractC17959b
    /* renamed from: a */
    public final void mo4591a(AbstractC17958a<Class> abstractC17958a, Object obj) {
        if (obj != null) {
            this.f62803b.m613a((C20718c<Integer, AbstractC17958a<Class>>) Integer.valueOf(this.f62802a.m4734b((Class) obj)), (Integer) abstractC17958a);
            return;
        }
        for (int i : this.f62802a.f62680d) {
            this.f62803b.m613a((C20718c<Integer, AbstractC17958a<Class>>) Integer.valueOf(i), (Integer) abstractC17958a);
        }
    }

    @Override // io.objectbox.p503c.AbstractC17959b
    /* renamed from: b */
    public final void mo4589b(AbstractC17958a<Class> abstractC17958a, Object obj) {
        if (obj != null) {
            m4656a(abstractC17958a, this.f62802a.m4734b((Class) obj));
            return;
        }
        for (int i : this.f62802a.f62680d) {
            m4656a(abstractC17958a, i);
        }
    }

    @Override // io.objectbox.p503c.AbstractC17959b
    /* renamed from: c */
    public final void mo4588c(final AbstractC17958a<Class> abstractC17958a, final Object obj) {
        this.f62802a.m4729c(new Runnable() { // from class: io.objectbox._$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns
            @Override // java.lang.Runnable
            public final void run() {
                RunnableC17977f.this.m4654a(obj, abstractC17958a);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0007  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.objectbox.RunnableC17977f.run():void");
    }
}

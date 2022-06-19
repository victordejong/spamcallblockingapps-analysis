package androidx.room;

import androidx.lifecycle.LiveData;
import androidx.p010a.p011a.p012a.C0098a;
import androidx.room.C2733e;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.l */
/* loaded from: classes-dex2jar.jar:androidx/room/l.class */
public final class C2758l<T> extends LiveData<T> {

    /* renamed from: g */
    final AbstractC2748h f10460g;

    /* renamed from: h */
    final boolean f10461h;

    /* renamed from: i */
    final Callable<T> f10462i;

    /* renamed from: j */
    final C2733e.AbstractC2736b f10463j;

    /* renamed from: k */
    final AtomicBoolean f10464k = new AtomicBoolean(true);

    /* renamed from: l */
    final AtomicBoolean f10465l = new AtomicBoolean(false);

    /* renamed from: m */
    final AtomicBoolean f10466m = new AtomicBoolean(false);

    /* renamed from: n */
    final Runnable f10467n = new Runnable() { // from class: androidx.room.l.1
        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            if (C2758l.this.f10466m.compareAndSet(false, true)) {
                C2733e c2733e = C2758l.this.f10460g.f10419e;
                c2733e.m39980a(new C2733e.C2738d(c2733e, C2758l.this.f10463j));
            }
            do {
                if (C2758l.this.f10465l.compareAndSet(false, true)) {
                    T t = null;
                    boolean z2 = false;
                    while (true) {
                        try {
                            z = z2;
                            if (!C2758l.this.f10464k.compareAndSet(true, false)) {
                                break;
                            }
                            try {
                                t = C2758l.this.f10462i.call();
                                z2 = true;
                            } catch (Exception e) {
                                throw new RuntimeException("Exception while computing database live data.", e);
                            }
                        } finally {
                            C2758l.this.f10465l.set(false);
                        }
                    }
                    if (z) {
                        C2758l.this.mo43287a((C2758l) t);
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    return;
                }
            } while (C2758l.this.f10464k.get());
        }
    };

    /* renamed from: o */
    final Runnable f10468o = new Runnable() { // from class: androidx.room.l.2
        @Override // java.lang.Runnable
        public final void run() {
            boolean c = C2758l.this.m43330c();
            if (!C2758l.this.f10464k.compareAndSet(false, true) || !c) {
                return;
            }
            C2758l.this.m39942d().execute(C2758l.this.f10467n);
        }
    };

    /* renamed from: p */
    private final C2732d f10469p;

    public C2758l(AbstractC2748h abstractC2748h, C2732d c2732d, boolean z, Callable<T> callable, String[] strArr) {
        this.f10460g = abstractC2748h;
        this.f10461h = z;
        this.f10462i = callable;
        this.f10469p = c2732d;
        this.f10463j = new C2733e.AbstractC2736b(strArr) { // from class: androidx.room.l.3
            @Override // androidx.room.C2733e.AbstractC2736b
            /* renamed from: a */
            public final void mo39941a(Set<String> set) {
                C0098a m46411a = C0098a.m46411a();
                Runnable runnable = C2758l.this.f10468o;
                if (m46411a.mo46406c()) {
                    runnable.run();
                } else {
                    m46411a.mo46407b(runnable);
                }
            }
        };
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: a */
    public final void mo4697a() {
        super.mo4697a();
        this.f10469p.f10366a.add(this);
        m39942d().execute(this.f10467n);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: b */
    public final void mo4695b() {
        super.mo4695b();
        this.f10469p.f10366a.remove(this);
    }

    /* renamed from: d */
    final Executor m39942d() {
        return this.f10461h ? this.f10460g.f10417c : this.f10460g.f10416b;
    }
}

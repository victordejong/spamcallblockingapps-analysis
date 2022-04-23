package androidx.room;

import androidx.a.a.a.a;
import androidx.lifecycle.LiveData;
import androidx.room.e;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:androidx/room/l.class */
final class l<T> extends LiveData<T> {
    final h g;
    final boolean h;
    final Callable<T> i;
    final e.b j;
    final AtomicBoolean k = new AtomicBoolean(true);
    final AtomicBoolean l = new AtomicBoolean(false);
    final AtomicBoolean m = new AtomicBoolean(false);
    final Runnable n = new Runnable() { // from class: androidx.room.l.1
        @Override // java.lang.Runnable
        public final void run() {
            boolean z;
            if (l.this.m.compareAndSet(false, true)) {
                e eVar = l.this.g.e;
                eVar.a(new e.d(eVar, l.this.j));
            }
            do {
                if (l.this.l.compareAndSet(false, true)) {
                    T t = null;
                    z = false;
                    while (l.this.k.compareAndSet(true, false)) {
                        try {
                            try {
                                t = l.this.i.call();
                                z = true;
                            } catch (Exception e) {
                                throw new RuntimeException("Exception while computing database live data.", e);
                            }
                        } finally {
                            l.this.l.set(false);
                        }
                    }
                    if (z) {
                        l.this.a((l) t);
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    return;
                }
            } while (l.this.k.get());
        }
    };
    final Runnable o = new Runnable() { // from class: androidx.room.l.2
        @Override // java.lang.Runnable
        public final void run() {
            boolean c2 = l.this.c();
            if (l.this.k.compareAndSet(false, true) && c2) {
                l.this.d().execute(l.this.n);
            }
        }
    };
    private final d p;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(h hVar, d dVar, boolean z, Callable<T> callable, String[] strArr) {
        this.g = hVar;
        this.h = z;
        this.i = callable;
        this.p = dVar;
        this.j = new e.b(strArr) { // from class: androidx.room.l.3
            @Override // androidx.room.e.b
            public final void a(Set<String> set) {
                a a2 = a.a();
                Runnable runnable = l.this.o;
                if (a2.c()) {
                    runnable.run();
                } else {
                    a2.b(runnable);
                }
            }
        };
    }

    @Override // androidx.lifecycle.LiveData
    public final void a() {
        super.a();
        this.p.f5541a.add(this);
        d().execute(this.n);
    }

    @Override // androidx.lifecycle.LiveData
    public final void b() {
        super.b();
        this.p.f5541a.remove(this);
    }

    final Executor d() {
        return this.h ? this.g.f5573c : this.g.f5572b;
    }
}

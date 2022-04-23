package io.objectbox;

import io.objectbox.c.a;
import io.objectbox.c.b;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Deque;
import org.a.a.a.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/objectbox/f.class */
public final class f implements b<Class>, Runnable {

    /* renamed from: a  reason: collision with root package name */
    final BoxStore f36231a;

    /* renamed from: b  reason: collision with root package name */
    final c<Integer, a<Class>> f36232b = c.a(c.a.THREAD_SAFE);

    /* renamed from: c  reason: collision with root package name */
    final Deque<int[]> f36233c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    volatile boolean f36234d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(BoxStore boxStore) {
        this.f36231a = boxStore;
    }

    private void a(a<Class> aVar, int i) {
        io.objectbox.c.c.a(this.f36232b.get(Integer.valueOf(i)), aVar);
    }

    private static void a(Class cls) {
        RuntimeException runtimeException = new RuntimeException("Observer failed while processing data for " + cls + ". Consider using an ErrorObserver");
        runtimeException.printStackTrace();
        throw runtimeException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Object obj, a aVar) {
        for (Class<?> cls : obj != null ? Collections.singletonList((Class) obj) : this.f36231a.c()) {
            try {
                aVar.onData(cls);
            } catch (RuntimeException e) {
                a(cls);
            }
        }
    }

    @Override // io.objectbox.c.b
    public final void a(a<Class> aVar, Object obj) {
        if (obj == null) {
            for (int i : this.f36231a.f36180d) {
                this.f36232b.a((c<Integer, a<Class>>) Integer.valueOf(i), (Integer) aVar);
            }
            return;
        }
        this.f36232b.a((c<Integer, a<Class>>) Integer.valueOf(this.f36231a.b((Class) obj)), (Integer) aVar);
    }

    @Override // io.objectbox.c.b
    public final void b(a<Class> aVar, Object obj) {
        if (obj != null) {
            a(aVar, this.f36231a.b((Class) obj));
            return;
        }
        for (int i : this.f36231a.f36180d) {
            a(aVar, i);
        }
    }

    @Override // io.objectbox.c.b
    public final void c(final a<Class> aVar, final Object obj) {
        this.f36231a.c(new Runnable() { // from class: io.objectbox._$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns
            @Override // java.lang.Runnable
            public final void run() {
                f.this.a(obj, aVar);
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
        throw new UnsupportedOperationException("Method not decompiled: io.objectbox.f.run():void");
    }
}

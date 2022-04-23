package androidx.media2.exoplayer.external.b;

import androidx.media2.exoplayer.external.b.e;
import androidx.media2.exoplayer.external.b.f;
import androidx.media2.exoplayer.external.util.a;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.lang.Exception;
import java.util.ArrayDeque;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/g.class */
public abstract class g<I extends e, O extends f, E extends Exception> implements c<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f2953a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f2954b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f2955c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f2956d = new ArrayDeque<>();
    private final I[] e;
    private final O[] f;
    private int g;
    private int h;
    private I i;
    private E j;
    private boolean k;
    private boolean l;
    private int m;

    public g(I[] iArr, O[] oArr) {
        this.e = iArr;
        this.g = iArr.length;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = g();
        }
        this.f = oArr;
        this.h = oArr.length;
        for (int i2 = 0; i2 < this.h; i2++) {
            this.f[i2] = h();
        }
        Thread thread = new Thread() { // from class: androidx.media2.exoplayer.external.b.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                do {
                    try {
                    } catch (InterruptedException e) {
                        throw new IllegalStateException(e);
                    }
                } while (g.this.f());
            }
        };
        this.f2953a = thread;
        thread.start();
    }

    private void a(I i) {
        i.a();
        I[] iArr = this.e;
        int i2 = this.g;
        this.g = i2 + 1;
        iArr[i2] = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public I a() throws Exception {
        I i;
        synchronized (this.f2954b) {
            k();
            a.b(this.i == null);
            int i2 = this.g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.e;
                int i3 = i2 - 1;
                this.g = i3;
                i = iArr[i3];
            }
            this.i = i;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public O b() throws Exception {
        synchronized (this.f2954b) {
            k();
            if (this.f2956d.isEmpty()) {
                return null;
            }
            return this.f2956d.removeFirst();
        }
    }

    private void k() throws Exception {
        E e = this.j;
        if (e != null) {
            throw e;
        }
    }

    private void l() {
        if (m()) {
            this.f2954b.notify();
        }
    }

    private boolean m() {
        return !this.f2955c.isEmpty() && this.h > 0;
    }

    protected abstract E a(I i, O o, boolean z);

    protected abstract E a(Throwable th);

    public void a(O o) {
        synchronized (this.f2954b) {
            o.a();
            O[] oArr = this.f;
            int i = this.h;
            this.h = i + 1;
            oArr[i] = o;
            l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media2.exoplayer.external.b.c
    public final /* synthetic */ void a(Object obj) throws Exception {
        e eVar = (e) obj;
        synchronized (this.f2954b) {
            k();
            a.a(eVar == this.i);
            this.f2955c.addLast(eVar);
            l();
            this.i = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.b.c
    public final void c() {
        synchronized (this.f2954b) {
            this.k = true;
            this.m = 0;
            I i = this.i;
            if (i != null) {
                a((g<I, O, E>) i);
                this.i = null;
            }
            while (!this.f2955c.isEmpty()) {
                a((g<I, O, E>) this.f2955c.removeFirst());
            }
            while (!this.f2956d.isEmpty()) {
                this.f2956d.removeFirst().f();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.b.c
    public final void d() {
        synchronized (this.f2954b) {
            this.l = true;
            this.f2954b.notify();
        }
        try {
            this.f2953a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        a.b(this.g == this.e.length);
        for (I i : this.e) {
            i.c(1024);
        }
    }

    final boolean f() throws InterruptedException {
        synchronized (this.f2954b) {
            while (!this.l && !m()) {
                this.f2954b.wait();
            }
            if (this.l) {
                return false;
            }
            I removeFirst = this.f2955c.removeFirst();
            O[] oArr = this.f;
            int i = this.h - 1;
            this.h = i;
            O o = oArr[i];
            boolean z = this.k;
            this.k = false;
            if (removeFirst.c()) {
                o.a(4);
            } else {
                if (removeFirst.l_()) {
                    o.a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
                try {
                    this.j = a(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    this.j = a((Throwable) e);
                } catch (RuntimeException e2) {
                    this.j = a((Throwable) e2);
                }
                if (this.j != null) {
                    synchronized (this.f2954b) {
                    }
                    return false;
                }
            }
            synchronized (this.f2954b) {
                if (this.k) {
                    o.f();
                } else if (o.l_()) {
                    this.m++;
                    o.f();
                } else {
                    o.f2952c = this.m;
                    this.m = 0;
                    this.f2956d.addLast(o);
                }
                a((g<I, O, E>) removeFirst);
            }
            return true;
        }
    }

    protected abstract I g();

    protected abstract O h();
}

package androidx.media2.exoplayer.external.p063b;

import androidx.media2.exoplayer.external.p063b.AbstractC1443f;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1993a;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.lang.Exception;
import java.util.ArrayDeque;
/* renamed from: androidx.media2.exoplayer.external.b.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/b/g.class */
public abstract class AbstractC1444g<I extends C1442e, O extends AbstractC1443f, E extends Exception> implements AbstractC1440c<I, O, E> {

    /* renamed from: a */
    private final Thread f5500a;

    /* renamed from: b */
    private final Object f5501b = new Object();

    /* renamed from: c */
    private final ArrayDeque<I> f5502c = new ArrayDeque<>();

    /* renamed from: d */
    private final ArrayDeque<O> f5503d = new ArrayDeque<>();

    /* renamed from: e */
    private final I[] f5504e;

    /* renamed from: f */
    private final O[] f5505f;

    /* renamed from: g */
    private int f5506g;

    /* renamed from: h */
    private int f5507h;

    /* renamed from: i */
    private I f5508i;

    /* renamed from: j */
    private E f5509j;

    /* renamed from: k */
    private boolean f5510k;

    /* renamed from: l */
    private boolean f5511l;

    /* renamed from: m */
    private int f5512m;

    public AbstractC1444g(I[] iArr, O[] oArr) {
        this.f5504e = iArr;
        this.f5506g = iArr.length;
        for (int i = 0; i < this.f5506g; i++) {
            this.f5504e[i] = mo41971g();
        }
        this.f5505f = oArr;
        this.f5507h = oArr.length;
        for (int i2 = 0; i2 < this.f5507h; i2++) {
            this.f5505f[i2] = mo41970h();
        }
        Thread thread = new Thread() { // from class: androidx.media2.exoplayer.external.b.g.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                do {
                    try {
                    } catch (InterruptedException e) {
                        throw new IllegalStateException(e);
                    }
                } while (AbstractC1444g.this.m42900f());
            }
        };
        this.f5500a = thread;
        thread.start();
    }

    /* renamed from: a */
    private void m42902a(I i) {
        i.mo41916a();
        I[] iArr = this.f5504e;
        int i2 = this.f5506g;
        this.f5506g = i2 + 1;
        iArr[i2] = i;
    }

    /* renamed from: i */
    public I mo41992a() throws Exception {
        I i;
        synchronized (this.f5501b) {
            m42897k();
            C1993a.m41686b(this.f5508i == null);
            int i2 = this.f5506g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.f5504e;
                int i3 = i2 - 1;
                this.f5506g = i3;
                i = iArr[i3];
            }
            this.f5508i = i;
        }
        return i;
    }

    /* renamed from: j */
    public O mo41988b() throws Exception {
        synchronized (this.f5501b) {
            m42897k();
            if (this.f5503d.isEmpty()) {
                return null;
            }
            return this.f5503d.removeFirst();
        }
    }

    /* renamed from: k */
    private void m42897k() throws Exception {
        E e = this.f5509j;
        if (e == null) {
            return;
        }
        throw e;
    }

    /* renamed from: l */
    private void m42896l() {
        if (m42895m()) {
            this.f5501b.notify();
        }
    }

    /* renamed from: m */
    private boolean m42895m() {
        return !this.f5502c.isEmpty() && this.f5507h > 0;
    }

    /* renamed from: a */
    protected abstract E mo41976a(I i, O o, boolean z);

    /* renamed from: a */
    protected abstract E mo41972a(Throwable th);

    /* renamed from: a */
    public void mo41975a(O o) {
        synchronized (this.f5501b) {
            o.mo41916a();
            O[] oArr = this.f5505f;
            int i = this.f5507h;
            this.f5507h = i + 1;
            oArr[i] = o;
            m42896l();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: a */
    public final /* synthetic */ void mo41989a(Object obj) throws Exception {
        C1442e c1442e = (C1442e) obj;
        synchronized (this.f5501b) {
            m42897k();
            C1993a.m41688a(c1442e == this.f5508i);
            this.f5502c.addLast(c1442e);
            m42896l();
            this.f5508i = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: c */
    public final void mo41986c() {
        synchronized (this.f5501b) {
            this.f5510k = true;
            this.f5512m = 0;
            I i = this.f5508i;
            if (i != null) {
                m42902a((AbstractC1444g<I, O, E>) i);
                this.f5508i = null;
            }
            while (!this.f5502c.isEmpty()) {
                m42902a((AbstractC1444g<I, O, E>) this.f5502c.removeFirst());
            }
            while (!this.f5503d.isEmpty()) {
                this.f5503d.removeFirst().mo41914f();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.p063b.AbstractC1440c
    /* renamed from: d */
    public final void mo41985d() {
        synchronized (this.f5501b) {
            this.f5511l = true;
            this.f5501b.notify();
        }
        try {
            this.f5500a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: e */
    public final void m42901e() {
        C1993a.m41686b(this.f5506g == this.f5504e.length);
        for (I i : this.f5504e) {
            i.m42907c(1024);
        }
    }

    /* renamed from: f */
    final boolean m42900f() throws InterruptedException {
        synchronized (this.f5501b) {
            while (!this.f5511l && !m42895m()) {
                this.f5501b.wait();
            }
            if (this.f5511l) {
                return false;
            }
            I removeFirst = this.f5502c.removeFirst();
            O[] oArr = this.f5505f;
            int i = this.f5507h - 1;
            this.f5507h = i;
            O o = oArr[i];
            boolean z = this.f5510k;
            this.f5510k = false;
            if (removeFirst.m42911c()) {
                o.m42913a(4);
            } else {
                if (removeFirst.m42908l_()) {
                    o.m42913a(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
                }
                try {
                    this.f5509j = mo41976a(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    this.f5509j = mo41972a((Throwable) e);
                } catch (RuntimeException e2) {
                    this.f5509j = mo41972a((Throwable) e2);
                }
                if (this.f5509j != null) {
                    synchronized (this.f5501b) {
                    }
                    return false;
                }
            }
            synchronized (this.f5501b) {
                if (this.f5510k) {
                    o.mo41914f();
                } else if (o.m42908l_()) {
                    this.f5512m++;
                    o.mo41914f();
                } else {
                    o.f5499c = this.f5512m;
                    this.f5512m = 0;
                    this.f5503d.addLast(o);
                }
                m42902a((AbstractC1444g<I, O, E>) removeFirst);
            }
            return true;
        }
    }

    /* renamed from: g */
    protected abstract I mo41971g();

    /* renamed from: h */
    protected abstract O mo41970h();
}

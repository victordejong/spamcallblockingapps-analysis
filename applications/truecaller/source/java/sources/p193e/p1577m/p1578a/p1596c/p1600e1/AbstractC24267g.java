package p193e.p1577m.p1578a.p1596c.p1600e1;

import java.lang.Exception;
import java.util.ArrayDeque;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24266f;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24265e;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24563c;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24564d;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24567g;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24570i;
/* renamed from: e.m.a.c.e1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/e1/g.class */
public abstract class AbstractC24267g<I extends C24265e, O extends AbstractC24266f, E extends Exception> implements AbstractC24263c<I, O, E> {

    /* renamed from: a */
    public final Thread f67306a;

    /* renamed from: b */
    public final Object f67307b = new Object();

    /* renamed from: c */
    public final ArrayDeque<I> f67308c = new ArrayDeque<>();

    /* renamed from: d */
    public final ArrayDeque<O> f67309d = new ArrayDeque<>();

    /* renamed from: e */
    public final I[] f67310e;

    /* renamed from: f */
    public final O[] f67311f;

    /* renamed from: g */
    public int f67312g;

    /* renamed from: h */
    public int f67313h;

    /* renamed from: i */
    public I f67314i;

    /* renamed from: j */
    public E f67315j;

    /* renamed from: k */
    public boolean f67316k;

    /* renamed from: l */
    public boolean f67317l;

    /* renamed from: m */
    public int f67318m;

    /* renamed from: e.m.a.c.e1.g$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/e1/g$a.class */
    public class C24268a extends Thread {
        public C24268a() {
            AbstractC24267g.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AbstractC24267g abstractC24267g = AbstractC24267g.this;
            Objects.requireNonNull(abstractC24267g);
            do {
                try {
                } catch (InterruptedException e) {
                    throw new IllegalStateException(e);
                }
            } while (abstractC24267g.m5327f());
        }
    }

    public AbstractC24267g(I[] iArr, O[] oArr) {
        this.f67310e = iArr;
        this.f67312g = iArr.length;
        for (int i = 0; i < this.f67312g; i++) {
            this.f67310e[i] = new C24570i();
        }
        this.f67311f = oArr;
        this.f67313h = oArr.length;
        for (int i2 = 0; i2 < this.f67313h; i2++) {
            this.f67311f[i2] = new C24564d((AbstractC24563c) this);
        }
        C24268a c24268a = new C24268a();
        this.f67306a = c24268a;
        c24268a.start();
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    /* renamed from: a */
    public Object mo4879a() throws Exception {
        I i;
        synchronized (this.f67307b) {
            m5325h();
            C26232y.m2286x(this.f67314i == null);
            int i2 = this.f67312g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.f67310e;
                int i3 = i2 - 1;
                this.f67312g = i3;
                i = iArr[i3];
            }
            this.f67314i = i;
        }
        return i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    /* renamed from: c */
    public Object mo4877c() throws Exception {
        O removeFirst;
        synchronized (this.f67307b) {
            m5325h();
            removeFirst = this.f67309d.isEmpty() ? null : this.f67309d.removeFirst();
        }
        return removeFirst;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    /* renamed from: d */
    public void mo4876d(Object obj) throws Exception {
        C24265e c24265e = (C24265e) obj;
        synchronized (this.f67307b) {
            m5325h();
            C26232y.m2310r(c24265e == this.f67314i);
            this.f67308c.addLast(c24265e);
            m5326g();
            this.f67314i = null;
        }
    }

    /* renamed from: e */
    public abstract E mo4907e(I i, O o, boolean z);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v60, types: [java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r5v0, types: [e.m.a.c.e1.g, e.m.a.c.e1.g<I extends e.m.a.c.e1.e, O extends e.m.a.c.e1.f, E extends java.lang.Exception>] */
    /* renamed from: f */
    public final boolean m5327f() throws InterruptedException {
        C24567g c24567g;
        synchronized (this.f67307b) {
            while (!this.f67317l) {
                if (!this.f67308c.isEmpty() && this.f67313h > 0) {
                    break;
                }
                this.f67307b.wait();
            }
            if (this.f67317l) {
                return false;
            }
            I removeFirst = this.f67308c.removeFirst();
            O[] oArr = this.f67311f;
            int i = this.f67313h - 1;
            this.f67313h = i;
            O o = oArr[i];
            boolean z = this.f67316k;
            this.f67316k = false;
            if (removeFirst.isEndOfStream()) {
                o.addFlag(4);
            } else {
                if (removeFirst.isDecodeOnly()) {
                    o.addFlag(Integer.MIN_VALUE);
                }
                try {
                    c24567g = mo4907e(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    c24567g = new C24567g("Unexpected decode error", e);
                } catch (RuntimeException e2) {
                    c24567g = new C24567g("Unexpected decode error", e2);
                }
                if (c24567g != null) {
                    synchronized (this.f67307b) {
                        this.f67315j = c24567g;
                    }
                    return false;
                }
            }
            synchronized (this.f67307b) {
                if (this.f67316k) {
                    o.release();
                } else if (o.isDecodeOnly()) {
                    this.f67318m++;
                    o.release();
                } else {
                    o.skippedOutputBufferCount = this.f67318m;
                    this.f67318m = 0;
                    this.f67309d.addLast(o);
                }
                m5324i(removeFirst);
            }
            return true;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    public final void flush() {
        synchronized (this.f67307b) {
            this.f67316k = true;
            this.f67318m = 0;
            I i = this.f67314i;
            if (i != null) {
                m5324i(i);
                this.f67314i = null;
            }
            while (!this.f67308c.isEmpty()) {
                m5324i(this.f67308c.removeFirst());
            }
            while (!this.f67309d.isEmpty()) {
                this.f67309d.removeFirst().release();
            }
            this.f67315j = null;
        }
    }

    /* renamed from: g */
    public final void m5326g() {
        if (!this.f67308c.isEmpty() && this.f67313h > 0) {
            this.f67307b.notify();
        }
    }

    /* renamed from: h */
    public final void m5325h() throws Exception {
        E e = this.f67315j;
        if (e == null) {
            return;
        }
        throw e;
    }

    /* renamed from: i */
    public final void m5324i(I i) {
        i.clear();
        I[] iArr = this.f67310e;
        int i2 = this.f67312g;
        this.f67312g = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1600e1.AbstractC24263c
    public void release() {
        synchronized (this.f67307b) {
            this.f67317l = true;
            this.f67307b.notify();
        }
        try {
            this.f67306a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}

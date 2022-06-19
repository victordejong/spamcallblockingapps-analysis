package com.google.android.exoplayer2.p242b1;

import com.google.android.exoplayer2.p242b1.AbstractC4859f;
import com.google.android.exoplayer2.p242b1.C4858e;
import com.google.android.exoplayer2.util.C5508e;
import java.lang.Exception;
import java.util.ArrayDeque;
/* renamed from: com.google.android.exoplayer2.b1.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/b1/g.class */
public abstract class AbstractC4860g<I extends C4858e, O extends AbstractC4859f, E extends Exception> implements AbstractC4856c<I, O, E> {

    /* renamed from: a */
    private final Thread f14779a;

    /* renamed from: b */
    private final Object f14780b = new Object();

    /* renamed from: c */
    private final ArrayDeque<I> f14781c = new ArrayDeque<>();

    /* renamed from: d */
    private final ArrayDeque<O> f14782d = new ArrayDeque<>();

    /* renamed from: e */
    private final I[] f14783e;

    /* renamed from: f */
    private final O[] f14784f;

    /* renamed from: g */
    private int f14785g;

    /* renamed from: h */
    private int f14786h;

    /* renamed from: i */
    private I f14787i;

    /* renamed from: j */
    private E f14788j;

    /* renamed from: k */
    private boolean f14789k;

    /* renamed from: l */
    private boolean f14790l;

    /* renamed from: m */
    private int f14791m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.b1.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/b1/g$a.class */
    public class C4861a extends Thread {
        C4861a() {
            AbstractC4860g.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AbstractC4860g.this.m21411u();
        }
    }

    public AbstractC4860g(I[] iArr, O[] oArr) {
        this.f14783e = iArr;
        this.f14785g = iArr.length;
        for (int i = 0; i < this.f14785g; i++) {
            this.f14783e[i] = mo19687h();
        }
        this.f14784f = oArr;
        this.f14786h = oArr.length;
        for (int i2 = 0; i2 < this.f14786h; i2++) {
            this.f14784f[i2] = mo19686i();
        }
        C4861a c4861a = new C4861a();
        this.f14779a = c4861a;
        c4861a.start();
    }

    /* renamed from: g */
    private boolean m21421g() {
        return !this.f14781c.isEmpty() && this.f14786h > 0;
    }

    /* renamed from: l */
    private boolean m21420l() {
        synchronized (this.f14780b) {
            while (!this.f14790l && !m21421g()) {
                this.f14780b.wait();
            }
            if (this.f14790l) {
                return false;
            }
            I removeFirst = this.f14781c.removeFirst();
            O[] oArr = this.f14784f;
            int i = this.f14786h - 1;
            this.f14786h = i;
            O o = oArr[i];
            boolean z = this.f14789k;
            this.f14789k = false;
            if (removeFirst.isEndOfStream()) {
                o.addFlag(4);
            } else {
                if (removeFirst.isDecodeOnly()) {
                    o.addFlag(Integer.MIN_VALUE);
                }
                try {
                    this.f14788j = mo19684k(removeFirst, o, z);
                } catch (OutOfMemoryError e) {
                    this.f14788j = mo19685j(e);
                } catch (RuntimeException e2) {
                    this.f14788j = mo19685j(e2);
                }
                if (this.f14788j != null) {
                    synchronized (this.f14780b) {
                    }
                    return false;
                }
            }
            synchronized (this.f14780b) {
                if (this.f14789k) {
                    o.release();
                } else if (o.isDecodeOnly()) {
                    this.f14791m++;
                    o.release();
                } else {
                    o.skippedOutputBufferCount = this.f14791m;
                    this.f14791m = 0;
                    this.f14782d.addLast(o);
                }
                m21414r(removeFirst);
            }
            return true;
        }
    }

    /* renamed from: o */
    private void m21417o() {
        if (m21421g()) {
            this.f14780b.notify();
        }
    }

    /* renamed from: p */
    private void m21416p() {
        E e = this.f14788j;
        if (e == null) {
            return;
        }
        throw e;
    }

    /* renamed from: r */
    private void m21414r(I i) {
        i.clear();
        I[] iArr = this.f14783e;
        int i2 = this.f14785g;
        this.f14785g = i2 + 1;
        iArr[i2] = i;
    }

    /* renamed from: t */
    private void m21412t(O o) {
        o.clear();
        O[] oArr = this.f14784f;
        int i = this.f14786h;
        this.f14786h = i + 1;
        oArr[i] = o;
    }

    /* renamed from: u */
    public void m21411u() {
        do {
            try {
            } catch (InterruptedException e) {
                throw new IllegalStateException(e);
            }
        } while (m21420l());
    }

    @Override // com.google.android.exoplayer2.p242b1.AbstractC4856c
    /* renamed from: b */
    public void mo19589b() {
        synchronized (this.f14780b) {
            this.f14790l = true;
            this.f14780b.notify();
        }
        try {
            this.f14779a.join();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // com.google.android.exoplayer2.p242b1.AbstractC4856c
    public final void flush() {
        synchronized (this.f14780b) {
            this.f14789k = true;
            this.f14791m = 0;
            I i = this.f14787i;
            if (i != null) {
                m21414r(i);
                this.f14787i = null;
            }
            while (!this.f14781c.isEmpty()) {
                m21414r(this.f14781c.removeFirst());
            }
            while (!this.f14782d.isEmpty()) {
                this.f14782d.removeFirst().release();
            }
        }
    }

    /* renamed from: h */
    protected abstract I mo19687h();

    /* renamed from: i */
    protected abstract O mo19686i();

    /* renamed from: j */
    protected abstract E mo19685j(Throwable th);

    /* renamed from: k */
    protected abstract E mo19684k(I i, O o, boolean z);

    /* renamed from: m */
    public final I mo19587d() {
        I i;
        synchronized (this.f14780b) {
            m21416p();
            C5508e.m18910f(this.f14787i == null);
            int i2 = this.f14785g;
            if (i2 == 0) {
                i = null;
            } else {
                I[] iArr = this.f14783e;
                int i3 = i2 - 1;
                this.f14785g = i3;
                i = iArr[i3];
            }
            this.f14787i = i;
        }
        return i;
    }

    /* renamed from: n */
    public final O mo19588c() {
        synchronized (this.f14780b) {
            m21416p();
            if (this.f14782d.isEmpty()) {
                return null;
            }
            return this.f14782d.removeFirst();
        }
    }

    /* renamed from: q */
    public final void mo19586e(I i) {
        synchronized (this.f14780b) {
            m21416p();
            C5508e.m18915a(i == this.f14787i);
            this.f14781c.addLast(i);
            m21417o();
            this.f14787i = null;
        }
    }

    /* renamed from: s */
    public void m21413s(O o) {
        synchronized (this.f14780b) {
            m21412t(o);
            m21417o();
        }
    }

    /* renamed from: v */
    public final void m21410v(int i) {
        C5508e.m18910f(this.f14785g == this.f14783e.length);
        for (I i2 : this.f14783e) {
            i2.m21428h(i);
        }
    }
}

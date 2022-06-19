package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.core.p025g.C0523e;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.engine.RunnableC1734g;
import com.bumptech.glide.load.engine.p092c.ExecutorServiceC1720a;
import com.bumptech.glide.p073f.AbstractC1423f;
import com.bumptech.glide.p077h.C1457j;
import com.bumptech.glide.p077h.p078a.AbstractC1446c;
import com.bumptech.glide.p077h.p078a.C1437a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.engine.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k.class */
class C1758k<R> implements C1437a.AbstractC1443c, RunnableC1734g.AbstractC1736a<R> {

    /* renamed from: a */
    private static final C1759a f5330a = new C1759a();

    /* renamed from: b */
    private static final Handler f5331b = new Handler(Looper.getMainLooper(), new C1760b());

    /* renamed from: c */
    private final List<AbstractC1423f> f5332c;

    /* renamed from: d */
    private final AbstractC1446c f5333d;

    /* renamed from: e */
    private final C0523e.AbstractC0524a<C1758k<?>> f5334e;

    /* renamed from: f */
    private final C1759a f5335f;

    /* renamed from: g */
    private final AbstractC1761l f5336g;

    /* renamed from: h */
    private final ExecutorServiceC1720a f5337h;

    /* renamed from: i */
    private final ExecutorServiceC1720a f5338i;

    /* renamed from: j */
    private final ExecutorServiceC1720a f5339j;

    /* renamed from: k */
    private final ExecutorServiceC1720a f5340k;

    /* renamed from: l */
    private AbstractC1777f f5341l;

    /* renamed from: m */
    private boolean f5342m;

    /* renamed from: n */
    private boolean f5343n;

    /* renamed from: o */
    private boolean f5344o;

    /* renamed from: p */
    private boolean f5345p;

    /* renamed from: q */
    private AbstractC1771t<?> f5346q;

    /* renamed from: r */
    private EnumC1464a f5347r;

    /* renamed from: s */
    private boolean f5348s;

    /* renamed from: t */
    private GlideException f5349t;

    /* renamed from: u */
    private boolean f5350u;

    /* renamed from: v */
    private List<AbstractC1423f> f5351v;

    /* renamed from: w */
    private C1764o<?> f5352w;

    /* renamed from: x */
    private RunnableC1734g<R> f5353x;

    /* renamed from: y */
    private volatile boolean f5354y;

    /* renamed from: com.bumptech.glide.load.engine.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$a.class */
    public static class C1759a {
        C1759a() {
        }

        /* renamed from: a */
        public <R> C1764o<R> m16372a(AbstractC1771t<R> abstractC1771t, boolean z) {
            return new C1764o<>(abstractC1771t, z, true);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/k$b.class */
    private static class C1760b implements Handler.Callback {
        C1760b() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            C1758k c1758k = (C1758k) message.obj;
            switch (message.what) {
                case 1:
                    c1758k.m16378c();
                    return true;
                case 2:
                    c1758k.m16374f();
                    return true;
                case 3:
                    c1758k.m16375e();
                    return true;
                default:
                    throw new IllegalStateException("Unrecognized message: " + message.what);
            }
        }
    }

    public C1758k(ExecutorServiceC1720a executorServiceC1720a, ExecutorServiceC1720a executorServiceC1720a2, ExecutorServiceC1720a executorServiceC1720a3, ExecutorServiceC1720a executorServiceC1720a4, AbstractC1761l abstractC1761l, C0523e.AbstractC0524a<C1758k<?>> abstractC0524a) {
        this(executorServiceC1720a, executorServiceC1720a2, executorServiceC1720a3, executorServiceC1720a4, abstractC1761l, abstractC0524a, f5330a);
    }

    C1758k(ExecutorServiceC1720a executorServiceC1720a, ExecutorServiceC1720a executorServiceC1720a2, ExecutorServiceC1720a executorServiceC1720a3, ExecutorServiceC1720a executorServiceC1720a4, AbstractC1761l abstractC1761l, C0523e.AbstractC0524a<C1758k<?>> abstractC0524a, C1759a c1759a) {
        this.f5332c = new ArrayList(2);
        this.f5333d = AbstractC1446c.m17014a();
        this.f5337h = executorServiceC1720a;
        this.f5338i = executorServiceC1720a2;
        this.f5339j = executorServiceC1720a3;
        this.f5340k = executorServiceC1720a4;
        this.f5336g = abstractC1761l;
        this.f5334e = abstractC0524a;
        this.f5335f = c1759a;
    }

    /* renamed from: a */
    private void m16382a(boolean z) {
        C1457j.m16984a();
        this.f5332c.clear();
        this.f5341l = null;
        this.f5352w = null;
        this.f5346q = null;
        if (this.f5351v != null) {
            this.f5351v.clear();
        }
        this.f5350u = false;
        this.f5354y = false;
        this.f5348s = false;
        this.f5353x.m16431a(z);
        this.f5353x = null;
        this.f5349t = null;
        this.f5347r = null;
        this.f5334e.mo17020a(this);
    }

    /* renamed from: c */
    private void m16377c(AbstractC1423f abstractC1423f) {
        if (this.f5351v == null) {
            this.f5351v = new ArrayList(2);
        }
        if (!this.f5351v.contains(abstractC1423f)) {
            this.f5351v.add(abstractC1423f);
        }
    }

    /* renamed from: d */
    private boolean m16376d(AbstractC1423f abstractC1423f) {
        return this.f5351v != null && this.f5351v.contains(abstractC1423f);
    }

    /* renamed from: g */
    private ExecutorServiceC1720a m16373g() {
        return this.f5343n ? this.f5339j : this.f5344o ? this.f5340k : this.f5338i;
    }

    /* renamed from: a */
    public C1758k<R> m16383a(AbstractC1777f abstractC1777f, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f5341l = abstractC1777f;
        this.f5342m = z;
        this.f5343n = z2;
        this.f5344o = z3;
        this.f5345p = z4;
        return this;
    }

    /* renamed from: a */
    public void m16387a(AbstractC1423f abstractC1423f) {
        C1457j.m16984a();
        this.f5333d.mo17012b();
        if (this.f5348s) {
            abstractC1423f.mo17094a(this.f5352w, this.f5347r);
        } else if (this.f5350u) {
            abstractC1423f.mo17097a(this.f5349t);
        } else {
            this.f5332c.add(abstractC1423f);
        }
    }

    @Override // com.bumptech.glide.load.engine.RunnableC1734g.AbstractC1736a
    /* renamed from: a */
    public void mo16386a(GlideException glideException) {
        this.f5349t = glideException;
        f5331b.obtainMessage(2, this).sendToTarget();
    }

    @Override // com.bumptech.glide.load.engine.RunnableC1734g.AbstractC1736a
    /* renamed from: a */
    public void mo16385a(RunnableC1734g<?> runnableC1734g) {
        m16373g().execute(runnableC1734g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.engine.RunnableC1734g.AbstractC1736a
    /* renamed from: a */
    public void mo16384a(AbstractC1771t<R> abstractC1771t, EnumC1464a enumC1464a) {
        this.f5346q = abstractC1771t;
        this.f5347r = enumC1464a;
        f5331b.obtainMessage(1, this).sendToTarget();
    }

    /* renamed from: a */
    public boolean m16388a() {
        return this.f5345p;
    }

    /* renamed from: b */
    void m16381b() {
        if (this.f5350u || this.f5348s || this.f5354y) {
            return;
        }
        this.f5354y = true;
        this.f5353x.m16430b();
        this.f5336g.mo16371a(this, this.f5341l);
    }

    /* renamed from: b */
    public void m16380b(AbstractC1423f abstractC1423f) {
        C1457j.m16984a();
        this.f5333d.mo17012b();
        if (this.f5348s || this.f5350u) {
            m16377c(abstractC1423f);
            return;
        }
        this.f5332c.remove(abstractC1423f);
        if (!this.f5332c.isEmpty()) {
            return;
        }
        m16381b();
    }

    /* renamed from: b */
    public void m16379b(RunnableC1734g<R> runnableC1734g) {
        this.f5353x = runnableC1734g;
        (runnableC1734g.m16443a() ? this.f5337h : m16373g()).execute(runnableC1734g);
    }

    /* renamed from: c */
    void m16378c() {
        this.f5333d.mo17012b();
        if (this.f5354y) {
            this.f5346q.mo16345f();
            m16382a(false);
        } else if (this.f5332c.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        } else {
            if (this.f5348s) {
                throw new IllegalStateException("Already have resource");
            }
            this.f5352w = this.f5335f.m16372a(this.f5346q, this.f5342m);
            this.f5348s = true;
            this.f5352w.m16365g();
            this.f5336g.mo16370a(this, this.f5341l, this.f5352w);
            int size = this.f5332c.size();
            for (int i = 0; i < size; i++) {
                AbstractC1423f abstractC1423f = this.f5332c.get(i);
                if (!m16376d(abstractC1423f)) {
                    this.f5352w.m16365g();
                    abstractC1423f.mo17094a(this.f5352w, this.f5347r);
                }
            }
            this.f5352w.m16364h();
            m16382a(false);
        }
    }

    @Override // com.bumptech.glide.p077h.p078a.C1437a.AbstractC1443c
    /* renamed from: c_ */
    public AbstractC1446c mo16351c_() {
        return this.f5333d;
    }

    /* renamed from: e */
    void m16375e() {
        this.f5333d.mo17012b();
        if (!this.f5354y) {
            throw new IllegalStateException("Not cancelled");
        }
        this.f5336g.mo16371a(this, this.f5341l);
        m16382a(false);
    }

    /* renamed from: f */
    void m16374f() {
        this.f5333d.mo17012b();
        if (this.f5354y) {
            m16382a(false);
        } else if (this.f5332c.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        } else {
            if (this.f5350u) {
                throw new IllegalStateException("Already failed once");
            }
            this.f5350u = true;
            this.f5336g.mo16370a(this, this.f5341l, null);
            for (AbstractC1423f abstractC1423f : this.f5332c) {
                if (!m16376d(abstractC1423f)) {
                    abstractC1423f.mo17097a(this.f5349t);
                }
            }
            m16382a(false);
        }
    }
}

package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.engine.C1764o;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.engine.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a.class */
public final class C1667a {

    /* renamed from: b */
    private final boolean f5103b;

    /* renamed from: d */
    private C1764o.AbstractC1765a f5105d;

    /* renamed from: e */
    private ReferenceQueue<C1764o<?>> f5106e;

    /* renamed from: f */
    private Thread f5107f;

    /* renamed from: g */
    private volatile boolean f5108g;

    /* renamed from: h */
    private volatile AbstractC1670a f5109h;

    /* renamed from: c */
    private final Handler f5104c = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.bumptech.glide.load.engine.a.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            boolean z;
            if (message.what == 1) {
                C1667a.this.m16596a((C1671b) message.obj);
                z = true;
            } else {
                z = false;
            }
            return z;
        }
    });

    /* renamed from: a */
    final Map<AbstractC1777f, C1671b> f5102a = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$a.class */
    public interface AbstractC1670a {
        /* renamed from: a */
        void m16590a();
    }

    /* renamed from: com.bumptech.glide.load.engine.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a$b.class */
    public static final class C1671b extends WeakReference<C1764o<?>> {

        /* renamed from: a */
        final AbstractC1777f f5112a;

        /* renamed from: b */
        final boolean f5113b;

        /* renamed from: c */
        AbstractC1771t<?> f5114c;

        C1671b(AbstractC1777f abstractC1777f, C1764o<?> c1764o, ReferenceQueue<? super C1764o<?>> referenceQueue, boolean z) {
            super(c1764o, referenceQueue);
            this.f5112a = (AbstractC1777f) C1456i.m16989a(abstractC1777f);
            this.f5114c = (!c1764o.m16366b() || !z) ? null : (AbstractC1771t) C1456i.m16989a(c1764o.m16368a());
            this.f5113b = c1764o.m16366b();
        }

        void a() {
            this.f5114c = null;
            clear();
        }
    }

    public C1667a(boolean z) {
        this.f5103b = z;
    }

    /* renamed from: b */
    private ReferenceQueue<C1764o<?>> m16592b() {
        if (this.f5106e == null) {
            this.f5106e = new ReferenceQueue<>();
            this.f5107f = new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.a.2
                @Override // java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(10);
                    C1667a.this.m16597a();
                }
            }, "glide-active-resources");
            this.f5107f.start();
        }
        return this.f5106e;
    }

    /* renamed from: a */
    void m16597a() {
        while (!this.f5108g) {
            try {
                this.f5104c.obtainMessage(1, (C1671b) this.f5106e.remove()).sendToTarget();
                AbstractC1670a abstractC1670a = this.f5109h;
                if (abstractC1670a != null) {
                    abstractC1670a.m16590a();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: a */
    void m16596a(C1671b c1671b) {
        C1457j.m16984a();
        this.f5102a.remove(c1671b.f5112a);
        if (!c1671b.f5113b || c1671b.f5114c == null) {
            return;
        }
        C1764o<?> c1764o = new C1764o<>(c1671b.f5114c, true, false);
        c1764o.m16367a(c1671b.f5112a, this.f5105d);
        this.f5105d.mo16363a(c1671b.f5112a, c1764o);
    }

    /* renamed from: a */
    public void m16595a(C1764o.AbstractC1765a abstractC1765a) {
        this.f5105d = abstractC1765a;
    }

    /* renamed from: a */
    public void m16594a(AbstractC1777f abstractC1777f) {
        C1671b remove = this.f5102a.remove(abstractC1777f);
        if (remove != null) {
            remove.a();
        }
    }

    /* renamed from: a */
    public void m16593a(AbstractC1777f abstractC1777f, C1764o<?> c1764o) {
        C1671b put = this.f5102a.put(abstractC1777f, new C1671b(abstractC1777f, c1764o, m16592b(), this.f5103b));
        if (put != null) {
            put.a();
        }
    }

    /* renamed from: b */
    public C1764o<?> m16591b(AbstractC1777f abstractC1777f) {
        C1764o<?> c1764o;
        C1671b c1671b = this.f5102a.get(abstractC1777f);
        if (c1671b == null) {
            c1764o = null;
        } else {
            C1764o<?> c1764o2 = (C1764o) c1671b.get();
            c1764o = c1764o2;
            if (c1764o2 == null) {
                m16596a(c1671b);
                c1764o = c1764o2;
            }
        }
        return c1764o;
    }
}

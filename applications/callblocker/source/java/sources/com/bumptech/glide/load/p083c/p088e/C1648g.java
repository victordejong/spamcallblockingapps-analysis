package com.bumptech.glide.load.p083c.p088e;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.C1432h;
import com.bumptech.glide.C1459i;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.AbstractC1784k;
import com.bumptech.glide.load.engine.AbstractC1745i;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.p069b.AbstractC1355a;
import com.bumptech.glide.p073f.C1422e;
import com.bumptech.glide.p073f.p074a.AbstractC1408f;
import com.bumptech.glide.p073f.p075b.AbstractC1417b;
import com.bumptech.glide.p076g.C1431c;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.c.e.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/g.class */
public class C1648g {

    /* renamed from: a */
    final C1459i f5056a;

    /* renamed from: b */
    private final AbstractC1355a f5057b;

    /* renamed from: c */
    private final Handler f5058c;

    /* renamed from: d */
    private final List<AbstractC1650b> f5059d;

    /* renamed from: e */
    private final AbstractC1678e f5060e;

    /* renamed from: f */
    private boolean f5061f;

    /* renamed from: g */
    private boolean f5062g;

    /* renamed from: h */
    private boolean f5063h;

    /* renamed from: i */
    private C1432h<Bitmap> f5064i;

    /* renamed from: j */
    private C1649a f5065j;

    /* renamed from: k */
    private boolean f5066k;

    /* renamed from: l */
    private C1649a f5067l;

    /* renamed from: m */
    private Bitmap f5068m;

    /* renamed from: n */
    private AbstractC1784k<Bitmap> f5069n;

    /* renamed from: o */
    private C1649a f5070o;

    /* renamed from: p */
    private AbstractC1652d f5071p;

    /* renamed from: com.bumptech.glide.load.c.e.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/g$a.class */
    public static class C1649a extends AbstractC1408f<Bitmap> {

        /* renamed from: a */
        final int f5072a;

        /* renamed from: b */
        private final Handler f5073b;

        /* renamed from: c */
        private final long f5074c;

        /* renamed from: d */
        private Bitmap f5075d;

        C1649a(Handler handler, int i, long j) {
            this.f5073b = handler;
            this.f5072a = i;
            this.f5074c = j;
        }

        /* renamed from: a */
        Bitmap m16629a() {
            return this.f5075d;
        }

        /* renamed from: a */
        public void m16628a(Bitmap bitmap, AbstractC1417b<? super Bitmap> abstractC1417b) {
            this.f5075d = bitmap;
            this.f5073b.sendMessageAtTime(this.f5073b.obtainMessage(1, this), this.f5074c);
        }

        @Override // com.bumptech.glide.p073f.p074a.AbstractC1410h
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo16627a(Object obj, AbstractC1417b abstractC1417b) {
            m16628a((Bitmap) obj, (AbstractC1417b<? super Bitmap>) abstractC1417b);
        }
    }

    /* renamed from: com.bumptech.glide.load.c.e.g$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/g$b.class */
    public interface AbstractC1650b {
        /* renamed from: f */
        void mo16626f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.c.e.g$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/g$c.class */
    public class C1651c implements Handler.Callback {
        C1651c() {
            C1648g.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            boolean z;
            if (message.what == 1) {
                C1648g.this.m16647a((C1649a) message.obj);
                z = true;
            } else {
                if (message.what == 2) {
                    C1648g.this.f5056a.m16964a((C1649a) message.obj);
                }
                z = false;
            }
            return z;
        }
    }

    /* renamed from: com.bumptech.glide.load.c.e.g$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/g$d.class */
    public interface AbstractC1652d {
        /* renamed from: a */
        void m16625a();
    }

    public C1648g(ComponentCallbacks2C1361c componentCallbacks2C1361c, AbstractC1355a abstractC1355a, int i, int i2, AbstractC1784k<Bitmap> abstractC1784k, Bitmap bitmap) {
        this(componentCallbacks2C1361c.m17311a(), ComponentCallbacks2C1361c.m17302b(componentCallbacks2C1361c.m17300c()), abstractC1355a, null, m16648a(ComponentCallbacks2C1361c.m17302b(componentCallbacks2C1361c.m17300c()), i, i2), abstractC1784k, bitmap);
    }

    C1648g(AbstractC1678e abstractC1678e, C1459i c1459i, AbstractC1355a abstractC1355a, Handler handler, C1432h<Bitmap> c1432h, AbstractC1784k<Bitmap> abstractC1784k, Bitmap bitmap) {
        this.f5059d = new ArrayList();
        this.f5056a = c1459i;
        Handler handler2 = handler == null ? new Handler(Looper.getMainLooper(), new C1651c()) : handler;
        this.f5060e = abstractC1678e;
        this.f5058c = handler2;
        this.f5064i = c1432h;
        this.f5057b = abstractC1355a;
        m16645a(abstractC1784k, bitmap);
    }

    /* renamed from: a */
    private static C1432h<Bitmap> m16648a(C1459i c1459i, int i, int i2) {
        return c1459i.m16951f().m17045a(C1422e.m17142a(AbstractC1745i.f5302b).m17135a(true).m17128b(true).m17148a(i, i2));
    }

    /* renamed from: j */
    private int m16635j() {
        return C1457j.m16979a(m16636i().getWidth(), m16636i().getHeight(), m16636i().getConfig());
    }

    /* renamed from: k */
    private void m16634k() {
        if (this.f5061f) {
            return;
        }
        this.f5061f = true;
        this.f5066k = false;
        m16632m();
    }

    /* renamed from: l */
    private void m16633l() {
        this.f5061f = false;
    }

    /* renamed from: m */
    private void m16632m() {
        if (!this.f5061f || this.f5062g) {
            return;
        }
        if (this.f5063h) {
            C1456i.m16985a(this.f5070o == null, "Pending target must be null when starting from the first frame");
            this.f5057b.mo17318f();
            this.f5063h = false;
        }
        if (this.f5070o != null) {
            C1649a c1649a = this.f5070o;
            this.f5070o = null;
            m16647a(c1649a);
            return;
        }
        this.f5062g = true;
        int mo17322c = this.f5057b.mo17322c();
        long uptimeMillis = SystemClock.uptimeMillis();
        this.f5057b.mo17324b();
        this.f5067l = new C1649a(this.f5058c, this.f5057b.mo17319e(), mo17322c + uptimeMillis);
        this.f5064i.m17045a(C1422e.m17141a(m16630o())).m17041a(this.f5057b).m17050a((C1432h<Bitmap>) this.f5067l);
    }

    /* renamed from: n */
    private void m16631n() {
        if (this.f5068m != null) {
            this.f5060e.mo16540a(this.f5068m);
            this.f5068m = null;
        }
    }

    /* renamed from: o */
    private static AbstractC1777f m16630o() {
        return new C1431c(Double.valueOf(Math.random()));
    }

    /* renamed from: a */
    public Bitmap m16649a() {
        return this.f5068m;
    }

    /* renamed from: a */
    void m16647a(C1649a c1649a) {
        if (this.f5071p != null) {
            this.f5071p.m16625a();
        }
        this.f5062g = false;
        if (this.f5066k) {
            this.f5058c.obtainMessage(2, c1649a).sendToTarget();
        } else if (!this.f5061f) {
            this.f5070o = c1649a;
        } else {
            if (c1649a.m16629a() != null) {
                m16631n();
                C1649a c1649a2 = this.f5065j;
                this.f5065j = c1649a;
                for (int size = this.f5059d.size() - 1; size >= 0; size--) {
                    this.f5059d.get(size).mo16626f();
                }
                if (c1649a2 != null) {
                    this.f5058c.obtainMessage(2, c1649a2).sendToTarget();
                }
            }
            m16632m();
        }
    }

    /* renamed from: a */
    public void m16646a(AbstractC1650b abstractC1650b) {
        if (this.f5066k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (this.f5059d.contains(abstractC1650b)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean isEmpty = this.f5059d.isEmpty();
        this.f5059d.add(abstractC1650b);
        if (!isEmpty) {
            return;
        }
        m16634k();
    }

    /* renamed from: a */
    public void m16645a(AbstractC1784k<Bitmap> abstractC1784k, Bitmap bitmap) {
        this.f5069n = (AbstractC1784k) C1456i.m16989a(abstractC1784k);
        this.f5068m = (Bitmap) C1456i.m16989a(bitmap);
        this.f5064i = this.f5064i.m17045a(new C1422e().m17139a(abstractC1784k));
    }

    /* renamed from: b */
    public int m16644b() {
        return m16636i().getWidth();
    }

    /* renamed from: b */
    public void m16643b(AbstractC1650b abstractC1650b) {
        this.f5059d.remove(abstractC1650b);
        if (this.f5059d.isEmpty()) {
            m16633l();
        }
    }

    /* renamed from: c */
    public int m16642c() {
        return m16636i().getHeight();
    }

    /* renamed from: d */
    public int m16641d() {
        return this.f5057b.mo17317g() + m16635j();
    }

    /* renamed from: e */
    public int m16640e() {
        return this.f5065j != null ? this.f5065j.f5072a : -1;
    }

    /* renamed from: f */
    public ByteBuffer m16639f() {
        return this.f5057b.mo17331a().asReadOnlyBuffer();
    }

    /* renamed from: g */
    public int m16638g() {
        return this.f5057b.mo17320d();
    }

    /* renamed from: h */
    public void m16637h() {
        this.f5059d.clear();
        m16631n();
        m16633l();
        if (this.f5065j != null) {
            this.f5056a.m16964a(this.f5065j);
            this.f5065j = null;
        }
        if (this.f5067l != null) {
            this.f5056a.m16964a(this.f5067l);
            this.f5067l = null;
        }
        if (this.f5070o != null) {
            this.f5056a.m16964a(this.f5070o);
            this.f5070o = null;
        }
        this.f5057b.mo17315i();
        this.f5066k = true;
    }

    /* renamed from: i */
    public Bitmap m16636i() {
        return this.f5065j != null ? this.f5065j.m16629a() : this.f5068m;
    }
}

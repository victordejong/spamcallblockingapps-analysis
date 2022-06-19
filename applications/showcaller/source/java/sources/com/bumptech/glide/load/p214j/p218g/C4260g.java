package com.bumptech.glide.load.p214j.p218g;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.C3969h;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.ComponentCallbacks2C3971i;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.AbstractC4148h;
import com.bumptech.glide.load.engine.AbstractC4054h;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import com.bumptech.glide.p207l.AbstractC3984a;
import com.bumptech.glide.p222o.C4367d;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.C4401e;
import com.bumptech.glide.request.p225h.AbstractC4406c;
import com.bumptech.glide.request.p226i.AbstractC4417b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bumptech.glide.load.j.g.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g.class */
public class C4260g {

    /* renamed from: a */
    private final AbstractC3984a f13166a;

    /* renamed from: b */
    private final Handler f13167b;

    /* renamed from: c */
    private final List<AbstractC4262b> f13168c;

    /* renamed from: d */
    final ComponentCallbacks2C3971i f13169d;

    /* renamed from: e */
    private final AbstractC4096e f13170e;

    /* renamed from: f */
    private boolean f13171f;

    /* renamed from: g */
    private boolean f13172g;

    /* renamed from: h */
    private boolean f13173h;

    /* renamed from: i */
    private C3969h<Bitmap> f13174i;

    /* renamed from: j */
    private C4261a f13175j;

    /* renamed from: k */
    private boolean f13176k;

    /* renamed from: l */
    private C4261a f13177l;

    /* renamed from: m */
    private Bitmap f13178m;

    /* renamed from: n */
    private AbstractC4148h<Bitmap> f13179n;

    /* renamed from: o */
    private C4261a f13180o;

    /* renamed from: p */
    private AbstractC4264d f13181p;

    /* renamed from: q */
    private int f13182q;

    /* renamed from: r */
    private int f13183r;

    /* renamed from: s */
    private int f13184s;

    /* renamed from: com.bumptech.glide.load.j.g.g$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$a.class */
    public static class C4261a extends AbstractC4406c<Bitmap> {

        /* renamed from: g */
        private final Handler f13185g;

        /* renamed from: h */
        final int f13186h;

        /* renamed from: i */
        private final long f13187i;

        /* renamed from: j */
        private Bitmap f13188j;

        C4261a(Handler handler, int i, long j) {
            this.f13185g = handler;
            this.f13186h = i;
            this.f13187i = j;
        }

        @Override // com.bumptech.glide.request.p225h.AbstractC4411h
        /* renamed from: h */
        public void mo22554h(Drawable drawable) {
            this.f13188j = null;
        }

        /* renamed from: j */
        Bitmap m23003j() {
            return this.f13188j;
        }

        /* renamed from: k */
        public void mo22560c(Bitmap bitmap, AbstractC4417b<? super Bitmap> abstractC4417b) {
            this.f13188j = bitmap;
            this.f13185g.sendMessageAtTime(this.f13185g.obtainMessage(1, this), this.f13187i);
        }
    }

    /* renamed from: com.bumptech.glide.load.j.g.g$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$b.class */
    public interface AbstractC4262b {
        /* renamed from: a */
        void mo23001a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.j.g.g$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$c.class */
    public class C4263c implements Handler.Callback {
        C4263c() {
            C4260g.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C4260g.this.m23010m((C4261a) message.obj);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                C4260g.this.f13169d.m23635m((C4261a) message.obj);
                return false;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.j.g.g$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$d.class */
    public interface AbstractC4264d {
        /* renamed from: a */
        void m23000a();
    }

    public C4260g(ComponentCallbacks2C3958c componentCallbacks2C3958c, AbstractC3984a abstractC3984a, int i, int i2, AbstractC4148h<Bitmap> abstractC4148h, Bitmap bitmap) {
        this(componentCallbacks2C3958c.m23692f(), ComponentCallbacks2C3958c.m23677u(componentCallbacks2C3958c.m23690h()), abstractC3984a, null, m23014i(ComponentCallbacks2C3958c.m23677u(componentCallbacks2C3958c.m23690h()), i, i2), abstractC4148h, bitmap);
    }

    C4260g(AbstractC4096e abstractC4096e, ComponentCallbacks2C3971i componentCallbacks2C3971i, AbstractC3984a abstractC3984a, Handler handler, C3969h<Bitmap> c3969h, AbstractC4148h<Bitmap> abstractC4148h, Bitmap bitmap) {
        this.f13168c = new ArrayList();
        this.f13169d = componentCallbacks2C3971i;
        Handler handler2 = handler == null ? new Handler(Looper.getMainLooper(), new C4263c()) : handler;
        this.f13170e = abstractC4096e;
        this.f13167b = handler2;
        this.f13174i = c3969h;
        this.f13166a = abstractC3984a;
        m23008o(abstractC4148h, bitmap);
    }

    /* renamed from: g */
    private static AbstractC3999c m23016g() {
        return new C4367d(Double.valueOf(Math.random()));
    }

    /* renamed from: i */
    private static C3969h<Bitmap> m23014i(ComponentCallbacks2C3971i componentCallbacks2C3971i, int i, int i2) {
        return componentCallbacks2C3971i.mo23637k().mo22632a(C4401e.m22589p0(AbstractC4054h.f12791b).mo22608n0(true).mo22617i0(true).mo22634Y(i, i2));
    }

    /* renamed from: l */
    private void m23011l() {
        if (!this.f13171f || this.f13172g) {
            return;
        }
        if (this.f13173h) {
            C4382j.m22722a(this.f13180o == null, "Pending target must be null when starting from the first frame");
            this.f13166a.mo23537g();
            this.f13173h = false;
        }
        C4261a c4261a = this.f13180o;
        if (c4261a != null) {
            this.f13180o = null;
            m23010m(c4261a);
            return;
        }
        this.f13172g = true;
        int mo23540d = this.f13166a.mo23540d();
        this.f13166a.mo23542b();
        this.f13177l = new C4261a(this.f13167b, this.f13166a.mo23536h(), SystemClock.uptimeMillis() + mo23540d);
        this.f13174i.mo22632a(C4401e.m22588q0(m23016g())).mo23656E0(this.f13166a).m23643x0(this.f13177l);
    }

    /* renamed from: n */
    private void m23009n() {
        Bitmap bitmap = this.f13178m;
        if (bitmap != null) {
            this.f13170e.mo22911c(bitmap);
            this.f13178m = null;
        }
    }

    /* renamed from: p */
    private void m23007p() {
        if (this.f13171f) {
            return;
        }
        this.f13171f = true;
        this.f13176k = false;
        m23011l();
    }

    /* renamed from: q */
    private void m23006q() {
        this.f13171f = false;
    }

    /* renamed from: a */
    public void m23022a() {
        this.f13168c.clear();
        m23009n();
        m23006q();
        C4261a c4261a = this.f13175j;
        if (c4261a != null) {
            this.f13169d.m23635m(c4261a);
            this.f13175j = null;
        }
        C4261a c4261a2 = this.f13177l;
        if (c4261a2 != null) {
            this.f13169d.m23635m(c4261a2);
            this.f13177l = null;
        }
        C4261a c4261a3 = this.f13180o;
        if (c4261a3 != null) {
            this.f13169d.m23635m(c4261a3);
            this.f13180o = null;
        }
        this.f13166a.clear();
        this.f13176k = true;
    }

    /* renamed from: b */
    public ByteBuffer m23021b() {
        return this.f13166a.mo23538f().asReadOnlyBuffer();
    }

    /* renamed from: c */
    public Bitmap m23020c() {
        C4261a c4261a = this.f13175j;
        return c4261a != null ? c4261a.m23003j() : this.f13178m;
    }

    /* renamed from: d */
    public int m23019d() {
        C4261a c4261a = this.f13175j;
        return c4261a != null ? c4261a.f13186h : -1;
    }

    /* renamed from: e */
    public Bitmap m23018e() {
        return this.f13178m;
    }

    /* renamed from: f */
    public int m23017f() {
        return this.f13166a.mo23541c();
    }

    /* renamed from: h */
    public int m23015h() {
        return this.f13184s;
    }

    /* renamed from: j */
    public int m23013j() {
        return this.f13166a.mo23535i() + this.f13182q;
    }

    /* renamed from: k */
    public int m23012k() {
        return this.f13183r;
    }

    /* renamed from: m */
    void m23010m(C4261a c4261a) {
        AbstractC4264d abstractC4264d = this.f13181p;
        if (abstractC4264d != null) {
            abstractC4264d.m23000a();
        }
        this.f13172g = false;
        if (this.f13176k) {
            this.f13167b.obtainMessage(2, c4261a).sendToTarget();
        } else if (this.f13171f) {
            if (c4261a.m23003j() != null) {
                m23009n();
                C4261a c4261a2 = this.f13175j;
                this.f13175j = c4261a;
                for (int size = this.f13168c.size() - 1; size >= 0; size--) {
                    this.f13168c.get(size).mo23001a();
                }
                if (c4261a2 != null) {
                    this.f13167b.obtainMessage(2, c4261a2).sendToTarget();
                }
            }
            m23011l();
        } else if (this.f13173h) {
            this.f13167b.obtainMessage(2, c4261a).sendToTarget();
        } else {
            this.f13180o = c4261a;
        }
    }

    /* renamed from: o */
    public void m23008o(AbstractC4148h<Bitmap> abstractC4148h, Bitmap bitmap) {
        this.f13179n = (AbstractC4148h) C4382j.m22719d(abstractC4148h);
        this.f13178m = (Bitmap) C4382j.m22719d(bitmap);
        this.f13174i = this.f13174i.mo22632a(new C4401e().mo22615j0(abstractC4148h));
        this.f13182q = C4383k.m22711g(bitmap);
        this.f13183r = bitmap.getWidth();
        this.f13184s = bitmap.getHeight();
    }

    /* renamed from: r */
    public void m23005r(AbstractC4262b abstractC4262b) {
        if (!this.f13176k) {
            if (this.f13168c.contains(abstractC4262b)) {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            boolean isEmpty = this.f13168c.isEmpty();
            this.f13168c.add(abstractC4262b);
            if (!isEmpty) {
                return;
            }
            m23007p();
            return;
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    /* renamed from: s */
    public void m23004s(AbstractC4262b abstractC4262b) {
        this.f13168c.remove(abstractC4262b);
        if (this.f13168c.isEmpty()) {
            m23006q();
        }
    }
}

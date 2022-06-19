package com.bumptech.glide.load.p024j.p026g;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.bumptech.glide.g;
import com.bumptech.glide.h;
import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.load.engine.AbstractC0758h;
import com.bumptech.glide.load.engine.p020x.AbstractC0770e;
import com.bumptech.glide.n.b;
import com.bumptech.glide.p017k.AbstractC0720a;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.C0857k;
import com.bumptech.glide.request.e;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bumptech.glide.load.j.g.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g.class */
public class C0811g {

    /* renamed from: a */
    private final AbstractC0720a f3697a;

    /* renamed from: b */
    private final Handler f3698b;

    /* renamed from: c */
    private final List<AbstractC0812b> f3699c;

    /* renamed from: d */
    final h f3700d;

    /* renamed from: e */
    private final AbstractC0770e f3701e;

    /* renamed from: f */
    private boolean f3702f;

    /* renamed from: g */
    private boolean f3703g;

    /* renamed from: h */
    private boolean f3704h;

    /* renamed from: i */
    private g<Bitmap> f3705i;

    /* renamed from: j */
    private a f3706j;

    /* renamed from: k */
    private boolean f3707k;

    /* renamed from: l */
    private a f3708l;

    /* renamed from: m */
    private Bitmap f3709m;

    /* renamed from: n */
    private com.bumptech.glide.load.h<Bitmap> f3710n;

    /* renamed from: o */
    private a f3711o;

    /* renamed from: p */
    private AbstractC0814d f3712p;

    /* renamed from: q */
    private int f3713q;

    /* renamed from: r */
    private int f3714r;

    /* renamed from: s */
    private int f3715s;

    /* renamed from: com.bumptech.glide.load.j.g.g$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$b.class */
    public interface AbstractC0812b {
        /* renamed from: a */
        void m10932a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.load.j.g.g$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$c.class */
    public class C0813c implements Handler.Callback {
        C0813c() {
            C0811g.this = r4;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C0811g.this.m10939m((a) message.obj);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                C0811g.this.f3700d.m((a) message.obj);
                return false;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.j.g.g$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/g/g$d.class */
    public interface AbstractC0814d {
        /* renamed from: a */
        void m10931a();
    }

    C0811g(ComponentCallbacks2C0700b componentCallbacks2C0700b, AbstractC0720a abstractC0720a, int i, int i2, com.bumptech.glide.load.h<Bitmap> hVar, Bitmap bitmap) {
        this(componentCallbacks2C0700b.m11345f(), ComponentCallbacks2C0700b.m11330u(componentCallbacks2C0700b.m11343h()), abstractC0720a, null, m10943i(ComponentCallbacks2C0700b.m11330u(componentCallbacks2C0700b.m11343h()), i, i2), hVar, bitmap);
    }

    C0811g(AbstractC0770e abstractC0770e, h hVar, AbstractC0720a abstractC0720a, Handler handler, g<Bitmap> gVar, com.bumptech.glide.load.h<Bitmap> hVar2, Bitmap bitmap) {
        this.f3699c = new ArrayList();
        this.f3700d = hVar;
        Handler handler2 = handler == null ? new Handler(Looper.getMainLooper(), new C0813c()) : handler;
        this.f3701e = abstractC0770e;
        this.f3698b = handler2;
        this.f3705i = gVar;
        this.f3697a = abstractC0720a;
        m10937o(hVar2, bitmap);
    }

    /* renamed from: g */
    private static AbstractC0732c m10945g() {
        return new b(Double.valueOf(Math.random()));
    }

    /* renamed from: i */
    private static g<Bitmap> m10943i(h hVar, int i, int i2) {
        return hVar.k().q0(e.q0(AbstractC0758h.f3587a).m10664o0(true).m10674j0(true).m10692a0(i, i2));
    }

    /* renamed from: l */
    private void m10940l() {
        if (!this.f3702f || this.f3703g) {
            return;
        }
        if (this.f3704h) {
            C0856j.m10762a(this.f3711o == null, "Pending target must be null when starting from the first frame");
            this.f3697a.m11249i();
            this.f3704h = false;
        }
        a aVar = this.f3711o;
        if (aVar != null) {
            this.f3711o = null;
            m10939m(aVar);
            return;
        }
        this.f3703g = true;
        int m11253e = this.f3697a.m11253e();
        this.f3697a.m11255c();
        this.f3708l = new a(this.f3698b, this.f3697a.m11257a(), SystemClock.uptimeMillis() + m11253e);
        this.f3705i.q0(e.r0(m10945g())).E0(this.f3697a).y0(this.f3708l);
    }

    /* renamed from: n */
    private void m10938n() {
        Bitmap bitmap = this.f3709m;
        if (bitmap != null) {
            this.f3701e.m11063d(bitmap);
            this.f3709m = null;
        }
    }

    /* renamed from: p */
    private void m10936p() {
        if (this.f3702f) {
            return;
        }
        this.f3702f = true;
        this.f3707k = false;
        m10940l();
    }

    /* renamed from: q */
    private void m10935q() {
        this.f3702f = false;
    }

    /* renamed from: a */
    void m10951a() {
        this.f3699c.clear();
        m10938n();
        m10935q();
        a aVar = this.f3706j;
        if (aVar != null) {
            this.f3700d.m(aVar);
            this.f3706j = null;
        }
        a aVar2 = this.f3708l;
        if (aVar2 != null) {
            this.f3700d.m(aVar2);
            this.f3708l = null;
        }
        a aVar3 = this.f3711o;
        if (aVar3 != null) {
            this.f3700d.m(aVar3);
            this.f3711o = null;
        }
        this.f3697a.clear();
        this.f3707k = true;
    }

    /* renamed from: b */
    ByteBuffer m10950b() {
        return this.f3697a.m11250h().asReadOnlyBuffer();
    }

    /* renamed from: c */
    Bitmap m10949c() {
        a aVar = this.f3706j;
        return aVar != null ? aVar.j() : this.f3709m;
    }

    /* renamed from: d */
    int m10948d() {
        a aVar = this.f3706j;
        return aVar != null ? aVar.f : -1;
    }

    /* renamed from: e */
    Bitmap m10947e() {
        return this.f3709m;
    }

    /* renamed from: f */
    int m10946f() {
        return this.f3697a.m11254d();
    }

    /* renamed from: h */
    int m10944h() {
        return this.f3715s;
    }

    /* renamed from: j */
    int m10942j() {
        return this.f3697a.m11252f() + this.f3713q;
    }

    /* renamed from: k */
    int m10941k() {
        return this.f3714r;
    }

    /* renamed from: m */
    void m10939m(a aVar) {
        AbstractC0814d abstractC0814d = this.f3712p;
        if (abstractC0814d != null) {
            abstractC0814d.m10931a();
        }
        this.f3703g = false;
        if (this.f3707k) {
            this.f3698b.obtainMessage(2, aVar).sendToTarget();
        } else if (this.f3702f) {
            if (aVar.j() != null) {
                m10938n();
                a aVar2 = this.f3706j;
                this.f3706j = aVar;
                for (int size = this.f3699c.size() - 1; size >= 0; size--) {
                    this.f3699c.get(size).m10932a();
                }
                if (aVar2 != null) {
                    this.f3698b.obtainMessage(2, aVar2).sendToTarget();
                }
            }
            m10940l();
        } else if (this.f3704h) {
            this.f3698b.obtainMessage(2, aVar).sendToTarget();
        } else {
            this.f3711o = aVar;
        }
    }

    /* renamed from: o */
    void m10937o(com.bumptech.glide.load.h<Bitmap> hVar, Bitmap bitmap) {
        C0856j.m10759d(hVar);
        this.f3710n = hVar;
        C0856j.m10759d(bitmap);
        this.f3709m = bitmap;
        this.f3705i = this.f3705i.q0(new e().m10672k0(hVar));
        this.f3713q = C0857k.m10751g(bitmap);
        this.f3714r = bitmap.getWidth();
        this.f3715s = bitmap.getHeight();
    }

    /* renamed from: r */
    void m10934r(AbstractC0812b abstractC0812b) {
        if (!this.f3707k) {
            if (this.f3699c.contains(abstractC0812b)) {
                throw new IllegalStateException("Cannot subscribe twice in a row");
            }
            boolean isEmpty = this.f3699c.isEmpty();
            this.f3699c.add(abstractC0812b);
            if (!isEmpty) {
                return;
            }
            m10936p();
            return;
        }
        throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
    }

    /* renamed from: s */
    void m10933s(AbstractC0812b abstractC0812b) {
        this.f3699c.remove(abstractC0812b);
        if (this.f3699c.isEmpty()) {
            m10935q();
        }
    }
}

package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.engine.AbstractC4054h;
import com.bumptech.glide.load.p214j.p218g.C4255c;
import com.bumptech.glide.manager.AbstractC4333c;
import com.bumptech.glide.manager.AbstractC4335d;
import com.bumptech.glide.manager.AbstractC4344l;
import com.bumptech.glide.manager.AbstractC4345m;
import com.bumptech.glide.manager.AbstractC4350p;
import com.bumptech.glide.manager.C4351q;
import com.bumptech.glide.manager.C4354s;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.request.AbstractC4399c;
import com.bumptech.glide.request.AbstractC4400d;
import com.bumptech.glide.request.C4401e;
import com.bumptech.glide.request.p225h.AbstractC4411h;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.bumptech.glide.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i.class */
public class ComponentCallbacks2C3971i implements ComponentCallbacks2, AbstractC4345m {

    /* renamed from: d */
    private static final C4401e f12501d = C4401e.m22590o0(Bitmap.class).mo22640S();

    /* renamed from: e */
    private static final C4401e f12502e = C4401e.m22590o0(C4255c.class).mo22640S();

    /* renamed from: f */
    private static final C4401e f12503f = C4401e.m22589p0(AbstractC4054h.f12792c).mo22629b0(Priority.LOW).mo22617i0(true);

    /* renamed from: g */
    protected final ComponentCallbacks2C3958c f12504g;

    /* renamed from: h */
    protected final Context f12505h;

    /* renamed from: i */
    final AbstractC4344l f12506i;

    /* renamed from: j */
    private final C4351q f12507j;

    /* renamed from: k */
    private final AbstractC4350p f12508k;

    /* renamed from: l */
    private final C4354s f12509l;

    /* renamed from: m */
    private final Runnable f12510m;

    /* renamed from: n */
    private final AbstractC4333c f12511n;

    /* renamed from: o */
    private final CopyOnWriteArrayList<AbstractC4400d<Object>> f12512o;

    /* renamed from: p */
    private C4401e f12513p;

    /* renamed from: q */
    private boolean f12514q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.i$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/i$a.class */
    public class RunnableC3972a implements Runnable {
        RunnableC3972a() {
            ComponentCallbacks2C3971i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentCallbacks2C3971i componentCallbacks2C3971i = ComponentCallbacks2C3971i.this;
            componentCallbacks2C3971i.f12506i.mo22825a(componentCallbacks2C3971i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.i$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/i$b.class */
    public class C3973b implements AbstractC4333c.AbstractC4334a {

        /* renamed from: a */
        private final C4351q f12516a;

        C3973b(C4351q c4351q) {
            ComponentCallbacks2C3971i.this = r4;
            this.f12516a = c4351q;
        }

        @Override // com.bumptech.glide.manager.AbstractC4333c.AbstractC4334a
        /* renamed from: a */
        public void mo22831a(boolean z) {
            if (z) {
                synchronized (ComponentCallbacks2C3971i.this) {
                    this.f12516a.m22804e();
                }
            }
        }
    }

    public ComponentCallbacks2C3971i(ComponentCallbacks2C3958c componentCallbacks2C3958c, AbstractC4344l abstractC4344l, AbstractC4350p abstractC4350p, Context context) {
        this(componentCallbacks2C3958c, abstractC4344l, abstractC4350p, new C4351q(), componentCallbacks2C3958c.m23691g(), context);
    }

    ComponentCallbacks2C3971i(ComponentCallbacks2C3958c componentCallbacks2C3958c, AbstractC4344l abstractC4344l, AbstractC4350p abstractC4350p, C4351q c4351q, AbstractC4335d abstractC4335d, Context context) {
        this.f12509l = new C4354s();
        RunnableC3972a runnableC3972a = new RunnableC3972a();
        this.f12510m = runnableC3972a;
        this.f12504g = componentCallbacks2C3958c;
        this.f12506i = abstractC4344l;
        this.f12508k = abstractC4350p;
        this.f12507j = c4351q;
        this.f12505h = context;
        AbstractC4333c mo22827a = abstractC4335d.mo22827a(context.getApplicationContext(), new C3973b(c4351q));
        this.f12511n = mo22827a;
        if (C4383k.m22702p()) {
            C4383k.m22698t(runnableC3972a);
        } else {
            abstractC4344l.mo22825a(this);
        }
        abstractC4344l.mo22825a(mo22827a);
        this.f12512o = new CopyOnWriteArrayList<>(componentCallbacks2C3958c.m23689i().m23670c());
        mo23623y(componentCallbacks2C3958c.m23689i().m23669d());
        componentCallbacks2C3958c.m23683o(this);
    }

    /* renamed from: B */
    private void m23639B(AbstractC4411h<?> abstractC4411h) {
        boolean m23640A = m23640A(abstractC4411h);
        AbstractC4399c mo22555g = abstractC4411h.mo22555g();
        if (m23640A || this.f12504g.m23682p(abstractC4411h) || mo22555g == null) {
            return;
        }
        abstractC4411h.mo22557d(null);
        mo22555g.clear();
    }

    /* renamed from: A */
    public boolean m23640A(AbstractC4411h<?> abstractC4411h) {
        synchronized (this) {
            AbstractC4399c mo22555g = abstractC4411h.mo22555g();
            if (mo22555g == null) {
                return true;
            }
            if (!this.f12507j.m22808a(mo22555g)) {
                return false;
            }
            this.f12509l.m22782m(abstractC4411h);
            abstractC4411h.mo22557d(null);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    /* renamed from: a */
    public void mo22567a() {
        synchronized (this) {
            m23626v();
            this.f12509l.mo22567a();
        }
    }

    /* renamed from: j */
    public <ResourceType> C3969h<ResourceType> mo23638j(Class<ResourceType> cls) {
        return new C3969h<>(this.f12504g, this, cls, this.f12505h);
    }

    /* renamed from: k */
    public C3969h<Bitmap> mo23637k() {
        return mo23638j(Bitmap.class).mo22632a(f12501d);
    }

    /* renamed from: l */
    public C3969h<Drawable> mo23636l() {
        return mo23638j(Drawable.class);
    }

    /* renamed from: m */
    public void m23635m(AbstractC4411h<?> abstractC4411h) {
        if (abstractC4411h == null) {
            return;
        }
        m23639B(abstractC4411h);
    }

    /* renamed from: n */
    public List<AbstractC4400d<Object>> m23634n() {
        return this.f12512o;
    }

    /* renamed from: o */
    public C4401e m23633o() {
        C4401e c4401e;
        synchronized (this) {
            c4401e = this.f12513p;
        }
        return c4401e;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onDestroy() {
        synchronized (this) {
            this.f12509l.onDestroy();
            for (AbstractC4411h<?> abstractC4411h : this.f12509l.m22784k()) {
                m23635m(abstractC4411h);
            }
            this.f12509l.m22785j();
            this.f12507j.m22807b();
            this.f12506i.mo22824b(this);
            this.f12506i.mo22824b(this.f12511n);
            C4383k.m22697u(this.f12510m);
            this.f12504g.m23679s(this);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.AbstractC4345m
    public void onStart() {
        synchronized (this) {
            m23625w();
            this.f12509l.onStart();
        }
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i != 60 || !this.f12514q) {
            return;
        }
        m23627u();
    }

    /* renamed from: p */
    public <T> AbstractC3974j<?, T> m23632p(Class<T> cls) {
        return this.f12504g.m23689i().m23668e(cls);
    }

    /* renamed from: q */
    public C3969h<Drawable> mo23631q(Uri uri) {
        return mo23636l().mo23658C0(uri);
    }

    /* renamed from: r */
    public C3969h<Drawable> m23630r(Object obj) {
        return mo23636l().mo23656E0(obj);
    }

    /* renamed from: s */
    public C3969h<Drawable> mo23629s(String str) {
        return mo23636l().mo23655F0(str);
    }

    /* renamed from: t */
    public void m23628t() {
        synchronized (this) {
            this.f12507j.m22806c();
        }
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = super.toString() + "{tracker=" + this.f12507j + ", treeNode=" + this.f12508k + "}";
        }
        return str;
    }

    /* renamed from: u */
    public void m23627u() {
        synchronized (this) {
            m23628t();
            for (ComponentCallbacks2C3971i componentCallbacks2C3971i : this.f12508k.mo22786a()) {
                componentCallbacks2C3971i.m23628t();
            }
        }
    }

    /* renamed from: v */
    public void m23626v() {
        synchronized (this) {
            this.f12507j.m22805d();
        }
    }

    /* renamed from: w */
    public void m23625w() {
        synchronized (this) {
            this.f12507j.m22803f();
        }
    }

    /* renamed from: x */
    public ComponentCallbacks2C3971i mo23624x(C4401e c4401e) {
        synchronized (this) {
            mo23623y(c4401e);
        }
        return this;
    }

    /* renamed from: y */
    public void mo23623y(C4401e c4401e) {
        synchronized (this) {
            this.f12513p = c4401e.clone().mo22630b();
        }
    }

    /* renamed from: z */
    public void m23622z(AbstractC4411h<?> abstractC4411h, AbstractC4399c abstractC4399c) {
        synchronized (this) {
            this.f12509l.m22783l(abstractC4411h);
            this.f12507j.m22802g(abstractC4399c);
        }
    }
}

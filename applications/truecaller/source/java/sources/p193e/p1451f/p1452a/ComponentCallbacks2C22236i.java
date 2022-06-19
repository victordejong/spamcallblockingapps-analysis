package p193e.p1451f.p1452a;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import e.f.a.o.e;
import e.f.a.o.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.C22224d;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1457n.p1466q.p1471h.C22538c;
import p193e.p1451f.p1452a.p1473o.AbstractC22556c;
import p193e.p1451f.p1452a.p1473o.AbstractC22558d;
import p193e.p1451f.p1452a.p1473o.AbstractC22561h;
import p193e.p1451f.p1452a.p1473o.AbstractC22562i;
import p193e.p1451f.p1452a.p1473o.AbstractC22568m;
import p193e.p1451f.p1452a.p1473o.C22559f;
import p193e.p1451f.p1452a.p1473o.C22569n;
import p193e.p1451f.p1452a.p1473o.C22570p;
import p193e.p1451f.p1452a.p1476r.AbstractC22587d;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.i */
/* loaded from: classes-dex2jar.jar:e/f/a/i.class */
public class ComponentCallbacks2C22236i implements ComponentCallbacks2, AbstractC22562i {

    /* renamed from: l */
    public static final C22591h f61774l = new C22591h().mo8100h(Bitmap.class).mo8093o();

    /* renamed from: m */
    public static final C22591h f61775m = new C22591h().mo8100h(C22538c.class).mo8093o();

    /* renamed from: a */
    public final ComponentCallbacks2C22222c f61776a;

    /* renamed from: b */
    public final Context f61777b;

    /* renamed from: c */
    public final AbstractC22561h f61778c;

    /* renamed from: d */
    public final C22569n f61779d;

    /* renamed from: e */
    public final AbstractC22568m f61780e;

    /* renamed from: f */
    public final C22570p f61781f = new C22570p();

    /* renamed from: g */
    public final Runnable f61782g;

    /* renamed from: h */
    public final Handler f61783h;

    /* renamed from: i */
    public final AbstractC22556c f61784i;

    /* renamed from: j */
    public final CopyOnWriteArrayList<AbstractC22590g<Object>> f61785j;

    /* renamed from: k */
    public C22591h f61786k;

    /* renamed from: e.f.a.i$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/i$a.class */
    public class RunnableC22237a implements Runnable {
        public RunnableC22237a() {
            ComponentCallbacks2C22236i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ComponentCallbacks2C22236i componentCallbacks2C22236i = ComponentCallbacks2C22236i.this;
            componentCallbacks2C22236i.f61778c.mo8138b(componentCallbacks2C22236i);
        }
    }

    /* renamed from: e.f.a.i$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/i$c.class */
    public class C22238c implements AbstractC22556c.AbstractC22557a {

        /* renamed from: a */
        public final C22569n f61788a;

        public C22238c(C22569n c22569n) {
            ComponentCallbacks2C22236i.this = r4;
            this.f61788a = c22569n;
        }
    }

    static {
        C22591h.m8073J(AbstractC22364k.f62126c).mo8085w(EnumC22227f.LOW).mo8113A(true);
    }

    public ComponentCallbacks2C22236i(ComponentCallbacks2C22222c componentCallbacks2C22222c, AbstractC22561h abstractC22561h, AbstractC22568m abstractC22568m, C22569n c22569n, AbstractC22558d abstractC22558d, Context context) {
        C22591h c22591h;
        RunnableC22237a runnableC22237a = new RunnableC22237a();
        this.f61782g = runnableC22237a;
        Handler handler = new Handler(Looper.getMainLooper());
        this.f61783h = handler;
        this.f61776a = componentCallbacks2C22222c;
        this.f61778c = abstractC22561h;
        this.f61780e = abstractC22568m;
        this.f61779d = c22569n;
        this.f61777b = context;
        Context applicationContext = context.getApplicationContext();
        C22238c c22238c = new C22238c(c22569n);
        Objects.requireNonNull((C22559f) abstractC22558d);
        boolean z = C26467a.m1801a(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        Log.isLoggable("ConnectivityMonitor", 3);
        AbstractC22556c eVar = z ? new e(applicationContext, c22238c) : new j();
        this.f61784i = eVar;
        if (C22623j.m8016h()) {
            handler.post(runnableC22237a);
        } else {
            abstractC22561h.mo8138b(this);
        }
        abstractC22561h.mo8138b(eVar);
        this.f61785j = new CopyOnWriteArrayList<>(componentCallbacks2C22222c.f61715d.f61741e);
        C22226e c22226e = componentCallbacks2C22222c.f61715d;
        synchronized (c22226e) {
            if (c22226e.f61746j == null) {
                Objects.requireNonNull((C22224d.C22225a) c22226e.f61740d);
                C22591h c22591h2 = new C22591h();
                c22591h2.f62544t = true;
                c22226e.f61746j = c22591h2;
            }
            c22591h = c22226e.f61746j;
        }
        mo8404u(c22591h);
        synchronized (componentCallbacks2C22222c.f61720i) {
            if (componentCallbacks2C22222c.f61720i.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            componentCallbacks2C22222c.f61720i.add(this);
        }
    }

    /* renamed from: a */
    public <ResourceType> C22234h<ResourceType> mo8416a(Class<ResourceType> cls) {
        return new C22234h<>(this.f61776a, this, cls, this.f61777b);
    }

    /* renamed from: f */
    public C22234h<Bitmap> mo8415f() {
        return mo8416a(Bitmap.class).mo8106a(f61774l);
    }

    /* renamed from: k */
    public C22234h<Drawable> mo8414k() {
        return mo8416a(Drawable.class);
    }

    /* renamed from: l */
    public C22234h<C22538c> mo8413l() {
        return mo8416a(C22538c.class).mo8106a(f61775m);
    }

    /* renamed from: m */
    public void m8412m(View view) {
        m8411n(new b(view));
    }

    /* renamed from: n */
    public void m8411n(AbstractC22598k<?> abstractC22598k) {
        boolean z;
        if (abstractC22598k == null) {
            return;
        }
        boolean m8403v = m8403v(abstractC22598k);
        AbstractC22587d mo8053b = abstractC22598k.mo8053b();
        if (m8403v) {
            return;
        }
        ComponentCallbacks2C22222c componentCallbacks2C22222c = this.f61776a;
        synchronized (componentCallbacks2C22222c.f61720i) {
            Iterator<ComponentCallbacks2C22236i> it = componentCallbacks2C22222c.f61720i.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().m8403v(abstractC22598k)) {
                    z = true;
                    break;
                }
            }
        }
        if (z || mo8053b == null) {
            return;
        }
        abstractC22598k.mo8048h(null);
        mo8053b.clear();
    }

    /* renamed from: o */
    public C22234h<Drawable> mo8410o(Drawable drawable) {
        return mo8414k().mo8424R(drawable);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
    public void onDestroy() {
        synchronized (this) {
            this.f61781f.onDestroy();
            for (AbstractC22598k<?> abstractC22598k : C22623j.m8019e(this.f61781f.f62507a)) {
                m8411n(abstractC22598k);
            }
            this.f61781f.f62507a.clear();
            C22569n c22569n = this.f61779d;
            Iterator it = ((ArrayList) C22623j.m8019e(c22569n.f62503a)).iterator();
            while (it.hasNext()) {
                c22569n.m8122a((AbstractC22587d) it.next());
            }
            c22569n.f62504b.clear();
            this.f61778c.mo8139a(this);
            this.f61778c.mo8139a(this.f61784i);
            this.f61783h.removeCallbacks(this.f61782g);
            ComponentCallbacks2C22222c componentCallbacks2C22222c = this.f61776a;
            synchronized (componentCallbacks2C22222c.f61720i) {
                if (!componentCallbacks2C22222c.f61720i.contains(this)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                componentCallbacks2C22222c.f61720i.remove(this);
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
    public void onStart() {
        synchronized (this) {
            m8405t();
            this.f61781f.onStart();
        }
    }

    @Override // p193e.p1451f.p1452a.p1473o.AbstractC22562i
    public void onStop() {
        synchronized (this) {
            m8406s();
            this.f61781f.onStop();
        }
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
    }

    /* renamed from: p */
    public C22234h<Drawable> mo8409p(Uri uri) {
        return mo8414k().mo8423S(uri);
    }

    /* renamed from: q */
    public C22234h<Drawable> mo8408q(Integer num) {
        return mo8414k().mo8422T(num);
    }

    /* renamed from: r */
    public C22234h<Drawable> mo8407r(String str) {
        return mo8414k().mo8420V(str);
    }

    /* renamed from: s */
    public void m8406s() {
        synchronized (this) {
            C22569n c22569n = this.f61779d;
            c22569n.f62505c = true;
            Iterator it = ((ArrayList) C22623j.m8019e(c22569n.f62503a)).iterator();
            while (it.hasNext()) {
                AbstractC22587d abstractC22587d = (AbstractC22587d) it.next();
                if (abstractC22587d.isRunning()) {
                    abstractC22587d.pause();
                    c22569n.f62504b.add(abstractC22587d);
                }
            }
        }
    }

    /* renamed from: t */
    public void m8405t() {
        synchronized (this) {
            C22569n c22569n = this.f61779d;
            c22569n.f62505c = false;
            Iterator it = ((ArrayList) C22623j.m8019e(c22569n.f62503a)).iterator();
            while (it.hasNext()) {
                AbstractC22587d abstractC22587d = (AbstractC22587d) it.next();
                if (!abstractC22587d.isComplete() && !abstractC22587d.isRunning()) {
                    abstractC22587d.mo8066h();
                }
            }
            c22569n.f62504b.clear();
        }
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = super.toString() + "{tracker=" + this.f61779d + ", treeNode=" + this.f61780e + "}";
        }
        return str;
    }

    /* renamed from: u */
    public void mo8404u(C22591h c22591h) {
        synchronized (this) {
            this.f61786k = c22591h.clone().mo8105b();
        }
    }

    /* renamed from: v */
    public boolean m8403v(AbstractC22598k<?> abstractC22598k) {
        synchronized (this) {
            AbstractC22587d mo8053b = abstractC22598k.mo8053b();
            if (mo8053b == null) {
                return true;
            }
            if (!this.f61779d.m8122a(mo8053b)) {
                return false;
            }
            this.f61781f.f62507a.remove(abstractC22598k);
            abstractC22598k.mo8048h(null);
            return true;
        }
    }
}

package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.e.a.d;
import com.bumptech.glide.e.g;
import com.bumptech.glide.e.h;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.resource.d.c;
import com.bumptech.glide.manager.c;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.manager.m;
import com.bumptech.glide.manager.p;
import com.bumptech.glide.manager.q;
import com.bumptech.glide.manager.s;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/k.class */
public class k implements ComponentCallbacks2, m {

    /* renamed from: d  reason: collision with root package name */
    private static final h f7372d = h.b(Bitmap.class).j();
    private static final h e = h.b(c.class).j();
    private static final h f = h.b(j.f7556c).a(h.LOW).b(true);

    /* renamed from: a  reason: collision with root package name */
    protected final c f7373a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f7374b;

    /* renamed from: c  reason: collision with root package name */
    final l f7375c;
    private final q g;
    private final p h;
    private final s i;
    private final Runnable j;
    private final com.bumptech.glide.manager.c k;
    private final CopyOnWriteArrayList<g<Object>> l;
    private h m;
    private boolean n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k$a.class */
    public static final class a extends d<View, Object> {
        a(View view) {
            super(view);
        }

        @Override // com.bumptech.glide.e.a.j
        public final void a(Drawable drawable) {
        }

        @Override // com.bumptech.glide.e.a.j
        public final void a(Object obj, com.bumptech.glide.e.b.d<? super Object> dVar) {
        }

        @Override // com.bumptech.glide.e.a.d
        public final void d() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k$b.class */
    final class b implements c.a {

        /* renamed from: b  reason: collision with root package name */
        private final q f7378b;

        b(q qVar) {
            this.f7378b = qVar;
        }

        @Override // com.bumptech.glide.manager.c.a
        public final void a(boolean z) {
            if (z) {
                synchronized (k.this) {
                    q qVar = this.f7378b;
                    for (com.bumptech.glide.e.d dVar : com.bumptech.glide.g.k.a(qVar.f7765a)) {
                        if (!dVar.e() && !dVar.f()) {
                            dVar.b();
                            if (!qVar.f7767c) {
                                dVar.a();
                            } else {
                                qVar.f7766b.add(dVar);
                            }
                        }
                    }
                }
            }
        }
    }

    public k(c cVar, l lVar, p pVar, Context context) {
        this(cVar, lVar, pVar, new q(), cVar.f, context);
    }

    k(c cVar, l lVar, p pVar, q qVar, com.bumptech.glide.manager.d dVar, Context context) {
        this.i = new s();
        Runnable runnable = new Runnable() { // from class: com.bumptech.glide.k.1
            @Override // java.lang.Runnable
            public final void run() {
                k.this.f7375c.a(k.this);
            }
        };
        this.j = runnable;
        this.f7373a = cVar;
        this.f7375c = lVar;
        this.h = pVar;
        this.g = qVar;
        this.f7374b = context;
        com.bumptech.glide.manager.c a2 = dVar.a(context.getApplicationContext(), new b(qVar));
        this.k = a2;
        if (com.bumptech.glide.g.k.d()) {
            com.bumptech.glide.g.k.a(runnable);
        } else {
            lVar.a(this);
        }
        lVar.a(a2);
        this.l = new CopyOnWriteArrayList<>(cVar.f7233b.f7264d);
        setRequestOptions(cVar.f7233b.a());
        synchronized (cVar.g) {
            if (!cVar.g.contains(this)) {
                cVar.g.add(this);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }

    private void c(com.bumptech.glide.e.a.j<?> jVar) {
        boolean b2 = b(jVar);
        com.bumptech.glide.e.d request = jVar.getRequest();
        if (!b2 && !this.f7373a.a(jVar) && request != null) {
            jVar.setRequest(null);
            request.b();
        }
    }

    private void h() {
        synchronized (this) {
            q qVar = this.g;
            qVar.f7767c = true;
            for (com.bumptech.glide.e.d dVar : com.bumptech.glide.g.k.a(qVar.f7765a)) {
                if (dVar.d()) {
                    dVar.c();
                    qVar.f7766b.add(dVar);
                }
            }
        }
    }

    private void i() {
        synchronized (this) {
            q qVar = this.g;
            qVar.f7767c = true;
            for (com.bumptech.glide.e.d dVar : com.bumptech.glide.g.k.a(qVar.f7765a)) {
                if (dVar.d() || dVar.e()) {
                    dVar.b();
                    qVar.f7766b.add(dVar);
                }
            }
        }
    }

    private void j() {
        synchronized (this) {
            i();
            for (k kVar : this.h.a()) {
                kVar.i();
            }
        }
    }

    private void k() {
        synchronized (this) {
            q qVar = this.g;
            qVar.f7767c = false;
            for (com.bumptech.glide.e.d dVar : com.bumptech.glide.g.k.a(qVar.f7765a)) {
                if (!dVar.e() && !dVar.d()) {
                    dVar.a();
                }
            }
            qVar.f7766b.clear();
        }
    }

    public j<Drawable> a(Bitmap bitmap) {
        return f().a(bitmap);
    }

    public j<Drawable> a(Drawable drawable) {
        return f().a(drawable);
    }

    public <ResourceType> j<ResourceType> a(Class<ResourceType> cls) {
        return new j<>(this.f7373a, this, cls, this.f7374b);
    }

    public j<Drawable> a(Object obj) {
        return f().a(obj);
    }

    public j<Drawable> a(String str) {
        return f().a(str);
    }

    @Override // com.bumptech.glide.manager.m
    public final void a() {
        synchronized (this) {
            k();
            this.i.a();
        }
    }

    public final void a(View view) {
        a((com.bumptech.glide.e.a.j<?>) new a(view));
    }

    public final void a(com.bumptech.glide.e.a.j<?> jVar) {
        if (jVar != null) {
            c(jVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(com.bumptech.glide.e.a.j<?> jVar, com.bumptech.glide.e.d dVar) {
        synchronized (this) {
            this.i.f7773a.add(jVar);
            q qVar = this.g;
            qVar.f7765a.add(dVar);
            if (!qVar.f7767c) {
                dVar.a();
                return;
            }
            dVar.b();
            Log.isLoggable("RequestTracker", 2);
            qVar.f7766b.add(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> l<?, T> b(Class<T> cls) {
        e eVar = this.f7373a.f7233b;
        l<?, ?> lVar = eVar.e.get(cls);
        l<?, ?> lVar2 = lVar;
        if (lVar == null) {
            Iterator<Map.Entry<Class<?>, l<?, ?>>> it2 = eVar.e.entrySet().iterator();
            while (true) {
                lVar2 = lVar;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, l<?, ?>> next = it2.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    lVar = next.getValue();
                }
            }
        }
        l<?, T> lVar3 = (l<?, T>) lVar2;
        if (lVar2 == null) {
            lVar3 = (l<?, T>) e.f7261a;
        }
        return lVar3;
    }

    @Override // com.bumptech.glide.manager.m
    public final void b() {
        synchronized (this) {
            h();
            this.i.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(com.bumptech.glide.e.a.j<?> jVar) {
        synchronized (this) {
            com.bumptech.glide.e.d request = jVar.getRequest();
            if (request == null) {
                return true;
            }
            if (!this.g.a(request)) {
                return false;
            }
            this.i.f7773a.remove(jVar);
            jVar.setRequest(null);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.m
    public final void c() {
        synchronized (this) {
            this.i.c();
            for (com.bumptech.glide.e.a.j<?> jVar : com.bumptech.glide.g.k.a(this.i.f7773a)) {
                a(jVar);
            }
            this.i.f7773a.clear();
            q qVar = this.g;
            for (com.bumptech.glide.e.d dVar : com.bumptech.glide.g.k.a(qVar.f7765a)) {
                qVar.a(dVar);
            }
            qVar.f7766b.clear();
            this.f7375c.b(this);
            this.f7375c.b(this.k);
            com.bumptech.glide.g.k.b(this.j);
            c cVar = this.f7373a;
            synchronized (cVar.g) {
                if (cVar.g.contains(this)) {
                    cVar.g.remove(this);
                } else {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
            }
        }
    }

    public j<Bitmap> d() {
        return a(Bitmap.class).a((com.bumptech.glide.e.a<?>) f7372d);
    }

    public j<com.bumptech.glide.load.resource.d.c> e() {
        return a(com.bumptech.glide.load.resource.d.c.class).a((com.bumptech.glide.e.a<?>) e);
    }

    public j<Drawable> f() {
        return a(Drawable.class);
    }

    public j<File> g() {
        return a(File.class).a((com.bumptech.glide.e.a<?>) f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<g<Object>> getDefaultRequestListeners() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h getDefaultRequestOptions() {
        h hVar;
        synchronized (this) {
            hVar = this.m;
        }
        return hVar;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 60 && this.n) {
            j();
        }
    }

    public void setRequestOptions(h hVar) {
        synchronized (this) {
            this.m = hVar.clone().k();
        }
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = super.toString() + "{tracker=" + this.g + ", treeNode=" + this.h + "}";
        }
        return str;
    }
}

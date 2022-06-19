package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.load.engine.AbstractC3782j;
import com.bumptech.glide.load.resource.p125d.C3909c;
import com.bumptech.glide.manager.AbstractC3932c;
import com.bumptech.glide.manager.AbstractC3934d;
import com.bumptech.glide.manager.AbstractC3943l;
import com.bumptech.glide.manager.AbstractC3944m;
import com.bumptech.glide.manager.AbstractC3949p;
import com.bumptech.glide.manager.C3950q;
import com.bumptech.glide.manager.C3953s;
import com.bumptech.glide.p112e.AbstractC3572a;
import com.bumptech.glide.p112e.AbstractC3599d;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p112e.p113a.AbstractC3576d;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p112e.p114b.AbstractC3595d;
import com.bumptech.glide.p116g.C3644k;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.bumptech.glide.k */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/k.class */
public class ComponentCallbacks2C3653k implements ComponentCallbacks2, AbstractC3944m {

    /* renamed from: d */
    private static final C3605h f13782d = C3605h.m37654b(Bitmap.class).mo27060j();

    /* renamed from: e */
    private static final C3605h f13783e = C3605h.m37654b(C3909c.class).mo27060j();

    /* renamed from: f */
    private static final C3605h f13784f = C3605h.m37656b(AbstractC3782j.f14057c).mo27098a(EnumC3646h.LOW).mo27075b(true);

    /* renamed from: a */
    protected final ComponentCallbacks2C3548c f13785a;

    /* renamed from: b */
    protected final Context f13786b;

    /* renamed from: c */
    final AbstractC3943l f13787c;

    /* renamed from: g */
    private final C3950q f13788g;

    /* renamed from: h */
    private final AbstractC3949p f13789h;

    /* renamed from: i */
    private final C3953s f13790i;

    /* renamed from: j */
    private final Runnable f13791j;

    /* renamed from: k */
    private final AbstractC3932c f13792k;

    /* renamed from: l */
    private final CopyOnWriteArrayList<AbstractC3604g<Object>> f13793l;

    /* renamed from: m */
    private C3605h f13794m;

    /* renamed from: n */
    private boolean f13795n;

    /* renamed from: com.bumptech.glide.k$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k$a.class */
    public static final class C3655a extends AbstractC3576d<View, Object> {
        C3655a(View view) {
            super(view);
        }

        @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
        /* renamed from: a */
        public final void mo27009a(Drawable drawable) {
        }

        @Override // com.bumptech.glide.p112e.p113a.AbstractC3585j
        /* renamed from: a */
        public final void mo27008a(Object obj, AbstractC3595d<? super Object> abstractC3595d) {
        }

        @Override // com.bumptech.glide.p112e.p113a.AbstractC3576d
        /* renamed from: d */
        public final void mo27007d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.k$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/k$b.class */
    public final class C3656b implements AbstractC3932c.AbstractC3933a {

        /* renamed from: b */
        private final C3950q f13798b;

        C3656b(C3950q c3950q) {
            ComponentCallbacks2C3653k.this = r4;
            this.f13798b = c3950q;
        }

        @Override // com.bumptech.glide.manager.AbstractC3932c.AbstractC3933a
        /* renamed from: a */
        public final void mo37178a(boolean z) {
            if (z) {
                synchronized (ComponentCallbacks2C3653k.this) {
                    C3950q c3950q = this.f13798b;
                    for (AbstractC3599d abstractC3599d : C3644k.m37575a(c3950q.f14386a)) {
                        if (!abstractC3599d.mo37626e() && !abstractC3599d.mo37624f()) {
                            abstractC3599d.mo37632b();
                            if (!c3950q.f14388c) {
                                abstractC3599d.mo37635a();
                            } else {
                                c3950q.f14387b.add(abstractC3599d);
                            }
                        }
                    }
                }
            }
        }
    }

    public ComponentCallbacks2C3653k(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3943l abstractC3943l, AbstractC3949p abstractC3949p, Context context) {
        this(componentCallbacks2C3548c, abstractC3943l, abstractC3949p, new C3950q(), componentCallbacks2C3548c.f13536f, context);
    }

    ComponentCallbacks2C3653k(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3943l abstractC3943l, AbstractC3949p abstractC3949p, C3950q c3950q, AbstractC3934d abstractC3934d, Context context) {
        this.f13790i = new C3953s();
        Runnable runnable = new Runnable() { // from class: com.bumptech.glide.k.1
            @Override // java.lang.Runnable
            public final void run() {
                ComponentCallbacks2C3653k.this.f13787c.mo37175a(ComponentCallbacks2C3653k.this);
            }
        };
        this.f13791j = runnable;
        this.f13785a = componentCallbacks2C3548c;
        this.f13787c = abstractC3943l;
        this.f13789h = abstractC3949p;
        this.f13788g = c3950q;
        this.f13786b = context;
        AbstractC3932c mo37176a = abstractC3934d.mo37176a(context.getApplicationContext(), new C3656b(c3950q));
        this.f13792k = mo37176a;
        if (C3644k.m37566d()) {
            C3644k.m37576a(runnable);
        } else {
            abstractC3943l.mo37175a(this);
        }
        abstractC3943l.mo37175a(mo37176a);
        this.f13793l = new CopyOnWriteArrayList<>(componentCallbacks2C3548c.f13532b.f13583d);
        setRequestOptions(componentCallbacks2C3548c.f13532b.m37697a());
        synchronized (componentCallbacks2C3548c.f13537g) {
            if (componentCallbacks2C3548c.f13537g.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            componentCallbacks2C3548c.f13537g.add(this);
        }
    }

    /* renamed from: c */
    private void m37544c(AbstractC3585j<?> abstractC3585j) {
        boolean m37546b = m37546b(abstractC3585j);
        AbstractC3599d request = abstractC3585j.getRequest();
        if (m37546b || this.f13785a.m37721a(abstractC3585j) || request == null) {
            return;
        }
        abstractC3585j.setRequest(null);
        request.mo37632b();
    }

    /* renamed from: h */
    private void m37543h() {
        synchronized (this) {
            C3950q c3950q = this.f13788g;
            c3950q.f14388c = true;
            for (AbstractC3599d abstractC3599d : C3644k.m37575a(c3950q.f14386a)) {
                if (abstractC3599d.mo37628d()) {
                    abstractC3599d.mo37630c();
                    c3950q.f14387b.add(abstractC3599d);
                }
            }
        }
    }

    /* renamed from: i */
    private void m37542i() {
        synchronized (this) {
            C3950q c3950q = this.f13788g;
            c3950q.f14388c = true;
            for (AbstractC3599d abstractC3599d : C3644k.m37575a(c3950q.f14386a)) {
                if (abstractC3599d.mo37628d() || abstractC3599d.mo37626e()) {
                    abstractC3599d.mo37632b();
                    c3950q.f14387b.add(abstractC3599d);
                }
            }
        }
    }

    /* renamed from: j */
    private void m37541j() {
        synchronized (this) {
            m37542i();
            for (ComponentCallbacks2C3653k componentCallbacks2C3653k : this.f13789h.mo37151a()) {
                componentCallbacks2C3653k.m37542i();
            }
        }
    }

    /* renamed from: k */
    private void m37540k() {
        synchronized (this) {
            C3950q c3950q = this.f13788g;
            c3950q.f14388c = false;
            for (AbstractC3599d abstractC3599d : C3644k.m37575a(c3950q.f14386a)) {
                if (!abstractC3599d.mo37626e() && !abstractC3599d.mo37628d()) {
                    abstractC3599d.mo37635a();
                }
            }
            c3950q.f14387b.clear();
        }
    }

    /* renamed from: a */
    public C3651j<Drawable> mo27056a(Bitmap bitmap) {
        return mo27045f().mo27102a(bitmap);
    }

    /* renamed from: a */
    public C3651j<Drawable> mo27055a(Drawable drawable) {
        return mo27045f().mo27101a(drawable);
    }

    /* renamed from: a */
    public <ResourceType> C3651j<ResourceType> mo27054a(Class<ResourceType> cls) {
        return new C3651j<>(this.f13785a, this, cls, this.f13786b);
    }

    /* renamed from: a */
    public C3651j<Drawable> mo27053a(Object obj) {
        return mo27045f().mo27089a(obj);
    }

    /* renamed from: a */
    public C3651j<Drawable> mo27052a(String str) {
        return mo27045f().mo27088a(str);
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
        synchronized (this) {
            m37540k();
            this.f13790i.mo37150a();
        }
    }

    /* renamed from: a */
    public final void m37549a(View view) {
        m37548a((AbstractC3585j<?>) new C3655a(view));
    }

    /* renamed from: a */
    public final void m37548a(AbstractC3585j<?> abstractC3585j) {
        if (abstractC3585j == null) {
            return;
        }
        m37544c(abstractC3585j);
    }

    /* renamed from: a */
    public final void m37547a(AbstractC3585j<?> abstractC3585j, AbstractC3599d abstractC3599d) {
        synchronized (this) {
            this.f13790i.f14396a.add(abstractC3585j);
            C3950q c3950q = this.f13788g;
            c3950q.f14386a.add(abstractC3599d);
            if (!c3950q.f14388c) {
                abstractC3599d.mo37635a();
                return;
            }
            abstractC3599d.mo37632b();
            Log.isLoggable("RequestTracker", 2);
            c3950q.f14387b.add(abstractC3599d);
        }
    }

    /* renamed from: b */
    public final <T> AbstractC3657l<?, T> m37545b(Class<T> cls) {
        C3571e c3571e = this.f13785a.f13532b;
        AbstractC3657l<?, ?> abstractC3657l = c3571e.f13584e.get(cls);
        AbstractC3657l<?, ?> abstractC3657l2 = abstractC3657l;
        if (abstractC3657l == null) {
            Iterator<Map.Entry<Class<?>, AbstractC3657l<?, ?>>> it2 = c3571e.f13584e.entrySet().iterator();
            while (true) {
                abstractC3657l2 = abstractC3657l;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC3657l<?, ?>> next = it2.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC3657l = next.getValue();
                }
            }
        }
        AbstractC3657l<?, ?> abstractC3657l3 = abstractC3657l2;
        if (abstractC3657l2 == null) {
            abstractC3657l3 = C3571e.f13580a;
        }
        return (AbstractC3657l<?, T>) abstractC3657l3;
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
        synchronized (this) {
            m37543h();
            this.f13790i.mo37149b();
        }
    }

    /* renamed from: b */
    public final boolean m37546b(AbstractC3585j<?> abstractC3585j) {
        synchronized (this) {
            AbstractC3599d request = abstractC3585j.getRequest();
            if (request == null) {
                return true;
            }
            if (!this.f13788g.m37160a(request)) {
                return false;
            }
            this.f13790i.f14396a.remove(abstractC3585j);
            abstractC3585j.setRequest(null);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: c */
    public final void mo37148c() {
        synchronized (this) {
            this.f13790i.mo37148c();
            for (AbstractC3585j<?> abstractC3585j : C3644k.m37575a(this.f13790i.f14396a)) {
                m37548a(abstractC3585j);
            }
            this.f13790i.f14396a.clear();
            C3950q c3950q = this.f13788g;
            for (AbstractC3599d abstractC3599d : C3644k.m37575a(c3950q.f14386a)) {
                c3950q.m37160a(abstractC3599d);
            }
            c3950q.f14387b.clear();
            this.f13787c.mo37174b(this);
            this.f13787c.mo37174b(this.f13792k);
            C3644k.m37568b(this.f13791j);
            ComponentCallbacks2C3548c componentCallbacks2C3548c = this.f13785a;
            synchronized (componentCallbacks2C3548c.f13537g) {
                if (!componentCallbacks2C3548c.f13537g.contains(this)) {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
                componentCallbacks2C3548c.f13537g.remove(this);
            }
        }
    }

    /* renamed from: d */
    public C3651j<Bitmap> mo27047d() {
        return mo27054a(Bitmap.class).mo27100a((AbstractC3572a<?>) f13782d);
    }

    /* renamed from: e */
    public C3651j<C3909c> mo27046e() {
        return mo27054a(C3909c.class).mo27100a((AbstractC3572a<?>) f13783e);
    }

    /* renamed from: f */
    public C3651j<Drawable> mo27045f() {
        return mo27054a(Drawable.class);
    }

    /* renamed from: g */
    public C3651j<File> mo27044g() {
        return mo27054a(File.class).mo27100a((AbstractC3572a<?>) f13784f);
    }

    public List<AbstractC3604g<Object>> getDefaultRequestListeners() {
        return this.f13793l;
    }

    public C3605h getDefaultRequestOptions() {
        C3605h c3605h;
        synchronized (this) {
            c3605h = this.f13794m;
        }
        return c3605h;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i != 60 || !this.f13795n) {
            return;
        }
        m37541j();
    }

    public void setRequestOptions(C3605h c3605h) {
        synchronized (this) {
            this.f13794m = c3605h.clone().mo27059k();
        }
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = super.toString() + "{tracker=" + this.f13788g + ", treeNode=" + this.f13789h + "}";
        }
        return str;
    }
}

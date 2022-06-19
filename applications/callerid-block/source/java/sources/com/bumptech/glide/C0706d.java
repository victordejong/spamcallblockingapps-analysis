package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import com.bumptech.glide.request.AbstractC0868d;
import com.bumptech.glide.request.e;
import com.bumptech.glide.request.h.j;
import com.bumptech.glide.request.p031h.C0870f;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d.class */
public class C0706d extends ContextWrapper {

    /* renamed from: k */
    static final AbstractC0710i<?, ?> f3407k = new a();

    /* renamed from: a */
    private final AbstractC0768b f3408a;

    /* renamed from: b */
    private final Registry f3409b;

    /* renamed from: c */
    private final C0870f f3410c;

    /* renamed from: d */
    private final ComponentCallbacks2C0700b.AbstractC0701a f3411d;

    /* renamed from: e */
    private final List<AbstractC0868d<Object>> f3412e;

    /* renamed from: f */
    private final Map<Class<?>, AbstractC0710i<?, ?>> f3413f;

    /* renamed from: g */
    private final i f3414g;

    /* renamed from: h */
    private final C0707e f3415h;

    /* renamed from: i */
    private final int f3416i;

    /* renamed from: j */
    private e f3417j;

    public C0706d(Context context, AbstractC0768b abstractC0768b, Registry registry, C0870f c0870f, ComponentCallbacks2C0700b.AbstractC0701a abstractC0701a, Map<Class<?>, AbstractC0710i<?, ?>> map, List<AbstractC0868d<Object>> list, i iVar, C0707e c0707e, int i) {
        super(context.getApplicationContext());
        this.f3408a = abstractC0768b;
        this.f3409b = registry;
        this.f3410c = c0870f;
        this.f3411d = abstractC0701a;
        this.f3412e = list;
        this.f3413f = map;
        this.f3414g = iVar;
        this.f3415h = c0707e;
        this.f3416i = i;
    }

    /* renamed from: a */
    public <X> j<ImageView, X> m11325a(ImageView imageView, Class<X> cls) {
        return this.f3410c.m10644a(imageView, cls);
    }

    /* renamed from: b */
    public AbstractC0768b m11324b() {
        return this.f3408a;
    }

    /* renamed from: c */
    public List<AbstractC0868d<Object>> m11323c() {
        return this.f3412e;
    }

    /* renamed from: d */
    public e m11322d() {
        e eVar;
        synchronized (this) {
            if (this.f3417j == null) {
                e m11328a = this.f3411d.m11328a();
                m11328a.m10698T();
                this.f3417j = m11328a;
            }
            eVar = this.f3417j;
        }
        return eVar;
    }

    /* renamed from: e */
    public <T> AbstractC0710i<?, T> m11321e(Class<T> cls) {
        AbstractC0710i<?, ?> abstractC0710i = this.f3413f.get(cls);
        AbstractC0710i<?, ?> abstractC0710i2 = abstractC0710i;
        if (abstractC0710i == null) {
            Iterator<Map.Entry<Class<?>, AbstractC0710i<?, ?>>> it = this.f3413f.entrySet().iterator();
            while (true) {
                abstractC0710i2 = abstractC0710i;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC0710i<?, ?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC0710i = next.getValue();
                }
            }
        }
        AbstractC0710i<?, ?> abstractC0710i3 = abstractC0710i2;
        if (abstractC0710i2 == null) {
            abstractC0710i3 = f3407k;
        }
        return (AbstractC0710i<?, T>) abstractC0710i3;
    }

    /* renamed from: f */
    public i m11320f() {
        return this.f3414g;
    }

    /* renamed from: g */
    public C0707e m11319g() {
        return this.f3415h;
    }

    /* renamed from: h */
    public int m11318h() {
        return this.f3416i;
    }

    /* renamed from: i */
    public Registry m11317i() {
        return this.f3409b;
    }
}

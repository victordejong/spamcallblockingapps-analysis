package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.load.engine.C3788k;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import com.bumptech.glide.p112e.AbstractC3604g;
import com.bumptech.glide.p112e.C3605h;
import com.bumptech.glide.p112e.p113a.C3581g;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e.class */
public final class C3571e extends ContextWrapper {

    /* renamed from: a */
    static final AbstractC3657l<?, ?> f13580a = new C3541b();

    /* renamed from: b */
    public final AbstractC3707b f13581b;

    /* renamed from: c */
    public final Registry f13582c;

    /* renamed from: d */
    final List<AbstractC3604g<Object>> f13583d;

    /* renamed from: e */
    final Map<Class<?>, AbstractC3657l<?, ?>> f13584e;

    /* renamed from: f */
    final C3788k f13585f;

    /* renamed from: g */
    public final C3610f f13586g;

    /* renamed from: h */
    public final int f13587h;

    /* renamed from: i */
    private final C3581g f13588i;

    /* renamed from: j */
    private final ComponentCallbacks2C3548c.AbstractC3549a f13589j;

    /* renamed from: k */
    private C3605h f13590k;

    public C3571e(Context context, AbstractC3707b abstractC3707b, Registry registry, C3581g c3581g, ComponentCallbacks2C3548c.AbstractC3549a abstractC3549a, Map<Class<?>, AbstractC3657l<?, ?>> map, List<AbstractC3604g<Object>> list, C3788k c3788k, C3610f c3610f, int i) {
        super(context.getApplicationContext());
        this.f13581b = abstractC3707b;
        this.f13582c = registry;
        this.f13588i = c3581g;
        this.f13589j = abstractC3549a;
        this.f13583d = list;
        this.f13584e = map;
        this.f13585f = c3788k;
        this.f13586g = c3610f;
        this.f13587h = i;
    }

    /* renamed from: a */
    public final C3605h m37697a() {
        C3605h c3605h;
        synchronized (this) {
            if (this.f13590k == null) {
                this.f13590k = this.f13589j.mo37713a().mo27060j();
            }
            c3605h = this.f13590k;
        }
        return c3605h;
    }
}

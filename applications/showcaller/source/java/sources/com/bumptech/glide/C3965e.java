package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.load.engine.C4060i;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import com.bumptech.glide.request.AbstractC4400d;
import com.bumptech.glide.request.C4401e;
import com.bumptech.glide.request.p225h.AbstractC4412i;
import com.bumptech.glide.request.p225h.C4409f;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e.class */
public class C3965e extends ContextWrapper {

    /* renamed from: a */
    static final AbstractC3974j<?, ?> f12471a = new C3957b();

    /* renamed from: b */
    private final AbstractC4091b f12472b;

    /* renamed from: c */
    private final Registry f12473c;

    /* renamed from: d */
    private final C4409f f12474d;

    /* renamed from: e */
    private final ComponentCallbacks2C3958c.AbstractC3959a f12475e;

    /* renamed from: f */
    private final List<AbstractC4400d<Object>> f12476f;

    /* renamed from: g */
    private final Map<Class<?>, AbstractC3974j<?, ?>> f12477g;

    /* renamed from: h */
    private final C4060i f12478h;

    /* renamed from: i */
    private final C3966f f12479i;

    /* renamed from: j */
    private final int f12480j;

    /* renamed from: k */
    private C4401e f12481k;

    public C3965e(Context context, AbstractC4091b abstractC4091b, Registry registry, C4409f c4409f, ComponentCallbacks2C3958c.AbstractC3959a abstractC3959a, Map<Class<?>, AbstractC3974j<?, ?>> map, List<AbstractC4400d<Object>> list, C4060i c4060i, C3966f c3966f, int i) {
        super(context.getApplicationContext());
        this.f12472b = abstractC4091b;
        this.f12473c = registry;
        this.f12474d = c4409f;
        this.f12475e = abstractC3959a;
        this.f12476f = list;
        this.f12477g = map;
        this.f12478h = c4060i;
        this.f12479i = c3966f;
        this.f12480j = i;
    }

    /* renamed from: a */
    public <X> AbstractC4412i<ImageView, X> m23672a(ImageView imageView, Class<X> cls) {
        return this.f12474d.m22562a(imageView, cls);
    }

    /* renamed from: b */
    public AbstractC4091b m23671b() {
        return this.f12472b;
    }

    /* renamed from: c */
    public List<AbstractC4400d<Object>> m23670c() {
        return this.f12476f;
    }

    /* renamed from: d */
    public C4401e m23669d() {
        C4401e c4401e;
        synchronized (this) {
            if (this.f12481k == null) {
                this.f12481k = this.f12475e.mo23673a().mo22640S();
            }
            c4401e = this.f12481k;
        }
        return c4401e;
    }

    /* renamed from: e */
    public <T> AbstractC3974j<?, T> m23668e(Class<T> cls) {
        AbstractC3974j<?, ?> abstractC3974j = this.f12477g.get(cls);
        AbstractC3974j<?, ?> abstractC3974j2 = abstractC3974j;
        if (abstractC3974j == null) {
            Iterator<Map.Entry<Class<?>, AbstractC3974j<?, ?>>> it = this.f12477g.entrySet().iterator();
            while (true) {
                abstractC3974j2 = abstractC3974j;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, AbstractC3974j<?, ?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    abstractC3974j = next.getValue();
                }
            }
        }
        AbstractC3974j<?, ?> abstractC3974j3 = abstractC3974j2;
        if (abstractC3974j2 == null) {
            abstractC3974j3 = f12471a;
        }
        return (AbstractC3974j<?, T>) abstractC3974j3;
    }

    /* renamed from: f */
    public C4060i m23667f() {
        return this.f12478h;
    }

    /* renamed from: g */
    public C3966f m23666g() {
        return this.f12479i;
    }

    /* renamed from: h */
    public int m23665h() {
        return this.f12480j;
    }

    /* renamed from: i */
    public Registry m23664i() {
        return this.f12473c;
    }
}

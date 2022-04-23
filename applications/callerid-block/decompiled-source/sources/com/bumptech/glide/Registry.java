package com.bumptech.glide;

import com.bumptech.glide.load.AbstractC0728a;
import com.bumptech.glide.load.AbstractC0794f;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.AbstractC0738e;
import com.bumptech.glide.load.data.C0740f;
import com.bumptech.glide.load.engine.AbstractC0764s;
import com.bumptech.glide.load.engine.C0756g;
import com.bumptech.glide.load.engine.C0763q;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.p023i.AbstractC0800n;
import com.bumptech.glide.load.p023i.AbstractC0802o;
import com.bumptech.glide.load.p023i.C0803p;
import com.bumptech.glide.load.p024j.p027h.AbstractC0816e;
import com.bumptech.glide.load.p024j.p027h.C0817f;
import com.bumptech.glide.p028m.C0826a;
import com.bumptech.glide.p028m.C0828b;
import com.bumptech.glide.p028m.C0829c;
import com.bumptech.glide.p028m.C0830d;
import com.bumptech.glide.p028m.C0831e;
import com.bumptech.glide.p028m.C0833f;
import com.bumptech.glide.p029o.p030l.C0859a;
import d.h.l.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry.class */
public class Registry {

    /* renamed from: a */
    private final C0803p f3370a;

    /* renamed from: j */
    private final e<List<Throwable>> f3379j;

    /* renamed from: h */
    private final C0830d f3377h = new C0830d();

    /* renamed from: i */
    private final C0829c f3378i = new C0829c();

    /* renamed from: b */
    private final C0826a f3371b = new C0826a();

    /* renamed from: c */
    private final C0831e f3372c = new C0831e();

    /* renamed from: d */
    private final C0833f f3373d = new C0833f();

    /* renamed from: e */
    private final C0740f f3374e = new C0740f();

    /* renamed from: f */
    private final C0817f f3375f = new C0817f();

    /* renamed from: g */
    private final C0828b f3376g = new C0828b();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$MissingComponentException.class */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    public Registry() {
        e<List<Throwable>> e = C0859a.m10731e();
        this.f3379j = e;
        this.f3370a = new C0803p(e);
        m11351r(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    /* renamed from: f */
    private <Data, TResource, Transcode> List<C0756g<Data, TResource, Transcode>> m11363f(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f3372c.m10837d(cls, cls2)) {
            for (Class cls5 : this.f3375f.m10928b(cls4, cls3)) {
                arrayList.add(new C0756g(cls, cls4, cls5, this.f3372c.m10839b(cls, cls4), this.f3375f.m10929a(cls4, cls5), this.f3379j));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public <Data> Registry m11368a(Class<Data> cls, AbstractC0728a<Data> aVar) {
        this.f3371b.m10851a(cls, aVar);
        return this;
    }

    /* renamed from: b */
    public <TResource> Registry m11367b(Class<TResource> cls, g<TResource> gVar) {
        this.f3373d.m10834a(cls, gVar);
        return this;
    }

    /* renamed from: c */
    public <Data, TResource> Registry m11366c(Class<Data> cls, Class<TResource> cls2, AbstractC0794f<Data, TResource> fVar) {
        m11364e("legacy_append", cls, cls2, fVar);
        return this;
    }

    /* renamed from: d */
    public <Model, Data> Registry m11365d(Class<Model> cls, Class<Data> cls2, AbstractC0802o<Model, Data> oVar) {
        this.f3370a.m10978a(cls, cls2, oVar);
        return this;
    }

    /* renamed from: e */
    public <Data, TResource> Registry m11364e(String str, Class<Data> cls, Class<TResource> cls2, AbstractC0794f<Data, TResource> fVar) {
        this.f3372c.m10840a(str, fVar, cls, cls2);
        return this;
    }

    /* renamed from: g */
    public List<ImageHeaderParser> m11362g() {
        List<ImageHeaderParser> b = this.f3376g.m10847b();
        if (!b.isEmpty()) {
            return b;
        }
        throw new NoImageHeaderParserException();
    }

    /* renamed from: h */
    public <Data, TResource, Transcode> C0763q<Data, TResource, Transcode> m11361h(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C0763q<?, ?, ?> a = this.f3378i.m10846a(cls, cls2, cls3);
        if (this.f3378i.m10844c(a)) {
            return null;
        }
        C0763q<Data, TResource, Transcode> qVar = a;
        if (a == null) {
            List<C0756g<Data, TResource, Transcode>> f = m11363f(cls, cls2, cls3);
            qVar = f.isEmpty() ? null : new C0763q<>(cls, cls2, cls3, f, this.f3379j);
            this.f3378i.m10843d(cls, cls2, cls3, qVar);
        }
        return qVar;
    }

    /* renamed from: i */
    public <Model> List<AbstractC0800n<Model, ?>> m11360i(Model model) {
        return this.f3370a.m10975d(model);
    }

    /* renamed from: j */
    public <Model, TResource, Transcode> List<Class<?>> m11359j(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> a = this.f3377h.m10842a(cls, cls2, cls3);
        List<Class<?>> list = a;
        if (a == null) {
            list = new ArrayList<>();
            for (Class<?> cls4 : this.f3370a.m10976c(cls)) {
                for (Class<?> cls5 : this.f3372c.m10837d(cls4, cls2)) {
                    if (!this.f3375f.m10928b(cls5, cls3).isEmpty() && !list.contains(cls5)) {
                        list.add(cls5);
                    }
                }
            }
            this.f3377h.m10841b(cls, cls2, cls3, Collections.unmodifiableList(list));
        }
        return list;
    }

    /* renamed from: k */
    public <X> g<X> m11358k(AbstractC0764s<X> sVar) {
        g<X> b = this.f3373d.m10833b(sVar.m11078d());
        if (b != null) {
            return b;
        }
        throw new NoResultEncoderAvailableException(sVar.m11078d());
    }

    /* renamed from: l */
    public <X> AbstractC0738e<X> m11357l(X x) {
        return this.f3374e.m11179a(x);
    }

    /* renamed from: m */
    public <X> AbstractC0728a<X> m11356m(X x) {
        AbstractC0728a<X> b = this.f3371b.m10850b(x.getClass());
        if (b != null) {
            return b;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    /* renamed from: n */
    public boolean m11355n(AbstractC0764s<?> sVar) {
        return this.f3373d.m10833b(sVar.m11078d()) != null;
    }

    /* renamed from: o */
    public Registry m11354o(ImageHeaderParser imageHeaderParser) {
        this.f3376g.m10848a(imageHeaderParser);
        return this;
    }

    /* renamed from: p */
    public Registry m11353p(AbstractC0738e.AbstractC0739a<?> aVar) {
        this.f3374e.m11178b(aVar);
        return this;
    }

    /* renamed from: q */
    public <TResource, Transcode> Registry m11352q(Class<TResource> cls, Class<Transcode> cls2, AbstractC0816e<TResource, Transcode> eVar) {
        this.f3375f.m10927c(cls, cls2, eVar);
        return this;
    }

    /* renamed from: r */
    public final Registry m11351r(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add("legacy_append");
        this.f3372c.m10836e(arrayList);
        return this;
    }
}

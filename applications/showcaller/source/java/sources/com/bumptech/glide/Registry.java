package com.bumptech.glide;

import com.bumptech.glide.load.AbstractC3990a;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.AbstractC4147g;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.AbstractC4009e;
import com.bumptech.glide.load.data.C4011f;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.C4052g;
import com.bumptech.glide.load.engine.C4080q;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.load.p212i.AbstractC4193o;
import com.bumptech.glide.load.p212i.C4194p;
import com.bumptech.glide.load.p214j.p219h.AbstractC4272e;
import com.bumptech.glide.load.p214j.p219h.C4273f;
import com.bumptech.glide.p221n.C4355a;
import com.bumptech.glide.p221n.C4357b;
import com.bumptech.glide.p221n.C4358c;
import com.bumptech.glide.p221n.C4359d;
import com.bumptech.glide.p221n.C4360e;
import com.bumptech.glide.p221n.C4362f;
import com.bumptech.glide.p223p.p224l.C4385a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p020b.p041h.p049k.AbstractC1594e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry.class */
public class Registry {

    /* renamed from: a */
    private final C4194p f12430a;

    /* renamed from: j */
    private final AbstractC1594e<List<Throwable>> f12439j;

    /* renamed from: h */
    private final C4359d f12437h = new C4359d();

    /* renamed from: i */
    private final C4358c f12438i = new C4358c();

    /* renamed from: b */
    private final C4355a f12431b = new C4355a();

    /* renamed from: c */
    private final C4360e f12432c = new C4360e();

    /* renamed from: d */
    private final C4362f f12433d = new C4362f();

    /* renamed from: e */
    private final C4011f f12434e = new C4011f();

    /* renamed from: f */
    private final C4273f f12435f = new C4273f();

    /* renamed from: g */
    private final C4357b f12436g = new C4357b();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$MissingComponentException.class */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoImageHeaderParserException.class */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoModelLoaderAvailableException.class */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public NoModelLoaderAvailableException(Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> NoModelLoaderAvailableException(M m, List<AbstractC4191n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoResultEncoderAvailableException.class */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoSourceEncoderAvailableException.class */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        AbstractC1594e<List<Throwable>> m22691e = C4385a.m22691e();
        this.f12439j = m22691e;
        this.f12430a = new C4194p(m22691e);
        m23698t(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    /* renamed from: f */
    private <Data, TResource, Transcode> List<C4052g<Data, TResource, Transcode>> m23712f(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f12432c.m22767d(cls, cls2)) {
            for (Class cls5 : this.f12435f.m22992b(cls4, cls3)) {
                arrayList.add(new C4052g(cls, cls4, cls5, this.f12432c.m22769b(cls, cls4), this.f12435f.m22993a(cls4, cls5), this.f12439j));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public <Data> Registry m23717a(Class<Data> cls, AbstractC3990a<Data> abstractC3990a) {
        this.f12431b.m22781a(cls, abstractC3990a);
        return this;
    }

    /* renamed from: b */
    public <TResource> Registry m23716b(Class<TResource> cls, AbstractC4147g<TResource> abstractC4147g) {
        this.f12433d.m22763a(cls, abstractC4147g);
        return this;
    }

    /* renamed from: c */
    public <Data, TResource> Registry m23715c(Class<Data> cls, Class<TResource> cls2, AbstractC4146f<Data, TResource> abstractC4146f) {
        m23713e("legacy_append", cls, cls2, abstractC4146f);
        return this;
    }

    /* renamed from: d */
    public <Model, Data> Registry m23714d(Class<Model> cls, Class<Data> cls2, AbstractC4193o<Model, Data> abstractC4193o) {
        this.f12430a.m23135a(cls, cls2, abstractC4193o);
        return this;
    }

    /* renamed from: e */
    public <Data, TResource> Registry m23713e(String str, Class<Data> cls, Class<TResource> cls2, AbstractC4146f<Data, TResource> abstractC4146f) {
        this.f12432c.m22770a(str, abstractC4146f, cls, cls2);
        return this;
    }

    /* renamed from: g */
    public List<ImageHeaderParser> m23711g() {
        List<ImageHeaderParser> m22777b = this.f12436g.m22777b();
        if (!m22777b.isEmpty()) {
            return m22777b;
        }
        throw new NoImageHeaderParserException();
    }

    /* renamed from: h */
    public <Data, TResource, Transcode> C4080q<Data, TResource, Transcode> m23710h(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C4080q<?, ?, ?> m22776a = this.f12438i.m22776a(cls, cls2, cls3);
        if (this.f12438i.m22774c(m22776a)) {
            return null;
        }
        C4080q<?, ?, ?> c4080q = m22776a;
        if (m22776a == null) {
            List<C4052g<Data, TResource, Transcode>> m23712f = m23712f(cls, cls2, cls3);
            c4080q = m23712f.isEmpty() ? null : new C4080q<>(cls, cls2, cls3, m23712f, this.f12439j);
            this.f12438i.m22773d(cls, cls2, cls3, c4080q);
        }
        return c4080q;
    }

    /* renamed from: i */
    public <Model> List<AbstractC4191n<Model, ?>> m23709i(Model model) {
        return this.f12430a.m23132d(model);
    }

    /* renamed from: j */
    public <Model, TResource, Transcode> List<Class<?>> m23708j(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> m22772a = this.f12437h.m22772a(cls, cls2, cls3);
        ArrayList arrayList = m22772a;
        if (m22772a == null) {
            arrayList = new ArrayList();
            for (Class<?> cls4 : this.f12430a.m23133c(cls)) {
                for (Class<?> cls5 : this.f12432c.m22767d(cls4, cls2)) {
                    if (!this.f12435f.m22992b(cls5, cls3).isEmpty() && !arrayList.contains(cls5)) {
                        arrayList.add(cls5);
                    }
                }
            }
            this.f12437h.m22771b(cls, cls2, cls3, Collections.unmodifiableList(arrayList));
        }
        return arrayList;
    }

    /* renamed from: k */
    public <X> AbstractC4147g<X> m23707k(AbstractC4083s<X> abstractC4083s) {
        AbstractC4147g<X> m22762b = this.f12433d.m22762b(abstractC4083s.mo22855d());
        if (m22762b != null) {
            return m22762b;
        }
        throw new NoResultEncoderAvailableException(abstractC4083s.mo22855d());
    }

    /* renamed from: l */
    public <X> AbstractC4009e<X> m23706l(X x) {
        return this.f12434e.m23500a(x);
    }

    /* renamed from: m */
    public <X> AbstractC3990a<X> m23705m(X x) {
        AbstractC3990a<X> m22780b = this.f12431b.m22780b(x.getClass());
        if (m22780b != null) {
            return m22780b;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    /* renamed from: n */
    public boolean m23704n(AbstractC4083s<?> abstractC4083s) {
        return this.f12433d.m22762b(abstractC4083s.mo22855d()) != null;
    }

    /* renamed from: o */
    public <Data, TResource> Registry m23703o(Class<Data> cls, Class<TResource> cls2, AbstractC4146f<Data, TResource> abstractC4146f) {
        m23702p("legacy_prepend_all", cls, cls2, abstractC4146f);
        return this;
    }

    /* renamed from: p */
    public <Data, TResource> Registry m23702p(String str, Class<Data> cls, Class<TResource> cls2, AbstractC4146f<Data, TResource> abstractC4146f) {
        this.f12432c.m22766e(str, abstractC4146f, cls, cls2);
        return this;
    }

    /* renamed from: q */
    public Registry m23701q(ImageHeaderParser imageHeaderParser) {
        this.f12436g.m22778a(imageHeaderParser);
        return this;
    }

    /* renamed from: r */
    public Registry m23700r(AbstractC4009e.AbstractC4010a<?> abstractC4010a) {
        this.f12434e.m23499b(abstractC4010a);
        return this;
    }

    /* renamed from: s */
    public <TResource, Transcode> Registry m23699s(Class<TResource> cls, Class<Transcode> cls2, AbstractC4272e<TResource, Transcode> abstractC4272e) {
        this.f12435f.m22991c(cls, cls2, abstractC4272e);
        return this;
    }

    /* renamed from: t */
    public final Registry m23698t(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add("legacy_append");
        this.f12432c.m22765f(arrayList);
        return this;
    }
}

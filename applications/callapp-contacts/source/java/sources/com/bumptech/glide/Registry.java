package com.bumptech.glide;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.load.AbstractC3661d;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.AbstractC3825k;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.AbstractC3675e;
import com.bumptech.glide.load.data.C3677f;
import com.bumptech.glide.load.engine.C3780i;
import com.bumptech.glide.load.engine.C3808s;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.resource.p126e.AbstractC3925e;
import com.bumptech.glide.load.resource.p126e.C3926f;
import com.bumptech.glide.p111d.C3562a;
import com.bumptech.glide.p111d.C3564b;
import com.bumptech.glide.p111d.C3565c;
import com.bumptech.glide.p111d.C3566d;
import com.bumptech.glide.p111d.C3567e;
import com.bumptech.glide.p111d.C3569f;
import com.bumptech.glide.p116g.C3642i;
import com.bumptech.glide.p116g.p117a.C3621a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry.class */
public final class Registry {

    /* renamed from: d */
    private final ModelLoaderRegistry f13432d;

    /* renamed from: j */
    private final C0829c.AbstractC0830a<List<Throwable>> f13438j;

    /* renamed from: h */
    private final C3566d f13436h = new C3566d();

    /* renamed from: i */
    private final C3565c f13437i = new C3565c();

    /* renamed from: a */
    public final C3562a f13429a = new C3562a();

    /* renamed from: e */
    private final C3567e f13433e = new C3567e();

    /* renamed from: b */
    public final C3569f f13430b = new C3569f();

    /* renamed from: c */
    public final C3677f f13431c = new C3677f();

    /* renamed from: f */
    private final C3926f f13434f = new C3926f();

    /* renamed from: g */
    private final C3564b f13435g = new C3564b();

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

        public <M> NoModelLoaderAvailableException(M m, List<ModelLoader<M, ?>> list) {
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
            super("Failed to find source encoder for data class: ".concat(String.valueOf(cls)));
        }
    }

    public Registry() {
        C0829c.AbstractC0830a<List<Throwable>> m37610a = C3621a.m37610a();
        this.f13438j = m37610a;
        this.f13432d = new ModelLoaderRegistry(m37610a);
        m37789a(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    /* renamed from: a */
    private Registry m37789a(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add("legacy_append");
        this.f13433e.m37702a(arrayList);
        return this;
    }

    /* renamed from: a */
    public final Registry m37799a(ImageHeaderParser imageHeaderParser) {
        this.f13435g.m37709a(imageHeaderParser);
        return this;
    }

    /* renamed from: a */
    public final Registry m37798a(AbstractC3675e.AbstractC3676a<?> abstractC3676a) {
        this.f13431c.m37526a(abstractC3676a);
        return this;
    }

    /* renamed from: a */
    public final <Data> Registry m37797a(Class<Data> cls, AbstractC3661d<Data> abstractC3661d) {
        this.f13429a.m37711a(cls, abstractC3661d);
        return this;
    }

    /* renamed from: a */
    public final <TResource> Registry m37796a(Class<TResource> cls, AbstractC3825k<TResource> abstractC3825k) {
        this.f13430b.m37698a(cls, abstractC3825k);
        return this;
    }

    /* renamed from: a */
    public final <Data, TResource> Registry m37795a(Class<Data> cls, Class<TResource> cls2, AbstractC3824j<Data, TResource> abstractC3824j) {
        m37790a("legacy_append", cls, cls2, abstractC3824j);
        return this;
    }

    /* renamed from: a */
    public final <Model, Data> Registry m37794a(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.f13432d.append(cls, cls2, modelLoaderFactory);
        return this;
    }

    /* renamed from: a */
    public final <TResource, Transcode> Registry m37793a(Class<TResource> cls, Class<Transcode> cls2, AbstractC3925e<TResource, Transcode> abstractC3925e) {
        this.f13434f.m37193a(cls, cls2, abstractC3925e);
        return this;
    }

    /* renamed from: a */
    public final <Data, TResource> Registry m37790a(String str, Class<Data> cls, Class<TResource> cls2, AbstractC3824j<Data, TResource> abstractC3824j) {
        this.f13433e.m37703a(str, abstractC3824j, cls, cls2);
        return this;
    }

    /* renamed from: a */
    public final <Data, TResource, Transcode> C3808s<Data, TResource, Transcode> m37792a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C3808s<?, ?, ?> m37707a = this.f13437i.m37707a(cls, cls2, cls3);
        if (C3565c.m37708a(m37707a)) {
            return null;
        }
        C3808s<Data, TResource, Transcode> c3808s = m37707a;
        if (m37707a == null) {
            ArrayList arrayList = new ArrayList();
            for (Class cls4 : this.f13433e.m37701b(cls, cls2)) {
                for (Class cls5 : this.f13434f.m37192b(cls4, cls3)) {
                    arrayList.add(new C3780i(cls, cls4, cls5, this.f13433e.m37705a(cls, cls4), this.f13434f.m37194a(cls4, cls5), this.f13438j));
                }
            }
            c3808s = arrayList.isEmpty() ? null : new C3808s<>(cls, cls2, cls3, arrayList, this.f13438j);
            C3565c c3565c = this.f13437i;
            synchronized (c3565c.f13568b) {
                c3565c.f13568b.put(new C3642i(cls, cls2, cls3), c3808s != null ? c3808s : C3565c.f13567a);
            }
        }
        return c3808s;
    }

    /* renamed from: a */
    public final List<ImageHeaderParser> m37800a() {
        List<ImageHeaderParser> m37710a = this.f13435g.m37710a();
        if (!m37710a.isEmpty()) {
            return m37710a;
        }
        throw new NoImageHeaderParserException();
    }

    /* renamed from: a */
    public final <Model> List<ModelLoader<Model, ?>> m37791a(Model model) {
        return this.f13432d.getModelLoaders(model);
    }

    /* renamed from: b */
    public final <Model, Data> Registry m37788b(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f13432d.replace(cls, cls2, modelLoaderFactory);
        return this;
    }

    /* renamed from: b */
    public final <Model, TResource, Transcode> List<Class<?>> m37787b(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> m37706a = this.f13436h.m37706a(cls, cls2, cls3);
        ArrayList arrayList = m37706a;
        if (m37706a == null) {
            arrayList = new ArrayList();
            for (Class<?> cls4 : this.f13432d.getDataClasses(cls)) {
                for (Class<?> cls5 : this.f13433e.m37701b(cls4, cls2)) {
                    if (!this.f13434f.m37192b(cls5, cls3).isEmpty() && !arrayList.contains(cls5)) {
                        arrayList.add(cls5);
                    }
                }
            }
            C3566d c3566d = this.f13436h;
            List<Class<?>> unmodifiableList = Collections.unmodifiableList(arrayList);
            synchronized (c3566d.f13570a) {
                c3566d.f13570a.put(new C3642i(cls, cls2, cls3), unmodifiableList);
            }
        }
        return arrayList;
    }
}

package com.bumptech.glide;

import androidx.core.e.c;
import com.bumptech.glide.d.a;
import com.bumptech.glide.d.b;
import com.bumptech.glide.d.d;
import com.bumptech.glide.d.e;
import com.bumptech.glide.d.f;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.k;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry.class */
public final class Registry {

    /* renamed from: d  reason: collision with root package name */
    private final ModelLoaderRegistry f7191d;
    private final c.a<List<Throwable>> j;
    private final d h = new d();
    private final com.bumptech.glide.d.c i = new com.bumptech.glide.d.c();

    /* renamed from: a  reason: collision with root package name */
    public final a f7188a = new a();
    private final e e = new e();

    /* renamed from: b  reason: collision with root package name */
    public final f f7189b = new f();

    /* renamed from: c  reason: collision with root package name */
    public final com.bumptech.glide.load.data.f f7190c = new com.bumptech.glide.load.data.f();
    private final com.bumptech.glide.load.resource.e.f f = new com.bumptech.glide.load.resource.e.f();
    private final b g = new b();

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
        c.a<List<Throwable>> a2 = com.bumptech.glide.g.a.a.a();
        this.j = a2;
        this.f7191d = new ModelLoaderRegistry(a2);
        a(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    private Registry a(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add("legacy_append");
        this.e.a(arrayList);
        return this;
    }

    public final Registry a(ImageHeaderParser imageHeaderParser) {
        this.g.a(imageHeaderParser);
        return this;
    }

    public final Registry a(e.a<?> aVar) {
        this.f7190c.a(aVar);
        return this;
    }

    public final <Data> Registry a(Class<Data> cls, com.bumptech.glide.load.d<Data> dVar) {
        this.f7188a.a(cls, dVar);
        return this;
    }

    public final <TResource> Registry a(Class<TResource> cls, k<TResource> kVar) {
        this.f7189b.a(cls, kVar);
        return this;
    }

    public final <Data, TResource> Registry a(Class<Data> cls, Class<TResource> cls2, j<Data, TResource> jVar) {
        a("legacy_append", cls, cls2, jVar);
        return this;
    }

    public final <Model, Data> Registry a(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.f7191d.append(cls, cls2, modelLoaderFactory);
        return this;
    }

    public final <TResource, Transcode> Registry a(Class<TResource> cls, Class<Transcode> cls2, com.bumptech.glide.load.resource.e.e<TResource, Transcode> eVar) {
        this.f.a(cls, cls2, eVar);
        return this;
    }

    public final <Data, TResource> Registry a(String str, Class<Data> cls, Class<TResource> cls2, j<Data, TResource> jVar) {
        this.e.a(str, jVar, cls, cls2);
        return this;
    }

    public final <Data, TResource, Transcode> s<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        s<Data, TResource, Transcode> a2 = this.i.a(cls, cls2, cls3);
        if (com.bumptech.glide.d.c.a(a2)) {
            return null;
        }
        s<Data, TResource, Transcode> sVar = a2;
        if (a2 == null) {
            ArrayList arrayList = new ArrayList();
            for (Class cls4 : this.e.b(cls, cls2)) {
                for (Class cls5 : this.f.b(cls4, cls3)) {
                    arrayList.add(new i(cls, cls4, cls5, this.e.a(cls, cls4), this.f.a(cls4, cls5), this.j));
                }
            }
            sVar = arrayList.isEmpty() ? null : new s<>(cls, cls2, cls3, arrayList, this.j);
            com.bumptech.glide.d.c cVar = this.i;
            synchronized (cVar.f7249b) {
                cVar.f7249b.put(new com.bumptech.glide.g.i(cls, cls2, cls3), sVar != null ? sVar : com.bumptech.glide.d.c.f7248a);
            }
        }
        return sVar;
    }

    public final List<ImageHeaderParser> a() {
        List<ImageHeaderParser> a2 = this.g.a();
        if (!a2.isEmpty()) {
            return a2;
        }
        throw new NoImageHeaderParserException();
    }

    public final <Model> List<ModelLoader<Model, ?>> a(Model model) {
        return this.f7191d.getModelLoaders(model);
    }

    public final <Model, Data> Registry b(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        this.f7191d.replace(cls, cls2, modelLoaderFactory);
        return this;
    }

    public final <Model, TResource, Transcode> List<Class<?>> b(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> a2 = this.h.a(cls, cls2, cls3);
        List<Class<?>> list = a2;
        if (a2 == null) {
            list = new ArrayList<>();
            for (Class<?> cls4 : this.f7191d.getDataClasses(cls)) {
                for (Class<?> cls5 : this.e.b(cls4, cls2)) {
                    if (!this.f.b(cls5, cls3).isEmpty() && !list.contains(cls5)) {
                        list.add(cls5);
                    }
                }
            }
            d dVar = this.h;
            List<Class<?>> unmodifiableList = Collections.unmodifiableList(list);
            synchronized (dVar.f7251a) {
                dVar.f7251a.put(new com.bumptech.glide.g.i(cls, cls2, cls3), unmodifiableList);
            }
        }
        return list;
    }
}

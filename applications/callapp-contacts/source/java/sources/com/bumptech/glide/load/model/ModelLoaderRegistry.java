package com.bumptech.glide.load.model;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderRegistry.class */
public class ModelLoaderRegistry {
    private final ModelLoaderCache cache;
    private final MultiModelLoaderFactory multiModelLoaderFactory;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache.class */
    public static class ModelLoaderCache {
        private final Map<Class<?>, Entry<?>> cachedModelLoaders = new HashMap();

        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache$Entry.class */
        public static class Entry<Model> {
            final List<ModelLoader<Model, ?>> loaders;

            public Entry(List<ModelLoader<Model, ?>> list) {
                this.loaders = list;
            }
        }

        ModelLoaderCache() {
        }

        public void clear() {
            this.cachedModelLoaders.clear();
        }

        public <Model> List<ModelLoader<Model, ?>> get(Class<Model> cls) {
            Entry<?> entry = this.cachedModelLoaders.get(cls);
            if (entry == null) {
                return null;
            }
            return (List<ModelLoader<Model, ?>>) entry.loaders;
        }

        public <Model> void put(Class<Model> cls, List<ModelLoader<Model, ?>> list) {
            if (this.cachedModelLoaders.put(cls, new Entry<>(list)) == null) {
                return;
            }
            throw new IllegalStateException("Already cached loaders for model: ".concat(String.valueOf(cls)));
        }
    }

    public ModelLoaderRegistry(C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
        this(new MultiModelLoaderFactory(abstractC0830a));
    }

    private ModelLoaderRegistry(MultiModelLoaderFactory multiModelLoaderFactory) {
        this.cache = new ModelLoaderCache();
        this.multiModelLoaderFactory = multiModelLoaderFactory;
    }

    private static <A> Class<A> getClass(A a) {
        return (Class<A>) a.getClass();
    }

    private <A> List<ModelLoader<A, ?>> getModelLoadersForClass(Class<A> cls) {
        List<ModelLoader<A, ?>> list;
        synchronized (this) {
            List<ModelLoader<A, ?>> list2 = this.cache.get(cls);
            list = list2;
            if (list2 == null) {
                list = Collections.unmodifiableList(this.multiModelLoaderFactory.build(cls));
                this.cache.put(cls, list);
            }
        }
        return list;
    }

    private <Model, Data> void tearDown(List<ModelLoaderFactory<? extends Model, ? extends Data>> list) {
        for (ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory : list) {
            modelLoaderFactory.teardown();
        }
    }

    public <Model, Data> void append(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            this.multiModelLoaderFactory.append(cls, cls2, modelLoaderFactory);
            this.cache.clear();
        }
    }

    public <Model, Data> ModelLoader<Model, Data> build(Class<Model> cls, Class<Data> cls2) {
        ModelLoader<Model, Data> build;
        synchronized (this) {
            build = this.multiModelLoaderFactory.build(cls, cls2);
        }
        return build;
    }

    public List<Class<?>> getDataClasses(Class<?> cls) {
        List<Class<?>> dataClasses;
        synchronized (this) {
            dataClasses = this.multiModelLoaderFactory.getDataClasses(cls);
        }
        return dataClasses;
    }

    public <A> List<ModelLoader<A, ?>> getModelLoaders(A a) {
        List<ModelLoader<A, ?>> modelLoadersForClass = getModelLoadersForClass(getClass(a));
        if (!modelLoadersForClass.isEmpty()) {
            int size = modelLoadersForClass.size();
            ArrayList emptyList = Collections.emptyList();
            boolean z = true;
            int i = 0;
            while (i < size) {
                ModelLoader<A, ?> modelLoader = modelLoadersForClass.get(i);
                List<ModelLoader<A, ?>> list = emptyList;
                boolean z2 = z;
                if (modelLoader.handles(a)) {
                    z2 = z;
                    if (z) {
                        emptyList = new ArrayList(size - i);
                        z2 = false;
                    }
                    emptyList.add(modelLoader);
                    list = emptyList;
                }
                i++;
                emptyList = list;
                z = z2;
            }
            if (emptyList.isEmpty()) {
                throw new Registry.NoModelLoaderAvailableException(a, modelLoadersForClass);
            }
            return emptyList;
        }
        throw new Registry.NoModelLoaderAvailableException(a);
    }

    public <Model, Data> void prepend(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            this.multiModelLoaderFactory.prepend(cls, cls2, modelLoaderFactory);
            this.cache.clear();
        }
    }

    public <Model, Data> void remove(Class<Model> cls, Class<Data> cls2) {
        synchronized (this) {
            tearDown(this.multiModelLoaderFactory.remove(cls, cls2));
            this.cache.clear();
        }
    }

    public <Model, Data> void replace(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            tearDown(this.multiModelLoaderFactory.replace(cls, cls2, modelLoaderFactory));
            this.cache.clear();
        }
    }
}

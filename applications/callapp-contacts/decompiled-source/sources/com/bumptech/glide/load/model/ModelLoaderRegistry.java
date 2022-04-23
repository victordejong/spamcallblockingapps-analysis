package com.bumptech.glide.load.model;

import androidx.core.e.c;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache.class */
    public static class ModelLoaderCache {
        private final Map<Class<?>, Entry<?>> cachedModelLoaders = new HashMap();

        /* JADX INFO: Access modifiers changed from: package-private */
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
            if (this.cachedModelLoaders.put(cls, new Entry<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: ".concat(String.valueOf(cls)));
            }
        }
    }

    public ModelLoaderRegistry(c.a<List<Throwable>> aVar) {
        this(new MultiModelLoaderFactory(aVar));
    }

    private ModelLoaderRegistry(MultiModelLoaderFactory multiModelLoaderFactory) {
        this.cache = new ModelLoaderCache();
        this.multiModelLoaderFactory = multiModelLoaderFactory;
    }

    private static <A> Class<A> getClass(A a2) {
        return (Class<A>) a2.getClass();
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

    public <A> List<ModelLoader<A, ?>> getModelLoaders(A a2) {
        List<ModelLoader<A, ?>> modelLoadersForClass = getModelLoadersForClass(getClass(a2));
        if (!modelLoadersForClass.isEmpty()) {
            int size = modelLoadersForClass.size();
            List<ModelLoader<A, ?>> emptyList = Collections.emptyList();
            boolean z = true;
            for (int i = 0; i < size; i++) {
                ModelLoader<A, ?> modelLoader = modelLoadersForClass.get(i);
                emptyList = emptyList;
                z = z;
                if (modelLoader.handles(a2)) {
                    z = z;
                    if (z) {
                        emptyList = new ArrayList<>(size - i);
                        z = false;
                    }
                    emptyList.add(modelLoader);
                    emptyList = emptyList;
                }
            }
            if (!emptyList.isEmpty()) {
                return emptyList;
            }
            throw new Registry.NoModelLoaderAvailableException(a2, modelLoadersForClass);
        }
        throw new Registry.NoModelLoaderAvailableException(a2);
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

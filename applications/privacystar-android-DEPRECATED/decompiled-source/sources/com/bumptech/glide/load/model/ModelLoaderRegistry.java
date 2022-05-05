package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderRegistry.class */
public class ModelLoaderRegistry {
    private final ModelLoaderCache cache;
    private final MultiModelLoaderFactory multiModelLoaderFactory;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache.class */
    public static class ModelLoaderCache {
        private final Map<Class<?>, Entry<?>> cachedModelLoaders = new HashMap();

        /* JADX INFO: Access modifiers changed from: private */
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

        @Nullable
        public <Model> List<ModelLoader<Model, ?>> get(Class<Model> cls) {
            Entry<?> entry = this.cachedModelLoaders.get(cls);
            return entry == null ? null : (List<ModelLoader<Model, ?>>) entry.loaders;
        }

        public <Model> void put(Class<Model> cls, List<ModelLoader<Model, ?>> list) {
            if (this.cachedModelLoaders.put(cls, new Entry<>(list)) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }
    }

    public ModelLoaderRegistry(@NonNull Pools.Pool<List<Throwable>> pool) {
        this(new MultiModelLoaderFactory(pool));
    }

    private ModelLoaderRegistry(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
        this.cache = new ModelLoaderCache();
        this.multiModelLoaderFactory = multiModelLoaderFactory;
    }

    @NonNull
    private static <A> Class<A> getClass(@NonNull A a) {
        return (Class<A>) a.getClass();
    }

    @NonNull
    private <A> List<ModelLoader<A, ?>> getModelLoadersForClass(@NonNull Class<A> cls) {
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

    private <Model, Data> void tearDown(@NonNull List<ModelLoaderFactory<? extends Model, ? extends Data>> list) {
        for (ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory : list) {
            modelLoaderFactory.teardown();
        }
    }

    public <Model, Data> void append(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            this.multiModelLoaderFactory.append(cls, cls2, modelLoaderFactory);
            this.cache.clear();
        }
    }

    public <Model, Data> ModelLoader<Model, Data> build(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        ModelLoader<Model, Data> build;
        synchronized (this) {
            build = this.multiModelLoaderFactory.build(cls, cls2);
        }
        return build;
    }

    @NonNull
    public List<Class<?>> getDataClasses(@NonNull Class<?> cls) {
        List<Class<?>> dataClasses;
        synchronized (this) {
            dataClasses = this.multiModelLoaderFactory.getDataClasses(cls);
        }
        return dataClasses;
    }

    @NonNull
    public <A> List<ModelLoader<A, ?>> getModelLoaders(@NonNull A a) {
        List<ModelLoader<A, ?>> modelLoadersForClass = getModelLoadersForClass(getClass(a));
        int size = modelLoadersForClass.size();
        List<ModelLoader<A, ?>> emptyList = Collections.emptyList();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            ModelLoader<A, ?> modelLoader = modelLoadersForClass.get(i);
            emptyList = emptyList;
            z = z;
            if (modelLoader.handles(a)) {
                z = z;
                if (z) {
                    emptyList = new ArrayList<>(size - i);
                    z = false;
                }
                emptyList.add(modelLoader);
                emptyList = emptyList;
            }
        }
        return emptyList;
    }

    public <Model, Data> void prepend(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            this.multiModelLoaderFactory.prepend(cls, cls2, modelLoaderFactory);
            this.cache.clear();
        }
    }

    public <Model, Data> void remove(@NonNull Class<Model> cls, @NonNull Class<Data> cls2) {
        synchronized (this) {
            tearDown(this.multiModelLoaderFactory.remove(cls, cls2));
            this.cache.clear();
        }
    }

    public <Model, Data> void replace(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            tearDown(this.multiModelLoaderFactory.replace(cls, cls2, modelLoaderFactory));
            this.cache.clear();
        }
    }
}

package com.bumptech.glide.load.model;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p116g.C3643j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoaderFactory.class */
public class MultiModelLoaderFactory {
    private static final Factory DEFAULT_FACTORY = new Factory();
    private static final ModelLoader<Object, Object> EMPTY_MODEL_LOADER = new EmptyModelLoader();
    private final Set<Entry<?, ?>> alreadyUsedEntries;
    private final List<Entry<?, ?>> entries;
    private final Factory factory;
    private final C0829c.AbstractC0830a<List<Throwable>> throwableListPool;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoaderFactory$EmptyModelLoader.class */
    static class EmptyModelLoader implements ModelLoader<Object, Object> {
        EmptyModelLoader() {
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public ModelLoader.LoadData<Object> buildLoadData(Object obj, int i, int i2, C3822h c3822h) {
            return null;
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public boolean handles(Object obj) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoaderFactory$Entry.class */
    public static class Entry<Model, Data> {
        final Class<Data> dataClass;
        final ModelLoaderFactory<? extends Model, ? extends Data> factory;
        private final Class<Model> modelClass;

        public Entry(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
            this.modelClass = cls;
            this.dataClass = cls2;
            this.factory = modelLoaderFactory;
        }

        public boolean handles(Class<?> cls) {
            return this.modelClass.isAssignableFrom(cls);
        }

        public boolean handles(Class<?> cls, Class<?> cls2) {
            return handles(cls) && this.dataClass.isAssignableFrom(cls2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoaderFactory$Factory.class */
    public static class Factory {
        Factory() {
        }

        public <Model, Data> MultiModelLoader<Model, Data> build(List<ModelLoader<Model, Data>> list, C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
            return new MultiModelLoader<>(list, abstractC0830a);
        }
    }

    public MultiModelLoaderFactory(C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
        this(abstractC0830a, DEFAULT_FACTORY);
    }

    MultiModelLoaderFactory(C0829c.AbstractC0830a<List<Throwable>> abstractC0830a, Factory factory) {
        this.entries = new ArrayList();
        this.alreadyUsedEntries = new HashSet();
        this.throwableListPool = abstractC0830a;
        this.factory = factory;
    }

    private <Model, Data> void add(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory, boolean z) {
        Entry<?, ?> entry = new Entry<>(cls, cls2, modelLoaderFactory);
        List<Entry<?, ?>> list = this.entries;
        list.add(z ? list.size() : 0, entry);
    }

    private <Model, Data> ModelLoader<Model, Data> build(Entry<?, ?> entry) {
        return (ModelLoader) C3643j.m37588a(entry.factory.build(this), "Argument must not be null");
    }

    private static <Model, Data> ModelLoader<Model, Data> emptyModelLoader() {
        return (ModelLoader<Model, Data>) EMPTY_MODEL_LOADER;
    }

    private <Model, Data> ModelLoaderFactory<Model, Data> getFactory(Entry<?, ?> entry) {
        return (ModelLoaderFactory<Model, Data>) entry.factory;
    }

    public <Model, Data> void append(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            add(cls, cls2, modelLoaderFactory, true);
        }
    }

    public <Model, Data> ModelLoader<Model, Data> build(Class<Model> cls, Class<Data> cls2) {
        synchronized (this) {
            try {
                ArrayList arrayList = new ArrayList();
                boolean z = false;
                for (Entry<?, ?> entry : this.entries) {
                    if (this.alreadyUsedEntries.contains(entry)) {
                        z = true;
                    } else if (entry.handles(cls, cls2)) {
                        this.alreadyUsedEntries.add(entry);
                        arrayList.add(build(entry));
                        this.alreadyUsedEntries.remove(entry);
                    }
                }
                if (arrayList.size() > 1) {
                    return this.factory.build(arrayList, this.throwableListPool);
                } else if (arrayList.size() == 1) {
                    return (ModelLoader) arrayList.get(0);
                } else if (!z) {
                    throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
                } else {
                    return emptyModelLoader();
                }
            } finally {
                throw th;
            }
        }
    }

    public <Model> List<ModelLoader<Model, ?>> build(Class<Model> cls) {
        ArrayList arrayList;
        synchronized (this) {
            try {
                arrayList = new ArrayList();
                for (Entry<?, ?> entry : this.entries) {
                    if (!this.alreadyUsedEntries.contains(entry) && entry.handles(cls)) {
                        this.alreadyUsedEntries.add(entry);
                        arrayList.add(build(entry));
                        this.alreadyUsedEntries.remove(entry);
                    }
                }
            } finally {
                throw th;
            }
        }
        return arrayList;
    }

    public List<Class<?>> getDataClasses(Class<?> cls) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (Entry<?, ?> entry : this.entries) {
                if (!arrayList.contains(entry.dataClass) && entry.handles(cls)) {
                    arrayList.add(entry.dataClass);
                }
            }
        }
        return arrayList;
    }

    public <Model, Data> void prepend(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        synchronized (this) {
            add(cls, cls2, modelLoaderFactory, false);
        }
    }

    public <Model, Data> List<ModelLoaderFactory<? extends Model, ? extends Data>> remove(Class<Model> cls, Class<Data> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            Iterator<Entry<?, ?>> it2 = this.entries.iterator();
            while (it2.hasNext()) {
                Entry<?, ?> next = it2.next();
                if (next.handles(cls, cls2)) {
                    it2.remove();
                    arrayList.add(getFactory(next));
                }
            }
        }
        return arrayList;
    }

    public <Model, Data> List<ModelLoaderFactory<? extends Model, ? extends Data>> replace(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
        List<ModelLoaderFactory<? extends Model, ? extends Data>> remove;
        synchronized (this) {
            remove = remove(cls, cls2);
            append(cls, cls2, modelLoaderFactory);
        }
        return remove;
    }
}

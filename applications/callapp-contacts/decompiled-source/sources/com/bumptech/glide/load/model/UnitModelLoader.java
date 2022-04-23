package com.bumptech.glide.load.model;

import com.bumptech.glide.f.e;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.ModelLoader;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UnitModelLoader.class */
public class UnitModelLoader<Model> implements ModelLoader<Model, Model> {
    private static final UnitModelLoader<?> INSTANCE = new UnitModelLoader<>();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UnitModelLoader$Factory.class */
    public static class Factory<Model> implements ModelLoaderFactory<Model, Model> {
        private static final Factory<?> FACTORY = new Factory<>();

        public static <T> Factory<T> getInstance() {
            return (Factory<T>) FACTORY;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public ModelLoader<Model, Model> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return UnitModelLoader.getInstance();
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public void teardown() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/UnitModelLoader$UnitFetcher.class */
    static class UnitFetcher<Model> implements d<Model> {
        private final Model resource;

        UnitFetcher(Model model) {
            this.resource = model;
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<Model> getDataClass() {
            return (Class<Model>) this.resource.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public a getDataSource() {
            return a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public void loadData(h hVar, d.a<? super Model> aVar) {
            aVar.onDataReady((Model) this.resource);
        }
    }

    public static <T> UnitModelLoader<T> getInstance() {
        return (UnitModelLoader<T>) INSTANCE;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Model> buildLoadData(Model model, int i, int i2, com.bumptech.glide.load.h hVar) {
        return new ModelLoader.LoadData<>(new e(model), new UnitFetcher(model));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(Model model) {
        return true;
    }
}

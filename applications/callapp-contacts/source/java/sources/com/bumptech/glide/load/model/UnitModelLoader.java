package com.bumptech.glide.load.model;

import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p115f.C3616e;
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
    static class UnitFetcher<Model> implements AbstractC3673d<Model> {
        private final Model resource;

        UnitFetcher(Model model) {
            this.resource = model;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cleanup() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public Class<Model> getDataClass() {
            return (Class<Model>) this.resource.getClass();
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public EnumC3658a getDataSource() {
            return EnumC3658a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super Model> abstractC3674a) {
            abstractC3674a.onDataReady((Model) this.resource);
        }
    }

    public static <T> UnitModelLoader<T> getInstance() {
        return (UnitModelLoader<T>) INSTANCE;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Model> buildLoadData(Model model, int i, int i2, C3822h c3822h) {
        return new ModelLoader.LoadData<>(new C3616e(model), new UnitFetcher(model));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(Model model) {
        return true;
    }
}

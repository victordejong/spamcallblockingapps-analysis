package com.bumptech.glide.load.model;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.p116g.C3643j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoader.class */
public class MultiModelLoader<Model, Data> implements ModelLoader<Model, Data> {
    private final C0829c.AbstractC0830a<List<Throwable>> exceptionListPool;
    private final List<ModelLoader<Model, Data>> modelLoaders;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoader$MultiFetcher.class */
    static class MultiFetcher<Data> implements AbstractC3673d<Data>, AbstractC3673d.AbstractC3674a<Data> {
        private AbstractC3673d.AbstractC3674a<? super Data> callback;
        private int currentIndex = 0;
        private List<Throwable> exceptions;
        private final List<AbstractC3673d<Data>> fetchers;
        private boolean isCancelled;
        private EnumC3646h priority;
        private final C0829c.AbstractC0830a<List<Throwable>> throwableListPool;

        MultiFetcher(List<AbstractC3673d<Data>> list, C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
            this.throwableListPool = abstractC0830a;
            C3643j.m37586a(list);
            this.fetchers = list;
        }

        private void startNextOrFail() {
            if (this.isCancelled) {
                return;
            }
            if (this.currentIndex < this.fetchers.size() - 1) {
                this.currentIndex++;
                loadData(this.priority, this.callback);
                return;
            }
            C3643j.m37588a(this.exceptions, "Argument must not be null");
            this.callback.onLoadFailed(new GlideException("Fetch failed", new ArrayList(this.exceptions)));
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cancel() {
            this.isCancelled = true;
            for (AbstractC3673d<Data> abstractC3673d : this.fetchers) {
                abstractC3673d.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void cleanup() {
            List<Throwable> list = this.exceptions;
            if (list != null) {
                this.throwableListPool.mo37606a(list);
            }
            this.exceptions = null;
            for (AbstractC3673d<Data> abstractC3673d : this.fetchers) {
                abstractC3673d.cleanup();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public Class<Data> getDataClass() {
            return this.fetchers.get(0).getDataClass();
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public EnumC3658a getDataSource() {
            return this.fetchers.get(0).getDataSource();
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d
        public void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super Data> abstractC3674a) {
            this.priority = enumC3646h;
            this.callback = abstractC3674a;
            this.exceptions = this.throwableListPool.mo37607a();
            this.fetchers.get(this.currentIndex).loadData(enumC3646h, this);
            if (this.isCancelled) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
        public void onDataReady(Data data) {
            if (data != null) {
                this.callback.onDataReady(data);
            } else {
                startNextOrFail();
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC3673d.AbstractC3674a
        public void onLoadFailed(Exception exc) {
            ((List) C3643j.m37588a(this.exceptions, "Argument must not be null")).add(exc);
            startNextOrFail();
        }
    }

    public MultiModelLoader(List<ModelLoader<Model, Data>> list, C0829c.AbstractC0830a<List<Throwable>> abstractC0830a) {
        this.modelLoaders = list;
        this.exceptionListPool = abstractC0830a;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Data> buildLoadData(Model model, int i, int i2, C3822h c3822h) {
        AbstractC3818f abstractC3818f;
        int size = this.modelLoaders.size();
        ArrayList arrayList = new ArrayList(size);
        int i3 = 0;
        AbstractC3818f abstractC3818f2 = null;
        while (true) {
            abstractC3818f = abstractC3818f2;
            if (i3 >= size) {
                break;
            }
            ModelLoader<Model, Data> modelLoader = this.modelLoaders.get(i3);
            AbstractC3818f abstractC3818f3 = abstractC3818f;
            if (modelLoader.handles(model)) {
                ModelLoader.LoadData<Data> buildLoadData = modelLoader.buildLoadData(model, i, i2, c3822h);
                abstractC3818f3 = abstractC3818f;
                if (buildLoadData != null) {
                    abstractC3818f3 = buildLoadData.sourceKey;
                    arrayList.add(buildLoadData.fetcher);
                }
            }
            i3++;
            abstractC3818f2 = abstractC3818f3;
        }
        if (arrayList.isEmpty() || abstractC3818f == null) {
            return null;
        }
        return new ModelLoader.LoadData<>(abstractC3818f, new MultiFetcher(arrayList, this.exceptionListPool));
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public boolean handles(Model model) {
        for (ModelLoader<Model, Data> modelLoader : this.modelLoaders) {
            if (modelLoader.handles(model)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.modelLoaders.toArray()) + '}';
    }
}

package com.bumptech.glide.load.model;

import androidx.core.e.c;
import com.bumptech.glide.g.j;
import com.bumptech.glide.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.model.ModelLoader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoader.class */
public class MultiModelLoader<Model, Data> implements ModelLoader<Model, Data> {
    private final c.a<List<Throwable>> exceptionListPool;
    private final List<ModelLoader<Model, Data>> modelLoaders;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/MultiModelLoader$MultiFetcher.class */
    static class MultiFetcher<Data> implements d<Data>, d.a<Data> {
        private d.a<? super Data> callback;
        private int currentIndex = 0;
        private List<Throwable> exceptions;
        private final List<d<Data>> fetchers;
        private boolean isCancelled;
        private h priority;
        private final c.a<List<Throwable>> throwableListPool;

        MultiFetcher(List<d<Data>> list, c.a<List<Throwable>> aVar) {
            this.throwableListPool = aVar;
            j.a(list);
            this.fetchers = list;
        }

        private void startNextOrFail() {
            if (!this.isCancelled) {
                if (this.currentIndex < this.fetchers.size() - 1) {
                    this.currentIndex++;
                    loadData(this.priority, this.callback);
                    return;
                }
                j.a(this.exceptions, "Argument must not be null");
                this.callback.onLoadFailed(new GlideException("Fetch failed", new ArrayList(this.exceptions)));
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.isCancelled = true;
            for (d<Data> dVar : this.fetchers) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cleanup() {
            List<Throwable> list = this.exceptions;
            if (list != null) {
                this.throwableListPool.a(list);
            }
            this.exceptions = null;
            for (d<Data> dVar : this.fetchers) {
                dVar.cleanup();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public Class<Data> getDataClass() {
            return this.fetchers.get(0).getDataClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public a getDataSource() {
            return this.fetchers.get(0).getDataSource();
        }

        @Override // com.bumptech.glide.load.data.d
        public void loadData(h hVar, d.a<? super Data> aVar) {
            this.priority = hVar;
            this.callback = aVar;
            this.exceptions = this.throwableListPool.a();
            this.fetchers.get(this.currentIndex).loadData(hVar, this);
            if (this.isCancelled) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void onDataReady(Data data) {
            if (data != null) {
                this.callback.onDataReady(data);
            } else {
                startNextOrFail();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public void onLoadFailed(Exception exc) {
            ((List) j.a(this.exceptions, "Argument must not be null")).add(exc);
            startNextOrFail();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MultiModelLoader(List<ModelLoader<Model, Data>> list, c.a<List<Throwable>> aVar) {
        this.modelLoaders = list;
        this.exceptionListPool = aVar;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public ModelLoader.LoadData<Data> buildLoadData(Model model, int i, int i2, com.bumptech.glide.load.h hVar) {
        int size = this.modelLoaders.size();
        ArrayList arrayList = new ArrayList(size);
        f fVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            ModelLoader<Model, Data> modelLoader = this.modelLoaders.get(i3);
            fVar = fVar;
            if (modelLoader.handles(model)) {
                ModelLoader.LoadData<Data> buildLoadData = modelLoader.buildLoadData(model, i, i2, hVar);
                fVar = fVar;
                if (buildLoadData != null) {
                    fVar = buildLoadData.sourceKey;
                    arrayList.add(buildLoadData.fetcher);
                }
            }
        }
        if (arrayList.isEmpty() || fVar == null) {
            return null;
        }
        return new ModelLoader.LoadData<>(fVar, new MultiFetcher(arrayList, this.exceptionListPool));
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

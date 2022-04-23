package com.bumptech.glide.load.model;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.h;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoader.class */
public interface ModelLoader<Model, Data> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoader$LoadData.class */
    public static class LoadData<Data> {
        public final List<f> alternateKeys;
        public final d<Data> fetcher;
        public final f sourceKey;

        public LoadData(f fVar, d<Data> dVar) {
            this(fVar, Collections.emptyList(), dVar);
        }

        public LoadData(f fVar, List<f> list, d<Data> dVar) {
            this.sourceKey = (f) j.a(fVar, "Argument must not be null");
            this.alternateKeys = (List) j.a(list, "Argument must not be null");
            this.fetcher = (d) j.a(dVar, "Argument must not be null");
        }
    }

    LoadData<Data> buildLoadData(Model model, int i, int i2, h hVar);

    boolean handles(Model model);
}

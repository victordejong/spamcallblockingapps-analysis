package com.bumptech.glide.load.model;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.p116g.C3643j;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoader.class */
public interface ModelLoader<Model, Data> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoader$LoadData.class */
    public static class LoadData<Data> {
        public final List<AbstractC3818f> alternateKeys;
        public final AbstractC3673d<Data> fetcher;
        public final AbstractC3818f sourceKey;

        public LoadData(AbstractC3818f abstractC3818f, AbstractC3673d<Data> abstractC3673d) {
            this(abstractC3818f, Collections.emptyList(), abstractC3673d);
        }

        public LoadData(AbstractC3818f abstractC3818f, List<AbstractC3818f> list, AbstractC3673d<Data> abstractC3673d) {
            this.sourceKey = (AbstractC3818f) C3643j.m37588a(abstractC3818f, "Argument must not be null");
            this.alternateKeys = (List) C3643j.m37588a(list, "Argument must not be null");
            this.fetcher = (AbstractC3673d) C3643j.m37588a(abstractC3673d, "Argument must not be null");
        }
    }

    LoadData<Data> buildLoadData(Model model, int i, int i2, C3822h c3822h);

    boolean handles(Model model);
}

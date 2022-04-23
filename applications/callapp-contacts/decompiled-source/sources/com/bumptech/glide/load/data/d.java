package com.bumptech.glide.load.data;

import com.bumptech.glide.h;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d.class */
public interface d<T> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d$a.class */
    public interface a<T> {
        void onDataReady(T t);

        void onLoadFailed(Exception exc);
    }

    void cancel();

    void cleanup();

    Class<T> getDataClass();

    com.bumptech.glide.load.a getDataSource();

    void loadData(h hVar, a<? super T> aVar);
}

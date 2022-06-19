package com.bumptech.glide.load.model;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderFactory.class */
public interface ModelLoaderFactory<T, Y> {
    ModelLoader<T, Y> build(MultiModelLoaderFactory multiModelLoaderFactory);

    void teardown();
}

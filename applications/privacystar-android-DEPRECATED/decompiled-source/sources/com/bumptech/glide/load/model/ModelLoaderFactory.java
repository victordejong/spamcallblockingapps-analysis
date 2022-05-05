package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoaderFactory.class */
public interface ModelLoaderFactory<T, Y> {
    @NonNull
    ModelLoader<T, Y> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory);

    void teardown();
}

package com.bumptech.glide.load.engine;

import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/Resource.class */
public interface Resource<Z> {
    @NonNull
    Z get();

    @NonNull
    Class<Z> getResourceClass();

    int getSize();

    void recycle();
}

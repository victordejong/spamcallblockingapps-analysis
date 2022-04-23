package com.bumptech.glide.load.data;

import android.support.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/DataRewinder.class */
public interface DataRewinder<T> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/DataRewinder$Factory.class */
    public interface Factory<T> {
        @NonNull
        DataRewinder<T> build(@NonNull T t);

        @NonNull
        Class<T> getDataClass();
    }

    void cleanup();

    @NonNull
    T rewindAndGet() throws IOException;
}

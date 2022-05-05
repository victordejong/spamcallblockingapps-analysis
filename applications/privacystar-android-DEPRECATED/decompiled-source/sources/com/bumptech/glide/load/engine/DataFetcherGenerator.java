package com.bumptech.glide.load.engine;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DataFetcherGenerator.class */
interface DataFetcherGenerator {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback.class */
    public interface FetcherReadyCallback {
        void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource);

        void onDataFetcherReady(Key key, @Nullable Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2);

        void reschedule();
    }

    void cancel();

    boolean startNext();
}

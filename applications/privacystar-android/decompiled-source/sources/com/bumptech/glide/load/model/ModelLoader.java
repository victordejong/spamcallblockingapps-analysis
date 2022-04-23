package com.bumptech.glide.load.model;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.util.Preconditions;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoader.class */
public interface ModelLoader<Model, Data> {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/model/ModelLoader$LoadData.class */
    public static class LoadData<Data> {
        public final List<Key> alternateKeys;
        public final DataFetcher<Data> fetcher;
        public final Key sourceKey;

        public LoadData(@NonNull Key key, @NonNull DataFetcher<Data> dataFetcher) {
            this(key, Collections.emptyList(), dataFetcher);
        }

        public LoadData(@NonNull Key key, @NonNull List<Key> list, @NonNull DataFetcher<Data> dataFetcher) {
            this.sourceKey = (Key) Preconditions.checkNotNull(key);
            this.alternateKeys = (List) Preconditions.checkNotNull(list);
            this.fetcher = (DataFetcher) Preconditions.checkNotNull(dataFetcher);
        }
    }

    @Nullable
    LoadData<Data> buildLoadData(@NonNull Model model, int i, int i2, @NonNull Options options);

    boolean handles(@NonNull Model model);
}

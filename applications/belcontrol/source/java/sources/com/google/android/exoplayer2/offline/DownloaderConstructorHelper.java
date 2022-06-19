package com.google.android.exoplayer2.offline;

import android.support.p001v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.upstream.DataSink;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DummyDataSource;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.PriorityDataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource;
import com.google.android.exoplayer2.upstream.cache.CacheDataSource$EventListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/DownloaderConstructorHelper.class */
public final class DownloaderConstructorHelper {
    private final Cache cache;
    private final DataSource.Factory cacheReadDataSourceFactory;
    private final DataSink.Factory cacheWriteDataSinkFactory;
    private final PriorityTaskManager priorityTaskManager;
    private final DataSource.Factory upstreamDataSourceFactory;

    public DownloaderConstructorHelper(Cache cache, DataSource.Factory factory) {
        this(cache, factory, null, null, null);
    }

    public DownloaderConstructorHelper(Cache cache, DataSource.Factory factory, DataSource.Factory factory2, DataSink.Factory factory3, PriorityTaskManager priorityTaskManager) {
        Assertions.checkNotNull(factory);
        this.cache = cache;
        this.upstreamDataSourceFactory = factory;
        this.cacheReadDataSourceFactory = factory2;
        this.cacheWriteDataSinkFactory = factory3;
        this.priorityTaskManager = priorityTaskManager;
    }

    public CacheDataSource buildCacheDataSource(boolean z) {
        DataSource.Factory factory = this.cacheReadDataSourceFactory;
        DataSource createDataSource = factory != null ? factory.createDataSource() : new FileDataSource();
        if (z) {
            return new CacheDataSource(this.cache, DummyDataSource.INSTANCE, createDataSource, (DataSink) null, 1, (CacheDataSource$EventListener) null);
        }
        DataSink.Factory factory2 = this.cacheWriteDataSinkFactory;
        DataSink createDataSink = factory2 != null ? factory2.createDataSink() : new CacheDataSink(this.cache, (long) PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        DataSource createDataSource2 = this.upstreamDataSourceFactory.createDataSource();
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager != null) {
            createDataSource2 = new PriorityDataSource(createDataSource2, priorityTaskManager, -1000);
        }
        return new CacheDataSource(this.cache, createDataSource2, createDataSource, createDataSink, 1, (CacheDataSource$EventListener) null);
    }

    public Cache getCache() {
        return this.cache;
    }

    public PriorityTaskManager getPriorityTaskManager() {
        PriorityTaskManager priorityTaskManager = this.priorityTaskManager;
        if (priorityTaskManager == null) {
            priorityTaskManager = new PriorityTaskManager();
        }
        return priorityTaskManager;
    }
}

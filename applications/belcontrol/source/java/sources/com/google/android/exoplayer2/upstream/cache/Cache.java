package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.io.IOException;
import java.util.NavigableSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache.class */
public interface Cache {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$CacheException.class */
    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$Listener.class */
    public interface Listener {
        void onSpanAdded(Cache cache, CacheSpan cacheSpan);

        void onSpanRemoved(Cache cache, CacheSpan cacheSpan);

        void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2);
    }

    NavigableSet<CacheSpan> addListener(String str, Listener listener);

    void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations);

    void commitFile(File file);

    long getCacheSpace();

    long getCachedLength(String str, long j, long j2);

    NavigableSet<CacheSpan> getCachedSpans(String str);

    long getContentLength(String str);

    ContentMetadata getContentMetadata(String str);

    Set<String> getKeys();

    boolean isCached(String str, long j, long j2);

    void release();

    void releaseHoleSpan(CacheSpan cacheSpan);

    void removeListener(String str, Listener listener);

    void removeSpan(CacheSpan cacheSpan);

    void setContentLength(String str, long j);

    File startFile(String str, long j, long j2);

    CacheSpan startReadWrite(String str, long j);

    CacheSpan startReadWriteNonBlocking(String str, long j);
}

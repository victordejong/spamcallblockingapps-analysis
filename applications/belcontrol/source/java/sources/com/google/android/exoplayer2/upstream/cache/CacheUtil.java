package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.io.EOFException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheUtil.class */
public final class CacheUtil {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheUtil$CachingCounters.class */
    public static class CachingCounters {
        public volatile long alreadyCachedBytes;
        public volatile long contentLength = -1;
        public volatile long newlyCachedBytes;

        public long totalCachedBytes() {
            return this.alreadyCachedBytes + this.newlyCachedBytes;
        }
    }

    private CacheUtil() {
    }

    public static void cache(DataSpec dataSpec, Cache cache, DataSource dataSource, CachingCounters cachingCounters, AtomicBoolean atomicBoolean) {
        cache(dataSpec, cache, new CacheDataSource(cache, dataSource), new byte[131072], null, 0, cachingCounters, atomicBoolean, false);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static void cache(DataSpec dataSpec, Cache cache, CacheDataSource cacheDataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i, CachingCounters cachingCounters, AtomicBoolean atomicBoolean, boolean z) {
        Assertions.checkNotNull(cacheDataSource);
        Assertions.checkNotNull(bArr);
        if (cachingCounters != null) {
            getCached(dataSpec, cache, cachingCounters);
        } else {
            cachingCounters = new CachingCounters();
        }
        String key = getKey(dataSpec);
        char c = dataSpec.absoluteStreamPosition;
        char c2 = dataSpec.length;
        if (c2 == -1) {
            c2 = cache.getContentLength(key);
        }
        while (c2 != 0) {
            if (atomicBoolean != null && atomicBoolean.get()) {
                throw new InterruptedException();
            }
            int i2 = (c2 > (-1L) ? 1 : (c2 == (-1L) ? 0 : -1));
            char cachedLength = cache.getCachedLength(key, c, i2 != 0 ? c2 : (char) 65535);
            if (cachedLength <= 0) {
                cachedLength = -cachedLength;
                if (readAndDiscard(dataSpec, c, cachedLength, cacheDataSource, bArr, priorityTaskManager, i, cachingCounters) < cachedLength) {
                    if (z && i2 != 0) {
                        throw new EOFException();
                    }
                    return;
                }
            }
            c += cachedLength;
            if (i2 == 0) {
                cachedLength = 0;
            }
            c2 -= cachedLength;
        }
    }

    public static String generateKey(Uri uri) {
        return uri.toString();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    public static void getCached(DataSpec dataSpec, Cache cache, CachingCounters cachingCounters) {
        String key = getKey(dataSpec);
        char c = dataSpec.absoluteStreamPosition;
        char c2 = dataSpec.length;
        if (c2 == -1) {
            c2 = cache.getContentLength(key);
        }
        cachingCounters.contentLength = c2;
        cachingCounters.alreadyCachedBytes = 0L;
        cachingCounters.newlyCachedBytes = 0L;
        while (c2 != 0) {
            int i = (c2 > (-1L) ? 1 : (c2 == (-1L) ? 0 : -1));
            char cachedLength = cache.getCachedLength(key, c, i != 0 ? c2 : (char) 65535);
            if (cachedLength > 0) {
                cachingCounters.alreadyCachedBytes += cachedLength;
            } else {
                ?? r0 = -cachedLength;
                cachedLength = r0;
                if (r0 == Long.MAX_VALUE) {
                    return;
                }
            }
            c += cachedLength;
            if (i == 0) {
                cachedLength = 0;
            }
            c2 -= cachedLength;
        }
    }

    public static String getKey(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : generateKey(dataSpec.uri);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f0, code lost:
        com.google.android.exoplayer2.util.Util.closeQuietly(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f5, code lost:
        return r24;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long readAndDiscard(com.google.android.exoplayer2.upstream.DataSpec r13, long r14, long r16, com.google.android.exoplayer2.upstream.DataSource r18, byte[] r19, com.google.android.exoplayer2.util.PriorityTaskManager r20, int r21, com.google.android.exoplayer2.upstream.cache.CacheUtil.CachingCounters r22) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.CacheUtil.readAndDiscard(com.google.android.exoplayer2.upstream.DataSpec, long, long, com.google.android.exoplayer2.upstream.DataSource, byte[], com.google.android.exoplayer2.util.PriorityTaskManager, int, com.google.android.exoplayer2.upstream.cache.CacheUtil$CachingCounters):long");
    }

    public static void remove(Cache cache, String str) {
        for (CacheSpan cacheSpan : cache.getCachedSpans(str)) {
            try {
                cache.removeSpan(cacheSpan);
            } catch (Cache.CacheException e) {
            }
        }
    }
}

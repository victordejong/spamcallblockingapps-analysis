package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache.class */
public interface Cache {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$CacheException.class */
    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(String str, Throwable th) {
            super(str, th);
        }

        public CacheException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$a.class */
    public interface a {
        void a(Cache cache, g gVar);

        void a(Cache cache, g gVar, g gVar2);

        void a(g gVar);
    }

    long a();

    g a(String str, long j, long j2) throws InterruptedException, CacheException;

    j a(String str);

    void a(g gVar);

    void a(File file, long j) throws CacheException;

    void a(String str, k kVar) throws CacheException;

    g b(String str, long j, long j2) throws CacheException;

    void b(g gVar);

    File c(String str, long j, long j2) throws CacheException;
}

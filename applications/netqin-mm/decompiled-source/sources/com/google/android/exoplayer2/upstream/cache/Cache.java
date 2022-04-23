package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
import java.io.IOException;
import p131c.p161d.p170b.p188c.p201f1.p202u.AbstractC2858m;
import p131c.p161d.p170b.p188c.p201f1.p202u.C2850h;
import p131c.p161d.p170b.p188c.p201f1.p202u.C2859n;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache.class */
public interface Cache {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$CacheException.class */
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

    /* renamed from: com.google.android.exoplayer2.upstream.cache.Cache$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$a.class */
    public interface AbstractC7207a {
        /* renamed from: a */
        void mo18249a(Cache cache, C2850h hVar);

        /* renamed from: a */
        void mo18248a(Cache cache, C2850h hVar, C2850h hVar2);

        /* renamed from: b */
        void mo18247b(Cache cache, C2850h hVar);
    }

    /* renamed from: a */
    long mo18258a();

    /* renamed from: a */
    C2850h mo18254a(String str, long j) throws InterruptedException, CacheException;

    /* renamed from: a */
    AbstractC2858m mo18255a(String str);

    /* renamed from: a */
    File mo18253a(String str, long j, long j2) throws CacheException;

    /* renamed from: a */
    void mo18257a(C2850h hVar) throws CacheException;

    /* renamed from: a */
    void mo18256a(File file, long j) throws CacheException;

    /* renamed from: a */
    void mo18252a(String str, C2859n nVar) throws CacheException;

    /* renamed from: b */
    C2850h mo18250b(String str, long j) throws CacheException;

    /* renamed from: b */
    void mo18251b(C2850h hVar);
}

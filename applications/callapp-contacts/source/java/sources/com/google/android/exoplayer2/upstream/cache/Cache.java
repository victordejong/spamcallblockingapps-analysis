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

    /* renamed from: com.google.android.exoplayer2.upstream.cache.Cache$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/Cache$a.class */
    public interface AbstractC11538a {
        /* renamed from: a */
        void mo20120a(Cache cache, C11548g c11548g);

        /* renamed from: a */
        void mo20119a(Cache cache, C11548g c11548g, C11548g c11548g2);

        /* renamed from: a */
        void mo20118a(C11548g c11548g);
    }

    /* renamed from: a */
    long mo20115a();

    /* renamed from: a */
    C11548g mo20106a(String str, long j, long j2) throws InterruptedException, CacheException;

    /* renamed from: a */
    AbstractC11555j mo20107a(String str);

    /* renamed from: a */
    void mo20114a(C11548g c11548g);

    /* renamed from: a */
    void mo20109a(File file, long j) throws CacheException;

    /* renamed from: a */
    void mo20105a(String str, C11556k c11556k) throws CacheException;

    /* renamed from: b */
    C11548g mo20097b(String str, long j, long j2) throws CacheException;

    /* renamed from: b */
    void mo20101b(C11548g c11548g);

    /* renamed from: c */
    File mo20093c(String str, long j, long j2) throws CacheException;
}

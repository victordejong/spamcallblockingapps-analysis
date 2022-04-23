package com.google.android.exoplayer2.upstream.cache;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.x;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink.class */
public final class CacheDataSink implements g {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f22135a;

    /* renamed from: b  reason: collision with root package name */
    private final long f22136b;

    /* renamed from: c  reason: collision with root package name */
    private final int f22137c;

    /* renamed from: d  reason: collision with root package name */
    private j f22138d;
    private long e;
    private File f;
    private OutputStream g;
    private long h;
    private long i;
    private x j;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException.class */
    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink$a.class */
    public static final class a implements g.a {

        /* renamed from: a  reason: collision with root package name */
        Cache f22139a;

        /* renamed from: b  reason: collision with root package name */
        private long f22140b = 5242880;

        /* renamed from: c  reason: collision with root package name */
        private int f22141c = 20480;

        @Override // com.google.android.exoplayer2.upstream.g.a
        public final g a() {
            return new CacheDataSink((Cache) com.google.android.exoplayer2.util.a.b(this.f22139a), this.f22140b, this.f22141c);
        }
    }

    public CacheDataSink(Cache cache, long j) {
        this(cache, j, 20480);
    }

    public CacheDataSink(Cache cache, long j, int i) {
        com.google.android.exoplayer2.util.a.b(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        int i2 = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
        if (i2 != 0 && j < PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) {
            n.a("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f22135a = (Cache) com.google.android.exoplayer2.util.a.b(cache);
        this.f22136b = i2 == 0 ? Long.MAX_VALUE : j;
        this.f22137c = i;
    }

    private void b() throws IOException {
        OutputStream outputStream = this.g;
        if (outputStream != null) {
            try {
                outputStream.flush();
                af.a((Closeable) this.g);
                this.g = null;
                File file = (File) af.a(this.f);
                this.f = null;
                this.f22135a.a(file, this.h);
            } catch (Throwable th) {
                af.a((Closeable) this.g);
                this.g = null;
                this.f = null;
                ((File) af.a(this.f)).delete();
                throw th;
            }
        }
    }

    private void b(j jVar) throws IOException {
        long j = -1;
        if (jVar.h != -1) {
            j = Math.min(jVar.h - this.i, this.e);
        }
        this.f = this.f22135a.c((String) af.a(jVar.i), jVar.g + this.i, j);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f);
        if (this.f22137c > 0) {
            x xVar = this.j;
            if (xVar == null) {
                this.j = new x(fileOutputStream, this.f22137c);
            } else {
                xVar.a(fileOutputStream);
            }
            this.g = this.j;
        } else {
            this.g = fileOutputStream;
        }
        this.h = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public final void a() throws CacheDataSinkException {
        if (this.f22138d != null) {
            try {
                b();
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public final void a(j jVar) throws CacheDataSinkException {
        com.google.android.exoplayer2.util.a.b(jVar.i);
        if (jVar.h != -1 || !jVar.b(2)) {
            this.f22138d = jVar;
            this.e = jVar.b(4) ? this.f22136b : Long.MAX_VALUE;
            this.i = 0L;
            try {
                b(jVar);
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        } else {
            this.f22138d = null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public final void a(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        j jVar = this.f22138d;
        if (jVar != null) {
            int i3 = 0;
            while (i3 < i2) {
                try {
                    if (this.h == this.e) {
                        b();
                        b(jVar);
                    }
                    int min = (int) Math.min(i2 - i3, this.e - this.h);
                    ((OutputStream) af.a(this.g)).write(bArr, i + i3, min);
                    i3 += min;
                    long j = min;
                    this.h += j;
                    this.i += j;
                } catch (IOException e) {
                    throw new CacheDataSinkException(e);
                }
            }
        }
    }
}

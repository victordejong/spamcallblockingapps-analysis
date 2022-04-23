package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.Cache;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2825h;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2908z;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink.class */
public final class CacheDataSink implements AbstractC2825h {

    /* renamed from: a */
    public final Cache f22556a;

    /* renamed from: b */
    public final long f22557b;

    /* renamed from: c */
    public final int f22558c;

    /* renamed from: d */
    public C2829k f22559d;

    /* renamed from: e */
    public long f22560e;

    /* renamed from: f */
    public File f22561f;

    /* renamed from: g */
    public OutputStream f22562g;

    /* renamed from: h */
    public long f22563h;

    /* renamed from: i */
    public long f22564i;

    /* renamed from: j */
    public C2908z f22565j;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException.class */
    public static class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache, long j) {
        this(cache, j, 20480);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v2 */
    public CacheDataSink(Cache cache, long j, int i) {
        C2877e.m28730b(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j != -1 && j < 2097152) {
            C2894o.m28594d("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        C2877e.m28737a(cache);
        this.f22556a = cache;
        this.f22557b = j == -1 ? 9223372036854775807 : j;
        this.f22558c = i;
    }

    /* renamed from: a */
    public final void m18246a() throws IOException {
        OutputStream outputStream = this.f22562g;
        if (outputStream != null) {
            try {
                outputStream.flush();
                C2885h0.m28671a((Closeable) this.f22562g);
                this.f22562g = null;
                File file = this.f22561f;
                this.f22561f = null;
                this.f22556a.mo18256a(file, this.f22563h);
            } catch (Throwable th) {
                C2885h0.m28671a((Closeable) this.f22562g);
                this.f22562g = null;
                File file2 = this.f22561f;
                this.f22561f = null;
                file2.delete();
                throw th;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2825h
    /* renamed from: a */
    public void mo18245a(C2829k kVar) throws CacheDataSinkException {
        if (kVar.f10271g != -1 || !kVar.m28936a(2)) {
            this.f22559d = kVar;
            this.f22560e = kVar.m28936a(4) ? this.f22557b : Long.MAX_VALUE;
            this.f22564i = 0L;
            try {
                m18244b();
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        } else {
            this.f22559d = null;
        }
    }

    /* renamed from: b */
    public final void m18244b() throws IOException {
        long j = this.f22559d.f10271g;
        long j2 = -1;
        if (j != -1) {
            j2 = Math.min(j - this.f22564i, this.f22560e);
        }
        Cache cache = this.f22556a;
        C2829k kVar = this.f22559d;
        this.f22561f = cache.mo18253a(kVar.f10272h, kVar.f10269e + this.f22564i, j2);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f22561f);
        if (this.f22558c > 0) {
            C2908z zVar = this.f22565j;
            if (zVar == null) {
                this.f22565j = new C2908z(fileOutputStream, this.f22558c);
            } else {
                zVar.m28500a(fileOutputStream);
            }
            this.f22562g = this.f22565j;
        } else {
            this.f22562g = fileOutputStream;
        }
        this.f22563h = 0L;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2825h
    public void close() throws CacheDataSinkException {
        if (this.f22559d != null) {
            try {
                m18246a();
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2825h
    public void write(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        if (this.f22559d != null) {
            int i3 = 0;
            while (i3 < i2) {
                try {
                    if (this.f22563h == this.f22560e) {
                        m18246a();
                        m18244b();
                    }
                    int min = (int) Math.min(i2 - i3, this.f22560e - this.f22563h);
                    this.f22562g.write(bArr, i + i3, min);
                    i3 += min;
                    long j = min;
                    this.f22563h += j;
                    this.f22564i += j;
                } catch (IOException e) {
                    throw new CacheDataSinkException(e);
                }
            }
        }
    }
}

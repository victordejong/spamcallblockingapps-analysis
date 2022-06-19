package com.google.android.exoplayer2.upstream.cache;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.upstream.AbstractC11565g;
import com.google.android.exoplayer2.upstream.C11570j;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11631x;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink.class */
public final class CacheDataSink implements AbstractC11565g {

    /* renamed from: a */
    private final Cache f38396a;

    /* renamed from: b */
    private final long f38397b;

    /* renamed from: c */
    private final int f38398c;

    /* renamed from: d */
    private C11570j f38399d;

    /* renamed from: e */
    private long f38400e;

    /* renamed from: f */
    private File f38401f;

    /* renamed from: g */
    private OutputStream f38402g;

    /* renamed from: h */
    private long f38403h;

    /* renamed from: i */
    private long f38404i;

    /* renamed from: j */
    private C11631x f38405j;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException.class */
    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.cache.CacheDataSink$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CacheDataSink$a.class */
    public static final class C11539a implements AbstractC11565g.AbstractC11566a {

        /* renamed from: a */
        Cache f38406a;

        /* renamed from: b */
        private long f38407b = 5242880;

        /* renamed from: c */
        private int f38408c = 20480;

        @Override // com.google.android.exoplayer2.upstream.AbstractC11565g.AbstractC11566a
        /* renamed from: a */
        public final AbstractC11565g mo20077a() {
            return new CacheDataSink((Cache) C11593a.m20020b(this.f38406a), this.f38407b, this.f38408c);
        }
    }

    public CacheDataSink(Cache cache, long j) {
        this(cache, j, 20480);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public CacheDataSink(Cache cache, long j, int i) {
        C11593a.m20018b(j > 0 || j == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        int i2 = (j > (-1L) ? 1 : (j == (-1L) ? 0 : -1));
        if (i2 != 0 && j < PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) {
            C11617n.m19863a("CacheDataSink", "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f38396a = (Cache) C11593a.m20020b(cache);
        this.f38397b = i2 == 0 ? 9223372036854775807 : j;
        this.f38398c = i;
    }

    /* renamed from: b */
    private void m20181b() throws IOException {
        OutputStream outputStream = this.f38402g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            C11599af.m19977a((Closeable) this.f38402g);
            this.f38402g = null;
            File file = (File) C11599af.m19974a(this.f38401f);
            this.f38401f = null;
            this.f38396a.mo20109a(file, this.f38403h);
        } catch (Throwable th) {
            C11599af.m19977a((Closeable) this.f38402g);
            this.f38402g = null;
            this.f38401f = null;
            ((File) C11599af.m19974a(this.f38401f)).delete();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* renamed from: b */
    private void m20180b(C11570j c11570j) throws IOException {
        ?? r12 = true;
        if (c11570j.f38519h != -1) {
            r12 = Math.min(c11570j.f38519h - this.f38404i, this.f38400e);
        }
        this.f38401f = this.f38396a.mo20093c((String) C11599af.m19974a(c11570j.f38520i), c11570j.f38518g + this.f38404i, r12 == true ? 1L : 0L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.f38401f);
        if (this.f38398c > 0) {
            C11631x c11631x = this.f38405j;
            if (c11631x == null) {
                this.f38405j = new C11631x(fileOutputStream, this.f38398c);
            } else {
                c11631x.m19766a(fileOutputStream);
            }
            this.f38402g = this.f38405j;
        } else {
            this.f38402g = fileOutputStream;
        }
        this.f38403h = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11565g
    /* renamed from: a */
    public final void mo20080a() throws CacheDataSinkException {
        if (this.f38399d == null) {
            return;
        }
        try {
            m20181b();
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.exoplayer2.upstream.AbstractC11565g
    /* renamed from: a */
    public final void mo20079a(C11570j c11570j) throws CacheDataSinkException {
        C11593a.m20020b(c11570j.f38520i);
        if (c11570j.f38519h == -1 && c11570j.m20074b(2)) {
            this.f38399d = null;
            return;
        }
        this.f38399d = c11570j;
        this.f38400e = c11570j.m20074b(4) ? this.f38397b : (char) 65535;
        this.f38404i = 0L;
        try {
            m20180b(c11570j);
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11565g
    /* renamed from: a */
    public final void mo20078a(byte[] bArr, int i, int i2) throws CacheDataSinkException {
        C11570j c11570j = this.f38399d;
        if (c11570j == null) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            try {
                if (this.f38403h == this.f38400e) {
                    m20181b();
                    m20180b(c11570j);
                }
                int min = (int) Math.min(i2 - i3, this.f38400e - this.f38403h);
                ((OutputStream) C11599af.m19974a(this.f38402g)).write(bArr, i + i3, min);
                i3 += min;
                long j = min;
                this.f38403h += j;
                this.f38404i += j;
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }
}

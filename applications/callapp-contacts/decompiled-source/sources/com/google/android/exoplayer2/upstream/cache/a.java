package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.j;
import com.google.android.exoplayer2.upstream.g;
import com.google.android.exoplayer2.upstream.h;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.upstream.q;
import com.google.android.exoplayer2.upstream.s;
import com.google.android.exoplayer2.upstream.u;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.af;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/a.class */
public final class a implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f22142a;

    /* renamed from: b  reason: collision with root package name */
    private final h f22143b;

    /* renamed from: c  reason: collision with root package name */
    private final h f22144c;

    /* renamed from: d  reason: collision with root package name */
    private final h f22145d;
    private final f e;
    private final AbstractC0448a f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private Uri j;
    private j k;
    private h l;
    private boolean m;
    private long n;
    private long o;
    private g p;
    private boolean q;
    private boolean r;
    private long s;
    private long t;

    /* renamed from: com.google.android.exoplayer2.upstream.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/a$a.class */
    public interface AbstractC0448a {
    }

    public a(Cache cache, h hVar) {
        this(cache, hVar, 0);
    }

    public a(Cache cache, h hVar, int i) {
        this(cache, hVar, new FileDataSource(), new CacheDataSink(cache, 5242880L), i, null);
    }

    public a(Cache cache, h hVar, h hVar2, g gVar, int i, AbstractC0448a aVar) {
        this(cache, hVar, hVar2, gVar, i, aVar, null);
    }

    public a(Cache cache, h hVar, h hVar2, g gVar, int i, AbstractC0448a aVar, f fVar) {
        this(cache, hVar, hVar2, gVar, fVar, i, null, 0, aVar);
    }

    private a(Cache cache, h hVar, h hVar2, g gVar, f fVar, int i, PriorityTaskManager priorityTaskManager, int i2, AbstractC0448a aVar) {
        this.f22142a = cache;
        this.f22143b = hVar2;
        this.e = fVar == null ? f.f22155a : fVar;
        boolean z = false;
        this.g = (i & 1) != 0;
        this.h = (i & 2) != 0;
        this.i = (i & 4) != 0 ? true : z;
        u uVar = null;
        if (hVar != null) {
            h sVar = priorityTaskManager != null ? new s(hVar, priorityTaskManager, i2) : hVar;
            this.f22145d = sVar;
            this.f22144c = gVar != null ? new u(sVar, gVar) : uVar;
        } else {
            this.f22145d = q.f22242a;
            this.f22144c = null;
        }
        this.f = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r25v11 */
    /* JADX WARN: Type inference failed for: r25v12 */
    /* JADX WARN: Type inference failed for: r25v13 */
    /* JADX WARN: Type inference failed for: r25v4, types: [long] */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r25v9, types: [long] */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.google.android.exoplayer2.upstream.j r8, boolean r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.a.a(com.google.android.exoplayer2.upstream.j, boolean):void");
    }

    private void a(String str) throws IOException {
        this.o = 0L;
        if (g()) {
            k kVar = new k();
            kVar.a("exo_len", this.n);
            this.f22142a.a(str, kVar);
        }
    }

    private void a(Throwable th) {
        if (f() || (th instanceof Cache.CacheException)) {
            this.q = true;
        }
    }

    private boolean d() {
        return !f();
    }

    private boolean e() {
        return this.l == this.f22145d;
    }

    private boolean f() {
        return this.l == this.f22143b;
    }

    private boolean g() {
        return this.l == this.f22144c;
    }

    private void h() throws IOException {
        h hVar = this.l;
        if (hVar != null) {
            try {
                hVar.c();
                this.l = null;
                this.m = false;
                g gVar = this.p;
                if (gVar != null) {
                    this.f22142a.a(gVar);
                    this.p = null;
                }
            } catch (Throwable th) {
                this.l = null;
                this.m = false;
                g gVar2 = this.p;
                if (gVar2 != null) {
                    this.f22142a.a(gVar2);
                    this.p = null;
                }
                throw th;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        j jVar = (j) com.google.android.exoplayer2.util.a.b(this.k);
        if (i2 == 0) {
            return 0;
        }
        if (this.o == 0) {
            return -1;
        }
        try {
            if (this.n >= this.t) {
                a(jVar, true);
            }
            int a2 = ((h) com.google.android.exoplayer2.util.a.b(this.l)).a(bArr, i, i2);
            if (a2 != -1) {
                if (f()) {
                    this.s += a2;
                }
                long j = a2;
                this.n += j;
                long j2 = this.o;
                if (j2 != -1) {
                    this.o = j2 - j;
                }
            } else if (this.m) {
                a((String) af.a(jVar.i));
            } else {
                long j3 = this.o;
                if (j3 > 0 || j3 == -1) {
                    h();
                    a(jVar, false);
                    return a(bArr, i, i2);
                }
            }
            return a2;
        } catch (IOException e) {
            if (!this.m || !DataSourceException.a(e)) {
                a(e);
                throw e;
            }
            a((String) af.a(jVar.i));
            return -1;
        } catch (Throwable th) {
            a(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        try {
            String buildCacheKey = this.e.buildCacheKey(jVar);
            j.a a2 = jVar.a();
            a2.h = buildCacheKey;
            j a3 = a2.a();
            this.k = a3;
            Cache cache = this.f22142a;
            Uri uri = a3.f22204a;
            String a4 = cache.a(buildCacheKey).a("exo_redir");
            Uri parse = a4 == null ? null : Uri.parse(a4);
            if (parse != null) {
                uri = parse;
            }
            this.j = uri;
            this.n = jVar.g;
            boolean z = true;
            if (((!this.h || !this.q) ? (!this.i || jVar.h != -1) ? (char) 65535 : (char) 1 : (char) 0) == 65535) {
                z = false;
            }
            this.r = z;
            if (jVar.h == -1 && !this.r) {
                long a5 = j._CC.a(this.f22142a.a(buildCacheKey));
                this.o = a5;
                if (a5 != -1) {
                    long j = a5 - jVar.g;
                    this.o = j;
                    if (j <= 0) {
                        throw new DataSourceException(0);
                    }
                }
                a(a3, false);
                return this.o;
            }
            this.o = jVar.h;
            a(a3, false);
            return this.o;
        } catch (Throwable th) {
            a(th);
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.j;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        com.google.android.exoplayer2.util.a.b(vVar);
        this.f22143b.a(vVar);
        this.f22145d.a(vVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        return d() ? this.f22145d.b() : Collections.emptyMap();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws IOException {
        this.k = null;
        this.j = null;
        this.n = 0L;
        if (this.f != null && this.s > 0) {
            this.f22142a.a();
            this.s = 0L;
        }
        try {
            h();
        } catch (Throwable th) {
            a(th);
            throw th;
        }
    }
}

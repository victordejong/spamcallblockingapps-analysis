package com.google.android.exoplayer2.c.a;

import android.net.Uri;
import com.google.android.exoplayer2.p;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.d;
import com.google.android.exoplayer2.upstream.j;
import com.google.android.exoplayer2.util.af;
import com.google.common.base.n;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Response;
import okhttp3.ResponseBody;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c/a/a.class */
public final class a extends d implements HttpDataSource {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f20813b = new byte[4096];

    /* renamed from: c  reason: collision with root package name */
    private final Call.Factory f20814c;

    /* renamed from: d  reason: collision with root package name */
    private final HttpDataSource.c f20815d;
    private final String e;
    private final CacheControl f;
    private final HttpDataSource.c g;
    private n<String> h;
    private j i;
    private Response j;
    private InputStream k;
    private boolean l;
    private long m;
    private long n;
    private long o;
    private long p;

    static {
        p.a("goog.exo.okhttp");
    }

    @Deprecated
    public a(Call.Factory factory) {
        this(factory, null);
    }

    @Deprecated
    public a(Call.Factory factory, String str) {
        this(factory, str, null, null);
    }

    @Deprecated
    public a(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.c cVar) {
        this(factory, str, cacheControl, cVar, null);
    }

    private a(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.c cVar, n<String> nVar) {
        super(true);
        this.f20814c = (Call.Factory) com.google.android.exoplayer2.util.a.b(factory);
        this.e = str;
        this.f = cacheControl;
        this.g = cVar;
        this.h = nVar;
        this.f20815d = new HttpDataSource.c();
    }

    private void f() {
        Response response = this.j;
        if (response != null) {
            ((ResponseBody) com.google.android.exoplayer2.util.a.b(response.body())).close();
            this.j = null;
        }
        this.k = null;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        byte[] bArr2;
        try {
            if (this.o != this.m) {
                while (true) {
                    long j = this.o;
                    long j2 = this.m;
                    if (j == j2) {
                        break;
                    }
                    int read = ((InputStream) af.a(this.k)).read(f20813b, 0, (int) Math.min(j2 - j, bArr2.length));
                    if (Thread.currentThread().isInterrupted()) {
                        throw new InterruptedIOException();
                    } else if (read != -1) {
                        this.o += read;
                        a(read);
                    } else {
                        throw new EOFException();
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.n;
            int i3 = i2;
            if (j3 != -1) {
                long j4 = j3 - this.p;
                if (j4 == 0) {
                    return -1;
                }
                i3 = (int) Math.min(i2, j4);
            }
            int read2 = ((InputStream) af.a(this.k)).read(bArr, i, i3);
            if (read2 != -1) {
                this.p += read2;
                a(read2);
                return read2;
            } else if (this.n == -1) {
                return -1;
            } else {
                throw new EOFException();
            }
        } catch (IOException e) {
            throw new HttpDataSource.HttpDataSourceException(e, (j) com.google.android.exoplayer2.util.a.b(this.i), 2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.exoplayer2.upstream.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.exoplayer2.upstream.j r9) throws com.google.android.exoplayer2.upstream.HttpDataSource.HttpDataSourceException {
        /*
            Method dump skipped, instructions count: 809
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.c.a.a.a(com.google.android.exoplayer2.upstream.j):long");
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        Response response = this.j;
        if (response == null) {
            return null;
        }
        return Uri.parse(response.request().url().toString());
    }

    @Override // com.google.android.exoplayer2.upstream.d, com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        Response response = this.j;
        return response == null ? Collections.emptyMap() : response.headers().toMultimap();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws HttpDataSource.HttpDataSourceException {
        if (this.l) {
            this.l = false;
            e();
            f();
        }
    }
}

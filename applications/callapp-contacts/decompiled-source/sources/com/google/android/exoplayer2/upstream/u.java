package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.a;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/u.class */
public final class u implements h {

    /* renamed from: a  reason: collision with root package name */
    private final h f22255a;

    /* renamed from: b  reason: collision with root package name */
    private final g f22256b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f22257c;

    /* renamed from: d  reason: collision with root package name */
    private long f22258d;

    public u(h hVar, g gVar) {
        this.f22255a = (h) a.b(hVar);
        this.f22256b = (g) a.b(gVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        if (this.f22258d == 0) {
            return -1;
        }
        int a2 = this.f22255a.a(bArr, i, i2);
        if (a2 > 0) {
            this.f22256b.a(bArr, i, a2);
            long j = this.f22258d;
            if (j != -1) {
                this.f22258d = j - a2;
            }
        }
        return a2;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        long a2 = this.f22255a.a(jVar);
        this.f22258d = a2;
        if (a2 == 0) {
            return 0L;
        }
        j jVar2 = jVar;
        if (jVar.h == -1) {
            long j = this.f22258d;
            jVar2 = jVar;
            if (j != -1) {
                jVar2 = jVar.h == j ? jVar : new j(jVar.f22204a, jVar.f22205b, jVar.f22206c, jVar.f22207d, jVar.e, jVar.g + 0, j, jVar.i, jVar.j, jVar.k);
            }
        }
        this.f22257c = true;
        this.f22256b.a(jVar2);
        return this.f22258d;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22255a.a();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        a.b(vVar);
        this.f22255a.a(vVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        return this.f22255a.b();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws IOException {
        try {
            this.f22255a.c();
            if (this.f22257c) {
                this.f22257c = false;
                this.f22256b.a();
            }
        } catch (Throwable th) {
            if (this.f22257c) {
                this.f22257c = false;
                this.f22256b.a();
            }
            throw th;
        }
    }
}

package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.a;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/t.class */
public final class t implements h {

    /* renamed from: a  reason: collision with root package name */
    public long f22251a;

    /* renamed from: b  reason: collision with root package name */
    public Uri f22252b = Uri.EMPTY;

    /* renamed from: c  reason: collision with root package name */
    public Map<String, List<String>> f22253c = Collections.emptyMap();

    /* renamed from: d  reason: collision with root package name */
    private final h f22254d;

    public t(h hVar) {
        this.f22254d = (h) a.b(hVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) throws IOException {
        int a2 = this.f22254d.a(bArr, i, i2);
        if (a2 != -1) {
            this.f22251a += a2;
        }
        return a2;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        this.f22252b = jVar.f22204a;
        this.f22253c = Collections.emptyMap();
        long a2 = this.f22254d.a(jVar);
        this.f22252b = (Uri) a.b(a());
        this.f22253c = b();
        return a2;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return this.f22254d.a();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
        a.b(vVar);
        this.f22254d.a(vVar);
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Map<String, List<String>> b() {
        return this.f22254d.b();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() throws IOException {
        this.f22254d.c();
    }
}

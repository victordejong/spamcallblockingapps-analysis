package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.C5508e;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.w */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/w.class */
public final class C5496w implements AbstractC5478j {

    /* renamed from: b */
    private final AbstractC5478j f17835b;

    /* renamed from: c */
    private long f17836c;

    /* renamed from: d */
    private Uri f17837d = Uri.EMPTY;

    /* renamed from: e */
    private Map<String, List<String>> f17838e = Collections.emptyMap();

    public C5496w(AbstractC5478j abstractC5478j) {
        this.f17835b = (AbstractC5478j) C5508e.m18911e(abstractC5478j);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: a */
    public void mo18950a(AbstractC5497x abstractC5497x) {
        this.f17835b.mo18950a(abstractC5497x);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: b */
    public long mo18949b(C5481l c5481l) {
        this.f17837d = c5481l.f17746a;
        this.f17838e = Collections.emptyMap();
        long mo18949b = this.f17835b.mo18949b(c5481l);
        this.f17837d = (Uri) C5508e.m18911e(mo18948c());
        this.f17838e = getResponseHeaders();
        return mo18949b;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    /* renamed from: c */
    public Uri mo18948c() {
        return this.f17835b.mo18948c();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public void close() {
        this.f17835b.close();
    }

    /* renamed from: d */
    public long m18947d() {
        return this.f17836c;
    }

    /* renamed from: e */
    public Uri m18946e() {
        return this.f17837d;
    }

    /* renamed from: f */
    public Map<String, List<String>> m18945f() {
        return this.f17838e;
    }

    /* renamed from: g */
    public void m18944g() {
        this.f17836c = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public Map<String, List<String>> getResponseHeaders() {
        return this.f17835b.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5478j
    public int read(byte[] bArr, int i, int i2) {
        int read = this.f17835b.read(bArr, i, i2);
        if (read != -1) {
            this.f17836c += read;
        }
        return read;
    }
}

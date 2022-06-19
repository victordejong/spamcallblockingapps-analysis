package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.v */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/v.class */
public final class C5494v<T> implements Loader.AbstractC5465e {

    /* renamed from: a */
    public final C5481l f17830a;

    /* renamed from: b */
    public final int f17831b;

    /* renamed from: c */
    private final C5496w f17832c;

    /* renamed from: d */
    private final AbstractC5495a<? extends T> f17833d;

    /* renamed from: e */
    private volatile T f17834e;

    /* renamed from: com.google.android.exoplayer2.upstream.v$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/v$a.class */
    public interface AbstractC5495a<T> {
        /* renamed from: a */
        T mo18951a(Uri uri, InputStream inputStream);
    }

    public C5494v(AbstractC5478j abstractC5478j, Uri uri, int i, AbstractC5495a<? extends T> abstractC5495a) {
        this(abstractC5478j, new C5481l(uri, 1), i, abstractC5495a);
    }

    public C5494v(AbstractC5478j abstractC5478j, C5481l c5481l, int i, AbstractC5495a<? extends T> abstractC5495a) {
        this.f17832c = new C5496w(abstractC5478j);
        this.f17830a = c5481l;
        this.f17831b = i;
        this.f17833d = abstractC5495a;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
    /* renamed from: a */
    public final void mo18957a() {
        this.f17832c.m18944g();
        C5480k c5480k = new C5480k(this.f17832c, this.f17830a);
        try {
            c5480k.m19020e();
            this.f17834e = this.f17833d.mo18951a((Uri) C5508e.m18911e(this.f17832c.mo18948c()), c5480k);
        } finally {
            C5515h0.m18825k(c5480k);
        }
    }

    /* renamed from: b */
    public long m18956b() {
        return this.f17832c.m18947d();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC5465e
    /* renamed from: c */
    public final void mo18955c() {
    }

    /* renamed from: d */
    public Map<String, List<String>> m18954d() {
        return this.f17832c.m18945f();
    }

    /* renamed from: e */
    public final T m18953e() {
        return this.f17834e;
    }

    /* renamed from: f */
    public Uri m18952f() {
        return this.f17832c.m18946e();
    }
}

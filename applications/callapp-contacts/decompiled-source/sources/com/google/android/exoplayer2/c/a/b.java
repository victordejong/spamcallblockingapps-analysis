package com.google.android.exoplayer2.c.a;

import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.v;
import okhttp3.CacheControl;
import okhttp3.Call;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c/a/b.class */
public final class b extends HttpDataSource.a {

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f20816a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20817b;

    /* renamed from: c  reason: collision with root package name */
    private final v f20818c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheControl f20819d;

    public b(Call.Factory factory) {
        this(factory, null, null, null);
    }

    public b(Call.Factory factory, String str) {
        this(factory, str, null, null);
    }

    public b(Call.Factory factory, String str, v vVar) {
        this(factory, str, vVar, null);
    }

    public b(Call.Factory factory, String str, v vVar, CacheControl cacheControl) {
        this.f20816a = factory;
        this.f20817b = str;
        this.f20818c = vVar;
        this.f20819d = cacheControl;
    }

    public b(Call.Factory factory, String str, CacheControl cacheControl) {
        this(factory, str, null, cacheControl);
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource.a
    public final /* synthetic */ HttpDataSource a(HttpDataSource.c cVar) {
        a aVar = new a(this.f20816a, this.f20817b, this.f20819d, cVar);
        v vVar = this.f20818c;
        if (vVar != null) {
            aVar.a(vVar);
        }
        return aVar;
    }
}

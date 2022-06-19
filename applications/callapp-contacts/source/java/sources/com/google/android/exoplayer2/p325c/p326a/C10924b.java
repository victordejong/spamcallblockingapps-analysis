package com.google.android.exoplayer2.p325c.p326a;

import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import okhttp3.CacheControl;
import okhttp3.Call;
@Deprecated
/* renamed from: com.google.android.exoplayer2.c.a.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/c/a/b.class */
public final class C10924b extends HttpDataSource.AbstractC11522a {

    /* renamed from: a */
    private final Call.Factory f35330a;

    /* renamed from: b */
    private final String f35331b;

    /* renamed from: c */
    private final AbstractC11590v f35332c;

    /* renamed from: d */
    private final CacheControl f35333d;

    public C10924b(Call.Factory factory) {
        this(factory, null, null, null);
    }

    public C10924b(Call.Factory factory, String str) {
        this(factory, str, null, null);
    }

    public C10924b(Call.Factory factory, String str, AbstractC11590v abstractC11590v) {
        this(factory, str, abstractC11590v, null);
    }

    public C10924b(Call.Factory factory, String str, AbstractC11590v abstractC11590v, CacheControl cacheControl) {
        this.f35330a = factory;
        this.f35331b = str;
        this.f35332c = abstractC11590v;
        this.f35333d = cacheControl;
    }

    public C10924b(Call.Factory factory, String str, CacheControl cacheControl) {
        this(factory, str, null, cacheControl);
    }

    @Override // com.google.android.exoplayer2.upstream.HttpDataSource.AbstractC11522a
    /* renamed from: a */
    public final /* synthetic */ HttpDataSource mo20210a(HttpDataSource.C11524c c11524c) {
        C10922a c10922a = new C10922a(this.f35330a, this.f35331b, this.f35333d, c11524c);
        AbstractC11590v abstractC11590v = this.f35332c;
        if (abstractC11590v != null) {
            c10922a.mo20034a(abstractC11590v);
        }
        return c10922a;
    }
}

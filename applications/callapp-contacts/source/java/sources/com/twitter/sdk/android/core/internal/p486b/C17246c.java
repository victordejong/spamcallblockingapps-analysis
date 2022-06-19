package com.twitter.sdk.android.core.internal.p486b;
/* renamed from: com.twitter.sdk.android.core.internal.b.c */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/b/c.class */
public final class C17246c<T> {

    /* renamed from: a */
    public final AbstractC17244a f60992a;

    /* renamed from: b */
    public final AbstractC17247d<T> f60993b;

    /* renamed from: c */
    public final String f60994c;

    public C17246c(AbstractC17244a abstractC17244a, AbstractC17247d<T> abstractC17247d, String str) {
        this.f60992a = abstractC17244a;
        this.f60993b = abstractC17247d;
        this.f60994c = str;
    }

    /* renamed from: a */
    public final void m5670a() {
        this.f60992a.mo5671b().remove(this.f60994c).commit();
    }

    /* renamed from: a */
    public final void m5669a(T t) {
        AbstractC17244a abstractC17244a = this.f60992a;
        abstractC17244a.mo5672a(abstractC17244a.mo5671b().putString(this.f60994c, this.f60993b.mo5618a((AbstractC17247d<T>) t)));
    }
}

package com.twitter.sdk.android.core.internal.b;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/b/c.class */
public final class c<T> {

    /* renamed from: a  reason: collision with root package name */
    public final a f35145a;

    /* renamed from: b  reason: collision with root package name */
    public final d<T> f35146b;

    /* renamed from: c  reason: collision with root package name */
    public final String f35147c;

    public c(a aVar, d<T> dVar, String str) {
        this.f35145a = aVar;
        this.f35146b = dVar;
        this.f35147c = str;
    }

    public final void a() {
        this.f35145a.b().remove(this.f35147c).commit();
    }

    public final void a(T t) {
        a aVar = this.f35145a;
        aVar.a(aVar.b().putString(this.f35147c, this.f35146b.a((d<T>) t)));
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clr.class */
final class clr<R> implements crx {

    /* renamed from: a  reason: collision with root package name */
    public final cmj<R> f26041a;

    /* renamed from: b  reason: collision with root package name */
    public final cmm f26042b;

    /* renamed from: c  reason: collision with root package name */
    public final zzvq f26043c;

    /* renamed from: d  reason: collision with root package name */
    public final String f26044d;
    public final Executor e;
    public final zzwc f;
    private final cri g;

    public clr(cmj<R> cmjVar, cmm cmmVar, zzvq zzvqVar, String str, Executor executor, zzwc zzwcVar, cri criVar) {
        this.f26041a = cmjVar;
        this.f26042b = cmmVar;
        this.f26043c = zzvqVar;
        this.f26044d = str;
        this.e = executor;
        this.f = zzwcVar;
        this.g = criVar;
    }

    @Override // com.google.android.gms.internal.ads.crx
    public final Executor a() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.crx
    public final cri b() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.crx
    public final crx c() {
        return new clr(this.f26041a, this.f26042b, this.f26043c, this.f26044d, this.e, this.f, this.g);
    }
}

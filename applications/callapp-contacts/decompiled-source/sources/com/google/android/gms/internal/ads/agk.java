package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agk.class */
public final class agk implements dsi<ti> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f23249a;

    public agk(dsv<Context> dsvVar) {
        this.f23249a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        Context a2 = this.f23249a.a();
        return (ti) dso.b(new tg(a2, new tj(a2).a()));
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cev.class */
public final class cev implements dsi<ces> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25706a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<ViewGroup> f25707b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Context> f25708c;

    /* renamed from: d  reason: collision with root package name */
    private final dsv<Set<String>> f25709d;

    private cev(dsv<dbs> dsvVar, dsv<ViewGroup> dsvVar2, dsv<Context> dsvVar3, dsv<Set<String>> dsvVar4) {
        this.f25706a = dsvVar;
        this.f25707b = dsvVar2;
        this.f25708c = dsvVar3;
        this.f25709d = dsvVar4;
    }

    public static cev a(dsv<dbs> dsvVar, dsv<ViewGroup> dsvVar2, dsv<Context> dsvVar3, dsv<Set<String>> dsvVar4) {
        return new cev(dsvVar, dsvVar2, dsvVar3, dsvVar4);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ces(this.f25706a.a(), this.f25707b.a(), this.f25708c.a(), this.f25709d.a());
    }
}

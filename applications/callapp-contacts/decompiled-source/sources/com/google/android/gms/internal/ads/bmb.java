package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmb.class */
public final class bmb implements dsi<Set<ayi<AppEventListener>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24681a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24682b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24683c;

    private bmb(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24681a = blvVar;
        this.f24682b = dsvVar;
        this.f24683c = dsvVar2;
    }

    public static bmb a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bmb(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24682b.a(), this.f24683c.a()));
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmb.class */
public final class bmb implements dsi<Set<ayi<AppEventListener>>> {

    /* renamed from: a */
    private final blv f44243a;

    /* renamed from: b */
    private final dsv<bmf> f44244b;

    /* renamed from: c */
    private final dsv<Executor> f44245c;

    private bmb(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44243a = blvVar;
        this.f44244b = dsvVar;
        this.f44245c = dsvVar2;
    }

    /* renamed from: a */
    public static bmb m17745a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bmb(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(blv.m17751a(this.f44244b.mo14005a(), this.f44245c.mo14005a()));
    }
}

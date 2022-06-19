package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayl.class */
public final class ayl implements dht<ajk> {

    /* renamed from: a */
    private final dig<dtm> f10598a;

    /* renamed from: b */
    private final dig<Executor> f10599b;

    /* renamed from: c */
    private final dig<Context> f10600c;

    /* renamed from: d */
    private final dig<AbstractC2708e> f10601d;

    public ayl(dig<dtm> digVar, dig<Executor> digVar2, dig<Context> digVar3, dig<AbstractC2708e> digVar4) {
        this.f10598a = digVar;
        this.f10599b = digVar2;
        this.f10600c = digVar3;
        this.f10601d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        dtm mo9430a = this.f10598a.mo9430a();
        return (ajk) dhz.m9438a(new ajk(this.f10599b.mo9430a(), new aiz(this.f10600c.mo9430a(), mo9430a), this.f10601d.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

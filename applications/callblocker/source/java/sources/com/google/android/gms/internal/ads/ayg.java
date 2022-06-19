package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayg.class */
public final class ayg implements dht<aup> {

    /* renamed from: a */
    private final dig<Context> f10589a;

    /* renamed from: b */
    private final dig<cgr> f10590b;

    public ayg(dig<Context> digVar, dig<cgr> digVar2) {
        this.f10589a = digVar;
        this.f10590b = digVar2;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (aup) dhz.m9438a(new aup(this.f10589a.mo9430a(), new HashSet(), this.f10590b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/awk.class */
public final class awk implements dht<auq<asl>> {

    /* renamed from: a */
    private final avv f10469a;

    /* renamed from: b */
    private final dig<Executor> f10470b;

    private awk(avv avvVar, dig<Executor> digVar) {
        this.f10469a = avvVar;
        this.f10470b = digVar;
    }

    /* renamed from: a */
    public static awk m12381a(avv avvVar, dig<Executor> digVar) {
        return new awk(avvVar, digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (auq) dhz.m9438a(this.f10469a.m12397a(this.f10470b.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}

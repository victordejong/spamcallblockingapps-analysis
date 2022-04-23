package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiz.class */
public final class zzdiz implements zzeoy<zzdix> {

    /* renamed from: a */
    public final zzeph<zzarg> f27402a;

    /* renamed from: b */
    public final zzeph<ScheduledExecutorService> f27403b;

    /* renamed from: c */
    public final zzeph<Context> f27404c;

    public zzdiz(zzeph<zzarg> zzephVar, zzeph<ScheduledExecutorService> zzephVar2, zzeph<Context> zzephVar3) {
        this.f27402a = zzephVar;
        this.f27403b = zzephVar2;
        this.f27404c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdix(this.f27402a.get(), this.f27403b.get(), this.f27404c.get());
    }
}

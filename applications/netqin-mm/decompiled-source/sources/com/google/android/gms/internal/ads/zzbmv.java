package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmv.class */
public final class zzbmv implements zzeoy<zzbmu> {

    /* renamed from: a */
    public final zzeph<zzamk> f25204a;

    /* renamed from: b */
    public final zzeph<zzbms> f25205b;

    /* renamed from: c */
    public final zzeph<Executor> f25206c;

    /* renamed from: d */
    public final zzeph<zzbml> f25207d;

    /* renamed from: e */
    public final zzeph<Clock> f25208e;

    public zzbmv(zzeph<zzamk> zzephVar, zzeph<zzbms> zzephVar2, zzeph<Executor> zzephVar3, zzeph<zzbml> zzephVar4, zzeph<Clock> zzephVar5) {
        this.f25204a = zzephVar;
        this.f25205b = zzephVar2;
        this.f25206c = zzephVar3;
        this.f25207d = zzephVar4;
        this.f25208e = zzephVar5;
    }

    /* renamed from: a */
    public static zzbmv m15302a(zzeph<zzamk> zzephVar, zzeph<zzbms> zzephVar2, zzeph<Executor> zzephVar3, zzeph<zzbml> zzephVar4, zzeph<Clock> zzephVar5) {
        return new zzbmv(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbmu(this.f25204a.get(), this.f25205b.get(), this.f25206c.get(), this.f25207d.get(), this.f25208e.get());
    }
}

package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3549fl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcna.class */
public final class zzcna implements zzeoy<zzcmy> {

    /* renamed from: a */
    public final zzeph<zzcms> f26280a;

    /* renamed from: b */
    public final zzeph<Set<C3549fl>> f26281b;

    /* renamed from: c */
    public final zzeph<Clock> f26282c;

    public zzcna(zzeph<zzcms> zzephVar, zzeph<Set<C3549fl>> zzephVar2, zzeph<Clock> zzephVar3) {
        this.f26280a = zzephVar;
        this.f26281b = zzephVar2;
        this.f26282c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcna m14032a(zzeph<zzcms> zzephVar, zzeph<Set<C3549fl>> zzephVar2, zzeph<Clock> zzephVar3) {
        return new zzcna(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcmy(this.f26280a.get(), this.f26281b.get(), this.f26282c.get());
    }
}

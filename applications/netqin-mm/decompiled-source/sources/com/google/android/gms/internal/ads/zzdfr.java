package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfr.class */
public final class zzdfr implements zzeoy<zzdfp> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27248a;

    /* renamed from: b */
    public final zzeph<Bundle> f27249b;

    public zzdfr(zzeph<zzdzb> zzephVar, zzeph<Bundle> zzephVar2) {
        this.f27248a = zzephVar;
        this.f27249b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdfr m13620a(zzeph<zzdzb> zzephVar, zzeph<Bundle> zzephVar2) {
        return new zzdfr(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdfp(this.f27248a.get(), this.f27249b.get());
    }
}

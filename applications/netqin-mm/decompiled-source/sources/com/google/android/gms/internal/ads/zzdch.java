package com.google.android.gms.internal.ads;

import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3964qs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdch.class */
public final class zzdch implements zzeoy<C3964qs> {

    /* renamed from: a */
    public final zzeph<Set<String>> f27115a;

    public zzdch(zzeph<Set<String>> zzephVar) {
        this.f27115a = zzephVar;
    }

    /* renamed from: a */
    public static C3964qs m13657a(Set<String> set) {
        return new C3964qs(set);
    }

    /* renamed from: a */
    public static zzdch m13658a(zzeph<Set<String>> zzephVar) {
        return new zzdch(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13657a(this.f27115a.get());
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhj.class */
public final class zzdhj implements zzeoy<zzdhh> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27331a;

    /* renamed from: b */
    public final zzeph<Context> f27332b;

    public zzdhj(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        this.f27331a = zzephVar;
        this.f27332b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdhj m13598a(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2) {
        return new zzdhj(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdhh(this.f27331a.get(), this.f27332b.get());
    }
}

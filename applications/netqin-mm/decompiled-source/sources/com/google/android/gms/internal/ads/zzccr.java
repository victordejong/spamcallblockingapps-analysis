package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzua;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccr.class */
public final class zzccr implements zzeoy<zzccs> {

    /* renamed from: a */
    public final zzeph<zzawp> f25716a;

    /* renamed from: b */
    public final zzeph<Context> f25717b;

    /* renamed from: c */
    public final zzeph<zzawo> f25718c;

    /* renamed from: d */
    public final zzeph<View> f25719d;

    /* renamed from: e */
    public final zzeph<zzua.zza.EnumC10505zza> f25720e;

    public zzccr(zzeph<zzawp> zzephVar, zzeph<Context> zzephVar2, zzeph<zzawo> zzephVar3, zzeph<View> zzephVar4, zzeph<zzua.zza.EnumC10505zza> zzephVar5) {
        this.f25716a = zzephVar;
        this.f25717b = zzephVar2;
        this.f25718c = zzephVar3;
        this.f25719d = zzephVar4;
        this.f25720e = zzephVar5;
    }

    /* renamed from: a */
    public static zzccr m14804a(zzeph<zzawp> zzephVar, zzeph<Context> zzephVar2, zzeph<zzawo> zzephVar3, zzeph<View> zzephVar4, zzeph<zzua.zza.EnumC10505zza> zzephVar5) {
        return new zzccr(zzephVar, zzephVar2, zzephVar3, zzephVar4, zzephVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzccs(this.f25716a.get(), this.f25717b.get(), this.f25718c.get(), this.f25719d.get(), this.f25720e.get());
    }
}

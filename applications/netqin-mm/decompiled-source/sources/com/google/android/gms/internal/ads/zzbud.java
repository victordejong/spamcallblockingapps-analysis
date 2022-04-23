package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbud.class */
public final class zzbud implements zzeoy<zzawl> {

    /* renamed from: a */
    public final zzeph<Context> f25557a;

    /* renamed from: b */
    public final zzeph<zzbbx> f25558b;

    /* renamed from: c */
    public final zzeph<zzdnv> f25559c;

    /* renamed from: d */
    public final zzeph<zzawn> f25560d;

    public zzbud(zzbua zzbuaVar, zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzawn> zzephVar4) {
        this.f25557a = zzephVar;
        this.f25558b = zzephVar2;
        this.f25559c = zzephVar3;
        this.f25560d = zzephVar4;
    }

    /* renamed from: a */
    public static zzbud m15036a(zzbua zzbuaVar, zzeph<Context> zzephVar, zzeph<zzbbx> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzawn> zzephVar4) {
        return new zzbud(zzbuaVar, zzephVar, zzephVar2, zzephVar3, zzephVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Context context = this.f25557a.get();
        zzbbx zzbbxVar = this.f25558b.get();
        zzdnv zzdnvVar = this.f25559c.get();
        zzawn zzawnVar = this.f25560d.get();
        if (zzdnvVar.f27610z != null) {
            return new zzavy(context, zzbbxVar, zzdnvVar.f27610z, zzdnvVar.f27602r.f27620b, zzawnVar);
        }
        return null;
    }
}

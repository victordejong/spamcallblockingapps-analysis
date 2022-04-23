package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbtp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdf.class */
public final class zzcdf implements zzeoy<zzbqp<zzboq>> {

    /* renamed from: a */
    public final zzeph<zzbix> f25738a;

    /* renamed from: b */
    public final zzeph<zzbtp.zza> f25739b;

    /* renamed from: c */
    public final zzeph<zzbys> f25740c;

    /* renamed from: d */
    public final zzeph<zzccw> f25741d;

    /* renamed from: e */
    public final zzeph<zzbwk> f25742e;

    public zzcdf(zzeph<zzbix> zzephVar, zzeph<zzbtp.zza> zzephVar2, zzeph<zzbys> zzephVar3, zzeph<zzccw> zzephVar4, zzeph<zzbwk> zzephVar5) {
        this.f25738a = zzephVar;
        this.f25739b = zzephVar2;
        this.f25740c = zzephVar3;
        this.f25741d = zzephVar4;
        this.f25742e = zzephVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbix zzbixVar = this.f25738a.get();
        zzbtp.zza zzaVar = this.f25739b.get();
        zzbys zzbysVar = this.f25740c.get();
        zzbqp<zzboq> c = zzbixVar.mo15381h().mo15209c(zzaVar.m15066a()).mo15212a(zzbysVar).mo15211a(this.f25741d.get()).mo15210b(new zzcyn(null)).mo15213a(new zzbqh(this.f25742e.get())).mo15214a(new zzbol(null)).mo15208e().mo15203c();
        zzepe.m12187a(c, "Cannot return null from a non-@Nullable @Provides method");
        return c;
    }
}

package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrx.class */
public final class zzcrx implements zzeoy<zzcrw> {

    /* renamed from: a */
    public final zzeph<zzcru> f26446a;

    /* renamed from: b */
    public final zzeph<zzdzb> f26447b;

    public zzcrx(zzeph<zzcru> zzephVar, zzeph<zzdzb> zzephVar2) {
        this.f26446a = zzephVar;
        this.f26447b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcrx m13903a(zzeph<zzcru> zzephVar, zzeph<zzdzb> zzephVar2) {
        return new zzcrx(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcrw(this.f26446a.get(), this.f26447b.get());
    }
}

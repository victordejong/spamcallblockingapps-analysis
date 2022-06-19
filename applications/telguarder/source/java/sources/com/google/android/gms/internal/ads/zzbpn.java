package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpn.class */
public final class zzbpn implements zzeqb<zzbnw> {
    private final zzeqo<zzbsg> zzffw;
    private final zzeqo<zzbud> zzffx;
    private final zzeqo<zzbsw> zzfhf;
    private final zzeqo<zzdnl> zzfrr;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<zzdkk> zzfxp;
    private final zzeqo<zzbrh> zzfxq;

    private zzbpn(zzeqo<zzdnl> zzeqoVar, zzeqo<zzdmw> zzeqoVar2, zzeqo<zzbsg> zzeqoVar3, zzeqo<zzbsw> zzeqoVar4, zzeqo<zzdkk> zzeqoVar5, zzeqo<zzbrh> zzeqoVar6, zzeqo<zzbud> zzeqoVar7) {
        this.zzfrr = zzeqoVar;
        this.zzfvr = zzeqoVar2;
        this.zzffw = zzeqoVar3;
        this.zzfhf = zzeqoVar4;
        this.zzfxp = zzeqoVar5;
        this.zzfxq = zzeqoVar6;
        this.zzffx = zzeqoVar7;
    }

    public static zzbpn zza(zzeqo<zzdnl> zzeqoVar, zzeqo<zzdmw> zzeqoVar2, zzeqo<zzbsg> zzeqoVar3, zzeqo<zzbsw> zzeqoVar4, zzeqo<zzdkk> zzeqoVar5, zzeqo<zzbrh> zzeqoVar6, zzeqo<zzbud> zzeqoVar7) {
        return new zzbpn(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnw(this.zzfrr.get(), this.zzfvr.get(), this.zzffw.get(), this.zzfhf.get(), this.zzfxp.get(), this.zzfxq.get(), this.zzffx.get());
    }
}

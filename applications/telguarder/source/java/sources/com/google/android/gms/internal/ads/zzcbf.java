package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbf.class */
public final class zzcbf implements zzeqb<zzcbc> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdss> zzexv;
    private final zzeqo<zzbrl> zzfgn;
    private final zzeqo<zzbsd> zzfgx;
    private final zzeqo<JSONObject> zzfiy;
    private final zzeqo<zzbjz> zzfje;
    private final zzeqo<zzbxz> zzfjn;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<Clock> zzfsz;
    private final zzeqo<zzcco> zzfuw;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<zzcgk> zzgcx;
    private final zzeqo<zzccd> zzgcy;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zzcdg> zzgda;

    public zzcbf(zzeqo<Context> zzeqoVar, zzeqo<zzcco> zzeqoVar2, zzeqo<JSONObject> zzeqoVar3, zzeqo<zzcgk> zzeqoVar4, zzeqo<zzccd> zzeqoVar5, zzeqo<zzei> zzeqoVar6, zzeqo<zzbsd> zzeqoVar7, zzeqo<zzbrl> zzeqoVar8, zzeqo<zzdmw> zzeqoVar9, zzeqo<zzazn> zzeqoVar10, zzeqo<zzdnp> zzeqoVar11, zzeqo<zzbjz> zzeqoVar12, zzeqo<zzcdg> zzeqoVar13, zzeqo<Clock> zzeqoVar14, zzeqo<zzbxz> zzeqoVar15, zzeqo<zzdss> zzeqoVar16) {
        this.zzewk = zzeqoVar;
        this.zzfuw = zzeqoVar2;
        this.zzfiy = zzeqoVar3;
        this.zzgcx = zzeqoVar4;
        this.zzgcy = zzeqoVar5;
        this.zzgcz = zzeqoVar6;
        this.zzfgx = zzeqoVar7;
        this.zzfgn = zzeqoVar8;
        this.zzfvr = zzeqoVar9;
        this.zzfqo = zzeqoVar10;
        this.zzfvf = zzeqoVar11;
        this.zzfje = zzeqoVar12;
        this.zzgda = zzeqoVar13;
        this.zzfsz = zzeqoVar14;
        this.zzfjn = zzeqoVar15;
        this.zzexv = zzeqoVar16;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcbc(this.zzewk.get(), this.zzfuw.get(), this.zzfiy.get(), this.zzgcx.get(), this.zzgcy.get(), this.zzgcz.get(), this.zzfgx.get(), this.zzfgn.get(), this.zzfvr.get(), this.zzfqo.get(), this.zzfvf.get(), this.zzfje.get(), this.zzgda.get(), this.zzfsz.get(), this.zzfjn.get(), this.zzexv.get());
    }
}

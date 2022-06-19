package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgt.class */
public final class zzcgt implements Callable<zzcgk> {
    private final Context context;
    private final zzbej zzbqa;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final zzazn zzdtx;
    private final zzei zzesm;
    private final zzdss zzfrf;
    private final Executor zzfsj;
    private final zzb zzghz;

    public zzcgt(Context context, Executor executor, zzei zzeiVar, zzazn zzaznVar, zzb zzbVar, zzbej zzbejVar, zzcqr zzcqrVar, zzdss zzdssVar, zzckn zzcknVar, zzdrz zzdrzVar) {
        this.context = context;
        this.zzfsj = executor;
        this.zzesm = zzeiVar;
        this.zzdtx = zzaznVar;
        this.zzghz = zzbVar;
        this.zzbqa = zzbejVar;
        this.zzdie = zzcqrVar;
        this.zzfrf = zzdssVar;
        this.zzdib = zzcknVar;
        this.zzdic = zzdrzVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzcgk call() {
        zzcgk zzcgkVar = new zzcgk(this);
        zzcgkVar.zzapo();
        return zzcgkVar;
    }
}

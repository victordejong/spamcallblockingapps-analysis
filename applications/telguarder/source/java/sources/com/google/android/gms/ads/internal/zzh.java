package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzazn;
import com.google.android.gms.internal.ads.zzds;
import com.google.android.gms.internal.ads.zzdsy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements Runnable {
    private final /* synthetic */ boolean zzbpc;
    private final /* synthetic */ zzf zzbpd;

    public zzh(zzf zzfVar, boolean z) {
        this.zzbpd = zzfVar;
        this.zzbpc = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzdsy zzdsyVar;
        zzazn zzaznVar;
        Context context;
        Context zze;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            zzaznVar = this.zzbpd.zzbpa;
            String str = zzaznVar.zzbrp;
            context = this.zzbpd.zzboy;
            zze = zzf.zze(context);
            zzds.zza(str, zze, this.zzbpc).zzbt();
        } catch (NullPointerException e) {
            zzdsyVar = this.zzbpd.zzxc;
            zzdsyVar.zza(2027, System.currentTimeMillis() - currentTimeMillis, e);
        }
    }
}

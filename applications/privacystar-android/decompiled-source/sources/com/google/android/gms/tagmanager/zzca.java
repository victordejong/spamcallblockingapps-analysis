package com.google.android.gms.tagmanager;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzca.class */
final class zzca implements Runnable {
    private final /* synthetic */ zzby zzbcg;
    private final /* synthetic */ long zzbch;
    private final /* synthetic */ String zzbci;
    private final /* synthetic */ zzbz zzbcj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzca(zzbz zzbzVar, zzby zzbyVar, long j, String str) {
        this.zzbcj = zzbzVar;
        this.zzbcg = zzbyVar;
        this.zzbch = j;
        this.zzbci = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcb zzcbVar;
        zzcb zzcbVar2;
        Context context;
        zzcbVar = this.zzbcj.zzbcf;
        if (zzcbVar == null) {
            zzfn zzpu = zzfn.zzpu();
            context = this.zzbcj.zzri;
            zzpu.zza(context, this.zzbcg);
            this.zzbcj.zzbcf = zzpu.zzpv();
        }
        zzcbVar2 = this.zzbcj.zzbcf;
        zzcbVar2.zzb(this.zzbch, this.zzbci);
    }
}

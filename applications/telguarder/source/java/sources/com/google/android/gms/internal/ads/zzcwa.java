package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwa.class */
public final class zzcwa implements zzbyn {
    private final /* synthetic */ zzdmw zzgve;
    private final /* synthetic */ zzdnl zzgvw;
    private final /* synthetic */ zzcrl zzgvx;
    final /* synthetic */ zzcvy zzgvy;

    public zzcwa(zzcvy zzcvyVar, zzdnl zzdnlVar, zzdmw zzdmwVar, zzcrl zzcrlVar) {
        this.zzgvy = zzcvyVar;
        this.zzgvw = zzdnlVar;
        this.zzgve = zzdmwVar;
        this.zzgvx = zzcrlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void onInitializationSucceeded() {
        Executor executor;
        executor = this.zzgvy.zzfsj;
        executor.execute(new Runnable(this, this.zzgvw, this.zzgve, this.zzgvx) { // from class: com.google.android.gms.internal.ads.zzcvz
            private final zzdmw zzfva;
            private final zzdnl zzghw;
            private final zzcwa zzgvu;
            private final zzcrl zzgvv;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgvu = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
                this.zzgvv = zzcrlVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcwa zzcwaVar = this.zzgvu;
                zzdnl zzdnlVar2 = this.zzghw;
                zzdmw zzdmwVar2 = this.zzfva;
                zzcrl zzcrlVar2 = this.zzgvv;
                zzcvy zzcvyVar = zzcwaVar.zzgvy;
                zzcvy.zzc(zzdnlVar2, zzdmwVar2, zzcrlVar2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbyn
    public final void zzdy(int i) {
        String valueOf = String.valueOf(this.zzgvx.zzcio);
        zzd.zzex(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}

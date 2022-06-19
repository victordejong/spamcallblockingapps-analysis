package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdco.class */
public final class zzdco implements zzdfi<zzdct> {
    private final Context zzaad;
    private final zzdzv zzghl;

    public zzdco(Context context, zzdzv zzdzvVar) {
        this.zzaad = context;
        this.zzghl = zzdzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdct> zzasy() {
        return this.zzghl.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzdcr
            private final zzdco zzhbv;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhbv = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhbv.zzatf();
            }
        });
    }

    public final /* synthetic */ zzdct zzatf() throws Exception {
        zzr.zzkr();
        String zzav = zzj.zzav(this.zzaad);
        String str = "";
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxt)).booleanValue()) {
            str = this.zzaad.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        zzr.zzkr();
        return new zzdct(zzav, str, zzj.zzaw(this.zzaad));
    }
}

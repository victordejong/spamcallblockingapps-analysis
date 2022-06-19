package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzddx.class */
public final class zzddx implements zzdfi<zzddu> {
    private final Context context;
    private final zzdzv zzhah;
    private final Set<String> zzhav;

    public zzddx(zzdzv zzdzvVar, Context context, Set<String> set) {
        this.zzhah = zzdzvVar;
        this.context = context;
        this.zzhav = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzddu> zzasy() {
        return this.zzhah.zze(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzddw
            private final zzddx zzhck;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzhck = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzhck.zzatj();
            }
        });
    }

    public final /* synthetic */ zzddu zzatj() throws Exception {
        boolean zze;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
            zze = zzddu.zze(this.zzhav);
            if (zze) {
                return new zzddu(zzr.zzlg().getVersion(this.context));
            }
        }
        return new zzddu(null);
    }
}

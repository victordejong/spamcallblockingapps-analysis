package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzar;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalv.class */
public final class zzalv implements zzbae<zzakm> {
    final /* synthetic */ zzalq zzdkl;

    public zzalv(zzalq zzalqVar) {
        this.zzdkl = zzalqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbae
    public final /* synthetic */ void zzg(zzakm zzakmVar) {
        zzazp.zzeig.execute(new Runnable(this, zzakmVar) { // from class: com.google.android.gms.internal.ads.zzalu
            private final zzalv zzdkj;
            private final zzakm zzdkk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdkj = this;
                this.zzdkk = zzakmVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzar zzarVar;
                zzalv zzalvVar = this.zzdkj;
                zzakm zzakmVar3 = this.zzdkk;
                zzarVar = zzalvVar.zzdkl.zzdjp;
                zzarVar.zzg(zzakmVar3);
                zzakmVar3.destroy();
            }
        });
    }
}

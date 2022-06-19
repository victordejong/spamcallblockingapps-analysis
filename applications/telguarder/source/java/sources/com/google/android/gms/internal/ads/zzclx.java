package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclx.class */
public final class zzclx implements zzdzl<String> {
    final /* synthetic */ zzclq zzgng;

    public zzclx(zzclq zzclqVar) {
        this.zzgng = zzclqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@Nullable String str) {
        long j;
        Executor executor;
        String str2 = str;
        synchronized (this) {
            this.zzgng.zzgms = true;
            zzclq zzclqVar = this.zzgng;
            long elapsedRealtime = zzr.zzky().elapsedRealtime();
            j = this.zzgng.zzgmt;
            zzclqVar.zza("com.google.android.gms.ads.MobileAds", true, "", (int) (elapsedRealtime - j));
            executor = this.zzgng.executor;
            executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.zzcma
                private final String zzdjf;
                private final zzclx zzgnl;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgnl = this;
                    this.zzdjf = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzclx zzclxVar = this.zzgnl;
                    zzclxVar.zzgng.zzgh(this.zzdjf);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        long j;
        zzbaa zzbaaVar;
        synchronized (this) {
            this.zzgng.zzgms = true;
            zzclq zzclqVar = this.zzgng;
            long elapsedRealtime = zzr.zzky().elapsedRealtime();
            j = this.zzgng.zzgmt;
            zzclqVar.zza("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (elapsedRealtime - j));
            zzbaaVar = this.zzgng.zzgmu;
            zzbaaVar.setException(new Exception());
        }
    }
}

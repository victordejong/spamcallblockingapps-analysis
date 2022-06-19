package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdaj.class */
public final class zzdaj implements zzdyu<zzatq, zzdak> {
    private Executor executor;
    private zzcmx zzhad;

    public zzdaj(Executor executor, zzcmx zzcmxVar) {
        this.executor = executor;
        this.zzhad = zzcmxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final /* synthetic */ zzdzw<zzdak> zzf(zzatq zzatqVar) throws Exception {
        zzatq zzatqVar2 = zzatqVar;
        return zzdzk.zzb(this.zzhad.zzg(zzatqVar2), new zzdyu(zzatqVar2) { // from class: com.google.android.gms.internal.ads.zzdai
            private final zzatq zzfzs;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfzs = zzatqVar2;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                return zzdzk.zzag(new zzdak(new JsonReader(new InputStreamReader((InputStream) obj))).zzn(this.zzfzs.zzdxi));
            }
        }, this.executor);
    }
}

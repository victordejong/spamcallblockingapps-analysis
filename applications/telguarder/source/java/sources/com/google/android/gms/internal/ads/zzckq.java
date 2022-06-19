package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckq.class */
public final class zzckq {
    private final Map<String, String> zzdbf = new ConcurrentHashMap();
    private final /* synthetic */ zzckn zzglu;

    public zzckq(zzckn zzcknVar) {
        this.zzglu = zzcknVar;
    }

    public final zzckq zzaqs() {
        Map<? extends String, ? extends String> map;
        Map<String, String> map2 = this.zzdbf;
        map = this.zzglu.zzgls;
        map2.putAll(map);
        return this;
    }

    public final zzckq zza(zzdnb zzdnbVar) {
        this.zzdbf.put("gqi", zzdnbVar.zzbvs);
        return this;
    }

    public final void zzaqt() {
        Executor executor;
        executor = this.zzglu.executor;
        executor.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzckp
            private final zzckq zzglt;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzglt = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzglt.zzaqv();
            }
        });
    }

    public final String zzaqu() {
        zzckw zzckwVar;
        zzckwVar = this.zzglu.zzglo;
        return zzckwVar.zzp(this.zzdbf);
    }

    public final /* synthetic */ void zzaqv() {
        zzckw zzckwVar;
        zzckwVar = this.zzglu.zzglo;
        zzckwVar.zzo(this.zzdbf);
    }

    public final zzckq zzc(zzdmw zzdmwVar) {
        this.zzdbf.put("aai", zzdmwVar.zzdlu);
        return this;
    }

    public final zzckq zzr(String str, String str2) {
        this.zzdbf.put(str, str2);
        return this;
    }
}

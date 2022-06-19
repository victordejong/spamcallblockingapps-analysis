package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzug;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjy.class */
public final class zzcjy implements zzeqb<Set<zzbya<zzdrp>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<String> zzgle;
    private final zzeqo<Map<zzdrk, zzcjz>> zzglf;

    public zzcjy(zzeqo<String> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<Executor> zzeqoVar3, zzeqo<Map<zzdrk, zzcjz>> zzeqoVar4) {
        this.zzgle = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzewf = zzeqoVar3;
        this.zzglf = zzeqoVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Set set;
        String str = this.zzgle.get();
        Context context = this.zzewk.get();
        Executor executor = this.zzewf.get();
        Map<zzdrk, zzcjz> map = this.zzglf.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue()) {
            zztu zztuVar = new zztu(new zztz(context));
            zztuVar.zza(new zztx(str) { // from class: com.google.android.gms.internal.ads.zzcka
                private final String zzdlh;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzdlh = str;
                }

                @Override // com.google.android.gms.internal.ads.zztx
                public final void zza(zzug.zzi.zza zzaVar) {
                    zzaVar.zzby(this.zzdlh);
                }
            });
            set = Collections.singleton(new zzbya(new zzcjx(zztuVar, map), executor));
        } else {
            set = Collections.emptySet();
        }
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}

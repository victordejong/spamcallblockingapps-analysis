package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctd.class */
public final class zzctd implements zzfrz<String> {
    public final /* synthetic */ zzctf zza;

    public zzctd(zzctf zzctfVar) {
        this.zza = zzctfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(String str) {
        zzfbb zzfbbVar;
        zzffr zzffrVar;
        zzfal zzfalVar;
        zzezz zzezzVar;
        zzezz zzezzVar2;
        Context context;
        zzfbbVar = this.zza.zzh;
        zzffrVar = this.zza.zzg;
        zzfalVar = this.zza.zze;
        zzezzVar = this.zza.zzf;
        zzezzVar2 = this.zza.zzf;
        List<String> zzb = zzffrVar.zzb(zzfalVar, zzezzVar, false, "", str, zzezzVar2.zzc);
        zzt.zzc();
        context = this.zza.zza;
        int i = 1;
        if (true == zzs.zzI(context)) {
            i = 2;
        }
        zzfbbVar.zzb(zzb, i);
    }
}

package com.google.android.gms.internal.measurement;

import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzs.class */
public final class zzs extends zzai {
    public final boolean zza;
    public final boolean zzb;
    public final /* synthetic */ zzt zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzt zztVar, boolean z, boolean z2) {
        super(AnalyticsConstants.LOG);
        this.zzc = zztVar;
        this.zza = z;
        this.zzb = z2;
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List list) {
        zzr zzrVar;
        zzr zzrVar2;
        zzr zzrVar3;
        zzh.zzi(AnalyticsConstants.LOG, 1, list);
        if (list.size() == 1) {
            zzrVar3 = this.zzc.zza;
            zzrVar3.zza(3, zzgVar.zzb((zzap) list.get(0)).zzi(), Collections.emptyList(), this.zza, this.zzb);
            return zzap.zzf;
        }
        int zzb = zzh.zzb(zzgVar.zzb((zzap) list.get(0)).zzh().doubleValue());
        int i = 3;
        if (zzb == 2) {
            i = 4;
        } else if (zzb == 3) {
            i = 1;
        } else if (zzb == 5) {
            i = 5;
        } else if (zzb == 6) {
            i = 2;
        }
        String zzi = zzgVar.zzb((zzap) list.get(1)).zzi();
        if (list.size() == 2) {
            zzrVar2 = this.zzc.zza;
            zzrVar2.zza(i, zzi, Collections.emptyList(), this.zza, this.zzb);
            return zzap.zzf;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 2; i2 < Math.min(list.size(), 5); i2++) {
            arrayList.add(zzgVar.zzb((zzap) list.get(i2)).zzi());
        }
        zzrVar = this.zzc.zza;
        zzrVar.zza(i, zzi, arrayList, this.zza, this.zzb);
        return zzap.zzf;
    }
}

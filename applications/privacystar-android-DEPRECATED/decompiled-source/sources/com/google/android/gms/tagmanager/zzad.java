package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrq;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzad.class */
public final class zzad implements zzdh<zzrq> {
    private final /* synthetic */ zzy zzbai;

    private zzad(zzy zzyVar) {
        this.zzbai = zzyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzad(zzy zzyVar, zzz zzzVar) {
        this(zzyVar);
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final /* synthetic */ void onSuccess(zzrq zzrqVar) {
        zzo zzoVar;
        zzrq zzrqVar2 = zzrqVar;
        if (zzrqVar2.zzbpt != null) {
            zzoVar = zzrqVar2.zzbpt;
        } else {
            zzl zzlVar = zzrqVar2.zzqg;
            zzoVar = new zzo();
            zzoVar.zzqg = zzlVar;
            zzoVar.zzqf = null;
            zzoVar.zzqh = zzlVar.version;
        }
        this.zzbai.zza(zzoVar, zzrqVar2.zzbps, true);
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zzno() {
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zzt(int i) {
        boolean z;
        z = this.zzbai.zzbad;
        if (!z) {
            this.zzbai.zzap(0L);
        }
    }
}

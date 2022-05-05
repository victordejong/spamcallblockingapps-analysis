package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzec.class */
public final class zzec implements zzfw {
    private final /* synthetic */ zzeb zzbdl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzec(zzeb zzebVar) {
        this.zzbdl = zzebVar;
    }

    @Override // com.google.android.gms.tagmanager.zzfw
    public final void zza(zzbw zzbwVar) {
        this.zzbdl.zze(zzbwVar.zzom());
    }

    @Override // com.google.android.gms.tagmanager.zzfw
    public final void zzb(zzbw zzbwVar) {
        this.zzbdl.zze(zzbwVar.zzom());
        long zzom = zzbwVar.zzom();
        StringBuilder sb = new StringBuilder(57);
        sb.append("Permanent failure dispatching hitId: ");
        sb.append(zzom);
        zzdi.m328v(sb.toString());
    }

    @Override // com.google.android.gms.tagmanager.zzfw
    public final void zzc(zzbw zzbwVar) {
        Clock clock;
        Clock clock2;
        long zzon = zzbwVar.zzon();
        if (zzon == 0) {
            zzeb zzebVar = this.zzbdl;
            long zzom = zzbwVar.zzom();
            clock2 = this.zzbdl.zzrz;
            zzebVar.zze(zzom, clock2.currentTimeMillis());
            return;
        }
        clock = this.zzbdl.zzrz;
        if (zzon + 14400000 < clock.currentTimeMillis()) {
            this.zzbdl.zze(zzbwVar.zzom());
            long zzom2 = zzbwVar.zzom();
            StringBuilder sb = new StringBuilder(47);
            sb.append("Giving up on failed hitId: ");
            sb.append(zzom2);
            zzdi.m328v(sb.toString());
        }
    }
}

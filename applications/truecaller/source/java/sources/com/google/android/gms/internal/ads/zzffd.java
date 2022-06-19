package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffd.class */
public final class zzffd implements zzgla<zzffc> {
    private final zzgln<zzffi> zza;
    private final zzgln<zzffp> zzb;
    private final zzgln<ScheduledExecutorService> zzc;

    public zzffd(zzgln<zzffi> zzglnVar, zzgln<zzffp> zzglnVar2, zzgln<ScheduledExecutorService> zzglnVar3) {
        this.zza = zzglnVar;
        this.zzb = zzglnVar2;
        this.zzc = zzglnVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgku zzc = zzgkz.zzc(this.zza);
        zzgku zzc2 = zzgkz.zzc(this.zzb);
        zzfff zzfffVar = ((Boolean) zzbet.zzc().zzc(zzbjl.zzgj)).booleanValue() ? new zzfff((zzffc) zzc.zzb(), this.zzc.zzb()) : (zzffc) zzc2.zzb();
        zzgli.zzb(zzfffVar);
        return zzfffVar;
    }
}

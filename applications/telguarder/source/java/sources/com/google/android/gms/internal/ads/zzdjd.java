package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjd.class */
final class zzdjd implements zzcze<zzblq> {
    private final /* synthetic */ zzdiz zzhgf;

    public zzdjd(zzdiz zzdizVar) {
        this.zzhgf = zzdizVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final /* synthetic */ void onSuccess(zzblq zzblqVar) {
        zzdil zzdilVar;
        zzdil zzdilVar2;
        zzblq zzblqVar2 = zzblqVar;
        synchronized (this.zzhgf) {
            if (this.zzhgf.zzhgd != null) {
                this.zzhgf.zzhgd.destroy();
            }
            this.zzhgf.zzhgd = zzblqVar2;
            this.zzhgf.zza(zzblqVar2);
            zzdilVar = this.zzhgf.zzhfd;
            zzdiz zzdizVar = this.zzhgf;
            zzdilVar2 = zzdizVar.zzhfd;
            zzdilVar.zzb(new zzblp(zzblqVar2, zzdizVar, zzdilVar2));
            zzblqVar2.zzakb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcze
    public final void zzasi() {
        synchronized (this.zzhgf) {
            this.zzhgf.zzhgd = null;
        }
    }
}

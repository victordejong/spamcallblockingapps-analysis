package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpv.class */
public final class zzdpv implements zzdzl<zzdpm<AdT>> {
    private final /* synthetic */ zzdpu zzhox;

    public zzdpv(zzdpu zzdpuVar) {
        this.zzhox = zzdpuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(Object obj) {
        zzdpx zzdpxVar;
        int i;
        int i2;
        zzeae zzeaeVar;
        zzdqa zzdqaVar;
        zzdpc zzdpcVar;
        zzdqa zzdqaVar2;
        zzdpm<?> zzdpmVar = (zzdpm) obj;
        synchronized (this.zzhox) {
            zzdpxVar = this.zzhox.zzhou;
            zzdpxVar.zza(zzdpmVar);
            i = this.zzhox.zzhot;
            if (i != zzdpz.zzhpa) {
                zzdpcVar = this.zzhox.zzhhi;
                zzdqaVar2 = this.zzhox.zzhoq;
                zzdpcVar.zza(zzdqaVar2.zzaup(), zzdpmVar);
            }
            i2 = this.zzhox.zzhot;
            if (i2 == zzdpz.zzhoz) {
                zzdpu zzdpuVar = this.zzhox;
                zzdqaVar = zzdpuVar.zzhoq;
                zzdpuVar.zzd(zzdqaVar);
            }
            this.zzhox.zzhot = zzdpz.zzhoz;
            zzeaeVar = this.zzhox.zzhor;
            zzeaeVar.set(zzdpmVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        zzdpx zzdpxVar;
        zzeae zzeaeVar;
        synchronized (this.zzhox) {
            zzdpxVar = this.zzhox.zzhou;
            zzdpxVar.zzb(th);
            zzeaeVar = this.zzhox.zzhor;
            zzeaeVar.setException(th);
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqu.class */
public final class zzbqu {
    private final String packageName;
    private final zzazn zzboz;
    private final PackageInfo zzdue;
    private final List<String> zzduo;
    private final String zzdxj;
    private final zzdrj zzfwz;
    private final ApplicationInfo zzfyn;
    private final zzepv<zzdzw<String>> zzfyo;
    private final zzdfl<Bundle> zzfyp;

    public zzbqu(zzdrj zzdrjVar, zzazn zzaznVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, zzepv<zzdzw<String>> zzepvVar, zzf zzfVar, String str2, zzdfl<Bundle> zzdflVar) {
        this.zzfwz = zzdrjVar;
        this.zzboz = zzaznVar;
        this.zzfyn = applicationInfo;
        this.packageName = str;
        this.zzduo = list;
        this.zzdue = packageInfo;
        this.zzfyo = zzepvVar;
        this.zzdxj = str2;
        this.zzfyp = zzdflVar;
    }

    public final zzdzw<Bundle> zzali() {
        return this.zzfwz.zzt(zzdrk.SIGNALS).zze(this.zzfyp.zzs(new Bundle())).zzaxj();
    }

    public final zzdzw<zzatq> zzalj() {
        zzdzw<Bundle> zzali = zzali();
        return this.zzfwz.zza((zzdrj) zzdrk.REQUEST_PARCEL, zzali, this.zzfyo.get()).zzb(new Callable(this, zzali) { // from class: com.google.android.gms.internal.ads.zzbqt
            private final zzbqu zzfyl;
            private final zzdzw zzfym;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfyl = this;
                this.zzfym = zzali;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzfyl.zzc(this.zzfym);
            }
        }).zzaxj();
    }

    public final /* synthetic */ zzatq zzc(zzdzw zzdzwVar) throws Exception {
        return new zzatq((Bundle) zzdzwVar.get(), this.zzboz, this.zzfyn, this.packageName, this.zzduo, this.zzdue, this.zzfyo.get().get(), this.zzdxj, null, null);
    }
}

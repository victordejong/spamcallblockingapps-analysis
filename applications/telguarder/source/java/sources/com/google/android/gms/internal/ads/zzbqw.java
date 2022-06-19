package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqw.class */
public final class zzbqw implements zzeqb<zzbqu> {
    private final zzeqo<zzf> zzfag;
    private final zzeqo<zzdfl<Bundle>> zzfcm;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<ApplicationInfo> zzfyq;
    private final zzeqo<String> zzfyr;
    private final zzeqo<List<String>> zzfys;
    private final zzeqo<PackageInfo> zzfyt;
    private final zzeqo<zzdzw<String>> zzfyu;
    private final zzeqo<String> zzfyv;

    private zzbqw(zzeqo<zzdrj> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<ApplicationInfo> zzeqoVar3, zzeqo<String> zzeqoVar4, zzeqo<List<String>> zzeqoVar5, zzeqo<PackageInfo> zzeqoVar6, zzeqo<zzdzw<String>> zzeqoVar7, zzeqo<zzf> zzeqoVar8, zzeqo<String> zzeqoVar9, zzeqo<zzdfl<Bundle>> zzeqoVar10) {
        this.zzfvi = zzeqoVar;
        this.zzftb = zzeqoVar2;
        this.zzfyq = zzeqoVar3;
        this.zzfyr = zzeqoVar4;
        this.zzfys = zzeqoVar5;
        this.zzfyt = zzeqoVar6;
        this.zzfyu = zzeqoVar7;
        this.zzfag = zzeqoVar8;
        this.zzfyv = zzeqoVar9;
        this.zzfcm = zzeqoVar10;
    }

    public static zzbqw zza(zzeqo<zzdrj> zzeqoVar, zzeqo<zzazn> zzeqoVar2, zzeqo<ApplicationInfo> zzeqoVar3, zzeqo<String> zzeqoVar4, zzeqo<List<String>> zzeqoVar5, zzeqo<PackageInfo> zzeqoVar6, zzeqo<zzdzw<String>> zzeqoVar7, zzeqo<zzf> zzeqoVar8, zzeqo<String> zzeqoVar9, zzeqo<zzdfl<Bundle>> zzeqoVar10) {
        return new zzbqw(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzeqoVar7, zzeqoVar8, zzeqoVar9, zzeqoVar10);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbqu(this.zzfvi.get(), this.zzftb.get(), this.zzfyq.get(), this.zzfyr.get(), this.zzfys.get(), this.zzfyt.get(), zzeqc.zzav(this.zzfyu), this.zzfag.get(), this.zzfyv.get(), this.zzfcm.get());
    }
}

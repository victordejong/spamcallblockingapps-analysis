package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdeq.class */
public final class zzdeq implements zzdfj<Bundle> {
    private final String zzeba;
    private final String zzhcu;
    private final String zzhcv;
    private final String zzhcw;
    private final Long zzhcx;

    public zzdeq(String str, String str2, String str3, String str4, Long l) {
        this.zzeba = str;
        this.zzhcu = str2;
        this.zzhcv = str3;
        this.zzhcw = str4;
        this.zzhcx = l;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzdnz.zza(bundle2, "gmp_app_id", this.zzeba);
        zzdnz.zza(bundle2, "fbs_aiid", this.zzhcu);
        zzdnz.zza(bundle2, "fbs_aeid", this.zzhcv);
        zzdnz.zza(bundle2, "apm_id_origin", this.zzhcw);
        Long l = this.zzhcx;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}

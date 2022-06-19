package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbc.class */
public final class zzdbc {
    public final List<? extends zzfxa<? extends zzdav>> zza;

    public zzdbc(zzdav zzdavVar) {
        this.zza = Collections.singletonList(zzfwq.zzi(zzdavVar));
    }

    public zzdbc(List<? extends zzfxa<? extends zzdav>> list) {
        this.zza = list;
    }

    public static zzeht<zzdbc> zza(zzeht<? extends zzdav> zzehtVar) {
        return new zzehu(zzehtVar, zzdba.zza);
    }
}

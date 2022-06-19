package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcxn.class */
public final class zzcxn {
    public final List<? extends zzfsm<? extends zzcxg>> zza;

    public zzcxn(zzcxg zzcxgVar) {
        this.zza = Collections.singletonList(zzfsd.zza(zzcxgVar));
    }

    public zzcxn(List<? extends zzfsm<? extends zzcxg>> list) {
        this.zza = list;
    }

    public static zzeec<zzcxn> zza(zzegq<? extends zzcxg> zzegqVar) {
        return new zzeed(zzegqVar, zzcxl.zza);
    }

    public static zzeec<zzcxn> zzb(zzeec<? extends zzcxg> zzeecVar) {
        return new zzeed(zzeecVar, zzcxm.zza);
    }
}

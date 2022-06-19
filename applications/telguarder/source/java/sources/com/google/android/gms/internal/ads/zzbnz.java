package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnz.class */
public final class zzbnz {
    public final List<? extends zzdzw<? extends zzbnt>> zzfwk;

    public zzbnz(zzbnt zzbntVar) {
        this.zzfwk = Collections.singletonList(zzdzk.zzag(zzbntVar));
    }

    public zzbnz(List<? extends zzdzw<? extends zzbnt>> list) {
        this.zzfwk = list;
    }

    public static zzcrj<zzbnz> zza(zzcrj<? extends zzbnt> zzcrjVar) {
        return new zzcrm(zzcrjVar, zzbob.zzeaj);
    }

    public static zzcrj<zzbnz> zza(zzcty<? extends zzbnt> zzctyVar) {
        return new zzcrm(zzctyVar, zzboc.zzeaj);
    }
}

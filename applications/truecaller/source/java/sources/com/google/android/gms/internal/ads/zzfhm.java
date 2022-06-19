package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhm.class */
public final class zzfhm {
    private final zzfgu zza;
    private final ArrayList<String> zzb;

    public zzfhm(zzfgu zzfguVar, String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.zzb = arrayList;
        this.zza = zzfguVar;
        arrayList.add(str);
    }

    public final void zza(String str) {
        this.zzb.add(str);
    }

    public final zzfgu zzb() {
        return this.zza;
    }

    public final ArrayList<String> zzc() {
        return this.zzb;
    }
}

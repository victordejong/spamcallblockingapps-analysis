package com.google.android.gms.internal.ads;

import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflk.class */
public final class zzflk {
    private final zzfks zza;
    private final ArrayList<String> zzb;

    public zzflk(zzfks zzfksVar, String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.zzb = arrayList;
        this.zza = zzfksVar;
        arrayList.add(str);
    }

    public final zzfks zza() {
        return this.zza;
    }

    public final ArrayList<String> zzb() {
        return this.zzb;
    }

    public final void zzc(String str) {
        this.zzb.add(str);
    }
}

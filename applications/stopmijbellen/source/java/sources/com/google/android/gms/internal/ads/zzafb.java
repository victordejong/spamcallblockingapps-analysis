package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafb.class */
public final class zzafb {
    public final int zza;
    public final String zzb;
    public final List<zzafa> zzc;
    public final byte[] zzd;

    public zzafb(int i, String str, List<zzafa> list, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzd = bArr;
    }
}

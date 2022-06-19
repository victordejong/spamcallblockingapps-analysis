package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzul.class */
public final class zzul {
    public final int zza;
    public final String zzb;
    public final List<zzuk> zzc;
    public final byte[] zzd;

    public zzul(int i, String str, List<zzuk> list, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.zzd = bArr;
    }
}

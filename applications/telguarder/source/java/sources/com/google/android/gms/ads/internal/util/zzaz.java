package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzai;
import com.google.android.gms.internal.ads.zzaj;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzbk;
import com.google.android.gms.internal.ads.zzl;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaz.class */
public final class zzaz extends zzbk {
    private final /* synthetic */ byte[] zzege;
    private final /* synthetic */ Map zzegf;
    private final /* synthetic */ zzaze zzegg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(zzay zzayVar, int i, String str, zzai zzaiVar, zzaj zzajVar, byte[] bArr, Map map, zzaze zzazeVar) {
        super(i, str, zzaiVar, zzajVar);
        this.zzege = bArr;
        this.zzegf = map;
        this.zzegg = zzazeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final Map<String, String> getHeaders() throws zzl {
        Map<String, String> map = this.zzegf;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = super.getHeaders();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzbk, com.google.android.gms.internal.ads.zzab
    public final /* synthetic */ void zza(String str) {
        zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final byte[] zzg() throws zzl {
        byte[] bArr = this.zzege;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = super.zzg();
        }
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzbk
    public final void zzi(String str) {
        this.zzegg.zzes(str);
        super.zza(str);
    }
}

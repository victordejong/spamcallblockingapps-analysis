package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzcgs;
import com.google.android.gms.internal.ads.zzvk;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzwh;
import com.google.android.gms.internal.ads.zzxh;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbl.class */
public final class zzbl extends zzxh {
    public final /* synthetic */ byte[] zza;
    public final /* synthetic */ Map zzb;
    public final /* synthetic */ zzcgs zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbl(zzbr zzbrVar, int i, String str, zzwh zzwhVar, zzwg zzwgVar, byte[] bArr, Map map, zzcgs zzcgsVar) {
        super(i, str, zzwhVar, zzwgVar);
        this.zza = bArr;
        this.zzb = map;
        this.zzc = zzcgsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final Map<String, String> zzn() throws zzvk {
        Map<String, String> map = this.zzb;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = Collections.emptyMap();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final byte[] zzo() throws zzvk {
        byte[] bArr = this.zza;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = null;
        }
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzxh
    /* renamed from: zzz */
    public final void zzt(String str) {
        this.zzc.zze(str);
        super.zzt(str);
    }
}

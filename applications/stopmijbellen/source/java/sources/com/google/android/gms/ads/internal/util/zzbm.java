package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzaga;
import com.google.android.gms.internal.ads.zzagw;
import com.google.android.gms.internal.ads.zzagx;
import com.google.android.gms.internal.ads.zzahx;
import com.google.android.gms.internal.ads.zzciy;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbm.class */
public final class zzbm extends zzahx {
    public final /* synthetic */ byte[] zza;
    public final /* synthetic */ Map zzb;
    public final /* synthetic */ zzciy zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbm(zzbs zzbsVar, int i, String str, zzagx zzagxVar, zzagw zzagwVar, byte[] bArr, Map map, zzciy zzciyVar) {
        super(i, str, zzagxVar, zzagwVar);
        this.zza = bArr;
        this.zzb = map;
        this.zzc = zzciyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzags
    public final Map<String, String> zzl() throws zzaga {
        Map<String, String> map = this.zzb;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = Collections.emptyMap();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.zzags
    public final byte[] zzx() throws zzaga {
        byte[] bArr = this.zza;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = null;
        }
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzahx
    /* renamed from: zzz */
    public final void zzo(String str) {
        this.zzc.zzg(str);
        super.zzo(str);
    }
}

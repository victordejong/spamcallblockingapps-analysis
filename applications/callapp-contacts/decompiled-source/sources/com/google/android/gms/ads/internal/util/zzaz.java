package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.aik;
import com.google.android.gms.internal.ads.hb;
import com.google.android.gms.internal.ads.ib;
import com.google.android.gms.internal.ads.yu;
import com.google.android.gms.internal.ads.zzl;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaz.class */
public final class zzaz extends aik {
    private final /* synthetic */ byte[] zzeih;
    private final /* synthetic */ Map zzeii;
    private final /* synthetic */ yu zzeij;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(zzay zzayVar, int i, String str, hb hbVar, ib ibVar, byte[] bArr, Map map, yu yuVar) {
        super(i, str, hbVar, ibVar);
        this.zzeih = bArr;
        this.zzeii = map;
        this.zzeij = yuVar;
    }

    @Override // com.google.android.gms.internal.ads.z
    public final Map<String, String> getHeaders() throws zzl {
        Map<String, String> map = this.zzeii;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = super.getHeaders();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.aik, com.google.android.gms.internal.ads.z
    public final /* synthetic */ void zza(String str) {
        zza(str);
    }

    @Override // com.google.android.gms.internal.ads.z
    public final byte[] zzg() throws zzl {
        byte[] bArr = this.zzeih;
        byte[] bArr2 = bArr;
        if (bArr == null) {
            bArr2 = super.zzg();
        }
        return bArr2;
    }

    @Override // com.google.android.gms.internal.ads.aik
    public final void zzi(String str) {
        this.zzeij.a(str);
        super.zza(str);
    }
}

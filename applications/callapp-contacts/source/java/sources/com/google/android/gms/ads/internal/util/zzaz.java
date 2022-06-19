package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.AbstractC12600hb;
import com.google.android.gms.internal.ads.AbstractC12627ib;
import com.google.android.gms.internal.ads.C13081yu;
import com.google.android.gms.internal.ads.aik;
import com.google.android.gms.internal.ads.zzl;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaz.class */
public final class zzaz extends aik {
    private final /* synthetic */ byte[] zzeih;
    private final /* synthetic */ Map zzeii;
    private final /* synthetic */ C13081yu zzeij;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaz(zzay zzayVar, int i, String str, AbstractC12600hb abstractC12600hb, AbstractC12627ib abstractC12627ib, byte[] bArr, Map map, C13081yu c13081yu) {
        super(i, str, abstractC12600hb, abstractC12627ib);
        this.zzeih = bArr;
        this.zzeii = map;
        this.zzeij = c13081yu;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13087z
    public final Map<String, String> getHeaders() throws zzl {
        Map<String, String> map = this.zzeii;
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = super.getHeaders();
        }
        return map2;
    }

    @Override // com.google.android.gms.internal.ads.aik, com.google.android.gms.internal.ads.AbstractC13087z
    public final /* synthetic */ void zza(String str) {
        zza(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13087z
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
        this.zzeij.m13922a(str);
        super.zza(str);
    }
}

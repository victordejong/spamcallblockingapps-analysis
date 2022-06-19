package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzemk.class */
final class zzemk implements zzemh {
    @Override // com.google.android.gms.internal.ads.zzemh
    public final Map<?, ?> zzan(Object obj) {
        return (zzemi) obj;
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Map<?, ?> zzao(Object obj) {
        return (zzemi) obj;
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final boolean zzap(Object obj) {
        return !((zzemi) obj).isMutable();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Object zzaq(Object obj) {
        ((zzemi) obj).zzbgf();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Object zzar(Object obj) {
        return zzemi.zzbjs().zzbjt();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final zzemf<?, ?> zzas(Object obj) {
        zzemg zzemgVar = (zzemg) obj;
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final int zzb(int i, Object obj, Object obj2) {
        zzemi zzemiVar = (zzemi) obj;
        zzemg zzemgVar = (zzemg) obj2;
        if (zzemiVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzemiVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.zzemh
    public final Object zzf(Object obj, Object obj2) {
        zzemi zzemiVar = (zzemi) obj;
        zzemi zzemiVar2 = (zzemi) obj2;
        zzemi zzemiVar3 = zzemiVar;
        if (!zzemiVar2.isEmpty()) {
            zzemiVar3 = zzemiVar;
            if (!zzemiVar.isMutable()) {
                zzemiVar3 = zzemiVar.zzbjt();
            }
            zzemiVar3.zza(zzemiVar2);
        }
        return zzemiVar3;
    }
}

package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghd.class */
public final class zzghd {
    public static final int zza(int i, Object obj, Object obj2) {
        zzghc zzghcVar = (zzghc) obj;
        zzghb zzghbVar = (zzghb) obj2;
        if (zzghcVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzghcVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    public static final boolean zzb(Object obj) {
        return !((zzghc) obj).zze();
    }

    public static final Object zzc(Object obj, Object obj2) {
        zzghc zzghcVar = (zzghc) obj;
        zzghc zzghcVar2 = (zzghc) obj2;
        zzghc zzghcVar3 = zzghcVar;
        if (!zzghcVar2.isEmpty()) {
            zzghcVar3 = zzghcVar;
            if (!zzghcVar.zze()) {
                zzghcVar3 = zzghcVar.zzc();
            }
            zzghcVar3.zzb(zzghcVar2);
        }
        return zzghcVar3;
    }
}

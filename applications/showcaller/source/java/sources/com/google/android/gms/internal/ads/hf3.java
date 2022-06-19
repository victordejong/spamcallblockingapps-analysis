package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hf3.class */
final class hf3 {
    /* renamed from: a */
    public static final int m14672a(int i, Object obj, Object obj2) {
        zzghc zzghcVar = (zzghc) obj;
        gf3 gf3Var = (gf3) obj2;
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

    /* renamed from: b */
    public static final boolean m14671b(Object obj) {
        return !((zzghc) obj).zze();
    }

    /* renamed from: c */
    public static final Object m14670c(Object obj, Object obj2) {
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

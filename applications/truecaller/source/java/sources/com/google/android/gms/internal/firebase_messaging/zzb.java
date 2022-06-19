package com.google.android.gms.internal.firebase_messaging;

import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import e.m.d.y.e1.b;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzb.class */
public final class zzb implements e<b> {
    public static final zzb zza = new zzb();
    private static final d zzb;

    static {
        zzo zzoVar = new zzo();
        zzoVar.zza(1);
        zzs zzb2 = zzoVar.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put(zzb2.annotationType(), zzb2);
        zzb = new d("messagingClientEvent", hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
    }

    private zzb() {
    }

    public final void encode(Object obj, Object obj2) throws IOException {
        ((f) obj2).add(zzb, ((b) obj).a);
    }
}

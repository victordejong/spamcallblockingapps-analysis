package com.google.android.gms.internal.icing;

import java.util.Collections;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdo.class */
public class zzdo {

    /* renamed from: a */
    private static volatile zzdo f7982a;

    /* renamed from: b */
    private static final zzdo f7983b = new zzdo(true);

    zzdo() {
        new HashMap();
    }

    private zzdo(boolean z) {
        Collections.emptyMap();
    }

    /* renamed from: a */
    public static zzdo m13866a() {
        zzdo zzdoVar = f7982a;
        zzdo zzdoVar2 = zzdoVar;
        if (zzdoVar == null) {
            synchronized (zzdo.class) {
                try {
                    zzdo zzdoVar3 = f7982a;
                    zzdoVar2 = zzdoVar3;
                    if (zzdoVar3 == null) {
                        zzdoVar2 = f7983b;
                        f7982a = zzdoVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzdoVar2;
    }
}

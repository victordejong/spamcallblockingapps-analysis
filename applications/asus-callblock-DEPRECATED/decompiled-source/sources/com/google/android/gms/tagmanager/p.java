package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.j;
import com.google.android.gms.internal.k;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/p.class */
public final class p {
    private static void a(c cVar, j.d dVar) {
        j.c[] cVarArr;
        for (j.c cVar2 : dVar.c) {
            if (cVar2.f4194a == null) {
                an.b("GaExperimentRandom: No key");
            } else {
                Object b2 = cVar.b(cVar2.f4194a);
                Long valueOf = !(b2 instanceof Number) ? null : Long.valueOf(((Number) b2).longValue());
                long j = cVar2.f4195b;
                long j2 = cVar2.c;
                if (!cVar2.d || valueOf == null || valueOf.longValue() < j || valueOf.longValue() > j2) {
                    if (j <= j2) {
                        b2 = Long.valueOf(Math.round((Math.random() * (j2 - j)) + j));
                    } else {
                        an.b("GaExperimentRandom: random range invalid");
                    }
                }
                cVar.a(cVar2.f4194a);
                Map<String, Object> a2 = c.a(cVar2.f4194a, b2);
                if (cVar2.e > 0) {
                    if (!a2.containsKey("gtm")) {
                        a2.put("gtm", c.a("lifetime", Long.valueOf(cVar2.e)));
                    } else {
                        Object obj = a2.get("gtm");
                        if (obj instanceof Map) {
                            ((Map) obj).put("lifetime", Long.valueOf(cVar2.e));
                        } else {
                            an.b("GaExperimentRandom: gtm not a map");
                        }
                    }
                }
                cVar.a(a2);
            }
        }
    }

    public static void a(c cVar, j.i iVar) {
        Map<String, Object> map;
        if (iVar.c == null) {
            an.b("supplemental missing experimentSupplemental");
            return;
        }
        for (k.a aVar : iVar.c.f4197b) {
            cVar.a(cn.a(aVar));
        }
        for (k.a aVar2 : iVar.c.f4196a) {
            Object e = cn.e(aVar2);
            if (!(e instanceof Map)) {
                String valueOf = String.valueOf(e);
                an.b(new StringBuilder(String.valueOf(valueOf).length() + 36).append("value: ").append(valueOf).append(" is not a map value, ignored.").toString());
                map = null;
            } else {
                map = (Map) e;
            }
            if (map != null) {
                cVar.a(map);
            }
        }
        a(cVar, iVar.c);
    }
}

package com.google.android.exoplayer2.text.g;

import java.util.ArrayDeque;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/text/g/f.class */
final class f {
    private f() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d a(d dVar, Map<String, g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g a2 = a(dVar2.f, dVar2.g, map);
            if (a2 != null && a2.m == 3) {
                return dVar2;
            }
            for (int a3 = dVar2.a() - 1; a3 >= 0; a3--) {
                arrayDeque.push(dVar2.a(a3));
            }
        }
        return null;
    }

    public static g a(g gVar, String[] strArr, Map<String, g> map) {
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                for (String str : strArr) {
                    gVar2.a(map.get(str));
                }
                return gVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return gVar.a(map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                for (String str2 : strArr) {
                    gVar.a(map.get(str2));
                }
            }
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d b(d dVar, Map<String, g> map) {
        while (dVar != null) {
            g a2 = a(dVar.f, dVar.g, map);
            if (a2 != null && a2.m == 1) {
                return dVar;
            }
            dVar = dVar.j;
        }
        return null;
    }
}

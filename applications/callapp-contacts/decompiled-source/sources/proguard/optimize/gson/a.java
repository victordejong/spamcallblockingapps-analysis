package proguard.optimize.gson;

import com.google.gson.f;
import com.google.gson.internal.bind.f;
import com.google.gson.j;
import java.lang.reflect.Type;
/* loaded from: classes5-dex2jar.jar:proguard/optimize/gson/a.class */
public final class a {
    public static j a(f fVar, com.google.gson.a.a aVar, Object obj) {
        Type type = aVar.getType();
        Type a2 = a(type, obj);
        j a3 = fVar.a((com.google.gson.a.a) com.google.gson.a.a.get(a2));
        if (type != a2 && !a(a3)) {
            j a4 = fVar.a(aVar);
            if (a(a4)) {
                return a4;
            }
        }
        return a3;
    }

    public static j a(f fVar, Class cls, Object obj) {
        Type a2 = a(cls, obj);
        j a3 = fVar.a((com.google.gson.a.a) com.google.gson.a.a.get(a2));
        if (cls != a2 && !a(a3)) {
            j a4 = fVar.a(cls);
            if (a(a4)) {
                return a4;
            }
        }
        return a3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r3 instanceof java.lang.Class) != false) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Type a(java.lang.reflect.Type r3, java.lang.Object r4) {
        /*
            r0 = r3
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0021
            r0 = r3
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L_0x001c
            r0 = r3
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L_0x001c
            r0 = r3
            r5 = r0
            r0 = r3
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0021
        L_0x001c:
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r5 = r0
        L_0x0021:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: proguard.optimize.gson.a.a(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    private static boolean a(j jVar) {
        return !(jVar instanceof b) && !(jVar instanceof f.a);
    }
}

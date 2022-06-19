package proguard.optimize.gson;

import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.internal.bind.C16001f;
import com.google.gson.p399a.C15950a;
import java.lang.reflect.Type;
/* renamed from: proguard.optimize.gson.a */
/* loaded from: classes5-dex2jar.jar:proguard/optimize/gson/a.class */
public final class C21025a {
    /* renamed from: a */
    public static AbstractC16088j m118a(C15965f c15965f, C15950a c15950a, Object obj) {
        Type type = c15950a.getType();
        Type m115a = m115a(type, obj);
        AbstractC16088j m7977a = c15965f.m7977a((C15950a) C15950a.get(m115a));
        if (type != m115a && !m116a(m7977a)) {
            AbstractC16088j m7977a2 = c15965f.m7977a(c15950a);
            if (m116a(m7977a2)) {
                return m7977a2;
            }
        }
        return m7977a;
    }

    /* renamed from: a */
    public static AbstractC16088j m117a(C15965f c15965f, Class cls, Object obj) {
        Type m115a = m115a(cls, obj);
        AbstractC16088j m7977a = c15965f.m7977a((C15950a) C15950a.get(m115a));
        if (cls != m115a && !m116a(m7977a)) {
            AbstractC16088j m7971a = c15965f.m7971a(cls);
            if (m116a(m7971a)) {
                return m7971a;
            }
        }
        return m7977a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r3 instanceof java.lang.Class) != false) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Type m115a(java.lang.reflect.Type r3, java.lang.Object r4) {
        /*
            r0 = r3
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L21
            r0 = r3
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L1c
            r0 = r3
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L1c
            r0 = r3
            r5 = r0
            r0 = r3
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L21
        L1c:
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r5 = r0
        L21:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: proguard.optimize.gson.C21025a.m115a(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    /* renamed from: a */
    private static boolean m116a(AbstractC16088j abstractC16088j) {
        return !(abstractC16088j instanceof AbstractC21026b) && !(abstractC16088j instanceof C16001f.C16003a);
    }
}

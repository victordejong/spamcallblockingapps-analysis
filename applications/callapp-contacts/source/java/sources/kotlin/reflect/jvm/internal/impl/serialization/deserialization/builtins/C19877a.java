package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.serialization.C19865a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a.class */
public final class C19877a extends C19865a {

    /* renamed from: m */
    public static final C19877a f66095m = new C19877a();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C19877a() {
        /*
            r15 = this;
            kotlin.reflect.jvm.internal.impl.protobuf.f r0 = kotlin.reflect.jvm.internal.impl.protobuf.C19678f.m1734a()
            r16 = r0
            r0 = r16
            kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.m3617a(r0)
            kotlin.v r0 = kotlin.C20128v.f66529a
            r17 = r0
            r0 = r16
            java.lang.String r1 = "newInstance().apply(BuiltInsProtoBuf::registerAllExtensions)"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$k, java.lang.Integer> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64248a
            r17 = r0
            r0 = r17
            java.lang.String r1 = "packageFqName"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$c, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64250c
            r18 = r0
            r0 = r18
            java.lang.String r1 = "constructorAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$b, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64249b
            r19 = r0
            r0 = r19
            java.lang.String r1 = "classAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$h, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64251d
            r20 = r0
            r0 = r20
            java.lang.String r1 = "functionAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64252e
            r21 = r0
            r0 = r21
            java.lang.String r1 = "propertyAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64253f
            r22 = r0
            r0 = r22
            java.lang.String r1 = "propertyGetterAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64254g
            r23 = r0
            r0 = r23
            java.lang.String r1 = "propertySetterAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$f, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64256i
            r24 = r0
            r0 = r24
            java.lang.String r1 = "enumEntryAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, kotlin.reflect.jvm.internal.impl.b.a$a$a$b> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64255h
            r25 = r0
            r0 = r25
            java.lang.String r1 = "compileTimeValue"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$t, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64257j
            r26 = r0
            r0 = r26
            java.lang.String r1 = "parameterAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$p, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64258k
            r27 = r0
            r0 = r27
            java.lang.String r1 = "typeAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$r, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.p539b.p540a.C18804b.f64259l
            r28 = r0
            r0 = r28
            java.lang.String r1 = "typeParameterAnnotation"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r15
            r1 = r16
            r2 = r17
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            r7 = r22
            r8 = r23
            r9 = r24
            r10 = r25
            r11 = r26
            r12 = r27
            r13 = r28
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.C19877a.<init>():void");
    }

    /* renamed from: b */
    private static String m1368b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return C18524p.m3847a(m1367c(fqName), (Object) ".kotlin_builtins");
    }

    /* renamed from: c */
    private static String m1367c(C18961b c18961b) {
        if (c18961b.m2741c()) {
            return "default-package";
        }
        String m2721a = c18961b.m2738e().m2721a();
        C18524p.m3843b(m2721a, "fqName.shortName().asString()");
        return m2721a;
    }

    /* renamed from: a */
    public final String m1369a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        StringBuilder sb = new StringBuilder();
        String m2746a = fqName.m2746a();
        C18524p.m3843b(m2746a, "fqName.asString()");
        sb.append(C18425p.m3964a(m2746a, '.', '/', false));
        sb.append('/');
        sb.append(m1368b(fqName));
        return sb.toString();
    }
}

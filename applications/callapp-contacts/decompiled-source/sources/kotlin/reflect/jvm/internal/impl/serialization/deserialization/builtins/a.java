package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a.class */
public final class a extends kotlin.reflect.jvm.internal.impl.serialization.a {
    public static final a m = new a();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private a() {
        /*
            r15 = this;
            kotlin.reflect.jvm.internal.impl.protobuf.f r0 = kotlin.reflect.jvm.internal.impl.protobuf.f.a()
            r16 = r0
            r0 = r16
            kotlin.reflect.jvm.internal.impl.b.a.b.a(r0)
            kotlin.v r0 = kotlin.v.f38654a
            r17 = r0
            r0 = r16
            java.lang.String r1 = "newInstance().apply(BuiltInsProtoBuf::registerAllExtensions)"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$k, java.lang.Integer> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.f36993a
            r17 = r0
            r0 = r17
            java.lang.String r1 = "packageFqName"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$c, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.f36995c
            r18 = r0
            r0 = r18
            java.lang.String r1 = "constructorAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$b, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.f36994b
            r19 = r0
            r0 = r19
            java.lang.String r1 = "classAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$h, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.f36996d
            r20 = r0
            r0 = r20
            java.lang.String r1 = "functionAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.e
            r21 = r0
            r0 = r21
            java.lang.String r1 = "propertyAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.f
            r22 = r0
            r0 = r22
            java.lang.String r1 = "propertyGetterAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.g
            r23 = r0
            r0 = r23
            java.lang.String r1 = "propertySetterAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$f, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.i
            r24 = r0
            r0 = r24
            java.lang.String r1 = "enumEntryAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$m, kotlin.reflect.jvm.internal.impl.b.a$a$a$b> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.h
            r25 = r0
            r0 = r25
            java.lang.String r1 = "compileTimeValue"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$t, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.j
            r26 = r0
            r0 = r26
            java.lang.String r1 = "parameterAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$p, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.k
            r27 = r0
            r0 = r27
            java.lang.String r1 = "typeAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
            kotlin.reflect.jvm.internal.impl.protobuf.h$e<kotlin.reflect.jvm.internal.impl.b.a$r, java.util.List<kotlin.reflect.jvm.internal.impl.b.a$a>> r0 = kotlin.reflect.jvm.internal.impl.b.a.b.l
            r28 = r0
            r0 = r28
            java.lang.String r1 = "typeParameterAnnotation"
            kotlin.jvm.internal.p.b(r0, r1)
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.<init>():void");
    }

    private static String b(b fqName) {
        p.d(fqName, "fqName");
        return p.a(c(fqName), (Object) ".kotlin_builtins");
    }

    private static String c(b bVar) {
        if (bVar.c()) {
            return "default-package";
        }
        String a2 = bVar.e().a();
        p.b(a2, "fqName.shortName().asString()");
        return a2;
    }

    public final String a(b fqName) {
        p.d(fqName, "fqName");
        StringBuilder sb = new StringBuilder();
        String a2 = fqName.a();
        p.b(a2, "fqName.asString()");
        sb.append(kotlin.h.p.a(a2, '.', '/', false));
        sb.append('/');
        sb.append(b(fqName));
        return sb.toString();
    }
}

package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/c.class */
public final class c {
    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x03a9, code lost:
        if (r21.f38102d == false) goto L_0x03c1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x03b4, code lost:
        if (kotlin.reflect.jvm.internal.impl.builtins.g.e((kotlin.reflect.jvm.internal.impl.descriptors.d) r0) == false) goto L_0x03c1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x03b7, code lost:
        r17 = (java.lang.Object) r16.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x03c1, code lost:
        r0 = (kotlin.reflect.jvm.internal.impl.descriptors.d) r0;
        r0 = r0.getOriginal();
        kotlin.jvm.internal.p.b(r0, "descriptor.original");
        r0 = r18.getPredefinedTypeForClass(r0);
        r17 = (java.lang.Object) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x03e5, code lost:
        if (r0 != null) goto L_0x041d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x03e8, code lost:
        r17 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x03f5, code lost:
        if (r0.getKind() != kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_ENTRY) goto L_0x0403;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x03f8, code lost:
        r17 = (kotlin.reflect.jvm.internal.impl.descriptors.d) r0.getContainingDeclaration();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0403, code lost:
        r0 = r17.getOriginal();
        kotlin.jvm.internal.p.b(r0, "enumClassIfEnumEntry.original");
        r17 = (java.lang.Object) r16.b(a(r0, r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x041d, code lost:
        r20.a(r15, r17, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x042a, code lost:
        return (T) r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x018d, code lost:
        if (r27 == false) goto L_0x0190;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [T, java.lang.Object] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T a(kotlin.reflect.jvm.internal.impl.types.KotlinType r15, kotlin.reflect.jvm.internal.impl.load.kotlin.k<T> r16, kotlin.reflect.jvm.internal.impl.load.kotlin.w r17, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration<? extends T> r18, kotlin.reflect.jvm.internal.impl.load.kotlin.h<T> r19, kotlin.jvm.functions.n<? super kotlin.reflect.jvm.internal.impl.types.KotlinType, ? super T, ? super kotlin.reflect.jvm.internal.impl.load.kotlin.w, kotlin.v> r20) {
        /*
            Method dump skipped, instructions count: 1199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.c.a(kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.load.kotlin.k, kotlin.reflect.jvm.internal.impl.load.kotlin.w, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration, kotlin.reflect.jvm.internal.impl.load.kotlin.h, kotlin.jvm.functions.n):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String a(d klass, TypeMappingConfiguration<?> typeMappingConfiguration) {
        p.d(klass, "klass");
        p.d(typeMappingConfiguration, "typeMappingConfiguration");
        String predefinedFullInternalNameForClass = typeMappingConfiguration.getPredefinedFullInternalNameForClass(klass);
        if (predefinedFullInternalNameForClass != null) {
            return predefinedFullInternalNameForClass;
        }
        k containingDeclaration = klass.getContainingDeclaration();
        p.b(containingDeclaration, "klass.containingDeclaration");
        String b2 = g.a(klass.getName()).b();
        p.b(b2, "safeIdentifier(klass.name).identifier");
        if (containingDeclaration instanceof ae) {
            b c2 = ((ae) containingDeclaration).c();
            if (c2.f37335b.f37340a.isEmpty()) {
                return b2;
            }
            StringBuilder sb = new StringBuilder();
            String a2 = c2.a();
            p.b(a2, "fqName.asString()");
            sb.append(kotlin.h.p.a(a2, '.', '/', false));
            sb.append('/');
            sb.append(b2);
            return sb.toString();
        }
        d dVar = containingDeclaration instanceof d ? (d) containingDeclaration : null;
        if (dVar != null) {
            String predefinedInternalNameForClass = typeMappingConfiguration.getPredefinedInternalNameForClass(dVar);
            String str = predefinedInternalNameForClass;
            if (predefinedInternalNameForClass == null) {
                str = a(dVar, typeMappingConfiguration);
            }
            return str + '$' + b2;
        }
        throw new IllegalArgumentException("Unexpected container: " + containingDeclaration + " for " + klass);
    }
}

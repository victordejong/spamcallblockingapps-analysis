package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18968g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/c.class */
public final class C19624c {
    /* JADX WARN: Code restructure failed: missing block: B:111:0x03a9, code lost:
        if (r21.f65781d == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x03b4, code lost:
        if (kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g.m2803e((kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d) r0) == false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x03b7, code lost:
        r17 = r16.mo1892a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x03c1, code lost:
        r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d) r0;
        r0 = r0.getOriginal();
        kotlin.jvm.internal.C18524p.m3843b(r0, "descriptor.original");
        r0 = r18.getPredefinedTypeForClass(r0);
        r17 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x03e5, code lost:
        if (r0 != null) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x03e8, code lost:
        r17 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x03f5, code lost:
        if (r0.getKind() != kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e.ENUM_ENTRY) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x03f8, code lost:
        r17 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d) r0.getContainingDeclaration();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0403, code lost:
        r0 = r17.getOriginal();
        kotlin.jvm.internal.C18524p.m3843b(r0, "enumClassIfEnumEntry.original");
        r17 = r16.mo1886b(m1918a(r0, r18));
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x041d, code lost:
        r20.mo1164a(r15, r17, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x042a, code lost:
        return r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x018d, code lost:
        if (r27 == false) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [T, java.lang.Object] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T m1916a(kotlin.reflect.jvm.internal.impl.types.KotlinType r15, kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19638k<T> r16, kotlin.reflect.jvm.internal.impl.load.kotlin.C19662w r17, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration<? extends T> r18, kotlin.reflect.jvm.internal.impl.load.kotlin.C19631h<T> r19, kotlin.jvm.functions.AbstractC18473n<? super kotlin.reflect.jvm.internal.impl.types.KotlinType, ? super T, ? super kotlin.reflect.jvm.internal.impl.load.kotlin.C19662w, kotlin.C20128v> r20) {
        /*
            Method dump skipped, instructions count: 1199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.C19624c.m1916a(kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.load.kotlin.k, kotlin.reflect.jvm.internal.impl.load.kotlin.w, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration, kotlin.reflect.jvm.internal.impl.load.kotlin.h, kotlin.jvm.functions.n):java.lang.Object");
    }

    /* renamed from: a */
    public static String m1918a(AbstractC19070d klass, TypeMappingConfiguration<?> typeMappingConfiguration) {
        C18524p.m3840d(klass, "klass");
        C18524p.m3840d(typeMappingConfiguration, "typeMappingConfiguration");
        String predefinedFullInternalNameForClass = typeMappingConfiguration.getPredefinedFullInternalNameForClass(klass);
        if (predefinedFullInternalNameForClass != null) {
            return predefinedFullInternalNameForClass;
        }
        AbstractC19193k containingDeclaration = klass.getContainingDeclaration();
        C18524p.m3843b(containingDeclaration, "klass.containingDeclaration");
        String m2717b = C18968g.m2711a(klass.getName()).m2717b();
        C18524p.m3843b(m2717b, "safeIdentifier(klass.name).identifier");
        if (containingDeclaration instanceof AbstractC19006ae) {
            C18961b mo2542c = ((AbstractC19006ae) containingDeclaration).mo2542c();
            if (mo2542c.f64686b.f64691a.isEmpty()) {
                return m2717b;
            }
            StringBuilder sb = new StringBuilder();
            String m2746a = mo2542c.m2746a();
            C18524p.m3843b(m2746a, "fqName.asString()");
            sb.append(C18425p.m3964a(m2746a, '.', '/', false));
            sb.append('/');
            sb.append(m2717b);
            return sb.toString();
        }
        AbstractC19070d abstractC19070d = containingDeclaration instanceof AbstractC19070d ? (AbstractC19070d) containingDeclaration : null;
        if (abstractC19070d == null) {
            throw new IllegalArgumentException("Unexpected container: " + containingDeclaration + " for " + klass);
        }
        String predefinedInternalNameForClass = typeMappingConfiguration.getPredefinedInternalNameForClass(abstractC19070d);
        String str = predefinedInternalNameForClass;
        if (predefinedInternalNameForClass == null) {
            str = m1918a(abstractC19070d, typeMappingConfiguration);
        }
        return str + '$' + m2717b;
    }
}

package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.a.c;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.java.e;
import kotlin.reflect.jvm.internal.impl.load.java.x;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/t.class */
public final class t {
    public static final String a(d dVar) {
        String a2;
        p.d(dVar, "<this>");
        c cVar = c.f37237a;
        kotlin.reflect.jvm.internal.impl.c.c b2 = a.b(dVar).b();
        p.b(b2, "fqNameSafe.toUnsafe()");
        kotlin.reflect.jvm.internal.impl.c.a a3 = c.a(b2);
        if (a3 != null) {
            String c2 = kotlin.reflect.jvm.internal.impl.resolve.c.c.a(a3).c();
            p.b(c2, "byClassId(it).internalName");
            return c2;
        }
        a2 = c.a(dVar, TypeMappingConfigurationImpl.INSTANCE);
        return a2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f4, code lost:
        if ((r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.ao) == false) goto L_0x00fd;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(kotlin.reflect.jvm.internal.impl.descriptors.w r3, boolean r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.t.a(kotlin.reflect.jvm.internal.impl.descriptors.w, boolean, boolean):java.lang.String");
    }

    public static /* synthetic */ String a(w wVar, boolean z, boolean z2, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return a(wVar, z, z2);
    }

    public static final j a(KotlinType kotlinType) {
        Object a2;
        p.d(kotlinType, "<this>");
        a2 = c.a(kotlinType, l.f38085a, w.o, TypeMappingConfigurationImpl.INSTANCE, null, kotlin.reflect.jvm.internal.impl.utils.d.b());
        return (j) a2;
    }

    private static final void a(StringBuilder sb, KotlinType kotlinType) {
        sb.append(a(kotlinType));
    }

    public static final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a f) {
        p.d(f, "f");
        if (!(f instanceof w)) {
            return false;
        }
        w wVar = (w) f;
        if (!p.a((Object) wVar.getName().a(), (Object) "remove") || wVar.getValueParameters().size() != 1 || x.e((b) f)) {
            return false;
        }
        List<ba> valueParameters = wVar.getOriginal().getValueParameters();
        p.b(valueParameters, "f.original.valueParameters");
        KotlinType g = ((ba) n.i((List<? extends Object>) valueParameters)).g();
        p.b(g, "f.original.valueParameters.single().type");
        j a2 = a(g);
        kotlin.reflect.jvm.internal.impl.resolve.c.d dVar = null;
        j.d dVar2 = a2 instanceof j.d ? (j.d) a2 : null;
        if (dVar2 != null) {
            dVar = dVar2.f38084b;
        }
        if (dVar != kotlin.reflect.jvm.internal.impl.resolve.c.d.INT) {
            return false;
        }
        e eVar = e.f37766a;
        w a3 = e.a(wVar);
        if (a3 == null) {
            return false;
        }
        List<ba> valueParameters2 = a3.getOriginal().getValueParameters();
        p.b(valueParameters2, "overridden.original.valueParameters");
        KotlinType g2 = ((ba) n.i((List<? extends Object>) valueParameters2)).g();
        p.b(g2, "overridden.original.valueParameters.single().type");
        j a4 = a(g2);
        k containingDeclaration = a3.getContainingDeclaration();
        p.b(containingDeclaration, "overridden.containingDeclaration");
        return p.a(a.a(containingDeclaration), j.a.X.b()) && (a4 instanceof j.c) && p.a((Object) ((j.c) a4).f38083b, (Object) "java/lang/Object");
    }

    public static final String b(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        p.d(aVar, "<this>");
        v vVar = v.f38097a;
        if (kotlin.reflect.jvm.internal.impl.resolve.d.b(aVar)) {
            return null;
        }
        k containingDeclaration = aVar.getContainingDeclaration();
        d dVar = containingDeclaration instanceof d ? (d) containingDeclaration : null;
        if (dVar == null || dVar.getName().f37342a) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a original = aVar.getOriginal();
        as asVar = original instanceof as ? (as) original : null;
        if (asVar == null) {
            return null;
        }
        return s.a(vVar, dVar, a(asVar, false, false, 3));
    }
}

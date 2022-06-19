package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18894c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.load.java.C19418e;
import kotlin.reflect.jvm.internal.impl.load.java.C19588x;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19633j;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18962c;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19766c;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C20010d;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/t.class */
public final class C19657t {
    /* renamed from: a */
    public static final String m1850a(AbstractC19070d abstractC19070d) {
        String m1918a;
        C18524p.m3840d(abstractC19070d, "<this>");
        C18894c c18894c = C18894c.f64450a;
        C18962c m2743b = C19756a.m1528b(abstractC19070d).m2743b();
        C18524p.m3843b(m2743b, "fqNameSafe.toUnsafe()");
        C18960a m2903a = C18894c.m2903a(m2743b);
        if (m2903a == null) {
            m1918a = C19624c.m1918a(abstractC19070d, TypeMappingConfigurationImpl.INSTANCE);
            return m1918a;
        }
        String m1499c = C19766c.m1502a(m2903a).m1499c();
        C18524p.m3843b(m1499c, "byClassId(it).internalName");
        return m1499c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f4, code lost:
        if ((r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19018ao) == false) goto L27;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m1849a(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w r3, boolean r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t.m1849a(kotlin.reflect.jvm.internal.impl.descriptors.w, boolean, boolean):java.lang.String");
    }

    /* renamed from: a */
    public static /* synthetic */ String m1848a(AbstractC19219w abstractC19219w, boolean z, boolean z2, int i) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        return m1849a(abstractC19219w, z, z2);
    }

    /* renamed from: a */
    public static final AbstractC19633j m1847a(KotlinType kotlinType) {
        Object m1916a;
        C18524p.m3840d(kotlinType, "<this>");
        m1916a = C19624c.m1916a(kotlinType, C19639l.f65754a, C19662w.f65773o, TypeMappingConfigurationImpl.INSTANCE, null, C20010d.m1197b());
        return (AbstractC19633j) m1916a;
    }

    /* renamed from: a */
    private static final void m1852a(StringBuilder sb, KotlinType kotlinType) {
        sb.append(m1847a(kotlinType));
    }

    /* renamed from: a */
    public static final boolean m1851a(AbstractC18973a f) {
        C18524p.m3840d(f, "f");
        if (!(f instanceof AbstractC19219w)) {
            return false;
        }
        AbstractC19219w abstractC19219w = (AbstractC19219w) f;
        if (!C18524p.m3850a((Object) abstractC19219w.getName().m2721a(), (Object) "remove") || abstractC19219w.getValueParameters().size() != 1 || C19588x.m1966e((AbstractC19039b) f)) {
            return false;
        }
        List<AbstractC19050ba> valueParameters = abstractC19219w.getOriginal().getValueParameters();
        C18524p.m3843b(valueParameters, "f.original.valueParameters");
        KotlinType g = ((AbstractC19050ba) C18282n.m4115i((List<? extends Object>) valueParameters)).mo2593g();
        C18524p.m3843b(g, "f.original.valueParameters.single().type");
        AbstractC19633j m1847a = m1847a(g);
        AbstractC19633j.C19637d c19637d = m1847a instanceof AbstractC19633j.C19637d ? (AbstractC19633j.C19637d) m1847a : null;
        if ((c19637d == null ? null : c19637d.f65753b) != EnumC19767d.INT) {
            return false;
        }
        C19418e c19418e = C19418e.f65301a;
        AbstractC19219w m2171a = C19418e.m2171a(abstractC19219w);
        if (m2171a == null) {
            return false;
        }
        List<AbstractC19050ba> valueParameters2 = m2171a.getOriginal().getValueParameters();
        C18524p.m3843b(valueParameters2, "overridden.original.valueParameters");
        KotlinType g2 = ((AbstractC19050ba) C18282n.m4115i((List<? extends Object>) valueParameters2)).mo2593g();
        C18524p.m3843b(g2, "overridden.original.valueParameters.single().type");
        AbstractC19633j m1847a2 = m1847a(g2);
        AbstractC19193k containingDeclaration = m2171a.getContainingDeclaration();
        C18524p.m3843b(containingDeclaration, "overridden.containingDeclaration");
        return C18524p.m3850a(C19756a.m1531a(containingDeclaration), C18954j.C18955a.f64612X.m2743b()) && (m1847a2 instanceof AbstractC19633j.C19636c) && C18524p.m3850a((Object) ((AbstractC19633j.C19636c) m1847a2).f65752b, (Object) "java/lang/Object");
    }

    /* renamed from: b */
    public static final String m1846b(AbstractC18973a abstractC18973a) {
        C18524p.m3840d(abstractC18973a, "<this>");
        C19660v c19660v = C19660v.f65767a;
        if (C19807d.m1466b(abstractC18973a)) {
            return null;
        }
        AbstractC19193k containingDeclaration = abstractC18973a.getContainingDeclaration();
        AbstractC19070d abstractC19070d = containingDeclaration instanceof AbstractC19070d ? (AbstractC19070d) containingDeclaration : null;
        if (abstractC19070d == null || abstractC19070d.getName().f64696a) {
            return null;
        }
        AbstractC18973a original = abstractC18973a.getOriginal();
        AbstractC19025as abstractC19025as = original instanceof AbstractC19025as ? (AbstractC19025as) original : null;
        if (abstractC19025as != null) {
            return C19656s.m1853a(c19660v, abstractC19070d, m1848a(abstractC19025as, false, false, 3));
        }
        return null;
    }
}

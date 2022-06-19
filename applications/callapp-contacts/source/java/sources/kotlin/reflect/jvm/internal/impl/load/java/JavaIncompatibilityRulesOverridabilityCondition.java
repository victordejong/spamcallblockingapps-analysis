package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.C18538n;
import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19372f;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19633j;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition.class */
public final class JavaIncompatibilityRulesOverridabilityCondition implements ExternalOverridabilityCondition {
    public static final C19342a Companion = new C19342a(null);

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a.class */
    public static final class C19342a {
        private C19342a() {
        }

        public /* synthetic */ C19342a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static AbstractC19633j m2289a(AbstractC19219w abstractC19219w, AbstractC19050ba abstractC19050ba) {
            if (C19657t.m1851a(abstractC19219w) || m2290a(abstractC19219w)) {
                KotlinType g = abstractC19050ba.mo2593g();
                C18524p.m3843b(g, "valueParameterDescriptor.type");
                return C19657t.m1847a(TypeUtilsKt.makeNullable(g));
            }
            KotlinType g2 = abstractC19050ba.mo2593g();
            C18524p.m3843b(g2, "valueParameterDescriptor.type");
            return C19657t.m1847a(g2);
        }

        /* renamed from: a */
        private static boolean m2290a(AbstractC19219w abstractC19219w) {
            if (abstractC19219w.getValueParameters().size() != 1) {
                return false;
            }
            AbstractC19193k containingDeclaration = abstractC19219w.getContainingDeclaration();
            AbstractC19070d abstractC19070d = containingDeclaration instanceof AbstractC19070d ? (AbstractC19070d) containingDeclaration : null;
            if (abstractC19070d == null) {
                return false;
            }
            List<AbstractC19050ba> valueParameters = abstractC19219w.getValueParameters();
            C18524p.m3843b(valueParameters, "f.valueParameters");
            AbstractC19129g declarationDescriptor = ((AbstractC19050ba) C18282n.m4115i((List<? extends Object>) valueParameters)).mo2593g().getConstructor().getDeclarationDescriptor();
            AbstractC19070d abstractC19070d2 = null;
            if (declarationDescriptor instanceof AbstractC19070d) {
                abstractC19070d2 = (AbstractC19070d) declarationDescriptor;
            }
            return abstractC19070d2 != null && AbstractC18940g.m2817b(abstractC19070d) && C18524p.m3850a(C19756a.m1528b(abstractC19070d), C19756a.m1528b(abstractC19070d2));
        }

        /* renamed from: a */
        public final boolean m2291a(AbstractC18973a superDescriptor, AbstractC18973a subDescriptor) {
            C18524p.m3840d(superDescriptor, "superDescriptor");
            C18524p.m3840d(subDescriptor, "subDescriptor");
            if (!(subDescriptor instanceof C19372f) || !(superDescriptor instanceof AbstractC19219w)) {
                return false;
            }
            C19372f c19372f = (C19372f) subDescriptor;
            int size = c19372f.getValueParameters().size();
            AbstractC19219w abstractC19219w = (AbstractC19219w) superDescriptor;
            boolean z = size == abstractC19219w.getValueParameters().size();
            if (C20130x.f66532a && !z) {
                throw new AssertionError("External overridability condition with CONFLICTS_ONLY should not be run with different value parameters size");
            }
            List<AbstractC19050ba> valueParameters = c19372f.getOriginal().getValueParameters();
            C18524p.m3843b(valueParameters, "subDescriptor.original.valueParameters");
            List<AbstractC19050ba> list = valueParameters;
            List<AbstractC19050ba> valueParameters2 = abstractC19219w.getOriginal().getValueParameters();
            C18524p.m3843b(valueParameters2, "superDescriptor.original.valueParameters");
            for (C18538n c18538n : C18282n.m4127d((Iterable) list, (Iterable) valueParameters2)) {
                AbstractC19050ba subParameter = (AbstractC19050ba) c18538n.f63624a;
                AbstractC19050ba superParameter = (AbstractC19050ba) c18538n.f63625b;
                C18524p.m3843b(subParameter, "subParameter");
                boolean z2 = m2289a((AbstractC19219w) subDescriptor, subParameter) instanceof AbstractC19633j.C19637d;
                C18524p.m3843b(superParameter, "superParameter");
                if (z2 != (m2289a(abstractC19219w, superParameter) instanceof AbstractC19633j.C19637d)) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.EnumC19736a getContract() {
        return ExternalOverridabilityCondition.EnumC19736a.CONFLICTS_ONLY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006b, code lost:
        if (kotlin.reflect.jvm.internal.impl.load.java.C19387d.m2235a(r0) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0159, code lost:
        if (kotlin.jvm.internal.C18524p.m3850a((java.lang.Object) r0, (java.lang.Object) kotlin.reflect.jvm.internal.impl.load.kotlin.C19657t.m1848a(r0, false, false, 2)) != false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0164 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0168  */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.EnumC19737b isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a r7, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a r8, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d r9) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.d):kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$b");
    }
}

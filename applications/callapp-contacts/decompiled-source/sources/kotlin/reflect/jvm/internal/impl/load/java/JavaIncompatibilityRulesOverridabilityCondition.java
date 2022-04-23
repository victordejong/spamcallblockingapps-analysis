package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.load.java.b.f;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.load.kotlin.t;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition.class */
public final class JavaIncompatibilityRulesOverridabilityCondition implements ExternalOverridabilityCondition {
    public static final a Companion = new a(null);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/JavaIncompatibilityRulesOverridabilityCondition$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static j a(w wVar, ba baVar) {
            if (t.a(wVar) || a(wVar)) {
                KotlinType g = baVar.g();
                p.b(g, "valueParameterDescriptor.type");
                return t.a(TypeUtilsKt.makeNullable(g));
            }
            KotlinType g2 = baVar.g();
            p.b(g2, "valueParameterDescriptor.type");
            return t.a(g2);
        }

        private static boolean a(w wVar) {
            if (wVar.getValueParameters().size() != 1) {
                return false;
            }
            k containingDeclaration = wVar.getContainingDeclaration();
            d dVar = null;
            d dVar2 = containingDeclaration instanceof d ? (d) containingDeclaration : null;
            if (dVar2 == null) {
                return false;
            }
            List<ba> valueParameters = wVar.getValueParameters();
            p.b(valueParameters, "f.valueParameters");
            g declarationDescriptor = ((ba) n.i((List<? extends Object>) valueParameters)).g().getConstructor().getDeclarationDescriptor();
            if (declarationDescriptor instanceof d) {
                dVar = (d) declarationDescriptor;
            }
            return dVar != null && kotlin.reflect.jvm.internal.impl.builtins.g.b(dVar2) && p.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.b(dVar2), kotlin.reflect.jvm.internal.impl.resolve.b.a.b(dVar));
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor) {
            p.d(superDescriptor, "superDescriptor");
            p.d(subDescriptor, "subDescriptor");
            if (!(subDescriptor instanceof f) || !(superDescriptor instanceof w)) {
                return false;
            }
            f fVar = (f) subDescriptor;
            int size = fVar.getValueParameters().size();
            w wVar = (w) superDescriptor;
            boolean z = size == wVar.getValueParameters().size();
            if (!x.f38657a || z) {
                List<ba> valueParameters = fVar.getOriginal().getValueParameters();
                p.b(valueParameters, "subDescriptor.original.valueParameters");
                List<ba> list = valueParameters;
                List<ba> valueParameters2 = wVar.getOriginal().getValueParameters();
                p.b(valueParameters2, "superDescriptor.original.valueParameters");
                for (kotlin.n nVar : n.d((Iterable) list, (Iterable) valueParameters2)) {
                    ba subParameter = (ba) nVar.f36810a;
                    ba superParameter = (ba) nVar.f36811b;
                    p.b(subParameter, "subParameter");
                    boolean z2 = a((w) subDescriptor, subParameter) instanceof j.d;
                    p.b(superParameter, "superParameter");
                    if (z2 != (a(wVar, superParameter) instanceof j.d)) {
                        return true;
                    }
                }
                return false;
            }
            throw new AssertionError("External overridability condition with CONFLICTS_ONLY should not be run with different value parameters size");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.a getContract() {
        return ExternalOverridabilityCondition.a.CONFLICTS_ONLY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006b, code lost:
        if (kotlin.reflect.jvm.internal.impl.load.java.d.a(r0) == false) goto L_0x015c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0159, code lost:
        if (kotlin.jvm.internal.p.a((java.lang.Object) r0, (java.lang.Object) kotlin.reflect.jvm.internal.impl.load.kotlin.t.a(r0, false, false, 2)) != false) goto L_0x015c;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0164 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0168  */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition.b isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.a r7, kotlin.reflect.jvm.internal.impl.descriptors.a r8, kotlin.reflect.jvm.internal.impl.descriptors.d r9) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition.isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.d):kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition$b");
    }
}

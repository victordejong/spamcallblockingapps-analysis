package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p531g.AbstractC18378h;
import kotlin.p531g.C18381k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.C19372f;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition.class */
public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.ErasedOverridabilityCondition$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$a.class */
    public final /* synthetic */ class C19340a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f65231a;

        static {
            int[] iArr = new int[OverridingUtil.C19746a.EnumC19747a.values().length];
            iArr[OverridingUtil.C19746a.EnumC19747a.OVERRIDABLE.ordinal()] = 1;
            f65231a = iArr;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.ErasedOverridabilityCondition$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b.class */
    static final class C19341b extends AbstractC18526r implements Function1<AbstractC19050ba, KotlinType> {

        /* renamed from: a */
        public static final C19341b f65232a = new C19341b();

        C19341b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(AbstractC19050ba abstractC19050ba) {
            return abstractC19050ba.mo2593g();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.EnumC19736a getContract() {
        return ExternalOverridabilityCondition.EnumC19736a.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.EnumC19737b isOverridable(AbstractC18973a superDescriptor, AbstractC18973a subDescriptor, AbstractC19070d abstractC19070d) {
        List<TypeParameterDescriptor> typeParameters;
        boolean z;
        AbstractC18973a substitute;
        List<TypeParameterDescriptor> typeParameters2;
        C18524p.m3840d(superDescriptor, "superDescriptor");
        C18524p.m3840d(subDescriptor, "subDescriptor");
        if (subDescriptor instanceof C19372f) {
            C19372f c19372f = (C19372f) subDescriptor;
            C18524p.m3843b(c19372f.getTypeParameters(), "subDescriptor.typeParameters");
            if (!(!typeParameters.isEmpty())) {
                OverridingUtil.C19746a m1576a = OverridingUtil.m1576a(superDescriptor, subDescriptor);
                if ((m1576a == null ? null : m1576a.m1550b()) != null) {
                    return ExternalOverridabilityCondition.EnumC19737b.UNKNOWN;
                }
                List<AbstractC19050ba> valueParameters = c19372f.getValueParameters();
                C18524p.m3843b(valueParameters, "subDescriptor.valueParameters");
                AbstractC18378h d = C18381k.m4015d(C18282n.m4106p(valueParameters), C19341b.f65232a);
                KotlinType returnType = c19372f.getReturnType();
                C18524p.m3851a(returnType);
                AbstractC18378h plus = C18381k.m4022a(d, returnType);
                AbstractC19020aq extensionReceiverParameter = c19372f.getExtensionReceiverParameter();
                List elements = C18282n.m4169b(extensionReceiverParameter == null ? null : extensionReceiverParameter.mo2593g());
                C18524p.m3840d(plus, "$this$plus");
                C18524p.m3840d(elements, "elements");
                Iterator mo3908a = C18381k.m4029a(C18381k.m4026a(plus, C18282n.m4106p(elements))).mo3908a();
                while (true) {
                    if (!mo3908a.hasNext()) {
                        z = false;
                        break;
                    }
                    KotlinType kotlinType = (KotlinType) mo3908a.next();
                    if ((kotlinType.getArguments().isEmpty() ^ true) && !(kotlinType.unwrap() instanceof RawTypeImpl)) {
                        z = true;
                        break;
                    }
                }
                if (!z && (substitute = superDescriptor.substitute(RawSubstitution.INSTANCE.buildSubstitutor())) != null) {
                    AbstractC19025as abstractC19025as = substitute;
                    if (substitute instanceof AbstractC19025as) {
                        AbstractC19025as abstractC19025as2 = (AbstractC19025as) substitute;
                        C18524p.m3843b(abstractC19025as2.getTypeParameters(), "erasedSuper.typeParameters");
                        abstractC19025as = substitute;
                        if (!typeParameters2.isEmpty()) {
                            AbstractC19025as build = abstractC19025as2.newCopyBuilder().setTypeParameters(C18297z.f63400a).build();
                            C18524p.m3851a(build);
                            abstractC19025as = build;
                        }
                    }
                    OverridingUtil.C19746a.EnumC19747a m1550b = OverridingUtil.f65920a.m1573a(abstractC19025as, subDescriptor, false).m1550b();
                    C18524p.m3843b(m1550b, "DEFAULT.isOverridableByWithoutExternalConditions(erasedSuper, subDescriptor, false).result");
                    return C19340a.f65231a[m1550b.ordinal()] == 1 ? ExternalOverridabilityCondition.EnumC19737b.OVERRIDABLE : ExternalOverridabilityCondition.EnumC19737b.UNKNOWN;
                }
                return ExternalOverridabilityCondition.EnumC19737b.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.EnumC19737b.UNKNOWN;
    }
}

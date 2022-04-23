package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import java.util.List;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.g.h;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.b.f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition.class */
public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$a.class */
    public final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37712a;

        static {
            int[] iArr = new int[OverridingUtil.a.EnumC0703a.values().length];
            iArr[OverridingUtil.a.EnumC0703a.OVERRIDABLE.ordinal()] = 1;
            f37712a = iArr;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/ErasedOverridabilityCondition$b.class */
    static final class b extends r implements Function1<ba, KotlinType> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37713a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ KotlinType invoke(ba baVar) {
            return baVar.g();
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.a getContract() {
        return ExternalOverridabilityCondition.a.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    public final ExternalOverridabilityCondition.b isOverridable(kotlin.reflect.jvm.internal.impl.descriptors.a superDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a subDescriptor, d dVar) {
        boolean z;
        kotlin.reflect.jvm.internal.impl.descriptors.a substitute;
        p.d(superDescriptor, "superDescriptor");
        p.d(subDescriptor, "subDescriptor");
        if (subDescriptor instanceof f) {
            f fVar = (f) subDescriptor;
            List<TypeParameterDescriptor> typeParameters = fVar.getTypeParameters();
            p.b(typeParameters, "subDescriptor.typeParameters");
            if (!(!typeParameters.isEmpty())) {
                OverridingUtil.a a2 = OverridingUtil.a(superDescriptor, subDescriptor);
                KotlinType kotlinType = null;
                if ((a2 == null ? null : a2.b()) != null) {
                    return ExternalOverridabilityCondition.b.UNKNOWN;
                }
                List<ba> valueParameters = fVar.getValueParameters();
                p.b(valueParameters, "subDescriptor.valueParameters");
                h d2 = k.d(n.p(valueParameters), b.f37713a);
                KotlinType returnType = fVar.getReturnType();
                p.a(returnType);
                h plus = k.a(d2, returnType);
                aq extensionReceiverParameter = fVar.getExtensionReceiverParameter();
                if (extensionReceiverParameter != null) {
                    kotlinType = extensionReceiverParameter.g();
                }
                List elements = n.b(kotlinType);
                p.d(plus, "$this$plus");
                p.d(elements, "elements");
                Iterator a3 = k.a(k.a(plus, n.p(elements))).a();
                while (true) {
                    if (!a3.hasNext()) {
                        z = false;
                        break;
                    }
                    KotlinType kotlinType2 = (KotlinType) a3.next();
                    if ((kotlinType2.getArguments().isEmpty() ^ true) && !(kotlinType2.unwrap() instanceof RawTypeImpl)) {
                        z = true;
                        break;
                    }
                }
                if (!z && (substitute = superDescriptor.substitute(RawSubstitution.INSTANCE.buildSubstitutor())) != null) {
                    as asVar = substitute;
                    if (substitute instanceof as) {
                        as asVar2 = (as) substitute;
                        List<TypeParameterDescriptor> typeParameters2 = asVar2.getTypeParameters();
                        p.b(typeParameters2, "erasedSuper.typeParameters");
                        asVar = substitute;
                        if (!typeParameters2.isEmpty()) {
                            as asVar3 = (as) asVar2.newCopyBuilder().setTypeParameters(z.f36608a).build();
                            p.a(asVar3);
                            asVar = asVar3;
                        }
                    }
                    OverridingUtil.a.EnumC0703a b2 = OverridingUtil.f38207a.a(asVar, subDescriptor, false).b();
                    p.b(b2, "DEFAULT.isOverridableByWithoutExternalConditions(erasedSuper, subDescriptor, false).result");
                    return a.f37712a[b2.ordinal()] == 1 ? ExternalOverridabilityCondition.b.OVERRIDABLE : ExternalOverridabilityCondition.b.UNKNOWN;
                }
                return ExternalOverridabilityCondition.b.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.b.UNKNOWN;
    }
}

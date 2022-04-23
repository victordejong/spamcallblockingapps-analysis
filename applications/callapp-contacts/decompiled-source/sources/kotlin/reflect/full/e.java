package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.w;
import kotlin.reflect.q;
import kotlin.reflect.s;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n��\u001a.\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u001a6\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u000eH\u0007\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, d2 = {"starProjectedType", "Lkotlin/reflect/KType;", "Lkotlin/reflect/KClassifier;", "getStarProjectedType$annotations", "(Lkotlin/reflect/KClassifier;)V", "getStarProjectedType", "(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KType;", "createKotlinType", "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;", "typeAnnotations", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;", "typeConstructor", "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;", "arguments", "", "Lkotlin/reflect/KTypeProjection;", "nullable", "", "createType", "annotations", "", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/e.class */
public final class e {
    public static final SimpleType a(g gVar, TypeConstructor typeConstructor, List<q> list, boolean z) {
        TypeProjectionBase typeProjectionBase;
        List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
        p.b(parameters, "typeConstructor.parameters");
        List<q> list2 = list;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        int i = 0;
        for (Object obj : list2) {
            if (i < 0) {
                n.a();
            }
            q qVar = (q) obj;
            w wVar = (w) qVar.f38636b;
            KotlinType kotlinType = wVar != null ? wVar.f38615b : null;
            s sVar = qVar.f38635a;
            if (sVar == null) {
                TypeParameterDescriptor typeParameterDescriptor = parameters.get(i);
                p.b(typeParameterDescriptor, "parameters[index]");
                typeProjectionBase = new StarProjectionImpl(typeParameterDescriptor);
            } else {
                int i2 = f.f36827a[sVar.ordinal()];
                if (i2 == 1) {
                    Variance variance = Variance.INVARIANT;
                    p.a(kotlinType);
                    typeProjectionBase = new TypeProjectionImpl(variance, kotlinType);
                } else if (i2 == 2) {
                    Variance variance2 = Variance.IN_VARIANCE;
                    p.a(kotlinType);
                    typeProjectionBase = new TypeProjectionImpl(variance2, kotlinType);
                } else if (i2 == 3) {
                    Variance variance3 = Variance.OUT_VARIANCE;
                    p.a(kotlinType);
                    typeProjectionBase = new TypeProjectionImpl(variance3, kotlinType);
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            }
            arrayList.add(typeProjectionBase);
            i++;
        }
        return KotlinTypeFactory.simpleType$default(gVar, typeConstructor, arrayList, true, null, 16, null);
    }
}

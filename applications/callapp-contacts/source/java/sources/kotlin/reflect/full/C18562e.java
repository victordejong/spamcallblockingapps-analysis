package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.C20112q;
import kotlin.reflect.EnumC20115s;
import kotlin.reflect.jvm.internal.C20094w;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n��\u001a.\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u001a6\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u000eH\u0007\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, m4298d2 = {"starProjectedType", "Lkotlin/reflect/KType;", "Lkotlin/reflect/KClassifier;", "getStarProjectedType$annotations", "(Lkotlin/reflect/KClassifier;)V", "getStarProjectedType", "(Lkotlin/reflect/KClassifier;)Lkotlin/reflect/KType;", "createKotlinType", "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;", "typeAnnotations", "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;", "typeConstructor", "Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;", "arguments", "", "Lkotlin/reflect/KTypeProjection;", "nullable", "", "createType", "annotations", "", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.full.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/e.class */
public final class C18562e {
    /* renamed from: a */
    public static final SimpleType m3828a(AbstractC18983g abstractC18983g, TypeConstructor typeConstructor, List<C20112q> list, boolean z) {
        TypeProjectionBase typeProjectionBase;
        List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
        C18524p.m3843b(parameters, "typeConstructor.parameters");
        List<C20112q> list2 = list;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        int i = 0;
        for (Object obj : list2) {
            if (i < 0) {
                C18282n.m4175a();
            }
            C20112q c20112q = (C20112q) obj;
            C20094w c20094w = (C20094w) c20112q.f66510b;
            KotlinType kotlinType = c20094w != null ? c20094w.f66488b : null;
            EnumC20115s enumC20115s = c20112q.f66509a;
            if (enumC20115s == null) {
                TypeParameterDescriptor typeParameterDescriptor = parameters.get(i);
                C18524p.m3843b(typeParameterDescriptor, "parameters[index]");
                typeProjectionBase = new StarProjectionImpl(typeParameterDescriptor);
            } else {
                int i2 = C18563f.f63642a[enumC20115s.ordinal()];
                if (i2 == 1) {
                    Variance variance = Variance.INVARIANT;
                    C18524p.m3851a(kotlinType);
                    typeProjectionBase = new TypeProjectionImpl(variance, kotlinType);
                } else if (i2 == 2) {
                    Variance variance2 = Variance.IN_VARIANCE;
                    C18524p.m3851a(kotlinType);
                    typeProjectionBase = new TypeProjectionImpl(variance2, kotlinType);
                } else if (i2 != 3) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    Variance variance3 = Variance.OUT_VARIANCE;
                    C18524p.m3851a(kotlinType);
                    typeProjectionBase = new TypeProjectionImpl(variance3, kotlinType);
                }
            }
            arrayList.add(typeProjectionBase);
            i++;
        }
        return KotlinTypeFactory.simpleType$default(abstractC18983g, typeConstructor, arrayList, true, null, 16, null);
    }
}

package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.List;
import kotlin.C20130x;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.AbstractC19433c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.RawType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d.class */
public final class C19525d {

    /* renamed from: a */
    private final AbstractC19433c f65515a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a.class */
    public static class C19526a {

        /* renamed from: a */
        final int f65516a;

        /* renamed from: b */
        final boolean f65517b;

        /* renamed from: c */
        private final KotlinType f65518c;

        public C19526a(KotlinType type, int i, boolean z) {
            C18524p.m3840d(type, "type");
            this.f65518c = type;
            this.f65516a = i;
            this.f65517b = z;
        }

        /* renamed from: a */
        public KotlinType mo2032a() {
            return this.f65518c;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b.class */
    public static final class C19527b extends C19526a {

        /* renamed from: c */
        final SimpleType f65519c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19527b(SimpleType type, int i, boolean z) {
            super(type, i, z);
            C18524p.m3840d(type, "type");
            this.f65519c = type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.C19525d.C19526a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ KotlinType mo2032a() {
            return this.f65519c;
        }
    }

    public C19525d(AbstractC19433c javaResolverSettings) {
        C18524p.m3840d(javaResolverSettings, "javaResolverSettings");
        this.f65515a = javaResolverSettings;
    }

    /* renamed from: a */
    private final C19526a m2033a(UnwrappedType unwrappedType, Function1<? super Integer, C19528e> function1, int i) {
        RawTypeImpl rawTypeImpl;
        UnwrappedType unwrappedType2 = unwrappedType;
        boolean z = false;
        if (KotlinTypeKt.isError(unwrappedType2)) {
            return new C19526a(unwrappedType2, 1, false);
        }
        if (!(unwrappedType instanceof FlexibleType)) {
            if (!(unwrappedType instanceof SimpleType)) {
                throw new NoWhenBranchMatchedException();
            }
            return m2034a((SimpleType) unwrappedType, function1, i, EnumC19579o.INFLEXIBLE, false);
        }
        boolean z2 = unwrappedType instanceof RawType;
        FlexibleType flexibleType = (FlexibleType) unwrappedType;
        C19527b m2034a = m2034a(flexibleType.getLowerBound(), function1, i, EnumC19579o.FLEXIBLE_LOWER, z2);
        C19527b m2034a2 = m2034a(flexibleType.getUpperBound(), function1, i, EnumC19579o.FLEXIBLE_UPPER, z2);
        boolean z3 = m2034a.f65516a == m2034a2.f65516a;
        if (C20130x.f66532a && !z3) {
            throw new AssertionError("Different tree sizes of bounds: lower = (" + flexibleType.getLowerBound() + ", " + m2034a.f65516a + "), upper = (" + flexibleType.getUpperBound() + ", " + m2034a2.f65516a + ')');
        }
        if (m2034a.f65517b || m2034a2.f65517b) {
            z = true;
        }
        KotlinType m2036a = m2036a(m2034a.f65519c, m2034a2.f65519c);
        UnwrappedType unwrappedType3 = unwrappedType;
        if (z) {
            if (unwrappedType instanceof RawTypeImpl) {
                rawTypeImpl = new RawTypeImpl(m2034a.f65519c, m2034a2.f65519c);
            } else {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                rawTypeImpl = KotlinTypeFactory.flexibleType(m2034a.f65519c, m2034a2.f65519c);
            }
            unwrappedType3 = TypeWithEnhancementKt.wrapEnhancement(rawTypeImpl, m2036a);
        }
        return new C19526a(unwrappedType3, m2034a.f65516a, z);
    }

    /* renamed from: a */
    public final C19527b m2034a(SimpleType simpleType, Function1<? super Integer, C19528e> function1, int i, EnumC19579o enumC19579o, boolean z) {
        AbstractC19129g declarationDescriptor;
        TypeProjection typeProjection;
        int i2;
        if ((C19580p.m2000a(enumC19579o) || !simpleType.getArguments().isEmpty()) && (declarationDescriptor = simpleType.getConstructor().getDeclarationDescriptor()) != null) {
            C19528e invoke = function1.invoke(Integer.valueOf(i));
            C19524c m1993a = C19583s.m1993a(declarationDescriptor, invoke, enumC19579o);
            AbstractC19129g abstractC19129g = (AbstractC19129g) m1993a.f65513a;
            AbstractC18983g abstractC18983g = m1993a.f65514b;
            TypeConstructor typeConstructor = abstractC19129g.getTypeConstructor();
            C18524p.m3843b(typeConstructor, "enhancedClassifier.typeConstructor");
            int i3 = i + 1;
            boolean z2 = abstractC18983g != null;
            List<TypeProjection> arguments = simpleType.getArguments();
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) arguments, 10));
            int i4 = 0;
            boolean z3 = z2;
            for (Object obj : arguments) {
                if (i4 < 0) {
                    C18282n.m4175a();
                }
                TypeProjection typeProjection2 = (TypeProjection) obj;
                if (typeProjection2.isStarProjection()) {
                    if (function1.invoke(Integer.valueOf(i3)).f65522b != EnumC19531g.NOT_NULL || z) {
                        typeProjection = TypeUtils.makeStarProjection(abstractC19129g.getTypeConstructor().getParameters().get(i4));
                        C18524p.m3843b(typeProjection, "{\n                    TypeUtils.makeStarProjection(enhancedClassifier.typeConstructor.parameters[localArgIndex])\n                }");
                    } else {
                        KotlinType makeNotNullable = TypeUtilsKt.makeNotNullable(typeProjection2.getType().unwrap());
                        Variance projectionKind = typeProjection2.getProjectionKind();
                        C18524p.m3843b(projectionKind, "arg.projectionKind");
                        typeProjection = TypeUtilsKt.createProjection(makeNotNullable, projectionKind, typeConstructor.getParameters().get(i4));
                    }
                    i2 = i3 + 1;
                } else {
                    C19526a m2033a = m2033a(typeProjection2.getType().unwrap(), function1, i3);
                    boolean z4 = z3 || m2033a.f65517b;
                    int i5 = i3 + m2033a.f65516a;
                    KotlinType mo2032a = m2033a.mo2032a();
                    Variance projectionKind2 = typeProjection2.getProjectionKind();
                    C18524p.m3843b(projectionKind2, "arg.projectionKind");
                    typeProjection = TypeUtilsKt.createProjection(mo2032a, projectionKind2, typeConstructor.getParameters().get(i4));
                    z3 = z4;
                    i2 = i5;
                }
                arrayList.add(typeProjection);
                i4++;
                i3 = i2;
            }
            ArrayList arrayList2 = arrayList;
            C19524c m1991a = C19583s.m1991a(simpleType, invoke, enumC19579o);
            boolean booleanValue = ((Boolean) m1991a.f65513a).booleanValue();
            AbstractC18983g abstractC18983g2 = m1991a.f65514b;
            boolean z5 = z3 || abstractC18983g2 != null;
            int i6 = i3 - i;
            if (!z5) {
                return new C19527b(simpleType, i6, false);
            }
            AbstractC18983g m1994a = C19583s.m1994a(C18282n.m4164e(simpleType.getAnnotations(), abstractC18983g, abstractC18983g2));
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(m1994a, typeConstructor, arrayList2, booleanValue, null, 16, null);
            KotlinType kotlinType = simpleType$default;
            if (invoke.f65524d) {
                kotlinType = m2035a(simpleType$default);
            }
            boolean z6 = false;
            if (abstractC18983g2 != null) {
                z6 = false;
                if (invoke.f65525e) {
                    z6 = true;
                }
            }
            return new C19527b((SimpleType) (z6 ? TypeWithEnhancementKt.wrapEnhancement(simpleType, kotlinType) : kotlinType), i6, true);
        }
        return new C19527b(simpleType, 1, false);
    }

    /* renamed from: a */
    private static KotlinType m2036a(KotlinType kotlinType, KotlinType kotlinType2) {
        KotlinType enhancement = TypeWithEnhancementKt.getEnhancement(kotlinType2);
        KotlinType enhancement2 = TypeWithEnhancementKt.getEnhancement(kotlinType);
        KotlinType kotlinType3 = enhancement2;
        if (enhancement2 == null) {
            if (enhancement == null) {
                return null;
            }
            kotlinType3 = enhancement;
        }
        if (enhancement == null) {
            return kotlinType3;
        }
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(kotlinType3), FlexibleTypesKt.upperIfFlexible(enhancement));
    }

    /* renamed from: a */
    private static SimpleType m2035a(SimpleType simpleType) {
        return new NotNullTypeParameter(simpleType);
    }

    /* renamed from: a */
    public final KotlinType m2037a(KotlinType kotlinType, Function1<? super Integer, C19528e> qualifiers) {
        C18524p.m3840d(kotlinType, "<this>");
        C18524p.m3840d(qualifiers, "qualifiers");
        C19526a m2033a = m2033a(kotlinType.unwrap(), qualifiers, 0);
        KotlinType mo2032a = m2033a.mo2032a();
        if (m2033a.f65517b) {
            return mo2032a;
        }
        return null;
    }
}

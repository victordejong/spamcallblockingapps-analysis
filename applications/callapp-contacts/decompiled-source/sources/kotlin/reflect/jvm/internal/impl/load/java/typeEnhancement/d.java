package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.c;
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
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final c f37915a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final int f37916a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f37917b;

        /* renamed from: c  reason: collision with root package name */
        private final KotlinType f37918c;

        public a(KotlinType type, int i, boolean z) {
            p.d(type, "type");
            this.f37918c = type;
            this.f37916a = i;
            this.f37917b = z;
        }

        public KotlinType a() {
            return this.f37918c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/d$b.class */
    public static final class b extends a {

        /* renamed from: c  reason: collision with root package name */
        final SimpleType f37919c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SimpleType type, int i, boolean z) {
            super(type, i, z);
            p.d(type, "type");
            this.f37919c = type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d.a
        public final /* bridge */ /* synthetic */ KotlinType a() {
            return this.f37919c;
        }
    }

    public d(c javaResolverSettings) {
        p.d(javaResolverSettings, "javaResolverSettings");
        this.f37915a = javaResolverSettings;
    }

    private final a a(UnwrappedType unwrappedType, Function1<? super Integer, e> function1, int i) {
        RawTypeImpl rawTypeImpl;
        UnwrappedType unwrappedType2 = unwrappedType;
        boolean z = false;
        if (KotlinTypeKt.isError(unwrappedType2)) {
            return new a(unwrappedType2, 1, false);
        }
        if (unwrappedType instanceof FlexibleType) {
            boolean z2 = unwrappedType instanceof RawType;
            FlexibleType flexibleType = (FlexibleType) unwrappedType;
            b a2 = a(flexibleType.getLowerBound(), function1, i, o.FLEXIBLE_LOWER, z2);
            b a3 = a(flexibleType.getUpperBound(), function1, i, o.FLEXIBLE_UPPER, z2);
            boolean z3 = a2.f37916a == a3.f37916a;
            if (!x.f38657a || z3) {
                if (a2.f37917b || a3.f37917b) {
                    z = true;
                }
                KotlinType a4 = a(a2.f37919c, a3.f37919c);
                UnwrappedType unwrappedType3 = unwrappedType;
                if (z) {
                    if (unwrappedType instanceof RawTypeImpl) {
                        rawTypeImpl = new RawTypeImpl(a2.f37919c, a3.f37919c);
                    } else {
                        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                        rawTypeImpl = KotlinTypeFactory.flexibleType(a2.f37919c, a3.f37919c);
                    }
                    unwrappedType3 = TypeWithEnhancementKt.wrapEnhancement(rawTypeImpl, a4);
                }
                return new a(unwrappedType3, a2.f37916a, z);
            }
            throw new AssertionError("Different tree sizes of bounds: lower = (" + flexibleType.getLowerBound() + ", " + a2.f37916a + "), upper = (" + flexibleType.getUpperBound() + ", " + a3.f37916a + ')');
        } else if (unwrappedType instanceof SimpleType) {
            return a((SimpleType) unwrappedType, function1, i, o.INFLEXIBLE, false);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b a(SimpleType simpleType, Function1<? super Integer, e> function1, int i, o oVar, boolean z) {
        g declarationDescriptor;
        TypeProjection typeProjection;
        if ((p.a(oVar) || !simpleType.getArguments().isEmpty()) && (declarationDescriptor = simpleType.getConstructor().getDeclarationDescriptor()) != null) {
            e invoke = function1.invoke(Integer.valueOf(i));
            c a2 = s.a(declarationDescriptor, invoke, oVar);
            g gVar = (g) a2.f37913a;
            kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar2 = a2.f37914b;
            TypeConstructor typeConstructor = gVar.getTypeConstructor();
            p.b(typeConstructor, "enhancedClassifier.typeConstructor");
            int i2 = i + 1;
            boolean z2 = gVar2 != null;
            List<TypeProjection> arguments = simpleType.getArguments();
            ArrayList arrayList = new ArrayList(n.a((Iterable) arguments, 10));
            int i3 = 0;
            for (Object obj : arguments) {
                if (i3 < 0) {
                    n.a();
                }
                TypeProjection typeProjection2 = (TypeProjection) obj;
                if (typeProjection2.isStarProjection()) {
                    if (function1.invoke(Integer.valueOf(i2)).f37921b != g.NOT_NULL || z) {
                        typeProjection = TypeUtils.makeStarProjection(gVar.getTypeConstructor().getParameters().get(i3));
                        p.b(typeProjection, "{\n                    TypeUtils.makeStarProjection(enhancedClassifier.typeConstructor.parameters[localArgIndex])\n                }");
                    } else {
                        KotlinType makeNotNullable = TypeUtilsKt.makeNotNullable(typeProjection2.getType().unwrap());
                        Variance projectionKind = typeProjection2.getProjectionKind();
                        p.b(projectionKind, "arg.projectionKind");
                        typeProjection = TypeUtilsKt.createProjection(makeNotNullable, projectionKind, typeConstructor.getParameters().get(i3));
                    }
                    i2++;
                } else {
                    a a3 = a(typeProjection2.getType().unwrap(), function1, i2);
                    z2 = z2 || a3.f37917b;
                    i2 += a3.f37916a;
                    KotlinType a4 = a3.a();
                    Variance projectionKind2 = typeProjection2.getProjectionKind();
                    p.b(projectionKind2, "arg.projectionKind");
                    typeProjection = TypeUtilsKt.createProjection(a4, projectionKind2, typeConstructor.getParameters().get(i3));
                }
                arrayList.add(typeProjection);
                i3++;
            }
            ArrayList arrayList2 = arrayList;
            c a5 = s.a(simpleType, invoke, oVar);
            boolean booleanValue = ((Boolean) a5.f37913a).booleanValue();
            kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar3 = a5.f37914b;
            boolean z3 = z2 || gVar3 != null;
            int i4 = i2 - i;
            if (!z3) {
                return new b(simpleType, i4, false);
            }
            kotlin.reflect.jvm.internal.impl.descriptors.a.g a6 = s.a(n.e(simpleType.getAnnotations(), gVar2, gVar3));
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(a6, typeConstructor, arrayList2, booleanValue, null, 16, null);
            SimpleType simpleType2 = simpleType$default;
            if (invoke.f37923d) {
                simpleType2 = a(simpleType$default);
            }
            boolean z4 = false;
            if (gVar3 != null) {
                z4 = false;
                if (invoke.e) {
                    z4 = true;
                }
            }
            return new b((SimpleType) (z4 ? TypeWithEnhancementKt.wrapEnhancement(simpleType, simpleType2) : simpleType2), i4, true);
        }
        return new b(simpleType, 1, false);
    }

    private static KotlinType a(KotlinType kotlinType, KotlinType kotlinType2) {
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

    private static SimpleType a(SimpleType simpleType) {
        return new NotNullTypeParameter(simpleType);
    }

    public final KotlinType a(KotlinType kotlinType, Function1<? super Integer, e> qualifiers) {
        p.d(kotlinType, "<this>");
        p.d(qualifiers, "qualifiers");
        a a2 = a(kotlinType.unwrap(), qualifiers, 0);
        KotlinType a3 = a2.a();
        if (a2.f37917b) {
            return a3;
        }
        return null;
    }
}

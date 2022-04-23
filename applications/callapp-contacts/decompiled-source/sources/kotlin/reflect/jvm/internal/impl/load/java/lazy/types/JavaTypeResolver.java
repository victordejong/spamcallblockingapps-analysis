package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.i;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.java.d.aa;
import kotlin.reflect.jvm.internal.impl.load.java.d.f;
import kotlin.reflect.jvm.internal.impl.load.java.d.i;
import kotlin.reflect.jvm.internal.impl.load.java.d.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.u;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.x;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver.class */
public final class JavaTypeResolver {

    /* renamed from: c  reason: collision with root package name */
    private final g f37893c;
    private final k typeParameterResolver;

    public JavaTypeResolver(g c2, k typeParameterResolver) {
        p.d(c2, "c");
        p.d(typeParameterResolver, "typeParameterResolver");
        this.f37893c = c2;
        this.typeParameterResolver = typeParameterResolver;
    }

    private final boolean argumentsMakeSenseOnlyForMutableContainer(j jVar, d dVar) {
        if (!argumentsMakeSenseOnlyForMutableContainer$isSuperWildcard((w) n.h((List<? extends Object>) jVar.h()))) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.builtins.a.d dVar2 = kotlin.reflect.jvm.internal.impl.builtins.a.d.f37244a;
        List<TypeParameterDescriptor> parameters = kotlin.reflect.jvm.internal.impl.builtins.a.d.c(dVar).getTypeConstructor().getParameters();
        p.b(parameters, "JavaToKotlinClassMapper.convertReadOnlyToMutable(readOnlyContainer)\n            .typeConstructor.parameters");
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) n.h((List<? extends Object>) parameters);
        Variance variance = typeParameterDescriptor == null ? null : typeParameterDescriptor.getVariance();
        return (variance == null || variance == Variance.OUT_VARIANCE) ? false : true;
    }

    private static final boolean argumentsMakeSenseOnlyForMutableContainer$isSuperWildcard(w wVar) {
        aa aaVar = wVar instanceof aa ? (aa) wVar : null;
        return (aaVar == null || aaVar.e() == null || aaVar.d()) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0036, code lost:
        if ((!r0.isEmpty()) != false) goto L_0x0042;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.types.TypeProjection> computeArguments(kotlin.reflect.jvm.internal.impl.load.java.d.j r10, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r11, kotlin.reflect.jvm.internal.impl.types.TypeConstructor r12) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver.computeArguments(kotlin.reflect.jvm.internal.impl.load.java.d.j, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, kotlin.reflect.jvm.internal.impl.types.TypeConstructor):java.util.List");
    }

    private final SimpleType computeSimpleJavaClassifierType(j jVar, JavaTypeAttributes javaTypeAttributes, SimpleType simpleType) {
        TypeConstructor typeConstructor = null;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = simpleType == null ? null : simpleType.getAnnotations();
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar = annotations;
        if (annotations == null) {
            dVar = new kotlin.reflect.jvm.internal.impl.load.java.lazy.d(this.f37893c, jVar, false, 4, null);
        }
        TypeConstructor computeTypeConstructor = computeTypeConstructor(jVar, javaTypeAttributes);
        if (computeTypeConstructor == null) {
            return null;
        }
        boolean isNullable = isNullable(javaTypeAttributes);
        if (simpleType != null) {
            typeConstructor = simpleType.getConstructor();
        }
        if (p.a(typeConstructor, computeTypeConstructor) && !jVar.g() && isNullable) {
            return simpleType.makeNullableAsSpecified(true);
        }
        List<TypeProjection> computeArguments = computeArguments(jVar, javaTypeAttributes, computeTypeConstructor);
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.simpleType$default(dVar, computeTypeConstructor, computeArguments, isNullable, null, 16, null);
    }

    private final TypeConstructor computeTypeConstructor(j jVar, JavaTypeAttributes javaTypeAttributes) {
        i d2 = jVar.d();
        if (d2 == null) {
            return createNotFoundClass(jVar);
        }
        TypeConstructor typeConstructor = null;
        if (d2 instanceof kotlin.reflect.jvm.internal.impl.load.java.d.g) {
            kotlin.reflect.jvm.internal.impl.load.java.d.g gVar = (kotlin.reflect.jvm.internal.impl.load.java.d.g) d2;
            b e = gVar.e();
            if (e != null) {
                d mapKotlinClass = mapKotlinClass(jVar, javaTypeAttributes, e);
                d dVar = mapKotlinClass;
                if (mapKotlinClass == null) {
                    dVar = this.f37893c.f37882a.k.a(gVar);
                }
                if (dVar != null) {
                    typeConstructor = dVar.getTypeConstructor();
                }
                return typeConstructor == null ? createNotFoundClass(jVar) : typeConstructor;
            }
            throw new AssertionError(p.a("Class type should have a FQ name: ", (Object) d2));
        } else if (d2 instanceof x) {
            TypeParameterDescriptor a2 = this.typeParameterResolver.a((x) d2);
            if (a2 == null) {
                return null;
            }
            return a2.getTypeConstructor();
        } else {
            throw new IllegalStateException(p.a("Unknown classifier kind: ", (Object) d2));
        }
    }

    private final TypeConstructor createNotFoundClass(j jVar) {
        a a2 = a.a(new b(jVar.e()));
        p.b(a2, "topLevel(FqName(javaType.classifierQualifiedName))");
        TypeConstructor typeConstructor = this.f37893c.f37882a.f37785d.a().l.a(a2, n.a(0)).getTypeConstructor();
        p.b(typeConstructor, "c.components.deserializedDescriptorResolver.components.notFoundClasses.getClass(classId, listOf(0)).typeConstructor");
        return typeConstructor;
    }

    private final boolean isConflictingArgumentFor(Variance variance, TypeParameterDescriptor typeParameterDescriptor) {
        return (typeParameterDescriptor.getVariance() == Variance.INVARIANT || variance == typeParameterDescriptor.getVariance()) ? false : true;
    }

    private final boolean isNullable(JavaTypeAttributes javaTypeAttributes) {
        return (javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.isForAnnotationParameter() || javaTypeAttributes.getHowThisTypeIsUsed() == kotlin.reflect.jvm.internal.impl.load.java.a.k.SUPERTYPE) ? false : true;
    }

    private final d mapKotlinClass(j jVar, JavaTypeAttributes javaTypeAttributes, b bVar) {
        d dVar = null;
        if (!javaTypeAttributes.isForAnnotationParameter() || !p.a(bVar, JavaTypeResolverKt.access$getJAVA_LANG_CLASS_FQ_NAME$p$s1946801611())) {
            kotlin.reflect.jvm.internal.impl.builtins.a.d dVar2 = kotlin.reflect.jvm.internal.impl.builtins.a.d.f37244a;
            d a2 = kotlin.reflect.jvm.internal.impl.builtins.a.d.a(bVar, this.f37893c.f37882a.o.getBuiltIns());
            if (a2 == null) {
                return null;
            }
            return (!kotlin.reflect.jvm.internal.impl.builtins.a.d.b(a2) || !(javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.getHowThisTypeIsUsed() == kotlin.reflect.jvm.internal.impl.load.java.a.k.SUPERTYPE || argumentsMakeSenseOnlyForMutableContainer(jVar, a2))) ? a2 : kotlin.reflect.jvm.internal.impl.builtins.a.d.c(a2);
        }
        kotlin.reflect.jvm.internal.impl.builtins.i types = this.f37893c.f37882a.p;
        i.a aVar = types.e;
        KProperty<Object> property = kotlin.reflect.jvm.internal.impl.builtins.i.f37311b[1];
        p.d(types, "types");
        p.d(property, "property");
        String g = kotlin.h.p.g(property.getName());
        int i = aVar.f37314a;
        e a3 = e.a(g);
        p.b(a3, "identifier(className)");
        kotlin.reflect.jvm.internal.impl.descriptors.g contributedClassifier = ((h) types.f37313d.a()).getContributedClassifier(a3, kotlin.reflect.jvm.internal.impl.a.a.d.FROM_REFLECTION);
        if (contributedClassifier instanceof d) {
            dVar = (d) contributedClassifier;
        }
        return dVar == null ? types.f37312c.a(new a(kotlin.reflect.jvm.internal.impl.builtins.j.j, a3), n.a(Integer.valueOf(i))) : dVar;
    }

    public static /* synthetic */ KotlinType transformArrayType$default(JavaTypeResolver javaTypeResolver, f fVar, JavaTypeAttributes javaTypeAttributes, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return javaTypeResolver.transformArrayType(fVar, javaTypeAttributes, z);
    }

    private final KotlinType transformJavaClassifierType(j jVar, JavaTypeAttributes javaTypeAttributes) {
        SimpleType computeSimpleJavaClassifierType;
        boolean z = !javaTypeAttributes.isForAnnotationParameter() && javaTypeAttributes.getHowThisTypeIsUsed() != kotlin.reflect.jvm.internal.impl.load.java.a.k.SUPERTYPE;
        boolean g = jVar.g();
        if (g || z) {
            SimpleType computeSimpleJavaClassifierType2 = computeSimpleJavaClassifierType(jVar, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
            if (!(computeSimpleJavaClassifierType2 == null || (computeSimpleJavaClassifierType = computeSimpleJavaClassifierType(jVar, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), computeSimpleJavaClassifierType2)) == null)) {
                if (g) {
                    return new RawTypeImpl(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType);
                }
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                return KotlinTypeFactory.flexibleType(computeSimpleJavaClassifierType2, computeSimpleJavaClassifierType);
            }
            return transformJavaClassifierType$errorType(jVar);
        }
        SimpleType computeSimpleJavaClassifierType3 = computeSimpleJavaClassifierType(jVar, javaTypeAttributes, null);
        return computeSimpleJavaClassifierType3 == null ? transformJavaClassifierType$errorType(jVar) : computeSimpleJavaClassifierType3;
    }

    private static final SimpleType transformJavaClassifierType$errorType(j jVar) {
        SimpleType createErrorType = ErrorUtils.createErrorType(p.a("Unresolved java class ", (Object) jVar.f()));
        p.b(createErrorType, "createErrorType(\"Unresolved java class ${javaType.presentableText}\")");
        return createErrorType;
    }

    private final TypeProjection transformToTypeProjection(w wVar, JavaTypeAttributes javaTypeAttributes, TypeParameterDescriptor typeParameterDescriptor) {
        if (!(wVar instanceof aa)) {
            return new TypeProjectionImpl(Variance.INVARIANT, transformJavaType(wVar, javaTypeAttributes));
        }
        aa aaVar = (aa) wVar;
        w e = aaVar.e();
        Variance variance = aaVar.d() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
        return (e == null || isConflictingArgumentFor(variance, typeParameterDescriptor)) ? JavaTypeResolverKt.makeStarProjection(typeParameterDescriptor, javaTypeAttributes) : TypeUtilsKt.createProjection(transformJavaType(e, JavaTypeResolverKt.toAttributes$default(kotlin.reflect.jvm.internal.impl.load.java.a.k.COMMON, false, null, 3, null)), variance, typeParameterDescriptor);
    }

    public final KotlinType transformArrayType(f arrayType, JavaTypeAttributes attr, boolean z) {
        p.d(arrayType, "arrayType");
        p.d(attr, "attr");
        w d2 = arrayType.d();
        u uVar = d2 instanceof u ? (u) d2 : null;
        kotlin.reflect.jvm.internal.impl.builtins.h d3 = uVar == null ? null : uVar.d();
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar = new kotlin.reflect.jvm.internal.impl.load.java.lazy.d(this.f37893c, arrayType, true);
        if (d3 != null) {
            SimpleType b2 = this.f37893c.f37882a.o.getBuiltIns().b(d3);
            p.b(b2, "c.module.builtIns.getPrimitiveArrayKotlinType(primitiveType)");
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            b2.replaceAnnotations(g.a.a(n.c((Iterable) dVar, (Iterable) b2.getAnnotations())));
            if (attr.isForAnnotationParameter()) {
                return b2;
            }
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.flexibleType(b2, b2.makeNullableAsSpecified(true));
        }
        KotlinType transformJavaType = transformJavaType(d2, JavaTypeResolverKt.toAttributes$default(kotlin.reflect.jvm.internal.impl.load.java.a.k.COMMON, attr.isForAnnotationParameter(), null, 2, null));
        if (attr.isForAnnotationParameter()) {
            SimpleType a2 = this.f37893c.f37882a.o.getBuiltIns().a(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, transformJavaType, dVar);
            p.b(a2, "c.module.builtIns.getArrayType(projectionKind, componentType, annotations)");
            return a2;
        }
        KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.d dVar2 = dVar;
        SimpleType a3 = this.f37893c.f37882a.o.getBuiltIns().a(Variance.INVARIANT, transformJavaType, dVar2);
        p.b(a3, "c.module.builtIns.getArrayType(INVARIANT, componentType, annotations)");
        return KotlinTypeFactory.flexibleType(a3, this.f37893c.f37882a.o.getBuiltIns().a(Variance.OUT_VARIANCE, transformJavaType, dVar2).makeNullableAsSpecified(true));
    }

    public final KotlinType transformJavaType(w wVar, JavaTypeAttributes attr) {
        p.d(attr, "attr");
        if (wVar instanceof u) {
            kotlin.reflect.jvm.internal.impl.builtins.h d2 = ((u) wVar).d();
            SimpleType a2 = d2 != null ? this.f37893c.f37882a.o.getBuiltIns().a(d2) : this.f37893c.f37882a.o.getBuiltIns().o();
            p.b(a2, "{\n                val primitiveType = javaType.type\n                if (primitiveType != null) c.module.builtIns.getPrimitiveKotlinType(primitiveType)\n                else c.module.builtIns.unitType\n            }");
            return a2;
        } else if (wVar instanceof j) {
            return transformJavaClassifierType((j) wVar, attr);
        } else {
            if (wVar instanceof f) {
                return transformArrayType$default(this, (f) wVar, attr, false, 4, null);
            }
            if (wVar instanceof aa) {
                w e = ((aa) wVar).e();
                KotlinType transformJavaType = e == null ? null : transformJavaType(e, attr);
                SimpleType simpleType = transformJavaType;
                if (transformJavaType == null) {
                    SimpleType i = this.f37893c.f37882a.o.getBuiltIns().i();
                    p.b(i, "c.module.builtIns.defaultBound");
                    simpleType = i;
                }
                return simpleType;
            } else if (wVar == null) {
                SimpleType i2 = this.f37893c.f37882a.o.getBuiltIns().i();
                p.b(i2, "c.module.builtIns.defaultBound");
                return i2;
            } else {
                throw new UnsupportedOperationException(p.a("Unsupported type: ", (Object) wVar));
            }
        }
    }
}

package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.C18950i;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18896d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.AbstractC19506k;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19436d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19390aa;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19397f;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19400i;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19412u;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19415x;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
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

    /* renamed from: c */
    private final C19501g f65493c;
    private final AbstractC19506k typeParameterResolver;

    public JavaTypeResolver(C19501g c, AbstractC19506k typeParameterResolver) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(typeParameterResolver, "typeParameterResolver");
        this.f65493c = c;
        this.typeParameterResolver = typeParameterResolver;
    }

    private final boolean argumentsMakeSenseOnlyForMutableContainer(AbstractC19401j abstractC19401j, AbstractC19070d abstractC19070d) {
        if (!argumentsMakeSenseOnlyForMutableContainer$isSuperWildcard((AbstractC19414w) C18282n.m4117h((List<? extends Object>) abstractC19401j.mo2199h()))) {
            return false;
        }
        C18896d c18896d = C18896d.f64468a;
        List<TypeParameterDescriptor> parameters = C18896d.m2893c(abstractC19070d).getTypeConstructor().getParameters();
        C18524p.m3843b(parameters, "JavaToKotlinClassMapper.convertReadOnlyToMutable(readOnlyContainer)\n            .typeConstructor.parameters");
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) C18282n.m4117h((List<? extends Object>) parameters);
        Variance variance = typeParameterDescriptor == null ? null : typeParameterDescriptor.getVariance();
        return (variance == null || variance == Variance.OUT_VARIANCE) ? false : true;
    }

    private static final boolean argumentsMakeSenseOnlyForMutableContainer$isSuperWildcard(AbstractC19414w abstractC19414w) {
        AbstractC19390aa abstractC19390aa = abstractC19414w instanceof AbstractC19390aa ? (AbstractC19390aa) abstractC19414w : null;
        return (abstractC19390aa == null || abstractC19390aa.mo2224e() == null || abstractC19390aa.mo2225d()) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0036, code lost:
        if ((!r0.isEmpty()) != false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.types.TypeProjection> computeArguments(kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j r10, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r11, kotlin.reflect.jvm.internal.impl.types.TypeConstructor r12) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver.computeArguments(kotlin.reflect.jvm.internal.impl.load.java.d.j, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, kotlin.reflect.jvm.internal.impl.types.TypeConstructor):java.util.List");
    }

    private final SimpleType computeSimpleJavaClassifierType(AbstractC19401j abstractC19401j, JavaTypeAttributes javaTypeAttributes, SimpleType simpleType) {
        AbstractC18983g annotations = simpleType == null ? null : simpleType.getAnnotations();
        C19436d c19436d = annotations;
        if (annotations == null) {
            c19436d = new C19436d(this.f65493c, abstractC19401j, false, 4, null);
        }
        TypeConstructor computeTypeConstructor = computeTypeConstructor(abstractC19401j, javaTypeAttributes);
        if (computeTypeConstructor == null) {
            return null;
        }
        boolean isNullable = isNullable(javaTypeAttributes);
        if (C18524p.m3850a(simpleType == null ? null : simpleType.getConstructor(), computeTypeConstructor) && !abstractC19401j.mo2200g() && isNullable) {
            return simpleType.makeNullableAsSpecified(true);
        }
        List<TypeProjection> computeArguments = computeArguments(abstractC19401j, javaTypeAttributes, computeTypeConstructor);
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        return KotlinTypeFactory.simpleType$default(c19436d, computeTypeConstructor, computeArguments, isNullable, null, 16, null);
    }

    private final TypeConstructor computeTypeConstructor(AbstractC19401j abstractC19401j, JavaTypeAttributes javaTypeAttributes) {
        AbstractC19400i mo2203d = abstractC19401j.mo2203d();
        if (mo2203d == null) {
            return createNotFoundClass(abstractC19401j);
        }
        if (!(mo2203d instanceof AbstractC19398g)) {
            if (!(mo2203d instanceof AbstractC19415x)) {
                throw new IllegalStateException(C18524p.m3847a("Unknown classifier kind: ", (Object) mo2203d));
            }
            TypeParameterDescriptor mo2067a = this.typeParameterResolver.mo2067a((AbstractC19415x) mo2203d);
            if (mo2067a != null) {
                return mo2067a.getTypeConstructor();
            }
            return null;
        }
        AbstractC19398g abstractC19398g = (AbstractC19398g) mo2203d;
        C18961b mo2216e = abstractC19398g.mo2216e();
        if (mo2216e == null) {
            throw new AssertionError(C18524p.m3847a("Class type should have a FQ name: ", (Object) mo2203d));
        }
        AbstractC19070d mapKotlinClass = mapKotlinClass(abstractC19401j, javaTypeAttributes, mo2216e);
        AbstractC19070d abstractC19070d = mapKotlinClass;
        if (mapKotlinClass == null) {
            abstractC19070d = this.f65493c.f65480a.f65328k.mo2068a(abstractC19398g);
        }
        TypeConstructor typeConstructor = abstractC19070d == null ? null : abstractC19070d.getTypeConstructor();
        return typeConstructor == null ? createNotFoundClass(abstractC19401j) : typeConstructor;
    }

    private final TypeConstructor createNotFoundClass(AbstractC19401j abstractC19401j) {
        C18960a m2754a = C18960a.m2754a(new C18961b(abstractC19401j.mo2202e()));
        C18524p.m3843b(m2754a, "topLevel(FqName(javaType.classifierQualifiedName))");
        TypeConstructor typeConstructor = this.f65493c.f65480a.f65321d.m1915a().f66260l.m2699a(m2754a, C18282n.m4176a(0)).getTypeConstructor();
        C18524p.m3843b(typeConstructor, "c.components.deserializedDescriptorResolver.components.notFoundClasses.getClass(classId, listOf(0)).typeConstructor");
        return typeConstructor;
    }

    private final boolean isConflictingArgumentFor(Variance variance, TypeParameterDescriptor typeParameterDescriptor) {
        return (typeParameterDescriptor.getVariance() == Variance.INVARIANT || variance == typeParameterDescriptor.getVariance()) ? false : true;
    }

    private final boolean isNullable(JavaTypeAttributes javaTypeAttributes) {
        return (javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.isForAnnotationParameter() || javaTypeAttributes.getHowThisTypeIsUsed() == EnumC19365k.SUPERTYPE) ? false : true;
    }

    private final AbstractC19070d mapKotlinClass(AbstractC19401j abstractC19401j, JavaTypeAttributes javaTypeAttributes, C18961b c18961b) {
        C18961b c18961b2;
        if (javaTypeAttributes.isForAnnotationParameter()) {
            c18961b2 = JavaTypeResolverKt.JAVA_LANG_CLASS_FQ_NAME;
            if (C18524p.m3850a(c18961b, c18961b2)) {
                C18950i types = this.f65493c.f65480a.f65333p;
                C18950i.C18951a c18951a = types.f64561e;
                KProperty<Object> property = C18950i.f64558b[1];
                C18524p.m3840d(types, "types");
                C18524p.m3840d(property, "property");
                String g = C18425p.m3953g(property.getName());
                int i = c18951a.f64569a;
                C18966e m2719a = C18966e.m2719a(g);
                C18524p.m3843b(m2719a, "identifier(className)");
                AbstractC19129g contributedClassifier = ((AbstractC19834h) types.f64560d.mo1102a()).getContributedClassifier(m2719a, EnumC18698d.FROM_REFLECTION);
                AbstractC19070d abstractC19070d = null;
                if (contributedClassifier instanceof AbstractC19070d) {
                    abstractC19070d = (AbstractC19070d) contributedClassifier;
                }
                return abstractC19070d == null ? types.f64559c.m2699a(new C18960a(C18954j.f64580j, m2719a), C18282n.m4176a(Integer.valueOf(i))) : abstractC19070d;
            }
        }
        C18896d c18896d = C18896d.f64468a;
        AbstractC19070d m2896a = C18896d.m2896a(c18961b, this.f65493c.f65480a.f65332o.getBuiltIns());
        if (m2896a == null) {
            return null;
        }
        return (!C18896d.m2894b(m2896a) || !(javaTypeAttributes.getFlexibility() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.getHowThisTypeIsUsed() == EnumC19365k.SUPERTYPE || argumentsMakeSenseOnlyForMutableContainer(abstractC19401j, m2896a))) ? m2896a : C18896d.m2893c(m2896a);
    }

    public static /* synthetic */ KotlinType transformArrayType$default(JavaTypeResolver javaTypeResolver, AbstractC19397f abstractC19397f, JavaTypeAttributes javaTypeAttributes, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return javaTypeResolver.transformArrayType(abstractC19397f, javaTypeAttributes, z);
    }

    private final KotlinType transformJavaClassifierType(AbstractC19401j abstractC19401j, JavaTypeAttributes javaTypeAttributes) {
        SimpleType computeSimpleJavaClassifierType;
        boolean z = !javaTypeAttributes.isForAnnotationParameter() && javaTypeAttributes.getHowThisTypeIsUsed() != EnumC19365k.SUPERTYPE;
        boolean mo2200g = abstractC19401j.mo2200g();
        if (!mo2200g && !z) {
            SimpleType computeSimpleJavaClassifierType2 = computeSimpleJavaClassifierType(abstractC19401j, javaTypeAttributes, null);
            return computeSimpleJavaClassifierType2 == null ? transformJavaClassifierType$errorType(abstractC19401j) : computeSimpleJavaClassifierType2;
        }
        SimpleType computeSimpleJavaClassifierType3 = computeSimpleJavaClassifierType(abstractC19401j, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (computeSimpleJavaClassifierType3 != null && (computeSimpleJavaClassifierType = computeSimpleJavaClassifierType(abstractC19401j, javaTypeAttributes.withFlexibility(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), computeSimpleJavaClassifierType3)) != null) {
            if (mo2200g) {
                return new RawTypeImpl(computeSimpleJavaClassifierType3, computeSimpleJavaClassifierType);
            }
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.flexibleType(computeSimpleJavaClassifierType3, computeSimpleJavaClassifierType);
        }
        return transformJavaClassifierType$errorType(abstractC19401j);
    }

    private static final SimpleType transformJavaClassifierType$errorType(AbstractC19401j abstractC19401j) {
        SimpleType createErrorType = ErrorUtils.createErrorType(C18524p.m3847a("Unresolved java class ", (Object) abstractC19401j.mo2201f()));
        C18524p.m3843b(createErrorType, "createErrorType(\"Unresolved java class ${javaType.presentableText}\")");
        return createErrorType;
    }

    private final TypeProjection transformToTypeProjection(AbstractC19414w abstractC19414w, JavaTypeAttributes javaTypeAttributes, TypeParameterDescriptor typeParameterDescriptor) {
        if (abstractC19414w instanceof AbstractC19390aa) {
            AbstractC19390aa abstractC19390aa = (AbstractC19390aa) abstractC19414w;
            AbstractC19414w mo2224e = abstractC19390aa.mo2224e();
            Variance variance = abstractC19390aa.mo2225d() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
            return (mo2224e == null || isConflictingArgumentFor(variance, typeParameterDescriptor)) ? JavaTypeResolverKt.makeStarProjection(typeParameterDescriptor, javaTypeAttributes) : TypeUtilsKt.createProjection(transformJavaType(mo2224e, JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, null, 3, null)), variance, typeParameterDescriptor);
        }
        return new TypeProjectionImpl(Variance.INVARIANT, transformJavaType(abstractC19414w, javaTypeAttributes));
    }

    public final KotlinType transformArrayType(AbstractC19397f arrayType, JavaTypeAttributes attr, boolean z) {
        C18524p.m3840d(arrayType, "arrayType");
        C18524p.m3840d(attr, "attr");
        AbstractC19414w mo2217d = arrayType.mo2217d();
        AbstractC19412u abstractC19412u = mo2217d instanceof AbstractC19412u ? (AbstractC19412u) mo2217d : null;
        EnumC18946h mo2179d = abstractC19412u == null ? null : abstractC19412u.mo2179d();
        C19436d c19436d = new C19436d(this.f65493c, arrayType, true);
        if (mo2179d != null) {
            SimpleType m2818b = this.f65493c.f65480a.f65332o.getBuiltIns().m2818b(mo2179d);
            C18524p.m3843b(m2818b, "c.module.builtIns.getPrimitiveArrayKotlinType(primitiveType)");
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            m2818b.replaceAnnotations(AbstractC18983g.C18984a.m2704a(C18282n.m4132c((Iterable) c19436d, (Iterable) m2818b.getAnnotations())));
            if (attr.isForAnnotationParameter()) {
                return m2818b;
            }
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.flexibleType(m2818b, m2818b.makeNullableAsSpecified(true));
        }
        KotlinType transformJavaType = transformJavaType(mo2217d, JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, attr.isForAnnotationParameter(), null, 2, null));
        if (attr.isForAnnotationParameter()) {
            SimpleType m2822a = this.f65493c.f65480a.f65332o.getBuiltIns().m2822a(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, transformJavaType, c19436d);
            C18524p.m3843b(m2822a, "c.module.builtIns.getArrayType(projectionKind, componentType, annotations)");
            return m2822a;
        }
        KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
        C19436d c19436d2 = c19436d;
        SimpleType m2822a2 = this.f65493c.f65480a.f65332o.getBuiltIns().m2822a(Variance.INVARIANT, transformJavaType, c19436d2);
        C18524p.m3843b(m2822a2, "c.module.builtIns.getArrayType(INVARIANT, componentType, annotations)");
        return KotlinTypeFactory.flexibleType(m2822a2, this.f65493c.f65480a.f65332o.getBuiltIns().m2822a(Variance.OUT_VARIANCE, transformJavaType, c19436d2).makeNullableAsSpecified(true));
    }

    public final KotlinType transformJavaType(AbstractC19414w abstractC19414w, JavaTypeAttributes attr) {
        C18524p.m3840d(attr, "attr");
        if (abstractC19414w instanceof AbstractC19412u) {
            EnumC18946h mo2179d = ((AbstractC19412u) abstractC19414w).mo2179d();
            SimpleType m2831a = mo2179d != null ? this.f65493c.f65480a.f65332o.getBuiltIns().m2831a(mo2179d) : this.f65493c.f65480a.f65332o.getBuiltIns().m2782o();
            C18524p.m3843b(m2831a, "{\n                val primitiveType = javaType.type\n                if (primitiveType != null) c.module.builtIns.getPrimitiveKotlinType(primitiveType)\n                else c.module.builtIns.unitType\n            }");
            return m2831a;
        } else if (abstractC19414w instanceof AbstractC19401j) {
            return transformJavaClassifierType((AbstractC19401j) abstractC19414w, attr);
        } else {
            if (abstractC19414w instanceof AbstractC19397f) {
                return transformArrayType$default(this, (AbstractC19397f) abstractC19414w, attr, false, 4, null);
            }
            if (!(abstractC19414w instanceof AbstractC19390aa)) {
                if (abstractC19414w != null) {
                    throw new UnsupportedOperationException(C18524p.m3847a("Unsupported type: ", (Object) abstractC19414w));
                }
                SimpleType m2794i = this.f65493c.f65480a.f65332o.getBuiltIns().m2794i();
                C18524p.m3843b(m2794i, "c.module.builtIns.defaultBound");
                return m2794i;
            }
            AbstractC19414w mo2224e = ((AbstractC19390aa) abstractC19414w).mo2224e();
            KotlinType transformJavaType = mo2224e == null ? null : transformJavaType(mo2224e, attr);
            SimpleType simpleType = transformJavaType;
            if (transformJavaType == null) {
                SimpleType m2794i2 = this.f65493c.f65480a.f65332o.getBuiltIns().m2794i();
                C18524p.m3843b(m2794i2, "c.module.builtIns.defaultBound");
                simpleType = m2794i2;
            }
            return simpleType;
        }
    }
}

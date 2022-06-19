package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerValueTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl.class */
public final class NewKotlinTypeCheckerImpl implements NewKotlinTypeChecker {
    private final KotlinTypeRefiner kotlinTypeRefiner;
    private final OverridingUtil overridingUtil;

    public NewKotlinTypeCheckerImpl(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.kotlinTypeRefiner = kotlinTypeRefiner;
        OverridingUtil m1562a = OverridingUtil.m1562a(getKotlinTypeRefiner());
        C18524p.m3843b(m1562a, "createWithTypeRefiner(kotlinTypeRefiner)");
        this.overridingUtil = m1562a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker
    public final boolean equalTypes(KotlinType a, KotlinType b) {
        C18524p.m3840d(a, "a");
        C18524p.m3840d(b, "b");
        return equalTypes(new ClassicTypeCheckerContext(false, false, false, getKotlinTypeRefiner(), 6, null), a.unwrap(), b.unwrap());
    }

    public final boolean equalTypes(ClassicTypeCheckerContext classicTypeCheckerContext, UnwrappedType a, UnwrappedType b) {
        C18524p.m3840d(classicTypeCheckerContext, "<this>");
        C18524p.m3840d(a, "a");
        C18524p.m3840d(b, "b");
        return AbstractTypeChecker.INSTANCE.equalTypes(classicTypeCheckerContext, a, b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker
    public final KotlinTypeRefiner getKotlinTypeRefiner() {
        return this.kotlinTypeRefiner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker
    public final OverridingUtil getOverridingUtil() {
        return this.overridingUtil;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker
    public final boolean isSubtypeOf(KotlinType subtype, KotlinType supertype) {
        C18524p.m3840d(subtype, "subtype");
        C18524p.m3840d(supertype, "supertype");
        return isSubtypeOf(new ClassicTypeCheckerContext(true, false, false, getKotlinTypeRefiner(), 6, null), subtype.unwrap(), supertype.unwrap());
    }

    public final boolean isSubtypeOf(ClassicTypeCheckerContext classicTypeCheckerContext, UnwrappedType subType, UnwrappedType superType) {
        C18524p.m3840d(classicTypeCheckerContext, "<this>");
        C18524p.m3840d(subType, "subType");
        C18524p.m3840d(superType, "superType");
        return AbstractTypeChecker.isSubtypeOf$default(AbstractTypeChecker.INSTANCE, classicTypeCheckerContext, subType, superType, false, 8, null);
    }

    public final SimpleType transformToNewType(SimpleType type) {
        IntersectionTypeConstructor intersectionTypeConstructor;
        UnwrappedType unwrappedType;
        C18524p.m3840d(type, "type");
        TypeConstructor constructor = type.getConstructor();
        boolean z = false;
        if (constructor instanceof CapturedTypeConstructorImpl) {
            CapturedTypeConstructorImpl capturedTypeConstructorImpl = (CapturedTypeConstructorImpl) constructor;
            TypeProjection projection = capturedTypeConstructorImpl.getProjection();
            if (!(projection.getProjectionKind() == Variance.IN_VARIANCE)) {
                projection = null;
            }
            if (projection == null) {
                unwrappedType = null;
            } else {
                KotlinType type2 = projection.getType();
                unwrappedType = type2 == null ? null : type2.unwrap();
            }
            if (capturedTypeConstructorImpl.getNewTypeConstructor() == null) {
                TypeProjection projection2 = capturedTypeConstructorImpl.getProjection();
                Collection<KotlinType> mo53752getSupertypes = capturedTypeConstructorImpl.mo53752getSupertypes();
                ArrayList arrayList = new ArrayList(C18282n.m4163a(mo53752getSupertypes, 10));
                for (KotlinType kotlinType : mo53752getSupertypes) {
                    arrayList.add(kotlinType.unwrap());
                }
                capturedTypeConstructorImpl.setNewTypeConstructor(new NewCapturedTypeConstructor(projection2, arrayList, null, 4, null));
            }
            CaptureStatus captureStatus = CaptureStatus.FOR_SUBTYPING;
            NewCapturedTypeConstructor newTypeConstructor = capturedTypeConstructorImpl.getNewTypeConstructor();
            C18524p.m3851a(newTypeConstructor);
            return new NewCapturedType(captureStatus, newTypeConstructor, unwrappedType, type.getAnnotations(), type.isMarkedNullable(), false, 32, null);
        } else if (constructor instanceof IntegerValueTypeConstructor) {
            Collection<KotlinType> mo53752getSupertypes2 = ((IntegerValueTypeConstructor) constructor).mo53752getSupertypes();
            ArrayList arrayList2 = new ArrayList(C18282n.m4163a(mo53752getSupertypes2, 10));
            for (KotlinType kotlinType2 : mo53752getSupertypes2) {
                KotlinType makeNullableAsSpecified = TypeUtils.makeNullableAsSpecified(kotlinType2, type.isMarkedNullable());
                C18524p.m3843b(makeNullableAsSpecified, "makeNullableAsSpecified(it, type.isMarkedNullable)");
                arrayList2.add(makeNullableAsSpecified);
            }
            IntersectionTypeConstructor intersectionTypeConstructor2 = new IntersectionTypeConstructor(arrayList2);
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(type.getAnnotations(), intersectionTypeConstructor2, C18297z.f63400a, false, type.getMemberScope());
        } else {
            SimpleType simpleType = type;
            if (constructor instanceof IntersectionTypeConstructor) {
                simpleType = type;
                if (type.isMarkedNullable()) {
                    IntersectionTypeConstructor intersectionTypeConstructor3 = (IntersectionTypeConstructor) constructor;
                    Collection<KotlinType> mo53752getSupertypes3 = intersectionTypeConstructor3.mo53752getSupertypes();
                    ArrayList arrayList3 = new ArrayList(C18282n.m4163a(mo53752getSupertypes3, 10));
                    for (KotlinType kotlinType3 : mo53752getSupertypes3) {
                        arrayList3.add(TypeUtilsKt.makeNullable(kotlinType3));
                        z = true;
                    }
                    ArrayList arrayList4 = arrayList3;
                    if (!z) {
                        intersectionTypeConstructor = null;
                    } else {
                        KotlinType alternativeType = intersectionTypeConstructor3.getAlternativeType();
                        intersectionTypeConstructor = new IntersectionTypeConstructor(arrayList4).setAlternative(alternativeType == null ? null : TypeUtilsKt.makeNullable(alternativeType));
                    }
                    if (intersectionTypeConstructor == null) {
                        intersectionTypeConstructor = intersectionTypeConstructor3;
                    }
                    simpleType = intersectionTypeConstructor.createType();
                }
            }
            return simpleType;
        }
    }

    public final UnwrappedType transformToNewType(UnwrappedType type) {
        SimpleType simpleType;
        C18524p.m3840d(type, "type");
        if (type instanceof SimpleType) {
            simpleType = transformToNewType((SimpleType) type);
        } else if (!(type instanceof FlexibleType)) {
            throw new NoWhenBranchMatchedException();
        } else {
            FlexibleType flexibleType = (FlexibleType) type;
            SimpleType transformToNewType = transformToNewType(flexibleType.getLowerBound());
            SimpleType transformToNewType2 = transformToNewType(flexibleType.getUpperBound());
            if (transformToNewType == flexibleType.getLowerBound() && transformToNewType2 == flexibleType.getUpperBound()) {
                simpleType = type;
            } else {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                simpleType = KotlinTypeFactory.flexibleType(transformToNewType, transformToNewType2);
            }
        }
        return TypeWithEnhancementKt.inheritEnhancement(simpleType, type);
    }
}

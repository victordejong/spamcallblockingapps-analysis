package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.internal.p;
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
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.kotlinTypeRefiner = kotlinTypeRefiner;
        OverridingUtil a2 = OverridingUtil.a(getKotlinTypeRefiner());
        p.b(a2, "createWithTypeRefiner(kotlinTypeRefiner)");
        this.overridingUtil = a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker
    public final boolean equalTypes(KotlinType a2, KotlinType b2) {
        p.d(a2, "a");
        p.d(b2, "b");
        return equalTypes(new ClassicTypeCheckerContext(false, false, false, getKotlinTypeRefiner(), 6, null), a2.unwrap(), b2.unwrap());
    }

    public final boolean equalTypes(ClassicTypeCheckerContext classicTypeCheckerContext, UnwrappedType a2, UnwrappedType b2) {
        p.d(classicTypeCheckerContext, "<this>");
        p.d(a2, "a");
        p.d(b2, "b");
        return AbstractTypeChecker.INSTANCE.equalTypes(classicTypeCheckerContext, a2, b2);
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
        p.d(subtype, "subtype");
        p.d(supertype, "supertype");
        return isSubtypeOf(new ClassicTypeCheckerContext(true, false, false, getKotlinTypeRefiner(), 6, null), subtype.unwrap(), supertype.unwrap());
    }

    public final boolean isSubtypeOf(ClassicTypeCheckerContext classicTypeCheckerContext, UnwrappedType subType, UnwrappedType superType) {
        p.d(classicTypeCheckerContext, "<this>");
        p.d(subType, "subType");
        p.d(superType, "superType");
        return AbstractTypeChecker.isSubtypeOf$default(AbstractTypeChecker.INSTANCE, classicTypeCheckerContext, subType, superType, false, 8, null);
    }

    public final SimpleType transformToNewType(SimpleType type) {
        UnwrappedType unwrappedType;
        p.d(type, "type");
        TypeConstructor constructor = type.getConstructor();
        boolean z = true;
        boolean z2 = false;
        KotlinType kotlinType = null;
        IntersectionTypeConstructor intersectionTypeConstructor = null;
        if (constructor instanceof CapturedTypeConstructorImpl) {
            CapturedTypeConstructorImpl capturedTypeConstructorImpl = (CapturedTypeConstructorImpl) constructor;
            TypeProjection projection = capturedTypeConstructorImpl.getProjection();
            if (projection.getProjectionKind() != Variance.IN_VARIANCE) {
                z = false;
            }
            if (!z) {
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
                Collection<KotlinType> supertypes = capturedTypeConstructorImpl.mo7371getSupertypes();
                ArrayList arrayList = new ArrayList(n.a(supertypes, 10));
                for (KotlinType kotlinType2 : supertypes) {
                    arrayList.add(kotlinType2.unwrap());
                }
                capturedTypeConstructorImpl.setNewTypeConstructor(new NewCapturedTypeConstructor(projection2, arrayList, null, 4, null));
            }
            CaptureStatus captureStatus = CaptureStatus.FOR_SUBTYPING;
            NewCapturedTypeConstructor newTypeConstructor = capturedTypeConstructorImpl.getNewTypeConstructor();
            p.a(newTypeConstructor);
            return new NewCapturedType(captureStatus, newTypeConstructor, unwrappedType, type.getAnnotations(), type.isMarkedNullable(), false, 32, null);
        } else if (constructor instanceof IntegerValueTypeConstructor) {
            Collection<KotlinType> supertypes2 = ((IntegerValueTypeConstructor) constructor).mo7371getSupertypes();
            ArrayList arrayList2 = new ArrayList(n.a(supertypes2, 10));
            for (KotlinType kotlinType3 : supertypes2) {
                KotlinType makeNullableAsSpecified = TypeUtils.makeNullableAsSpecified(kotlinType3, type.isMarkedNullable());
                p.b(makeNullableAsSpecified, "makeNullableAsSpecified(it, type.isMarkedNullable)");
                arrayList2.add(makeNullableAsSpecified);
            }
            IntersectionTypeConstructor intersectionTypeConstructor2 = new IntersectionTypeConstructor(arrayList2);
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(type.getAnnotations(), intersectionTypeConstructor2, z.f36608a, false, type.getMemberScope());
        } else {
            SimpleType simpleType = type;
            if (constructor instanceof IntersectionTypeConstructor) {
                simpleType = type;
                if (type.isMarkedNullable()) {
                    IntersectionTypeConstructor intersectionTypeConstructor3 = (IntersectionTypeConstructor) constructor;
                    Collection<KotlinType> supertypes3 = intersectionTypeConstructor3.mo7371getSupertypes();
                    ArrayList arrayList3 = new ArrayList(n.a(supertypes3, 10));
                    for (KotlinType kotlinType4 : supertypes3) {
                        arrayList3.add(TypeUtilsKt.makeNullable(kotlinType4));
                        z2 = true;
                    }
                    ArrayList arrayList4 = arrayList3;
                    if (z2) {
                        KotlinType alternativeType = intersectionTypeConstructor3.getAlternativeType();
                        if (alternativeType != null) {
                            kotlinType = TypeUtilsKt.makeNullable(alternativeType);
                        }
                        intersectionTypeConstructor = new IntersectionTypeConstructor(arrayList4).setAlternative(kotlinType);
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
        p.d(type, "type");
        if (type instanceof SimpleType) {
            simpleType = transformToNewType((SimpleType) type);
        } else if (type instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) type;
            SimpleType transformToNewType = transformToNewType(flexibleType.getLowerBound());
            SimpleType transformToNewType2 = transformToNewType(flexibleType.getUpperBound());
            if (transformToNewType == flexibleType.getLowerBound() && transformToNewType2 == flexibleType.getUpperBound()) {
                simpleType = type;
            } else {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                simpleType = KotlinTypeFactory.flexibleType(transformToNewType, transformToNewType2);
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return TypeWithEnhancementKt.inheritEnhancement(simpleType, type);
    }
}

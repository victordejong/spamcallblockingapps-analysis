package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeBase;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import okhttp3.HttpUrl;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��0\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001e\u0010��\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\b\u001a\u0004\b\u0005\u0010\t¨\u0006\u0015"}, m400d2 = {"javaType", "Ljava/lang/reflect/Type;", "Lkotlin/reflect/KType;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "Lkotlin/reflect/KTypeProjection;", "(Lkotlin/reflect/KTypeProjection;)V", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "createPossiblyInnerType", "jClass", "Ljava/lang/Class;", "arguments", "", "typeToString", "", "type", "computeJavaType", "forceWrapper", "", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/reflect/TypesJVMKt.class */
public final class TypesJVMKt {

    @Metadata(m402bv = {1, 0, 3}, m399k = 3, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/reflect/TypesJVMKt$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[KVariance.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[KVariance.IN.ordinal()] = 1;
            iArr[KVariance.INVARIANT.ordinal()] = 2;
            iArr[KVariance.OUT.ordinal()] = 3;
            int[] iArr2 = new int[KVariance.values().length];
            $EnumSwitchMapping$1 = iArr2;
            iArr2[KVariance.INVARIANT.ordinal()] = 1;
            iArr2[KVariance.IN.ordinal()] = 2;
            iArr2[KVariance.OUT.ordinal()] = 3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v57, types: [kotlin.reflect.GenericArrayTypeImpl] */
    public static final Type computeJavaType(KType kType, boolean z) {
        Class cls;
        int i;
        KClassifier classifier = kType.getClassifier();
        if (classifier instanceof KTypeParameter) {
            return new TypeVariableImpl((KTypeParameter) classifier);
        }
        if (!(classifier instanceof KClass)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
        }
        KClass kClass = (KClass) classifier;
        Class javaObjectType = z ? JvmClassMappingKt.getJavaObjectType(kClass) : JvmClassMappingKt.getJavaClass(kClass);
        List<KTypeProjection> arguments = kType.getArguments();
        if (arguments.isEmpty()) {
            return javaObjectType;
        }
        if (!javaObjectType.isArray()) {
            return createPossiblyInnerType(javaObjectType, arguments);
        }
        if (javaObjectType.getComponentType().isPrimitive()) {
            return javaObjectType;
        }
        KTypeProjection kTypeProjection = (KTypeProjection) CollectionsKt.singleOrNull((List<? extends Object>) arguments);
        if (kTypeProjection == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
        }
        KVariance component1 = kTypeProjection.component1();
        KType component2 = kTypeProjection.component2();
        if (component1 == null || (i = WhenMappings.$EnumSwitchMapping$0[component1.ordinal()]) == 1) {
            cls = javaObjectType;
        } else if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            Intrinsics.checkNotNull(component2);
            Type computeJavaType$default = computeJavaType$default(component2, false, 1, null);
            if (!(computeJavaType$default instanceof Class)) {
                javaObjectType = new GenericArrayTypeImpl(computeJavaType$default);
            }
            cls = javaObjectType;
        }
        return cls;
    }

    static /* synthetic */ Type computeJavaType$default(KType kType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return computeJavaType(kType, z);
    }

    private static final Type createPossiblyInnerType(Class<?> cls, List<KTypeProjection> list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List<KTypeProjection> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (KTypeProjection kTypeProjection : list2) {
                arrayList.add(getJavaType(kTypeProjection));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        } else if (Modifier.isStatic(cls.getModifiers())) {
            Class<?> cls2 = declaringClass;
            List<KTypeProjection> list3 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            for (KTypeProjection kTypeProjection2 : list3) {
                arrayList2.add(getJavaType(kTypeProjection2));
            }
            return new ParameterizedTypeImpl(cls, cls2, arrayList2);
        } else {
            int length = cls.getTypeParameters().length;
            Type createPossiblyInnerType = createPossiblyInnerType(declaringClass, list.subList(length, list.size()));
            List<KTypeProjection> subList = list.subList(0, length);
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(subList, 10));
            for (KTypeProjection kTypeProjection3 : subList) {
                arrayList3.add(getJavaType(kTypeProjection3));
            }
            return new ParameterizedTypeImpl(cls, createPossiblyInnerType, arrayList3);
        }
    }

    public static final Type getJavaType(KType javaType) {
        Type javaType2;
        Intrinsics.checkNotNullParameter(javaType, "$this$javaType");
        return (!(javaType instanceof KTypeBase) || (javaType2 = ((KTypeBase) javaType).getJavaType()) == null) ? computeJavaType$default(javaType, false, 1, null) : javaType2;
    }

    private static final Type getJavaType(KTypeProjection kTypeProjection) {
        WildcardTypeImpl wildcardTypeImpl;
        KVariance variance = kTypeProjection.getVariance();
        if (variance != null) {
            KType type = kTypeProjection.getType();
            Intrinsics.checkNotNull(type);
            int i = WhenMappings.$EnumSwitchMapping$1[variance.ordinal()];
            if (i == 1) {
                wildcardTypeImpl = computeJavaType(type, true);
            } else if (i == 2) {
                wildcardTypeImpl = new WildcardTypeImpl(null, computeJavaType(type, true));
            } else if (i != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                wildcardTypeImpl = new WildcardTypeImpl(computeJavaType(type, true), null);
            }
            return wildcardTypeImpl;
        }
        return WildcardTypeImpl.Companion.getSTAR();
    }

    public static /* synthetic */ void getJavaType$annotations(KType kType) {
    }

    private static /* synthetic */ void getJavaType$annotations(KTypeProjection kTypeProjection) {
    }

    public static final String typeToString(Type type) {
        String str;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                Sequence generateSequence = SequencesKt.generateSequence(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
                str = ((Class) SequencesKt.last(generateSequence)).getName() + StringsKt.repeat(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, SequencesKt.count(generateSequence));
            } else {
                str = cls.getName();
            }
            Intrinsics.checkNotNullExpressionValue(str, "if (type.isArray) {\n    …\n        } else type.name");
        } else {
            str = type.toString();
        }
        return str;
    }
}

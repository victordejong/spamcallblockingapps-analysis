package kotlin.jvm.internal;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0017\u001a\u00020\u0013H\u0002J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\f\u0010\u0017\u001a\u00020\u0013*\u00020\u0006H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\b\u00030\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, m400d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "classifier", "Lkotlin/reflect/KClassifier;", "arguments", "", "Lkotlin/reflect/KTypeProjection;", "isMarkedNullable", "", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "annotations", "", "getAnnotations", "()Ljava/util/List;", "getArguments", "getClassifier", "()Lkotlin/reflect/KClassifier;", "()Z", "arrayClassName", "", "Ljava/lang/Class;", "getArrayClassName", "(Ljava/lang/Class;)Ljava/lang/String;", "asString", "equals", "other", "", "hashCode", "", "toString", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/jvm/internal/TypeReference.class */
public final class TypeReference implements KType {
    private final List<KTypeProjection> arguments;
    private final KClassifier classifier;
    private final boolean isMarkedNullable;

    @Metadata(m402bv = {1, 0, 3}, m399k = 3, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/jvm/internal/TypeReference$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KVariance.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[KVariance.INVARIANT.ordinal()] = 1;
            iArr[KVariance.IN.ordinal()] = 2;
            iArr[KVariance.OUT.ordinal()] = 3;
        }
    }

    public TypeReference(KClassifier classifier, List<KTypeProjection> arguments, boolean z) {
        Intrinsics.checkNotNullParameter(classifier, "classifier");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        this.classifier = classifier;
        this.arguments = arguments;
        this.isMarkedNullable = z;
    }

    private final String asString() {
        KClassifier classifier = getClassifier();
        if (!(classifier instanceof KClass)) {
            classifier = null;
        }
        KClass kClass = (KClass) classifier;
        Class<?> cls = null;
        if (kClass != null) {
            cls = JvmClassMappingKt.getJavaClass(kClass);
        }
        String obj = cls == null ? getClassifier().toString() : cls.isArray() ? getArrayClassName(cls) : cls.getName();
        String str = "";
        String joinToString$default = getArguments().isEmpty() ? "" : CollectionsKt.joinToString$default(getArguments(), ", ", SimpleComparison.LESS_THAN_OPERATION, SimpleComparison.GREATER_THAN_OPERATION, 0, null, new TypeReference$asString$args$1(this), 24, null);
        if (isMarkedNullable()) {
            str = "?";
        }
        return obj + joinToString$default + str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r6 != null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String asString(kotlin.reflect.KTypeProjection r4) {
        /*
            r3 = this;
            r0 = r4
            kotlin.reflect.KVariance r0 = r0.getVariance()
            if (r0 != 0) goto La
            java.lang.String r0 = "*"
            return r0
        La:
            r0 = r4
            kotlin.reflect.KType r0 = r0.getType()
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof kotlin.jvm.internal.TypeReference
            if (r0 != 0) goto L1a
            r0 = 0
            r6 = r0
        L1a:
            r0 = r6
            kotlin.jvm.internal.TypeReference r0 = (kotlin.jvm.internal.TypeReference) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L2f
            r0 = r6
            java.lang.String r0 = r0.asString()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L2f
            goto L37
        L2f:
            r0 = r4
            kotlin.reflect.KType r0 = r0.getType()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r6 = r0
        L37:
            r0 = r4
            kotlin.reflect.KVariance r0 = r0.getVariance()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L97
            int[] r0 = kotlin.jvm.internal.TypeReference.WhenMappings.$EnumSwitchMapping$0
            r1 = r4
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r6
            r4 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L95
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L7b
            r0 = r7
            r1 = 3
            if (r0 != r1) goto L97
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "out "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r0 = r0.toString()
            r4 = r0
            goto L95
        L7b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "in "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r0 = r0.toString()
            r4 = r0
        L95:
            r0 = r4
            return r0
        L97:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.TypeReference.asString(kotlin.reflect.KTypeProjection):java.lang.String");
    }

    private final String getArrayClassName(Class<?> cls) {
        return Intrinsics.areEqual(cls, boolean[].class) ? "kotlin.BooleanArray" : Intrinsics.areEqual(cls, char[].class) ? "kotlin.CharArray" : Intrinsics.areEqual(cls, byte[].class) ? "kotlin.ByteArray" : Intrinsics.areEqual(cls, short[].class) ? "kotlin.ShortArray" : Intrinsics.areEqual(cls, int[].class) ? "kotlin.IntArray" : Intrinsics.areEqual(cls, float[].class) ? "kotlin.FloatArray" : Intrinsics.areEqual(cls, long[].class) ? "kotlin.LongArray" : Intrinsics.areEqual(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    public boolean equals(Object obj) {
        boolean z;
        if (obj instanceof TypeReference) {
            TypeReference typeReference = (TypeReference) obj;
            if (Intrinsics.areEqual(getClassifier(), typeReference.getClassifier()) && Intrinsics.areEqual(getArguments(), typeReference.getArguments()) && isMarkedNullable() == typeReference.isMarkedNullable()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.KType
    public List<KTypeProjection> getArguments() {
        return this.arguments;
    }

    @Override // kotlin.reflect.KType
    public KClassifier getClassifier() {
        return this.classifier;
    }

    public int hashCode() {
        return (((getClassifier().hashCode() * 31) + getArguments().hashCode()) * 31) + Boolean.valueOf(isMarkedNullable()).hashCode();
    }

    @Override // kotlin.reflect.KType
    public boolean isMarkedNullable() {
        return this.isMarkedNullable;
    }

    public String toString() {
        return asString() + " (Kotlin reflection is not available)";
    }
}

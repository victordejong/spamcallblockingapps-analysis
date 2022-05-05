package kotlin.jvm.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u001b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u0004J\u0013\u0010\u0003\u001a\u00020\u0002*\u00020\u000eH\u0002¢\u0006\u0004\b\u0003\u0010\u000fR\u001c\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00108\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0013R\u001c\u0010\u0019\u001a\u00020\u00188\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001fR\u001e\u0010#\u001a\u00020\u0002*\u0006\u0012\u0002\b\u00030 8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "", "asString", "()Ljava/lang/String;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Lkotlin/reflect/KTypeProjection;", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/String;", "", "", "getAnnotations", "()Ljava/util/List;", "annotations", "arguments", "Ljava/util/List;", "getArguments", "Lkotlin/reflect/KClassifier;", "classifier", "Lkotlin/reflect/KClassifier;", "getClassifier", "()Lkotlin/reflect/KClassifier;", "isMarkedNullable", "Z", "()Z", "Ljava/lang/Class;", "getArrayClassName", "(Ljava/lang/Class;)Ljava/lang/String;", "arrayClassName", "<init>", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/TypeReference.class */
public final class TypeReference implements KType {
    @NotNull

    /* renamed from: f */
    private final KClassifier f20761f;
    @NotNull

    /* renamed from: g */
    private final List<KTypeProjection> f20762g;

    /* renamed from: h */
    private final boolean f20763h;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/TypeReference$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20764a;

        static {
            int[] iArr = new int[KVariance.values().length];
            f20764a = iArr;
            iArr[KVariance.INVARIANT.ordinal()] = 1;
            f20764a[KVariance.IN.ordinal()] = 2;
            f20764a[KVariance.OUT.ordinal()] = 3;
        }
    }

    public TypeReference(@NotNull KClassifier classifier, @NotNull List<KTypeProjection> arguments, boolean z) {
        Intrinsics.m1830e(classifier, "classifier");
        Intrinsics.m1830e(arguments, "arguments");
        this.f20761f = classifier;
        this.f20762g = arguments;
        this.f20763h = z;
    }

    /* renamed from: c */
    private final String m1774c() {
        KClassifier b = mo1690b();
        boolean z = b instanceof KClass;
        Class<?> cls = null;
        if (!z) {
            b = null;
        }
        KClass kClass = (KClass) b;
        if (kClass != null) {
            cls = JvmClassMappingKt.m1866a(kClass);
        }
        String obj = cls == null ? mo1690b().toString() : cls.isArray() ? m1772e(cls) : cls.getName();
        String str = "";
        String J = mo1689p().isEmpty() ? "" : CollectionsKt___CollectionsKt.m2144J(mo1689p(), ", ", "<", ">", 0, null, new TypeReference$asString$args$1(this), 24, null);
        if (m1771f()) {
            str = "?";
        }
        return obj + J + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
        if (r6 != null) goto L_0x0037;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m1773d(kotlin.reflect.KTypeProjection r4) {
        /*
            r3 = this;
            r0 = r4
            kotlin.reflect.KVariance r0 = r0.m1684d()
            if (r0 != 0) goto L_0x000a
            java.lang.String r0 = "*"
            return r0
        L_0x000a:
            r0 = r4
            kotlin.reflect.KType r0 = r0.m1685c()
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0 instanceof kotlin.jvm.internal.TypeReference
            if (r0 != 0) goto L_0x001a
            r0 = 0
            r6 = r0
        L_0x001a:
            r0 = r6
            kotlin.jvm.internal.TypeReference r0 = (kotlin.jvm.internal.TypeReference) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002f
            r0 = r6
            java.lang.String r0 = r0.m1774c()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002f
            goto L_0x0037
        L_0x002f:
            r0 = r4
            kotlin.reflect.KType r0 = r0.m1685c()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r6 = r0
        L_0x0037:
            r0 = r4
            kotlin.reflect.KVariance r0 = r0.m1684d()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0097
            int[] r0 = kotlin.jvm.internal.TypeReference.WhenMappings.f20764a
            r1 = r4
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r7 = r0
            r0 = r6
            r4 = r0
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L_0x0095
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x007b
            r0 = r7
            r1 = 3
            if (r0 != r1) goto L_0x0097
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
            goto L_0x0095
        L_0x007b:
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
        L_0x0095:
            r0 = r4
            return r0
        L_0x0097:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.TypeReference.m1773d(kotlin.reflect.KTypeProjection):java.lang.String");
    }

    /* renamed from: e */
    private final String m1772e(Class<?> cls) {
        return Intrinsics.m1834a(cls, boolean[].class) ? "kotlin.BooleanArray" : Intrinsics.m1834a(cls, char[].class) ? "kotlin.CharArray" : Intrinsics.m1834a(cls, byte[].class) ? "kotlin.ByteArray" : Intrinsics.m1834a(cls, short[].class) ? "kotlin.ShortArray" : Intrinsics.m1834a(cls, int[].class) ? "kotlin.IntArray" : Intrinsics.m1834a(cls, float[].class) ? "kotlin.FloatArray" : Intrinsics.m1834a(cls, long[].class) ? "kotlin.LongArray" : Intrinsics.m1834a(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    @Override // kotlin.reflect.KType
    @NotNull
    /* renamed from: b */
    public KClassifier mo1690b() {
        return this.f20761f;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof TypeReference) {
            TypeReference typeReference = (TypeReference) obj;
            if (Intrinsics.m1834a(mo1690b(), typeReference.mo1690b()) && Intrinsics.m1834a(mo1689p(), typeReference.mo1689p()) && m1771f() == typeReference.m1771f()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: f */
    public boolean m1771f() {
        return this.f20763h;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    @NotNull
    public List<Annotation> getAnnotations() {
        List<Annotation> f;
        f = CollectionsKt__CollectionsKt.m2175f();
        return f;
    }

    public int hashCode() {
        return (((mo1690b().hashCode() * 31) + mo1689p().hashCode()) * 31) + Boolean.valueOf(m1771f()).hashCode();
    }

    @Override // kotlin.reflect.KType
    @NotNull
    /* renamed from: p */
    public List<KTypeProjection> mo1689p() {
        return this.f20762g;
    }

    @NotNull
    public String toString() {
        return m1774c() + " (Kotlin reflection is not available)";
    }
}

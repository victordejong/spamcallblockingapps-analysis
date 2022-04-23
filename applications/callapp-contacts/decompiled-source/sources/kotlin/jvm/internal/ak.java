package kotlin.jvm.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KType;
import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.q;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0017\u001a\u00020\u0013H\u0002J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\f\u0010\u0017\u001a\u00020\u0013*\u00020\u0006H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\b\u00030\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "classifier", "Lkotlin/reflect/KClassifier;", "arguments", "", "Lkotlin/reflect/KTypeProjection;", "isMarkedNullable", "", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "annotations", "", "getAnnotations", "()Ljava/util/List;", "getArguments", "getClassifier", "()Lkotlin/reflect/KClassifier;", "()Z", "arrayClassName", "", "Ljava/lang/Class;", "getArrayClassName", "(Ljava/lang/Class;)Ljava/lang/String;", "asString", "equals", "other", "", "hashCode", "", "toString", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ak.class */
public final class ak implements KType {

    /* renamed from: a  reason: collision with root package name */
    private final d f36791a;

    /* renamed from: b  reason: collision with root package name */
    private final List<q> f36792b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f36793c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/KTypeProjection;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ak$a.class */
    public static final class a extends r implements Function1<q, CharSequence> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(q qVar) {
            q it2 = qVar;
            p.d(it2, "it");
            return ak.a(it2);
        }
    }

    public ak(d classifier, List<q> arguments, boolean z) {
        p.d(classifier, "classifier");
        p.d(arguments, "arguments");
        this.f36791a = classifier;
        this.f36792b = arguments;
        this.f36793c = z;
    }

    private static String a(Class<?> cls) {
        return p.a(cls, boolean[].class) ? "kotlin.BooleanArray" : p.a(cls, char[].class) ? "kotlin.CharArray" : p.a(cls, byte[].class) ? "kotlin.ByteArray" : p.a(cls, short[].class) ? "kotlin.ShortArray" : p.a(cls, int[].class) ? "kotlin.IntArray" : p.a(cls, float[].class) ? "kotlin.FloatArray" : p.a(cls, long[].class) ? "kotlin.LongArray" : p.a(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        if (r0 == null) goto L_0x002e;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ java.lang.String a(kotlin.reflect.q r3) {
        /*
            r0 = r3
            kotlin.reflect.s r0 = r0.f38635a
            if (r0 != 0) goto L_0x000a
            java.lang.String r0 = "*"
            return r0
        L_0x000a:
            r0 = r3
            kotlin.reflect.KType r0 = r0.f38636b
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            boolean r0 = r0 instanceof kotlin.jvm.internal.ak
            if (r0 != 0) goto L_0x001a
            r0 = 0
            r5 = r0
        L_0x001a:
            r0 = r5
            kotlin.jvm.internal.ak r0 = (kotlin.jvm.internal.ak) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x002e
            r0 = r5
            java.lang.String r0 = r0.c()
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0036
        L_0x002e:
            r0 = r3
            kotlin.reflect.KType r0 = r0.f38636b
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r5 = r0
        L_0x0036:
            r0 = r3
            kotlin.reflect.s r0 = r0.f38635a
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x006d
            int[] r0 = kotlin.jvm.internal.al.f36795a
            r1 = r3
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x006b
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L_0x0061
            r0 = r6
            r1 = 3
            if (r0 != r1) goto L_0x006d
            java.lang.String r0 = "out "
            r1 = r5
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            return r0
        L_0x0061:
            java.lang.String r0 = "in "
            r1 = r5
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            return r0
        L_0x006b:
            r0 = r5
            return r0
        L_0x006d:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.ak.a(kotlin.reflect.q):java.lang.String");
    }

    private final String c() {
        d dVar = this.f36791a;
        boolean z = dVar instanceof c;
        Class cls = null;
        if (!z) {
            dVar = null;
        }
        c cVar = (c) dVar;
        if (cVar != null) {
            cls = kotlin.jvm.a.a(cVar);
        }
        String obj = cls == null ? this.f36791a.toString() : cls.isArray() ? a(cls) : cls.getName();
        String str = "";
        String a2 = this.f36792b.isEmpty() ? "" : n.a(this.f36792b, ", ", "<", ">", 0, (CharSequence) null, new a(), 24);
        if (this.f36793c) {
            str = "?";
        }
        return obj + a2 + str;
    }

    @Override // kotlin.reflect.KType
    public final d a() {
        return this.f36791a;
    }

    @Override // kotlin.reflect.KType
    public final List<q> b() {
        return this.f36792b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ak)) {
            return false;
        }
        ak akVar = (ak) obj;
        return p.a(this.f36791a, akVar.f36791a) && p.a(this.f36792b, akVar.f36792b) && this.f36793c == akVar.f36793c;
    }

    @Override // kotlin.reflect.b
    public final List<Annotation> getAnnotations() {
        return z.f36608a;
    }

    public final int hashCode() {
        return (((this.f36791a.hashCode() * 31) + this.f36792b.hashCode()) * 31) + Boolean.valueOf(this.f36793c).hashCode();
    }

    public final String toString() {
        return c() + " (Kotlin reflection is not available)";
    }
}

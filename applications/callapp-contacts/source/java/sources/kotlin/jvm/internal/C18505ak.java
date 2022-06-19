package kotlin.jvm.internal;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function1;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.AbstractC18552d;
import kotlin.reflect.C20112q;
import kotlin.reflect.KType;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u001b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0017\u001a\u00020\u0013H\u0002J\u0013\u0010\u0018\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0013H\u0016J\f\u0010\u0017\u001a\u00020\u0013*\u00020\u0006H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\u0011R\u001c\u0010\u0012\u001a\u00020\u0013*\u0006\u0012\u0002\b\u00030\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001e"}, m4298d2 = {"Lkotlin/jvm/internal/TypeReference;", "Lkotlin/reflect/KType;", "classifier", "Lkotlin/reflect/KClassifier;", "arguments", "", "Lkotlin/reflect/KTypeProjection;", "isMarkedNullable", "", "(Lkotlin/reflect/KClassifier;Ljava/util/List;Z)V", "annotations", "", "getAnnotations", "()Ljava/util/List;", "getArguments", "getClassifier", "()Lkotlin/reflect/KClassifier;", "()Z", "arrayClassName", "", "Ljava/lang/Class;", "getArrayClassName", "(Ljava/lang/Class;)Ljava/lang/String;", "asString", "equals", "other", "", "hashCode", "", "toString", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.internal.ak */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ak.class */
public final class C18505ak implements KType {

    /* renamed from: a */
    private final AbstractC18552d f63602a;

    /* renamed from: b */
    private final List<C20112q> f63603b;

    /* renamed from: c */
    private final boolean f63604c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/KTypeProjection;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.jvm.internal.ak$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/ak$a.class */
    public static final class C18506a extends AbstractC18526r implements Function1<C20112q, CharSequence> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18506a() {
            super(1);
            C18505ak.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(C20112q c20112q) {
            C20112q it2 = c20112q;
            C18524p.m3840d(it2, "it");
            return C18505ak.m3862a(it2);
        }
    }

    public C18505ak(AbstractC18552d classifier, List<C20112q> arguments, boolean z) {
        C18524p.m3840d(classifier, "classifier");
        C18524p.m3840d(arguments, "arguments");
        this.f63602a = classifier;
        this.f63603b = arguments;
        this.f63604c = z;
    }

    /* renamed from: a */
    private static String m3863a(Class<?> cls) {
        return C18524p.m3850a(cls, boolean[].class) ? "kotlin.BooleanArray" : C18524p.m3850a(cls, char[].class) ? "kotlin.CharArray" : C18524p.m3850a(cls, byte[].class) ? "kotlin.ByteArray" : C18524p.m3850a(cls, short[].class) ? "kotlin.ShortArray" : C18524p.m3850a(cls, int[].class) ? "kotlin.IntArray" : C18524p.m3850a(cls, float[].class) ? "kotlin.FloatArray" : C18524p.m3850a(cls, long[].class) ? "kotlin.LongArray" : C18524p.m3850a(cls, double[].class) ? "kotlin.DoubleArray" : "kotlin.Array";
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
        if (r0 == null) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ java.lang.String m3862a(kotlin.reflect.C20112q r3) {
        /*
            r0 = r3
            kotlin.reflect.s r0 = r0.f66509a
            if (r0 != 0) goto La
            java.lang.String r0 = "*"
            return r0
        La:
            r0 = r3
            kotlin.reflect.KType r0 = r0.f66510b
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            boolean r0 = r0 instanceof kotlin.jvm.internal.C18505ak
            if (r0 != 0) goto L1a
            r0 = 0
            r5 = r0
        L1a:
            r0 = r5
            kotlin.jvm.internal.ak r0 = (kotlin.jvm.internal.C18505ak) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2e
            r0 = r5
            java.lang.String r0 = r0.m3861c()
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L36
        L2e:
            r0 = r3
            kotlin.reflect.KType r0 = r0.f66510b
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r5 = r0
        L36:
            r0 = r3
            kotlin.reflect.s r0 = r0.f66509a
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L6d
            int[] r0 = kotlin.jvm.internal.C18507al.f63606a
            r1 = r3
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L6b
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L61
            r0 = r6
            r1 = 3
            if (r0 != r1) goto L6d
            java.lang.String r0 = "out "
            r1 = r5
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            return r0
        L61:
            java.lang.String r0 = "in "
            r1 = r5
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r0 = r0.concat(r1)
            return r0
        L6b:
            r0 = r5
            return r0
        L6d:
            kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.C18505ak.m3862a(kotlin.reflect.q):java.lang.String");
    }

    /* renamed from: c */
    private final String m3861c() {
        AbstractC18552d abstractC18552d = this.f63602a;
        if (!(abstractC18552d instanceof AbstractC18551c)) {
            abstractC18552d = null;
        }
        AbstractC18551c abstractC18551c = (AbstractC18551c) abstractC18552d;
        Class cls = null;
        if (abstractC18551c != null) {
            cls = C18458a.m3893a(abstractC18551c);
        }
        String obj = cls == null ? this.f63602a.toString() : cls.isArray() ? m3863a(cls) : cls.getName();
        String str = "";
        String a = this.f63603b.isEmpty() ? "" : C18282n.m4148a(this.f63603b, ", ", "<", ">", 0, (CharSequence) null, new C18506a(), 24);
        if (this.f63604c) {
            str = "?";
        }
        return obj + a + str;
    }

    @Override // kotlin.reflect.KType
    /* renamed from: a */
    public final AbstractC18552d mo1126a() {
        return this.f63602a;
    }

    @Override // kotlin.reflect.KType
    /* renamed from: b */
    public final List<C20112q> mo1123b() {
        return this.f63603b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C18505ak) {
            C18505ak c18505ak = (C18505ak) obj;
            return C18524p.m3850a(this.f63602a, c18505ak.f63602a) && C18524p.m3850a(this.f63603b, c18505ak.f63603b) && this.f63604c == c18505ak.f63604c;
        }
        return false;
    }

    @Override // kotlin.reflect.AbstractC18550b
    public final List<Annotation> getAnnotations() {
        return C18297z.f63400a;
    }

    public final int hashCode() {
        return (((this.f63602a.hashCode() * 31) + this.f63603b.hashCode()) * 31) + Boolean.valueOf(this.f63604c).hashCode();
    }

    public final String toString() {
        return m3861c() + " (Kotlin reflection is not available)";
    }
}

package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.h.l;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.d.a.j;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010!\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\n\b \u0018�� <2\u00020\u0001:\u0003<=>B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\f\u001a\u00020\r2\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0014\u0010\u0014\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u0012\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010$\u001a\u00020%H&J\"\u0010&\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030'0\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0004J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u001a\u0010-\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010/\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J$\u00100\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020%H\u0002JE\u00103\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0002\u00108J(\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015*\u0006\u0012\u0002\b\u00030\t2\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.H\u0002J=\u0010:\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\tH\u0002¢\u0006\u0002\u0010;R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006?"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "()V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "methodOwner", "Ljava/lang/Class;", "getMethodOwner", "()Ljava/lang/Class;", "addParametersAndMasks", "", "result", "", "desc", "", "isConstructor", "", "findConstructorBySignature", "Ljava/lang/reflect/Constructor;", "findDefaultConstructor", "findDefaultMethod", "Ljava/lang/reflect/Method;", "name", "isMember", "findFunctionDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "signature", "findMethodBySignature", "findPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "index", "", "getMembers", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "belonginess", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "getProperties", "loadParameterTypes", "", "loadReturnType", "parseType", "begin", "end", "lookupMethod", "parameterTypes", "", "returnType", "isStaticDefault", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;", "tryGetConstructor", "tryGetMethod", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;", "Companion", "Data", "MemberBelonginess", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k.class */
public abstract class k implements kotlin.jvm.internal.g {

    /* renamed from: d  reason: collision with root package name */
    public static final a f38537d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f38535a = Class.forName("kotlin.jvm.internal.DefaultConstructorMarker");

    /* renamed from: c  reason: collision with root package name */
    static final l f38536c = new l("<v#(\\d+)>");

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0002\b\u0003 \u0005*\b\u0012\u0002\b\u0003\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Companion;", "", "()V", "DEFAULT_CONSTRUCTOR_MARKER", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "LOCAL_PROPERTY_SIGNATURE", "Lkotlin/text/Regex;", "getLOCAL_PROPERTY_SIGNATURE$kotlin_reflection", "()Lkotlin/text/Regex;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b¦\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "moduleData", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "getModuleData", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;", "moduleData$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$b.class */
    public abstract class b {
        static final /* synthetic */ KProperty[] i = {ac.a(new aa(ac.b(b.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};

        /* renamed from: a  reason: collision with root package name */
        private final ad.a f38538a = ad.b(new a());

        @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$b$a.class */
        static final class a extends r implements Function0<j> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ j invoke() {
                return ac.a(k.this.a());
            }
        }

        public b() {
        }

        public final j d() {
            return (j) this.f38538a.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0084\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "", "(Ljava/lang/String;I)V", "accept", "", "member", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "DECLARED", "INHERITED", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$c.class */
    public enum c {
        DECLARED,
        INHERITED;

        public final boolean accept(kotlin.reflect.jvm.internal.impl.descriptors.b member) {
            p.d(member, "member");
            b.a kind = member.getKind();
            p.b(kind, "member.kind");
            return kind.isReal() == (this == DECLARED);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$d.class */
    static final class d extends r implements Function1<w, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f38540a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(w wVar) {
            w descriptor = wVar;
            p.d(descriptor, "descriptor");
            return kotlin.reflect.jvm.internal.impl.e.c.j.a(descriptor) + " | " + ah.f36880b.a(descriptor).a();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$e.class */
    static final class e extends r implements Function1<an, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f38541a = new e();

        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(an anVar) {
            an descriptor = anVar;
            p.d(descriptor, "descriptor");
            return kotlin.reflect.jvm.internal.impl.e.c.j.a(descriptor) + " | " + ah.f36880b.a(descriptor).a();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "first", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "kotlin.jvm.PlatformType", "second", "compare"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$f.class */
    static final class f<T> implements Comparator<s> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f38542a = new f();

        f() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(s sVar, s sVar2) {
            Integer a2 = kotlin.reflect.jvm.internal.impl.descriptors.r.a(sVar, sVar2);
            if (a2 != null) {
                return a2.intValue();
            }
            return 0;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"kotlin/reflect/jvm/internal/KDeclarationContainerImpl$getMembers$visitor$1", "Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "visitConstructorDescriptor", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "data", "", "(Lorg/jetbrains/kotlin/descriptors/ConstructorDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$g.class */
    public static final class g extends kotlin.reflect.jvm.internal.a {
        g(k kVar) {
            super(kVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.m
        public final /* synthetic */ Object a(kotlin.reflect.jvm.internal.impl.descriptors.j descriptor, Object obj) {
            v data = (v) obj;
            p.d(descriptor, "descriptor");
            p.d(data, "data");
            throw new IllegalStateException("No constructors should appear here: ".concat(String.valueOf(descriptor)));
        }
    }

    private final Class<?> a(String str, int i, int i2) {
        char charAt = str.charAt(i);
        if (charAt == 'F') {
            return Float.TYPE;
        }
        if (charAt == 'L') {
            ClassLoader a2 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.a(a());
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String substring = str.substring(i + 1, i2 - 1);
            p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Class<?> loadClass = a2.loadClass(kotlin.h.p.a(substring, '/', '.', false));
            p.b(loadClass, "jClass.safeClassLoader.l…d - 1).replace('/', '.'))");
            return loadClass;
        } else if (charAt == 'S') {
            return Short.TYPE;
        } else {
            if (charAt == 'V') {
                Class<?> cls = Void.TYPE;
                p.b(cls, "Void.TYPE");
                return cls;
            } else if (charAt == 'I') {
                return Integer.TYPE;
            } else {
                if (charAt == 'J') {
                    return Long.TYPE;
                }
                if (charAt == 'Z') {
                    return Boolean.TYPE;
                }
                if (charAt == '[') {
                    return kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.g(a(str, i + 1, i2));
                }
                switch (charAt) {
                    case 'B':
                        return Byte.TYPE;
                    case 'C':
                        return Character.TYPE;
                    case 'D':
                        return Double.TYPE;
                    default:
                        throw new ab("Unknown type prefix in the method signature: ".concat(String.valueOf(str)));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Constructor<?> a(Class<?> cls, List<? extends Class<?>> list) {
        Constructor<?> constructor;
        Object[] array;
        try {
            array = list.toArray(new Class[0]);
        } catch (NoSuchMethodException e2) {
            constructor = null;
        }
        if (array != null) {
            Class[] clsArr = (Class[]) array;
            constructor = cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
            return constructor;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0099 A[LOOP:0: B:9:0x0043->B:22:0x0099, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f A[EDGE_INSN: B:30:0x009f->B:23:0x009f ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Method a(java.lang.Class<?> r5, java.lang.String r6, java.lang.Class<?>[] r7, java.lang.Class<?> r8) {
        /*
            r0 = 0
            r9 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r7
            int r3 = r3.length     // Catch: NoSuchMethodException -> 0x00a1
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r2, r3)     // Catch: NoSuchMethodException -> 0x00a1
            java.lang.Class[] r2 = (java.lang.Class[]) r2     // Catch: NoSuchMethodException -> 0x00a1
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: NoSuchMethodException -> 0x00a1
            r10 = r0
            r0 = r10
            java.lang.String r1 = "result"
            kotlin.jvm.internal.p.b(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            r0 = r10
            java.lang.Class r0 = r0.getReturnType()     // Catch: NoSuchMethodException -> 0x00a1
            r1 = r8
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            if (r0 == 0) goto L_0x002d
            r0 = r10
            r5 = r0
            goto L_0x009f
        L_0x002d:
            r0 = r5
            java.lang.reflect.Method[] r0 = r0.getDeclaredMethods()     // Catch: NoSuchMethodException -> 0x00a1
            r10 = r0
            r0 = r10
            java.lang.String r1 = "declaredMethods"
            kotlin.jvm.internal.p.b(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            r0 = r10
            int r0 = r0.length     // Catch: NoSuchMethodException -> 0x00a1
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0043:
            r0 = r9
            r5 = r0
            r0 = r12
            r1 = r11
            if (r0 >= r1) goto L_0x009f
            r0 = r10
            r1 = r12
            r0 = r0[r1]
            r5 = r0
            r0 = r5
            java.lang.String r1 = "method"
            kotlin.jvm.internal.p.b(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            r0 = r5
            java.lang.String r0 = r0.getName()     // Catch: NoSuchMethodException -> 0x00a1
            r1 = r6
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            if (r0 == 0) goto L_0x008e
            r0 = r5
            java.lang.Class r0 = r0.getReturnType()     // Catch: NoSuchMethodException -> 0x00a1
            r1 = r8
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            if (r0 == 0) goto L_0x008e
            r0 = r5
            java.lang.Class[] r0 = r0.getParameterTypes()     // Catch: NoSuchMethodException -> 0x00a1
            r13 = r0
            r0 = r13
            kotlin.jvm.internal.p.a(r0)     // Catch: NoSuchMethodException -> 0x00a1
            r0 = r13
            r1 = r7
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: NoSuchMethodException -> 0x00a1
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x008e
            r0 = 1
            r15 = r0
            goto L_0x0091
        L_0x008e:
            r0 = 0
            r15 = r0
        L_0x0091:
            r0 = r15
            if (r0 == 0) goto L_0x0099
            goto L_0x009f
        L_0x0099:
            int r12 = r12 + 1
            goto L_0x0043
        L_0x009f:
            r0 = r5
            return r0
        L_0x00a1:
            r5 = move-exception
            r0 = r9
            r5 = r0
            goto L_0x009f
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.k.a(java.lang.Class, java.lang.String, java.lang.Class[], java.lang.Class):java.lang.reflect.Method");
    }

    private final Method a(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2, boolean z) {
        Class<?>[] interfaces;
        Method a2;
        if (z) {
            clsArr[0] = cls;
        }
        Method a3 = a(cls, str, clsArr, cls2);
        if (a3 != null) {
            return a3;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (!(superclass == null || (a2 = a(superclass, str, clsArr, cls2, z)) == null)) {
            return a2;
        }
        for (Class<?> superInterface : cls.getInterfaces()) {
            p.b(superInterface, "superInterface");
            Method a4 = a(superInterface, str, clsArr, cls2, z);
            if (a4 != null) {
                return a4;
            }
            if (z) {
                Class<?> a5 = kotlin.reflect.jvm.internal.impl.descriptors.d.a.e.a(kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.a(superInterface), superInterface.getName() + "$DefaultImpls");
                if (a5 != null) {
                    clsArr[0] = superInterface;
                    Method a6 = a(a5, str, clsArr, cls2);
                    if (a6 != null) {
                        return a6;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    private final List<Class<?>> b(String str) {
        boolean b2;
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        while (str.charAt(i2) != ')') {
            int i3 = i2;
            while (str.charAt(i3) == '[') {
                i3++;
            }
            char charAt = str.charAt(i3);
            b2 = kotlin.h.p.b("VZCBSIFJD", charAt, false);
            if (b2) {
                i = i3 + 1;
            } else if (charAt == 'L') {
                i = kotlin.h.p.a((CharSequence) str, ';', i2, false, 4) + 1;
            } else {
                throw new ab("Unknown type prefix in the method signature: ".concat(String.valueOf(str)));
            }
            arrayList.add(a(str, i2, i));
            i2 = i;
        }
        return arrayList;
    }

    private final Class<?> c(String str) {
        return a(str, kotlin.h.p.a((CharSequence) str, ')', 0, false, 6) + 1, str.length());
    }

    public final Constructor<?> a(String desc) {
        p.d(desc, "desc");
        return a(a(), b(desc));
    }

    public final Method a(String name, String desc) {
        Method a2;
        p.d(name, "name");
        p.d(desc, "desc");
        if (p.a((Object) name, (Object) "<init>")) {
            return null;
        }
        Object[] array = b(desc).toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Class<?>[] clsArr = (Class[]) array;
        Class<?> c2 = c(desc);
        Method a3 = a(i(), name, clsArr, c2, false);
        if (a3 != null) {
            return a3;
        }
        if (!i().isInterface() || (a2 = a(Object.class, name, clsArr, c2, false)) == null) {
            return null;
        }
        return a2;
    }

    public final Method a(String name, String desc, boolean z) {
        p.d(name, "name");
        p.d(desc, "desc");
        if (p.a((Object) name, (Object) "<init>")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(a());
        }
        a((List<Class<?>>) arrayList, desc, false);
        Class<?> i = i();
        String str = name + "$default";
        Object[] array = arrayList.toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return a(i, str, (Class[]) array, c(desc), z);
    }

    public abstract Collection<an> a(kotlin.reflect.jvm.internal.impl.c.e eVar);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.f<?>> a(kotlin.reflect.jvm.internal.impl.resolve.e.h r6, kotlin.reflect.jvm.internal.k.c r7) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "scope"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r7
            java.lang.String r1 = "belonginess"
            kotlin.jvm.internal.p.d(r0, r1)
            kotlin.reflect.jvm.internal.k$g r0 = new kotlin.reflect.jvm.internal.k$g
            r1 = r0
            r2 = r5
            r3 = r5
            r1.<init>(r3)
            r8 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.resolve.e.k r0 = (kotlin.reflect.jvm.internal.impl.resolve.e.k) r0
            r1 = 0
            r2 = 0
            r3 = 3
            java.util.Collection r0 = kotlin.reflect.jvm.internal.impl.resolve.e.k.a.a(r0, r1, r2, r3)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r6 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            java.util.Collection r0 = (java.util.Collection) r0
            r9 = r0
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        L_0x003a:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x009e
            r0 = r10
            java.lang.Object r0 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = (kotlin.reflect.jvm.internal.impl.descriptors.k) r0
            r11 = r0
            r0 = r11
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.b
            if (r0 == 0) goto L_0x008c
            r0 = r11
            kotlin.reflect.jvm.internal.impl.descriptors.b r0 = (kotlin.reflect.jvm.internal.impl.descriptors.b) r0
            r6 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.s r0 = r0.getVisibility()
            kotlin.reflect.jvm.internal.impl.descriptors.s r1 = kotlin.reflect.jvm.internal.impl.descriptors.r.h
            boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x008c
            r0 = r7
            r1 = r6
            boolean r0 = r0.accept(r1)
            if (r0 == 0) goto L_0x008c
            r0 = r11
            r1 = r8
            kotlin.reflect.jvm.internal.impl.descriptors.m r1 = (kotlin.reflect.jvm.internal.impl.descriptors.m) r1
            kotlin.v r2 = kotlin.v.f38654a
            java.lang.Object r0 = r0.accept(r1, r2)
            kotlin.reflect.jvm.internal.f r0 = (kotlin.reflect.jvm.internal.f) r0
            r6 = r0
            goto L_0x008e
        L_0x008c:
            r0 = 0
            r6 = r0
        L_0x008e:
            r0 = r6
            if (r0 == 0) goto L_0x003a
            r0 = r9
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L_0x003a
        L_0x009e:
            r0 = r9
            java.util.List r0 = (java.util.List) r0
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.List r0 = kotlin.a.n.h(r0)
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.k.a(kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.k$c):java.util.Collection");
    }

    public abstract an a(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(List<Class<?>> list, String str, boolean z) {
        List<Class<?>> b2 = b(str);
        list.addAll(b2);
        int size = ((b2.size() + 32) - 1) / 32;
        for (int i = 0; i < size; i++) {
            Class<?> cls = Integer.TYPE;
            p.b(cls, "Integer.TYPE");
            list.add(cls);
        }
        Class cls2 = z ? f38535a : Object.class;
        p.b(cls2, "if (isConstructor) DEFAU…RKER else Any::class.java");
        list.add(cls2);
    }

    public abstract Collection<kotlin.reflect.jvm.internal.impl.descriptors.j> b();

    public abstract Collection<w> b(kotlin.reflect.jvm.internal.impl.c.e eVar);

    protected Class<?> i() {
        Class<?> d2 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.d(a());
        Class<?> cls = d2;
        if (d2 == null) {
            cls = a();
        }
        return cls;
    }
}

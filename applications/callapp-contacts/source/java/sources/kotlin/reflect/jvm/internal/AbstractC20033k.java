package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18514g;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18418l;
import kotlin.p532h.C18425p;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19075e;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p551a.C19081j;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010!\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\n\b \u0018�� <2\u00020\u0001:\u0003<=>B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\f\u001a\u00020\r2\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0014\u0010\u0014\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0016\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00152\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u0013J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u0012\u0010#\u001a\u0004\u0018\u00010 2\u0006\u0010$\u001a\u00020%H&J\"\u0010&\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030'0\u00042\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0004J\u0016\u0010,\u001a\b\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010\u0019\u001a\u00020\"H&J\u001a\u0010-\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0014\u0010/\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J$\u00100\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020%H\u0002JE\u00103\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u00107\u001a\u00020\u0013H\u0002¢\u0006\u0002\u00108J(\u00109\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0015*\u0006\u0012\u0002\b\u00030\t2\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0.H\u0002J=\u0010:\u001a\u0004\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\u0019\u001a\u00020\u00112\u0010\u00104\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t052\n\u00106\u001a\u0006\u0012\u0002\b\u00030\tH\u0002¢\u0006\u0002\u0010;R\u0018\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006?"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "Lkotlin/jvm/internal/ClassBasedDeclarationContainer;", "()V", "constructorDescriptors", "", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "getConstructorDescriptors", "()Ljava/util/Collection;", "methodOwner", "Ljava/lang/Class;", "getMethodOwner", "()Ljava/lang/Class;", "addParametersAndMasks", "", "result", "", "desc", "", "isConstructor", "", "findConstructorBySignature", "Ljava/lang/reflect/Constructor;", "findDefaultConstructor", "findDefaultMethod", "Ljava/lang/reflect/Method;", "name", "isMember", "findFunctionDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "signature", "findMethodBySignature", "findPropertyDescriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "getFunctions", "Lkotlin/reflect/jvm/internal/impl/name/Name;", "getLocalProperty", "index", "", "getMembers", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "scope", "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;", "belonginess", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "getProperties", "loadParameterTypes", "", "loadReturnType", "parseType", "begin", "end", "lookupMethod", "parameterTypes", "", "returnType", "isStaticDefault", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;", "tryGetConstructor", "tryGetMethod", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;", "Companion", "Data", "MemberBelonginess", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k.class */
public abstract class AbstractC20033k implements AbstractC18514g {

    /* renamed from: d */
    public static final C20034a f66392d = new C20034a(null);

    /* renamed from: a */
    private static final Class<?> f66390a = Class.forName("kotlin.jvm.internal.DefaultConstructorMarker");

    /* renamed from: c */
    static final C18418l f66391c = new C18418l("<v#(\\d+)>");

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0002\b\u0003 \u0005*\b\u0012\u0002\b\u0003\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\n"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Companion;", "", "()V", "DEFAULT_CONSTRUCTOR_MARKER", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "LOCAL_PROPERTY_SIGNATURE", "Lkotlin/text/Regex;", "getLOCAL_PROPERTY_SIGNATURE$kotlin_reflection", "()Lkotlin/text/Regex;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$a.class */
    public static final class C20034a {
        private C20034a() {
        }

        public /* synthetic */ C20034a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b¦\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$Data;", "", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;)V", "moduleData", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "getModuleData", "()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;", "moduleData$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$b.class */
    public abstract class AbstractC20035b {

        /* renamed from: i */
        static final /* synthetic */ KProperty[] f66393i = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC20035b.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};

        /* renamed from: a */
        private final C18622ad.C18623a f66394a = C18622ad.m3795b(new C20036a());

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/RuntimeModuleData;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.k$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$b$a.class */
        public static final class C20036a extends AbstractC18526r implements Function0<C19081j> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C20036a() {
                super(0);
                AbstractC20035b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ C19081j invoke() {
                return C18621ac.m3799a(AbstractC20033k.this.mo1163a());
            }
        }

        public AbstractC20035b() {
            AbstractC20033k.this = r6;
        }

        /* renamed from: d */
        public final C19081j m1174d() {
            return (C19081j) this.f66394a.invoke();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0084\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "", "(Ljava/lang/String;I)V", "accept", "", "member", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "DECLARED", "INHERITED", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$c.class */
    public enum EnumC20037c {
        DECLARED,
        INHERITED;

        public final boolean accept(AbstractC19039b member) {
            C18524p.m3840d(member, "member");
            AbstractC19039b.EnumC19040a kind = member.getKind();
            C18524p.m3843b(kind, "member.kind");
            return kind.isReal() == (this == DECLARED);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$d.class */
    static final class C20038d extends AbstractC18526r implements Function1<AbstractC19219w, CharSequence> {

        /* renamed from: a */
        public static final C20038d f66397a = new C20038d();

        C20038d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(AbstractC19219w abstractC19219w) {
            AbstractC19219w descriptor = abstractC19219w;
            C18524p.m3840d(descriptor, "descriptor");
            return AbstractC19230c.f65033j.mo2447a(descriptor) + " | " + C18632ah.f63702b.m3772a(descriptor).mo3732a();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$e.class */
    static final class C20039e extends AbstractC18526r implements Function1<AbstractC19017an, CharSequence> {

        /* renamed from: a */
        public static final C20039e f66398a = new C20039e();

        C20039e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(AbstractC19017an abstractC19017an) {
            AbstractC19017an descriptor = abstractC19017an;
            C18524p.m3840d(descriptor, "descriptor");
            return AbstractC19230c.f65033j.mo2447a(descriptor) + " | " + C18632ah.f63702b.m3774a(descriptor).mo3731a();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "first", "Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibility;", "kotlin.jvm.PlatformType", "second", "compare"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$f.class */
    static final class C20040f<T> implements Comparator<AbstractC19213s> {

        /* renamed from: a */
        public static final C20040f f66399a = new C20040f();

        C20040f() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(AbstractC19213s abstractC19213s, AbstractC19213s abstractC19213s2) {
            Integer m2516a = C19200r.m2516a(abstractC19213s, abstractC19213s2);
            if (m2516a != null) {
                return m2516a.intValue();
            }
            return 0;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J!\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\b¨\u0006\t"}, m4298d2 = {"kotlin/reflect/jvm/internal/KDeclarationContainerImpl$getMembers$visitor$1", "Lkotlin/reflect/jvm/internal/CreateKCallableVisitor;", "visitConstructorDescriptor", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/ConstructorDescriptor;", "data", "", "(Lorg/jetbrains/kotlin/descriptors/ConstructorDescriptor;Lkotlin/Unit;)Lkotlin/reflect/jvm/internal/KCallableImpl;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.k$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/k$g.class */
    public static final class C20041g extends C18573a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20041g(AbstractC20033k abstractC20033k) {
            super(abstractC20033k);
            AbstractC20033k.this = r4;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19164j, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m
        /* renamed from: a */
        public final /* synthetic */ Object mo1173a(AbstractC19192j descriptor, Object obj) {
            C20128v data = (C20128v) obj;
            C18524p.m3840d(descriptor, "descriptor");
            C18524p.m3840d(data, "data");
            throw new IllegalStateException("No constructors should appear here: ".concat(String.valueOf(descriptor)));
        }
    }

    /* renamed from: a */
    private final Class<?> m1182a(String str, int i, int i2) {
        char charAt = str.charAt(i);
        if (charAt != 'F') {
            if (charAt == 'L') {
                ClassLoader m2659a = C19088b.m2659a(mo1163a());
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                String substring = str.substring(i + 1, i2 - 1);
                C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Class<?> loadClass = m2659a.loadClass(C18425p.m3964a(substring, '/', '.', false));
                C18524p.m3843b(loadClass, "jClass.safeClassLoader.l…d - 1).replace('/', '.'))");
                return loadClass;
            } else if (charAt == 'S') {
                return Short.TYPE;
            } else {
                if (charAt == 'V') {
                    Class<?> cls = Void.TYPE;
                    C18524p.m3843b(cls, "Void.TYPE");
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
                        return C19088b.m2652g(m1182a(str, i + 1, i2));
                    }
                    switch (charAt) {
                        case 'B':
                            return Byte.TYPE;
                        case 'C':
                            return Character.TYPE;
                        case 'D':
                            return Double.TYPE;
                        default:
                            throw new C18620ab("Unknown type prefix in the method signature: ".concat(String.valueOf(str)));
                    }
                }
            }
        }
        return Float.TYPE;
    }

    /* renamed from: a */
    public static Constructor<?> m1184a(Class<?> cls, List<? extends Class<?>> list) {
        Constructor<?> constructor;
        Object[] array;
        try {
            array = list.toArray(new Class[0]);
        } catch (NoSuchMethodException e) {
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Method m1186a(java.lang.Class<?> r5, java.lang.String r6, java.lang.Class<?>[] r7, java.lang.Class<?> r8) {
        /*
            r0 = 0
            r9 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r7
            int r3 = r3.length     // Catch: java.lang.NoSuchMethodException -> La1
            java.lang.Object[] r2 = java.util.Arrays.copyOf(r2, r3)     // Catch: java.lang.NoSuchMethodException -> La1
            java.lang.Class[] r2 = (java.lang.Class[]) r2     // Catch: java.lang.NoSuchMethodException -> La1
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> La1
            r10 = r0
            r0 = r10
            java.lang.String r1 = "result"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            r0 = r10
            java.lang.Class r0 = r0.getReturnType()     // Catch: java.lang.NoSuchMethodException -> La1
            r1 = r8
            boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            if (r0 == 0) goto L2d
            r0 = r10
            r5 = r0
            goto L9f
        L2d:
            r0 = r5
            java.lang.reflect.Method[] r0 = r0.getDeclaredMethods()     // Catch: java.lang.NoSuchMethodException -> La1
            r10 = r0
            r0 = r10
            java.lang.String r1 = "declaredMethods"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            r0 = r10
            int r0 = r0.length     // Catch: java.lang.NoSuchMethodException -> La1
            r11 = r0
            r0 = 0
            r12 = r0
        L43:
            r0 = r9
            r5 = r0
            r0 = r12
            r1 = r11
            if (r0 >= r1) goto L9f
            r0 = r10
            r1 = r12
            r0 = r0[r1]
            r5 = r0
            r0 = r5
            java.lang.String r1 = "method"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            r0 = r5
            java.lang.String r0 = r0.getName()     // Catch: java.lang.NoSuchMethodException -> La1
            r1 = r6
            boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            if (r0 == 0) goto L8e
            r0 = r5
            java.lang.Class r0 = r0.getReturnType()     // Catch: java.lang.NoSuchMethodException -> La1
            r1 = r8
            boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            if (r0 == 0) goto L8e
            r0 = r5
            java.lang.Class[] r0 = r0.getParameterTypes()     // Catch: java.lang.NoSuchMethodException -> La1
            r13 = r0
            r0 = r13
            kotlin.jvm.internal.C18524p.m3851a(r0)     // Catch: java.lang.NoSuchMethodException -> La1
            r0 = r13
            r1 = r7
            boolean r0 = java.util.Arrays.equals(r0, r1)     // Catch: java.lang.NoSuchMethodException -> La1
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L8e
            r0 = 1
            r15 = r0
            goto L91
        L8e:
            r0 = 0
            r15 = r0
        L91:
            r0 = r15
            if (r0 == 0) goto L99
            goto L9f
        L99:
            int r12 = r12 + 1
            goto L43
        L9f:
            r0 = r5
            return r0
        La1:
            r5 = move-exception
            r0 = r9
            r5 = r0
            goto L9f
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.AbstractC20033k.m1186a(java.lang.Class, java.lang.String, java.lang.Class[], java.lang.Class):java.lang.reflect.Method");
    }

    /* renamed from: a */
    private final Method m1185a(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2, boolean z) {
        Class<?>[] interfaces;
        Method m1185a;
        if (z) {
            clsArr[0] = cls;
        }
        Method m1186a = m1186a(cls, str, clsArr, cls2);
        if (m1186a != null) {
            return m1186a;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null && (m1185a = m1185a(superclass, str, clsArr, cls2, z)) != null) {
            return m1185a;
        }
        for (Class<?> superInterface : cls.getInterfaces()) {
            C18524p.m3843b(superInterface, "superInterface");
            Method m1185a2 = m1185a(superInterface, str, clsArr, cls2, z);
            if (m1185a2 != null) {
                return m1185a2;
            }
            if (z) {
                Class<?> m2668a = C19075e.m2668a(C19088b.m2659a(superInterface), superInterface.getName() + "$DefaultImpls");
                if (m2668a != null) {
                    clsArr[0] = superInterface;
                    Method m1186a2 = m1186a(m2668a, str, clsArr, cls2);
                    if (m1186a2 != null) {
                        return m1186a2;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    /* renamed from: b */
    private final List<Class<?>> m1177b(String str) {
        boolean b;
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        while (true) {
            int i3 = i2;
            if (str.charAt(i3) != ')') {
                int i4 = i3;
                while (str.charAt(i4) == '[') {
                    i4++;
                }
                char charAt = str.charAt(i4);
                b = C18425p.m3928b("VZCBSIFJD", charAt, false);
                if (b) {
                    i = i4 + 1;
                } else if (charAt != 'L') {
                    throw new C18620ab("Unknown type prefix in the method signature: ".concat(String.valueOf(str)));
                } else {
                    i = C18425p.m3949a((CharSequence) str, ';', i3, false, 4) + 1;
                }
                arrayList.add(m1182a(str, i3, i));
                i2 = i;
            } else {
                return arrayList;
            }
        }
    }

    /* renamed from: c */
    private final Class<?> m1176c(String str) {
        return m1182a(str, C18425p.m3949a((CharSequence) str, ')', 0, false, 6) + 1, str.length());
    }

    /* renamed from: a */
    public final Constructor<?> m1183a(String desc) {
        C18524p.m3840d(desc, "desc");
        return m1184a(mo1163a(), m1177b(desc));
    }

    /* renamed from: a */
    public final Method m1181a(String name, String desc) {
        Method m1185a;
        C18524p.m3840d(name, "name");
        C18524p.m3840d(desc, "desc");
        if (C18524p.m3850a((Object) name, (Object) "<init>")) {
            return null;
        }
        Object[] array = m1177b(desc).toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Class<?>[] clsArr = (Class[]) array;
        Class<?> m1176c = m1176c(desc);
        Method m1185a2 = m1185a(mo1157i(), name, clsArr, m1176c, false);
        if (m1185a2 != null) {
            return m1185a2;
        }
        if (mo1157i().isInterface() && (m1185a = m1185a(Object.class, name, clsArr, m1176c, false)) != null) {
            return m1185a;
        }
        return null;
    }

    /* renamed from: a */
    public final Method m1180a(String name, String desc, boolean z) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(desc, "desc");
        if (C18524p.m3850a((Object) name, (Object) "<init>")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(mo1163a());
        }
        m1179a((List<Class<?>>) arrayList, desc, false);
        Class<?> mo1157i = mo1157i();
        String str = name + "$default";
        Object[] array = arrayList.toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return m1185a(mo1157i, str, (Class[]) array, m1176c(desc), z);
    }

    /* renamed from: a */
    public abstract Collection<AbstractC19017an> mo1161a(C18966e c18966e);

    /* JADX WARN: Removed duplicated region for block: B:19:0x0092 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.AbstractC18659f<?>> m1178a(kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h r6, kotlin.reflect.jvm.internal.AbstractC20033k.EnumC20037c r7) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "scope"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r7
            java.lang.String r1 = "belonginess"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            kotlin.reflect.jvm.internal.k$g r0 = new kotlin.reflect.jvm.internal.k$g
            r1 = r0
            r2 = r5
            r3 = r5
            r1.<init>(r3)
            r8 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.resolve.e.k r0 = (kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k) r0
            r1 = 0
            r2 = 0
            r3 = 3
            java.util.Collection r0 = kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k.C19842a.m1411a(r0, r1, r2, r3)
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
        L3a:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L9e
            r0 = r10
            java.lang.Object r0 = r0.next()
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k) r0
            r11 = r0
            r0 = r11
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b
            if (r0 == 0) goto L8c
            r0 = r11
            kotlin.reflect.jvm.internal.impl.descriptors.b r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b) r0
            r6 = r0
            r0 = r6
            kotlin.reflect.jvm.internal.impl.descriptors.s r0 = r0.getVisibility()
            kotlin.reflect.jvm.internal.impl.descriptors.s r1 = kotlin.reflect.jvm.internal.impl.descriptors.C19200r.f65009h
            boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L8c
            r0 = r7
            r1 = r6
            boolean r0 = r0.accept(r1)
            if (r0 == 0) goto L8c
            r0 = r11
            r1 = r8
            kotlin.reflect.jvm.internal.impl.descriptors.m r1 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m) r1
            kotlin.v r2 = kotlin.C20128v.f66529a
            java.lang.Object r0 = r0.accept(r1, r2)
            kotlin.reflect.jvm.internal.f r0 = (kotlin.reflect.jvm.internal.AbstractC18659f) r0
            r6 = r0
            goto L8e
        L8c:
            r0 = 0
            r6 = r0
        L8e:
            r0 = r6
            if (r0 == 0) goto L3a
            r0 = r9
            r1 = r6
            boolean r0 = r0.add(r1)
            goto L3a
        L9e:
            r0 = r9
            java.util.List r0 = (java.util.List) r0
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.List r0 = kotlin.p518a.C18282n.m4118h(r0)
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.AbstractC20033k.m1178a(kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.k$c):java.util.Collection");
    }

    /* renamed from: a */
    public abstract AbstractC19017an mo1162a(int i);

    /* renamed from: a */
    public final void m1179a(List<Class<?>> list, String str, boolean z) {
        List<Class<?>> m1177b = m1177b(str);
        list.addAll(m1177b);
        int size = ((m1177b.size() + 32) - 1) / 32;
        for (int i = 0; i < size; i++) {
            Class<?> cls = Integer.TYPE;
            C18524p.m3843b(cls, "Integer.TYPE");
            list.add(cls);
        }
        Class cls2 = z ? f66390a : Object.class;
        C18524p.m3843b(cls2, "if (isConstructor) DEFAU…RKER else Any::class.java");
        list.add(cls2);
    }

    /* renamed from: b */
    public abstract Collection<AbstractC19192j> mo1160b();

    /* renamed from: b */
    public abstract Collection<AbstractC19219w> mo1159b(C18966e c18966e);

    /* renamed from: i */
    protected Class<?> mo1157i() {
        Class<?> m2655d = C19088b.m2655d(mo1163a());
        Class<?> cls = m2655d;
        if (m2655d == null) {
            cls = mo1163a();
        }
        return cls;
    }
}

package kotlin.reflect.jvm.internal;

import com.google.api.client.googleapis.notifications.C15291b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p520b.C18299a;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19088b;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b0\u0018��2\u00020\u0001:\u0005\u0005\u0006\u0007\b\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&\u0082\u0001\u0005\n\u000b\f\r\u000e¨\u0006\u000f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "", "()V", "asString", "", "FakeJavaAnnotationConstructor", "JavaConstructor", "JavaMethod", "KotlinConstructor", "KotlinFunction", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d.class */
public abstract class AbstractC18645d {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u001f\u0010\u0007\u001a\u0010\u0012\f\u0012\n \n*\u0004\u0018\u00010\t0\t0\b¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/JvmFunctionSignature$FakeJavaAnnotationConstructor;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "jClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "getJClass", "()Ljava/lang/Class;", "methods", "", "Ljava/lang/reflect/Method;", "kotlin.jvm.PlatformType", "getMethods", "()Ljava/util/List;", "asString", "", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$a.class */
    public static final class C18646a extends AbstractC18645d {

        /* renamed from: a */
        final List<Method> f63727a;

        /* renamed from: b */
        private final Class<?> f63728b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m4298d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", C15291b.f55271a, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.d$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$a$a.class */
        public static final class C18647a<T> implements Comparator<T> {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Method it2 = (Method) t;
                C18524p.m3843b(it2, "it");
                String name = it2.getName();
                Method it3 = (Method) t2;
                C18524p.m3843b(it3, "it");
                return C18299a.m4103a(name, it3.getName());
            }
        }

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Ljava/lang/reflect/Method;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.d$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$a$b.class */
        static final class C18648b extends AbstractC18526r implements Function1<Method, CharSequence> {

            /* renamed from: a */
            public static final C18648b f63729a = new C18648b();

            C18648b() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ CharSequence invoke(Method method) {
                Method it2 = method;
                C18524p.m3843b(it2, "it");
                Class<?> returnType = it2.getReturnType();
                C18524p.m3843b(returnType, "it.returnType");
                return C19088b.m2653f(returnType);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18646a(Class<?> jClass) {
            super(null);
            C18524p.m3840d(jClass, "jClass");
            this.f63728b = jClass;
            Method[] declaredMethods = jClass.getDeclaredMethods();
            C18524p.m3843b(declaredMethods, "jClass.declaredMethods");
            this.f63727a = C18273i.m4190b((Object[]) declaredMethods, (Comparator) new C18647a());
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18645d
        /* renamed from: a */
        public final String mo3732a() {
            return C18282n.m4148a(this.f63727a, "", "<init>(", ")V", 0, (CharSequence) null, C18648b.f63729a, 24);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaConstructor;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "constructor", "Ljava/lang/reflect/Constructor;", "(Ljava/lang/reflect/Constructor;)V", "getConstructor", "()Ljava/lang/reflect/Constructor;", "asString", "", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.d$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$b.class */
    public static final class C18649b extends AbstractC18645d {

        /* renamed from: a */
        final Constructor<?> f63730a;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0002\b\u0003 \u0004*\b\u0012\u0002\b\u0003\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Ljava/lang/Class;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.reflect.jvm.internal.d$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$b$a.class */
        static final class C18650a extends AbstractC18526r implements Function1<Class<?>, CharSequence> {

            /* renamed from: a */
            public static final C18650a f63731a = new C18650a();

            C18650a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ CharSequence invoke(Class<?> cls) {
                Class<?> it2 = cls;
                C18524p.m3843b(it2, "it");
                return C19088b.m2653f(it2);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18649b(Constructor<?> constructor) {
            super(null);
            C18524p.m3840d(constructor, "constructor");
            this.f63730a = constructor;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18645d
        /* renamed from: a */
        public final String mo3732a() {
            Class<?>[] parameterTypes = this.f63730a.getParameterTypes();
            C18524p.m3843b(parameterTypes, "constructor.parameterTypes");
            return C18273i.m4202a(parameterTypes, "", "<init>(", ")V", 0, (CharSequence) null, C18650a.f63731a, 24);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/JvmFunctionSignature$JavaMethod;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "method", "Ljava/lang/reflect/Method;", "(Ljava/lang/reflect/Method;)V", "getMethod", "()Ljava/lang/reflect/Method;", "asString", "", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.d$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$c.class */
    public static final class C18651c extends AbstractC18645d {

        /* renamed from: a */
        final Method f63732a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18651c(Method method) {
            super(null);
            C18524p.m3840d(method, "method");
            this.f63732a = method;
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18645d
        /* renamed from: a */
        public final String mo3732a() {
            return C18633ai.m3769a(this.f63732a);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0007\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinConstructor;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "signature", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;", "(Lorg/jetbrains/kotlin/metadata/jvm/deserialization/JvmMemberSignature$Method;)V", "_signature", "", "constructorDesc", "getConstructorDesc", "()Ljava/lang/String;", "getSignature", "()Lorg/jetbrains/kotlin/metadata/jvm/deserialization/JvmMemberSignature$Method;", "asString", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.d$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$d.class */
    public static final class C18652d extends AbstractC18645d {

        /* renamed from: a */
        final AbstractC18851e.C18853b f63733a;

        /* renamed from: b */
        private final String f63734b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18652d(AbstractC18851e.C18853b signature) {
            super(null);
            C18524p.m3840d(signature, "signature");
            this.f63733a = signature;
            this.f63734b = signature.mo2929c();
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18645d
        /* renamed from: a */
        public final String mo3732a() {
            return this.f63734b;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000e\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0007\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/JvmFunctionSignature$KotlinFunction;", "Lkotlin/reflect/jvm/internal/JvmFunctionSignature;", "signature", "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMemberSignature$Method;", "(Lorg/jetbrains/kotlin/metadata/jvm/deserialization/JvmMemberSignature$Method;)V", "_signature", "", "methodDesc", "getMethodDesc", "()Ljava/lang/String;", "methodName", "getMethodName", "getSignature", "()Lorg/jetbrains/kotlin/metadata/jvm/deserialization/JvmMemberSignature$Method;", "asString", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.d$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/d$e.class */
    public static final class C18653e extends AbstractC18645d {

        /* renamed from: a */
        final String f63735a;

        /* renamed from: b */
        final AbstractC18851e.C18853b f63736b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18653e(AbstractC18851e.C18853b signature) {
            super(null);
            C18524p.m3840d(signature, "signature");
            this.f63736b = signature;
            this.f63735a = signature.mo2929c();
        }

        @Override // kotlin.reflect.jvm.internal.AbstractC18645d
        /* renamed from: a */
        public final String mo3732a() {
            return this.f63735a;
        }
    }

    private AbstractC18645d() {
    }

    public /* synthetic */ AbstractC18645d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: a */
    public abstract String mo3732a();
}

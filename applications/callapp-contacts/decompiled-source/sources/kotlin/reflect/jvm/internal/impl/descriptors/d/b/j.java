package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.af;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.bf;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.f;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.t;
import kotlin.reflect.jvm.internal.impl.load.java.d.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j.class */
public final class j extends n implements kotlin.reflect.jvm.internal.impl.descriptors.d.b.f, t, kotlin.reflect.jvm.internal.impl.load.java.d.g {

    /* renamed from: a  reason: collision with root package name */
    public final Class<?> f37467a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$a.class */
    final /* synthetic */ class a extends m implements Function1<Member, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37468a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "isSynthetic";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(Member.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "isSynthetic()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Member member) {
            Member p0 = member;
            p.d(p0, "p0");
            return Boolean.valueOf(p0.isSynthetic());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$b.class */
    final /* synthetic */ class b extends m implements Function1<Constructor<?>, m> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37469a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(m.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Constructor;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ m invoke(Constructor<?> constructor) {
            Constructor<?> p0 = constructor;
            p.d(p0, "p0");
            return new m(p0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$c.class */
    final /* synthetic */ class c extends m implements Function1<Member, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37470a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "isSynthetic";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(Member.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "isSynthetic()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Member member) {
            Member p0 = member;
            p.d(p0, "p0");
            return Boolean.valueOf(p0.isSynthetic());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$d.class */
    final /* synthetic */ class d extends m implements Function1<Field, p> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f37471a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(p.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Field;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ p invoke(Field field) {
            Field p0 = field;
            p.d(p0, "p0");
            return new p(p0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$e.class */
    static final class e extends r implements Function1<Class<?>, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f37472a = new e();

        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Class<?> cls) {
            String simpleName = cls.getSimpleName();
            p.b(simpleName, "it.simpleName");
            return Boolean.valueOf(simpleName.length() == 0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$f.class */
    static final class f extends r implements Function1<Class<?>, kotlin.reflect.jvm.internal.impl.c.e> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f37473a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.e invoke(Class<?> cls) {
            String simpleName = cls.getSimpleName();
            if (!kotlin.reflect.jvm.internal.impl.c.e.b(simpleName)) {
                simpleName = null;
            }
            if (simpleName == null) {
                return null;
            }
            return kotlin.reflect.jvm.internal.impl.c.e.a(simpleName);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$g.class */
    static final class g extends r implements Function1<Method, Boolean> {
        g() {
            super(1);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
            if (r9 == false) goto L_0x007e;
         */
        @Override // kotlin.jvm.functions.Function1
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ java.lang.Boolean invoke(java.lang.reflect.Method r7) {
            /*
                r6 = this;
                r0 = r7
                java.lang.reflect.Method r0 = (java.lang.reflect.Method) r0
                r8 = r0
                r0 = r8
                boolean r0 = r0.isSynthetic()
                r9 = r0
                r0 = 1
                r10 = r0
                r0 = r9
                if (r0 == 0) goto L_0x0017
            L_0x0011:
                r0 = 0
                r11 = r0
                goto L_0x007e
            L_0x0017:
                r0 = r10
                r11 = r0
                r0 = r6
                kotlin.reflect.jvm.internal.impl.descriptors.d.b.j r0 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.j.this
                java.lang.Class<?> r0 = r0.f37467a
                boolean r0 = r0.isEnum()
                if (r0 == 0) goto L_0x007e
                r0 = r8
                java.lang.String r1 = "method"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r8
                java.lang.String r0 = r0.getName()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "values"
                boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
                if (r0 == 0) goto L_0x0054
                r0 = r8
                java.lang.Class[] r0 = r0.getParameterTypes()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "method.parameterTypes"
                kotlin.jvm.internal.p.b(r0, r1)
                r0 = r7
                java.lang.Object[] r0 = (java.lang.Object[]) r0
                int r0 = r0.length
                if (r0 != 0) goto L_0x0071
                r0 = 1
                r9 = r0
                goto L_0x0073
            L_0x0054:
                r0 = r7
                java.lang.String r1 = "valueOf"
                boolean r0 = kotlin.jvm.internal.p.a(r0, r1)
                if (r0 == 0) goto L_0x0071
                r0 = r8
                java.lang.Class[] r0 = r0.getParameterTypes()
                r1 = 1
                java.lang.Class[] r1 = new java.lang.Class[r1]
                r2 = r1
                r3 = 0
                java.lang.Class<java.lang.String> r4 = java.lang.String.class
                r2[r3] = r4
                boolean r0 = java.util.Arrays.equals(r0, r1)
                r9 = r0
                goto L_0x0073
            L_0x0071:
                r0 = 0
                r9 = r0
            L_0x0073:
                r0 = r10
                r11 = r0
                r0 = r9
                if (r0 == 0) goto L_0x007e
                goto L_0x0011
            L_0x007e:
                r0 = r11
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j.g.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$h.class */
    final /* synthetic */ class h extends m implements Function1<Method, s> {

        /* renamed from: a  reason: collision with root package name */
        public static final h f37475a = new h();

        h() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(s.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Method;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ s invoke(Method method) {
            Method p0 = method;
            p.d(p0, "p0");
            return new s(p0);
        }
    }

    public j(Class<?> klass) {
        p.d(klass, "klass");
        this.f37467a = klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.f
    public final /* bridge */ /* synthetic */ AnnotatedElement a() {
        return this.f37467a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.d.a a(kotlin.reflect.jvm.internal.impl.c.b bVar) {
        return f.a.a(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* synthetic */ Collection b() {
        return f.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        p.d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.t
    public final int d() {
        return this.f37467a.getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final kotlin.reflect.jvm.internal.impl.c.b e() {
        kotlin.reflect.jvm.internal.impl.c.b f2 = kotlin.reflect.jvm.internal.impl.descriptors.d.b.b.e(this.f37467a).f();
        p.b(f2, "klass.classId.asSingleFqName()");
        return f2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j) && p.a(this.f37467a, ((j) obj).f37467a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final Collection<kotlin.reflect.jvm.internal.impl.load.java.d.j> f() {
        if (p.a(this.f37467a, Object.class)) {
            return z.f36608a;
        }
        af afVar = new af(2);
        Type genericSuperclass = this.f37467a.getGenericSuperclass();
        Class cls = genericSuperclass;
        if (genericSuperclass == null) {
        }
        afVar.b(cls);
        Type[] genericInterfaces = this.f37467a.getGenericInterfaces();
        p.b(genericInterfaces, "klass.genericInterfaces");
        afVar.a((Object) genericInterfaces);
        List<Type> b2 = n.b(afVar.a((Object[]) new Type[afVar.f36784a.size()]));
        ArrayList arrayList = new ArrayList(n.a((Iterable) b2, 10));
        for (Type type : b2) {
            arrayList.add(new l(type));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final Collection<v> g() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.s
    public final kotlin.reflect.jvm.internal.impl.c.e h() {
        kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a(this.f37467a.getSimpleName());
        p.b(a2, "identifier(klass.simpleName)");
        return a2;
    }

    public final int hashCode() {
        return this.f37467a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.y
    public final List<x> i() {
        TypeVariable<Class<?>>[] typeParameters = this.f37467a.getTypeParameters();
        p.b(typeParameters, "klass.typeParameters");
        TypeVariable<Class<?>>[] typeVariableArr = typeParameters;
        ArrayList arrayList = new ArrayList(typeVariableArr.length);
        for (TypeVariable<Class<?>> typeVariable : typeVariableArr) {
            arrayList.add(new x(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final boolean j() {
        return this.f37467a.isInterface();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final boolean k() {
        return this.f37467a.isAnnotation();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final boolean l() {
        return this.f37467a.isEnum();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final Collection<kotlin.reflect.jvm.internal.impl.load.java.d.j> m() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final boolean n() {
        return t.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final boolean o() {
        return t.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final boolean p() {
        return t.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.r
    public final bf q() {
        return t.a.d(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final /* synthetic */ Collection r() {
        Class<?>[] declaredClasses = this.f37467a.getDeclaredClasses();
        p.b(declaredClasses, "klass.declaredClasses");
        return k.f(k.e(k.b(i.o(declaredClasses), e.f37472a), f.f37473a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.d.g s() {
        Class<?> declaringClass = this.f37467a.getDeclaringClass();
        return declaringClass == null ? null : new j(declaringClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final /* synthetic */ Collection t() {
        Method[] declaredMethods = this.f37467a.getDeclaredMethods();
        p.b(declaredMethods, "klass.declaredMethods");
        return k.f(k.d(k.a(i.o(declaredMethods), (Function1) new g()), h.f37475a));
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f37467a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final /* synthetic */ Collection u() {
        Field[] declaredFields = this.f37467a.getDeclaredFields();
        p.b(declaredFields, "klass.declaredFields");
        return k.f(k.d(k.b(i.o(declaredFields), c.f37470a), d.f37471a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.g
    public final /* synthetic */ Collection v() {
        Constructor<?>[] declaredConstructors = this.f37467a.getDeclaredConstructors();
        p.b(declaredConstructors, "klass.declaredConstructors");
        return k.f(k.d(k.b(i.o(declaredConstructors), a.f37468a), b.f37469a));
    }
}

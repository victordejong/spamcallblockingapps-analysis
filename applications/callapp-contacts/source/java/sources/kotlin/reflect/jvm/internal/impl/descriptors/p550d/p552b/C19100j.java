package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18499af;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p531g.C18381k;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19064bf;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19095f;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19118t;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19401j;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19413v;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j.class */
public final class C19100j extends AbstractC19112n implements AbstractC19095f, AbstractC19118t, AbstractC19398g {

    /* renamed from: a */
    public final Class<?> f64826a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$a.class */
    final /* synthetic */ class C19101a extends C18521m implements Function1<Member, Boolean> {

        /* renamed from: a */
        public static final C19101a f64827a = new C19101a();

        C19101a() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "isSynthetic";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(Member.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "isSynthetic()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Member member) {
            Member p0 = member;
            C18524p.m3840d(p0, "p0");
            return Boolean.valueOf(p0.isSynthetic());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$b.class */
    final /* synthetic */ class C19102b extends C18521m implements Function1<Constructor<?>, C19111m> {

        /* renamed from: a */
        public static final C19102b f64828a = new C19102b();

        C19102b() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19111m.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Constructor;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C19111m invoke(Constructor<?> constructor) {
            Constructor<?> p0 = constructor;
            C18524p.m3840d(p0, "p0");
            return new C19111m(p0);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$c.class */
    final /* synthetic */ class C19103c extends C18521m implements Function1<Member, Boolean> {

        /* renamed from: a */
        public static final C19103c f64829a = new C19103c();

        C19103c() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "isSynthetic";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(Member.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "isSynthetic()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Member member) {
            Member p0 = member;
            C18524p.m3840d(p0, "p0");
            return Boolean.valueOf(p0.isSynthetic());
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$d.class */
    final /* synthetic */ class C19104d extends C18521m implements Function1<Field, C19114p> {

        /* renamed from: a */
        public static final C19104d f64830a = new C19104d();

        C19104d() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19114p.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Field;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C19114p invoke(Field field) {
            Field p0 = field;
            C18524p.m3840d(p0, "p0");
            return new C19114p(p0);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$e.class */
    static final class C19105e extends AbstractC18526r implements Function1<Class<?>, Boolean> {

        /* renamed from: a */
        public static final C19105e f64831a = new C19105e();

        C19105e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(Class<?> cls) {
            String simpleName = cls.getSimpleName();
            C18524p.m3843b(simpleName, "it.simpleName");
            return Boolean.valueOf(simpleName.length() == 0);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$f.class */
    static final class C19106f extends AbstractC18526r implements Function1<Class<?>, C18966e> {

        /* renamed from: a */
        public static final C19106f f64832a = new C19106f();

        C19106f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C18966e invoke(Class<?> cls) {
            String simpleName = cls.getSimpleName();
            if (!C18966e.m2716b(simpleName)) {
                simpleName = null;
            }
            if (simpleName == null) {
                return null;
            }
            return C18966e.m2719a(simpleName);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$g.class */
    static final class C19107g extends AbstractC18526r implements Function1<Method, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19107g() {
            super(1);
            C19100j.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0078, code lost:
            if (r9 == false) goto L18;
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
                if (r0 == 0) goto L17
            L11:
                r0 = 0
                r11 = r0
                goto L7e
            L17:
                r0 = r10
                r11 = r0
                r0 = r6
                kotlin.reflect.jvm.internal.impl.descriptors.d.b.j r0 = kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19100j.this
                java.lang.Class<?> r0 = r0.f64826a
                boolean r0 = r0.isEnum()
                if (r0 == 0) goto L7e
                r0 = r8
                java.lang.String r1 = "method"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r8
                java.lang.String r0 = r0.getName()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "values"
                boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)
                if (r0 == 0) goto L54
                r0 = r8
                java.lang.Class[] r0 = r0.getParameterTypes()
                r7 = r0
                r0 = r7
                java.lang.String r1 = "method.parameterTypes"
                kotlin.jvm.internal.C18524p.m3843b(r0, r1)
                r0 = r7
                java.lang.Object[] r0 = (java.lang.Object[]) r0
                int r0 = r0.length
                if (r0 != 0) goto L71
                r0 = 1
                r9 = r0
                goto L73
            L54:
                r0 = r7
                java.lang.String r1 = "valueOf"
                boolean r0 = kotlin.jvm.internal.C18524p.m3850a(r0, r1)
                if (r0 == 0) goto L71
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
                goto L73
            L71:
                r0 = 0
                r9 = r0
            L73:
                r0 = r10
                r11 = r0
                r0 = r9
                if (r0 == 0) goto L7e
                goto L11
            L7e:
                r0 = r11
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.C19100j.C19107g.invoke(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.j$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/j$h.class */
    final /* synthetic */ class C19108h extends C18521m implements Function1<Method, C19117s> {

        /* renamed from: a */
        public static final C19108h f64834a = new C19108h();

        C19108h() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19117s.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Method;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C19117s invoke(Method method) {
            Method p0 = method;
            C18524p.m3840d(p0, "p0");
            return new C19117s(p0);
        }
    }

    public C19100j(Class<?> klass) {
        C18524p.m3840d(klass, "klass");
        this.f64826a = klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19095f
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AnnotatedElement mo2638a() {
        return this.f64826a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC19389a mo2221a(C18961b c18961b) {
        return AbstractC19095f.C19096a.m2649a(this, c18961b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final /* synthetic */ Collection mo2220b() {
        return AbstractC19095f.C19096a.m2650a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        C18524p.m3840d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19118t
    /* renamed from: d */
    public final int mo2644d() {
        return this.f64826a.getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: e */
    public final C18961b mo2216e() {
        C18961b m2748f = C19088b.m2654e(this.f64826a).m2748f();
        C18524p.m3843b(m2748f, "klass.classId.asSingleFqName()");
        return m2748f;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C19100j) && C18524p.m3850a(this.f64826a, ((C19100j) obj).f64826a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: f */
    public final Collection<AbstractC19401j> mo2215f() {
        if (C18524p.m3850a(this.f64826a, Object.class)) {
            return C18297z.f63400a;
        }
        C18499af c18499af = new C18499af(2);
        Type genericSuperclass = this.f64826a.getGenericSuperclass();
        Class cls = genericSuperclass;
        if (genericSuperclass == null) {
        }
        c18499af.m3878b(cls);
        Type[] genericInterfaces = this.f64826a.getGenericInterfaces();
        C18524p.m3843b(genericInterfaces, "klass.genericInterfaces");
        c18499af.m3880a((Object) genericInterfaces);
        List<Type> b = C18282n.m4167b(c18499af.m3879a((Object[]) new Type[c18499af.f63593a.size()]));
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) b, 10));
        for (Type type : b) {
            arrayList.add(new C19110l(type));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: g */
    public final Collection<AbstractC19413v> mo2214g() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19410s
    /* renamed from: h */
    public final C18966e mo2183h() {
        C18966e m2719a = C18966e.m2719a(this.f64826a.getSimpleName());
        C18524p.m3843b(m2719a, "identifier(klass.simpleName)");
        return m2719a;
    }

    public final int hashCode() {
        return this.f64826a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19416y
    /* renamed from: i */
    public final List<C19124x> mo2177i() {
        TypeVariable<Class<?>>[] typeParameters = this.f64826a.getTypeParameters();
        C18524p.m3843b(typeParameters, "klass.typeParameters");
        TypeVariable<Class<?>>[] typeVariableArr = typeParameters;
        ArrayList arrayList = new ArrayList(typeVariableArr.length);
        for (TypeVariable<Class<?>> typeVariable : typeVariableArr) {
            arrayList.add(new C19124x(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: j */
    public final boolean mo2213j() {
        return this.f64826a.isInterface();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: k */
    public final boolean mo2212k() {
        return this.f64826a.isAnnotation();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: l */
    public final boolean mo2211l() {
        return this.f64826a.isEnum();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: m */
    public final Collection<AbstractC19401j> mo2210m() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: n */
    public final boolean mo2187n() {
        return AbstractC19118t.C19119a.m2643a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: o */
    public final boolean mo2186o() {
        return AbstractC19118t.C19119a.m2641c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: p */
    public final boolean mo2185p() {
        return AbstractC19118t.C19119a.m2642b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19409r
    /* renamed from: q */
    public final AbstractC19064bf mo2184q() {
        return AbstractC19118t.C19119a.m2640d(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: r */
    public final /* synthetic */ Collection mo2209r() {
        Class<?>[] declaredClasses = this.f64826a.getDeclaredClasses();
        C18524p.m3843b(declaredClasses, "klass.declaredClasses");
        return C18381k.m4012f(C18381k.m4013e(C18381k.m4019b(C18273i.m4177o(declaredClasses), C19105e.f64831a), C19106f.f64832a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: s */
    public final /* synthetic */ AbstractC19398g mo2208s() {
        Class<?> declaringClass = this.f64826a.getDeclaringClass();
        return declaringClass == null ? null : new C19100j(declaringClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: t */
    public final /* synthetic */ Collection mo2207t() {
        Method[] declaredMethods = this.f64826a.getDeclaredMethods();
        C18524p.m3843b(declaredMethods, "klass.declaredMethods");
        return C18381k.m4012f(C18381k.m4015d(C18381k.m4020a(C18273i.m4177o(declaredMethods), (Function1) new C19107g()), C19108h.f64834a));
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f64826a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: u */
    public final /* synthetic */ Collection mo2206u() {
        Field[] declaredFields = this.f64826a.getDeclaredFields();
        C18524p.m3843b(declaredFields, "klass.declaredFields");
        return C18381k.m4012f(C18381k.m4015d(C18381k.m4019b(C18273i.m4177o(declaredFields), C19103c.f64829a), C19104d.f64830a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g
    /* renamed from: v */
    public final /* synthetic */ Collection mo2205v() {
        Constructor<?>[] declaredConstructors = this.f64826a.getDeclaredConstructors();
        C18524p.m3843b(declaredConstructors, "klass.declaredConstructors");
        return C18381k.m4012f(C18381k.m4015d(C18381k.m4019b(C18273i.m4177o(declaredConstructors), C19101a.f64827a), C19102b.f64828a));
    }
}

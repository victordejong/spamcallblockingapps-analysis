package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18511e;
import kotlin.jvm.internal.AbstractC18520l;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.reflect.AbstractC20103k;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.AbstractC18645d;
import kotlin.reflect.jvm.internal.AbstractC20033k;
import kotlin.reflect.jvm.internal.C18622ad;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.C19810e;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.C19764a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.p535a.AbstractC18584d;
import kotlin.reflect.jvm.internal.p535a.AbstractC18586e;
import kotlin.reflect.jvm.internal.p535a.C18574a;
import kotlin.reflect.jvm.internal.p535a.C18611f;
import kotlin.reflect.jvm.internal.p535a.C18614h;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00032\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00042\u00020\u0005B)\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fB5\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0012J&\u00102\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u000304032\n\u00105\u001a\u0006\u0012\u0002\b\u0003042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u00106\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0010\u0010:\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0013\u0010;\u001a\u00020)2\b\u0010<\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010=\u001a\u00020\u0014H\u0016J\b\u0010>\u001a\u00020\tH\u0016R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R!\u0010!\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b\"\u0010\u001cR\u001b\u0010\r\u001a\u00020\u000e8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010*R\u0014\u0010.\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010*R\u0014\u0010/\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u0010*R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006?"}, m4298d2 = {"Lkotlin/reflect/jvm/internal/KFunctionImpl;", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "", "Lkotlin/reflect/KFunction;", "Lkotlin/jvm/internal/FunctionBase;", "Lkotlin/reflect/jvm/internal/FunctionWithAllInvokes;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "boundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;)V", "descriptorInitialValue", "rawBoundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Ljava/lang/Object;)V", "arity", "", "getArity", "()I", "getBoundReceiver", "()Ljava/lang/Object;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "defaultCaller$delegate", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "isBound", "", "()Z", "isExternal", "isInfix", "isInline", "isOperator", "isSuspend", "getName", "()Ljava/lang/String;", "createConstructorCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "member", "createInstanceMethodCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Ljava/lang/reflect/Method;", "createJvmStaticInObjectCaller", "createStaticMethodCaller", "equals", "other", "hashCode", "toString", "kotlin-reflection"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.internal.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l.class */
public final class C20042l extends AbstractC18659f<Object> implements AbstractC18520l<Object>, KFunction<Object>, AbstractC18644c {

    /* renamed from: a */
    static final /* synthetic */ KProperty[] f66401a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20042l.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20042l.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C20042l.class), "defaultCaller", "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

    /* renamed from: b */
    final AbstractC20033k f66402b;

    /* renamed from: c */
    private final C18622ad.C18623a f66403c;

    /* renamed from: d */
    private final C18622ad.C18624b f66404d;

    /* renamed from: e */
    private final C18622ad.C18624b f66405e;

    /* renamed from: f */
    private final String f66406f;

    /* renamed from: g */
    private final Object f66407g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l$a.class */
    public static final class C20043a extends AbstractC18526r implements Function0<AbstractC18584d<? extends Member>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20043a() {
            super(0);
            C20042l.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC18584d<? extends Member> invoke() {
            Constructor<?> constructor;
            AbstractC18586e abstractC18586e;
            AbstractC18584d<? extends Member> m3810a;
            AbstractC18645d m3772a = C18632ah.f63702b.m3772a(C20042l.this.mo1137b());
            if (m3772a instanceof AbstractC18645d.C18652d) {
                if (C20042l.this.m3726g()) {
                    Class<?> a = C20042l.this.f66402b.mo1163a();
                    List<AbstractC20103k> parameters = C20042l.this.getParameters();
                    ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) parameters, 10));
                    for (AbstractC20103k abstractC20103k : parameters) {
                        String mo1120a = abstractC20103k.mo1120a();
                        C18524p.m3851a((Object) mo1120a);
                        arrayList.add(mo1120a);
                    }
                    return new C18574a(a, arrayList, C18574a.EnumC18575a.POSITIONAL_CALL, C18574a.EnumC18576b.KOTLIN, null, 16, null);
                }
                constructor = C20042l.this.f66402b.m1183a(((AbstractC18645d.C18652d) m3772a).f63733a.f64426b);
            } else if (m3772a instanceof AbstractC18645d.C18653e) {
                AbstractC18645d.C18653e c18653e = (AbstractC18645d.C18653e) m3772a;
                constructor = C20042l.this.f66402b.m1181a(c18653e.f63736b.f64425a, c18653e.f63736b.f64426b);
            } else if (m3772a instanceof AbstractC18645d.C18651c) {
                constructor = ((AbstractC18645d.C18651c) m3772a).f63732a;
            } else if (!(m3772a instanceof AbstractC18645d.C18649b)) {
                if (!(m3772a instanceof AbstractC18645d.C18646a)) {
                    throw new NoWhenBranchMatchedException();
                }
                List<Method> list = ((AbstractC18645d.C18646a) m3772a).f63727a;
                Class<?> a2 = C20042l.this.f66402b.mo1163a();
                List<Method> list2 = list;
                ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
                for (Method it2 : list2) {
                    C18524p.m3843b(it2, "it");
                    arrayList2.add(it2.getName());
                }
                return new C18574a(a2, arrayList2, C18574a.EnumC18575a.POSITIONAL_CALL, C18574a.EnumC18576b.JAVA, list);
            } else {
                constructor = ((AbstractC18645d.C18649b) m3772a).f63730a;
            }
            if (constructor instanceof Constructor) {
                C20042l c20042l = C20042l.this;
                abstractC18586e = C20042l.m1170a(c20042l, (Constructor) constructor, c20042l.mo1137b());
            } else if (!(constructor instanceof Method)) {
                throw new C18620ab("Could not compute caller for function: " + C20042l.this.mo1137b() + " (member = " + constructor + ')');
            } else {
                Method method = (Method) constructor;
                abstractC18586e = !Modifier.isStatic(method.getModifiers()) ? C20042l.m1169a(C20042l.this, method) : C20042l.this.mo1137b().getAnnotations().mo1340a(C18635aj.m3768a()) != null ? C20042l.m1168b(C20042l.this, method) : C20042l.m1167c(C20042l.this, method);
            }
            m3810a = C18614h.m3810a(abstractC18586e, C20042l.this.mo1137b(), false);
            return m3810a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.l$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l$b.class */
    public static final class C20044b extends AbstractC18526r implements Function0<AbstractC18584d<? extends Member>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20044b() {
            super(0);
            C20042l.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v125, types: [java.lang.reflect.Member, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC18584d<? extends Member> invoke() {
            GenericDeclaration genericDeclaration;
            AbstractC18586e abstractC18586e;
            AbstractC18586e.AbstractC18604h abstractC18604h;
            ?? mo3803a;
            AbstractC18645d m3772a = C18632ah.f63702b.m3772a(C20042l.this.mo1137b());
            if (m3772a instanceof AbstractC18645d.C18653e) {
                AbstractC20033k abstractC20033k = C20042l.this.f66402b;
                AbstractC18645d.C18653e c18653e = (AbstractC18645d.C18653e) m3772a;
                String str = c18653e.f63736b.f64425a;
                String str2 = c18653e.f63736b.f64426b;
                C18524p.m3851a((Object) C20042l.this.mo1136c().mo3803a());
                genericDeclaration = abstractC20033k.m1180a(str, str2, !Modifier.isStatic(mo3803a.getModifiers()));
            } else if (m3772a instanceof AbstractC18645d.C18652d) {
                if (C20042l.this.m3726g()) {
                    Class<?> a = C20042l.this.f66402b.mo1163a();
                    List<AbstractC20103k> parameters = C20042l.this.getParameters();
                    ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) parameters, 10));
                    for (AbstractC20103k abstractC20103k : parameters) {
                        String mo1120a = abstractC20103k.mo1120a();
                        C18524p.m3851a((Object) mo1120a);
                        arrayList.add(mo1120a);
                    }
                    return new C18574a(a, arrayList, C18574a.EnumC18575a.CALL_BY_NAME, C18574a.EnumC18576b.KOTLIN, null, 16, null);
                }
                AbstractC20033k abstractC20033k2 = C20042l.this.f66402b;
                String desc = ((AbstractC18645d.C18652d) m3772a).f63733a.f64426b;
                C18524p.m3840d(desc, "desc");
                Class<?> a2 = abstractC20033k2.mo1163a();
                ArrayList arrayList2 = new ArrayList();
                abstractC20033k2.m1179a((List<Class<?>>) arrayList2, desc, true);
                C20128v c20128v = C20128v.f66529a;
                genericDeclaration = AbstractC20033k.m1184a(a2, arrayList2);
            } else if (m3772a instanceof AbstractC18645d.C18646a) {
                List<Method> list = ((AbstractC18645d.C18646a) m3772a).f63727a;
                Class<?> a3 = C20042l.this.f66402b.mo1163a();
                List<Method> list2 = list;
                ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
                for (Method it2 : list2) {
                    C18524p.m3843b(it2, "it");
                    arrayList3.add(it2.getName());
                }
                return new C18574a(a3, arrayList3, C18574a.EnumC18575a.CALL_BY_NAME, C18574a.EnumC18576b.JAVA, list);
            } else {
                genericDeclaration = null;
            }
            if (genericDeclaration instanceof Constructor) {
                C20042l c20042l = C20042l.this;
                abstractC18586e = C20042l.m1170a(c20042l, (Constructor) genericDeclaration, c20042l.mo1137b());
            } else if (genericDeclaration instanceof Method) {
                if (C20042l.this.mo1137b().getAnnotations().mo1340a(C18635aj.m3768a()) != null) {
                    AbstractC19193k containingDeclaration = C20042l.this.mo1137b().getContainingDeclaration();
                    Objects.requireNonNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    if (!((AbstractC19070d) containingDeclaration).isCompanionObject()) {
                        abstractC18604h = C20042l.m1168b(C20042l.this, (Method) genericDeclaration);
                        abstractC18586e = abstractC18604h;
                    }
                }
                abstractC18604h = C20042l.m1167c(C20042l.this, (Method) genericDeclaration);
                abstractC18586e = abstractC18604h;
            } else {
                abstractC18586e = null;
            }
            if (abstractC18586e != null) {
                return C18614h.m3810a(abstractC18586e, C20042l.this.mo1137b(), true);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.l$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l$c.class */
    public static final class C20045c extends AbstractC18526r implements Function0<AbstractC19219w> {

        /* renamed from: b */
        final /* synthetic */ String f66411b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C20045c(String str) {
            super(0);
            C20042l.this = r4;
            this.f66411b = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19219w invoke() {
            List list;
            AbstractC20033k abstractC20033k = C20042l.this.f66402b;
            String name = this.f66411b;
            String signature = C20042l.this.f66406f;
            C18524p.m3840d(name, "name");
            C18524p.m3840d(signature, "signature");
            if (C18524p.m3850a((Object) name, (Object) "<init>")) {
                list = C18282n.m4118h(abstractC20033k.mo1160b());
            } else {
                C18966e m2719a = C18966e.m2719a(name);
                C18524p.m3843b(m2719a, "Name.identifier(name)");
                list = abstractC20033k.mo1159b(m2719a);
            }
            Collection<AbstractC19219w> collection = list;
            ArrayList arrayList = new ArrayList();
            for (Object obj : collection) {
                if (C18524p.m3850a((Object) C18632ah.f63702b.m3772a((AbstractC19219w) obj).mo3732a(), (Object) signature)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            boolean z = true;
            if (arrayList2.size() != 1) {
                String a = C18282n.m4148a(collection, StringUtils.f67179LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, AbstractC20033k.C20038d.f66397a, 30);
                StringBuilder sb = new StringBuilder("Function '");
                sb.append(name);
                sb.append("' (JVM signature: ");
                sb.append(signature);
                sb.append(") not resolved in ");
                sb.append(abstractC20033k);
                sb.append(':');
                if (a.length() != 0) {
                    z = false;
                }
                sb.append(z ? " no members found" : StringUtils.f67179LF.concat(String.valueOf(a)));
                throw new C18620ab(sb.toString());
            }
            return (AbstractC19219w) C18282n.m4115i((List<? extends Object>) arrayList2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C20042l(AbstractC20033k container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(signature, "signature");
    }

    private C20042l(AbstractC20033k abstractC20033k, String str, String str2, AbstractC19219w abstractC19219w, Object obj) {
        this.f66402b = abstractC20033k;
        this.f66406f = str2;
        this.f66407g = obj;
        this.f66403c = C18622ad.m3797a(abstractC19219w, new C20045c(str));
        this.f66404d = C18622ad.m3796a(new C20043a());
        this.f66405e = C18622ad.m3796a(new C20044b());
    }

    /* synthetic */ C20042l(AbstractC20033k abstractC20033k, String str, String str2, AbstractC19219w abstractC19219w, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC20033k, str, str2, abstractC19219w, (i & 16) != 0 ? AbstractC18511e.NO_RECEIVER : obj);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C20042l(kotlin.reflect.jvm.internal.AbstractC20033k r10, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w r11) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "container"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            java.lang.String r1 = "descriptor"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.c.e r0 = r0.getName()
            java.lang.String r0 = r0.m2721a()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "descriptor.name.asString()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r9
            r1 = r10
            r2 = r12
            kotlin.reflect.jvm.internal.ah r3 = kotlin.reflect.jvm.internal.C18632ah.f63702b
            r4 = r11
            kotlin.reflect.jvm.internal.d r3 = r3.m3772a(r4)
            java.lang.String r3 = r3.mo3732a()
            r4 = r11
            r5 = 0
            r6 = 16
            r7 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.C20042l.<init>(kotlin.reflect.jvm.internal.k, kotlin.reflect.jvm.internal.impl.descriptors.w):void");
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC18586e.AbstractC18604h m1169a(C20042l c20042l, Method method) {
        return c20042l.mo1139f() ? new AbstractC18586e.AbstractC18604h.C18605a(method, c20042l.m1166h()) : new AbstractC18586e.AbstractC18604h.C18608d(method);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC18586e m1170a(C20042l c20042l, Constructor constructor, AbstractC19219w abstractC19219w) {
        boolean z;
        AbstractC19219w descriptor = abstractC19219w;
        C18524p.m3840d(descriptor, "descriptor");
        AbstractC19065c abstractC19065c = descriptor instanceof AbstractC19065c ? (AbstractC19065c) descriptor : null;
        if (abstractC19065c != null && !C19200r.m2517a(abstractC19065c.getVisibility())) {
            AbstractC19070d c = abstractC19065c.mo2525c();
            C18524p.m3843b(c, "constructorDescriptor.constructedClass");
            if (!C19810e.m1444a((AbstractC19193k) c) && !C19807d.m1458h(abstractC19065c.mo2525c())) {
                List<AbstractC19050ba> valueParameters = abstractC19065c.getValueParameters();
                C18524p.m3843b(valueParameters, "constructorDescriptor.valueParameters");
                List<AbstractC19050ba> list = valueParameters;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (AbstractC19050ba abstractC19050ba : list) {
                        KotlinType g = abstractC19050ba.mo2593g();
                        C18524p.m3843b(g, "it.type");
                        if (C19764a.m1509a(g)) {
                            z = true;
                            break;
                        }
                    }
                }
            }
        }
        z = false;
        return z ? c20042l.mo1139f() ? new AbstractC18586e.C18587a(constructor, c20042l.m1166h()) : new AbstractC18586e.C18588b(constructor) : c20042l.mo1139f() ? new AbstractC18586e.C18589c(constructor, c20042l.m1166h()) : new AbstractC18586e.C18591e(constructor);
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC18586e.AbstractC18604h m1168b(C20042l c20042l, Method method) {
        return c20042l.mo1139f() ? new AbstractC18586e.AbstractC18604h.C18606b(method) : new AbstractC18586e.AbstractC18604h.C18609e(method);
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC18586e.AbstractC18604h m1167c(C20042l c20042l, Method method) {
        return c20042l.mo1139f() ? new AbstractC18586e.AbstractC18604h.C18607c(method, c20042l.m1166h()) : new AbstractC18586e.AbstractC18604h.C18610f(method);
    }

    /* renamed from: h */
    private final Object m1166h() {
        return C18614h.m3812a(this.f66407g, mo1137b());
    }

    @Override // kotlin.jvm.functions.AbstractC18473n
    /* renamed from: a */
    public final Object mo1164a(Object obj, Object obj2, Object obj3) {
        return call(obj, obj2, obj3);
    }

    /* renamed from: a */
    public final AbstractC19219w mo1137b() {
        return (AbstractC19219w) this.f66403c.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: c */
    public final AbstractC18584d<?> mo1136c() {
        return (AbstractC18584d) this.f66404d.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: d */
    public final AbstractC18584d<?> mo1141d() {
        return (AbstractC18584d) this.f66405e.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: e */
    public final AbstractC20033k mo1140e() {
        return this.f66402b;
    }

    public final boolean equals(Object obj) {
        C20042l m3764a = C18635aj.m3764a(obj);
        return m3764a != null && C18524p.m3850a(this.f66402b, m3764a.f66402b) && C18524p.m3850a((Object) getName(), (Object) m3764a.getName()) && C18524p.m3850a((Object) this.f66406f, (Object) m3764a.f66406f) && C18524p.m3850a(this.f66407g, m3764a.f66407g);
    }

    @Override // kotlin.reflect.jvm.internal.AbstractC18659f
    /* renamed from: f */
    public final boolean mo1139f() {
        return !C18524p.m3850a(this.f66407g, AbstractC18511e.NO_RECEIVER);
    }

    @Override // kotlin.jvm.internal.AbstractC18520l
    public final int getArity() {
        return C18611f.m3814a(mo1136c());
    }

    @Override // kotlin.reflect.KCallable
    public final String getName() {
        String m2721a = mo1137b().getName().m2721a();
        C18524p.m3843b(m2721a, "descriptor.name.asString()");
        return m2721a;
    }

    public final int hashCode() {
        return (((this.f66402b.hashCode() * 31) + getName().hashCode()) * 31) + this.f66406f.hashCode();
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return call(new Object[0]);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return call(obj);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return call(obj, obj2);
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isExternal() {
        return mo1137b().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isInfix() {
        return mo1137b().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isInline() {
        return mo1137b().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isOperator() {
        return mo1137b().isOperator();
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isSuspend() {
        return mo1137b().isSuspend();
    }

    public final String toString() {
        C18628af c18628af = C18628af.f63696a;
        return C18628af.m3779a(mo1137b());
    }
}

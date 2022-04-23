package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.a.a;
import kotlin.reflect.jvm.internal.a.d;
import kotlin.reflect.jvm.internal.a.e;
import kotlin.reflect.jvm.internal.a.f;
import kotlin.reflect.jvm.internal.a.h;
import kotlin.reflect.jvm.internal.ad;
import kotlin.reflect.jvm.internal.d;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.k;
import kotlin.reflect.k;
import kotlin.v;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00032\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00042\u00020\u0005B)\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\fB\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fB5\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0012J&\u00102\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u000304032\n\u00105\u001a\u0006\u0012\u0002\b\u0003042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u00106\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0010\u00109\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0010\u0010:\u001a\u0002072\u0006\u00105\u001a\u000208H\u0002J\u0013\u0010;\u001a\u00020)2\b\u0010<\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010=\u001a\u00020\u0014H\u0016J\b\u0010>\u001a\u00020\tH\u0016R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R!\u0010!\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001a8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001e\u001a\u0004\b\"\u0010\u001cR\u001b\u0010\r\u001a\u00020\u000e8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010*R\u0014\u0010+\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010*R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R\u0014\u0010-\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010*R\u0014\u0010.\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b.\u0010*R\u0014\u0010/\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u0010*R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006?"}, d2 = {"Lkotlin/reflect/jvm/internal/KFunctionImpl;", "Lkotlin/reflect/jvm/internal/KCallableImpl;", "", "Lkotlin/reflect/KFunction;", "Lkotlin/jvm/internal/FunctionBase;", "Lkotlin/reflect/jvm/internal/FunctionWithAllInvokes;", "container", "Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "name", "", "signature", "boundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "descriptor", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;)V", "descriptorInitialValue", "rawBoundReceiver", "(Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;Ljava/lang/Object;)V", "arity", "", "getArity", "()I", "getBoundReceiver", "()Ljava/lang/Object;", "caller", "Lkotlin/reflect/jvm/internal/calls/Caller;", "getCaller", "()Lkotlin/reflect/jvm/internal/calls/Caller;", "caller$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazyVal;", "getContainer", "()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;", "defaultCaller", "getDefaultCaller", "defaultCaller$delegate", "getDescriptor", "()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;", "descriptor$delegate", "Lkotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal;", "isBound", "", "()Z", "isExternal", "isInfix", "isInline", "isOperator", "isSuspend", "getName", "()Ljava/lang/String;", "createConstructorCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl;", "Ljava/lang/reflect/Constructor;", "member", "createInstanceMethodCaller", "Lkotlin/reflect/jvm/internal/calls/CallerImpl$Method;", "Ljava/lang/reflect/Method;", "createJvmStaticInObjectCaller", "createStaticMethodCaller", "equals", "other", "hashCode", "toString", "kotlin-reflection"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l.class */
public final class l extends f<Object> implements kotlin.jvm.internal.l<Object>, KFunction<Object>, kotlin.reflect.jvm.internal.c {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty[] f38544a = {ac.a(new aa(ac.b(l.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;")), ac.a(new aa(ac.b(l.class), "caller", "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;")), ac.a(new aa(ac.b(l.class), "defaultCaller", "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"))};

    /* renamed from: b  reason: collision with root package name */
    final k f38545b;

    /* renamed from: c  reason: collision with root package name */
    private final ad.a f38546c;

    /* renamed from: d  reason: collision with root package name */
    private final ad.b f38547d;
    private final ad.b e;
    private final String f;
    private final Object g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0012\u0012\u0002\b\u0003 \u0002*\b\u0012\u0002\b\u0003\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l$a.class */
    static final class a extends r implements Function0<d<? extends Member>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ d<? extends Member> invoke() {
            Constructor<?> constructor;
            e.h hVar;
            d a2 = ah.f36880b.a(l.this.b());
            if (a2 instanceof d.C0622d) {
                if (l.this.g()) {
                    Class<?> a3 = l.this.f38545b.a();
                    List<k> parameters = l.this.getParameters();
                    ArrayList arrayList = new ArrayList(n.a((Iterable) parameters, 10));
                    for (k kVar : parameters) {
                        String a4 = kVar.a();
                        p.a((Object) a4);
                        arrayList.add(a4);
                    }
                    return new kotlin.reflect.jvm.internal.a.a(a3, arrayList, a.EnumC0614a.POSITIONAL_CALL, a.b.KOTLIN, null, 16, null);
                }
                constructor = l.this.f38545b.a(((d.C0622d) a2).f36909a.f37219b);
            } else if (a2 instanceof d.e) {
                d.e eVar = (d.e) a2;
                constructor = l.this.f38545b.a(eVar.f36912b.f37218a, eVar.f36912b.f37219b);
            } else if (a2 instanceof d.c) {
                constructor = ((d.c) a2).f36908a;
            } else if (a2 instanceof d.b) {
                constructor = ((d.b) a2).f36906a;
            } else if (a2 instanceof d.a) {
                List<Method> list = ((d.a) a2).f36903a;
                Class<?> a5 = l.this.f38545b.a();
                List<Method> list2 = list;
                ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
                for (Method it2 : list2) {
                    p.b(it2, "it");
                    arrayList2.add(it2.getName());
                }
                return new kotlin.reflect.jvm.internal.a.a(a5, arrayList2, a.EnumC0614a.POSITIONAL_CALL, a.b.JAVA, list);
            } else {
                throw new NoWhenBranchMatchedException();
            }
            if (constructor instanceof Constructor) {
                l lVar = l.this;
                hVar = l.a(lVar, (Constructor) constructor, lVar.b());
            } else if (constructor instanceof Method) {
                Method method = (Method) constructor;
                hVar = !Modifier.isStatic(method.getModifiers()) ? l.a(l.this, method) : l.this.b().getAnnotations().a(aj.a()) != null ? l.b(l.this, method) : l.c(l.this, method);
            } else {
                throw new ab("Could not compute caller for function: " + l.this.b() + " (member = " + constructor + ')');
            }
            return h.a((kotlin.reflect.jvm.internal.a.d) hVar, (kotlin.reflect.jvm.internal.impl.descriptors.b) l.this.b());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/calls/Caller;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l$b.class */
    static final class b extends r implements Function0<kotlin.reflect.jvm.internal.a.d<? extends Member>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.a.d<? extends Member> invoke() {
            Constructor<?> constructor;
            e.h hVar;
            e.h hVar2;
            d a2 = ah.f36880b.a(l.this.b());
            if (a2 instanceof d.e) {
                k kVar = l.this.f38545b;
                d.e eVar = (d.e) a2;
                String str = eVar.f36912b.f37218a;
                String str2 = eVar.f36912b.f37219b;
                Member a3 = l.this.c().a();
                p.a(a3);
                constructor = kVar.a(str, str2, !Modifier.isStatic(a3.getModifiers()));
            } else if (a2 instanceof d.C0622d) {
                if (l.this.g()) {
                    Class<?> a4 = l.this.f38545b.a();
                    List<k> parameters = l.this.getParameters();
                    ArrayList arrayList = new ArrayList(n.a((Iterable) parameters, 10));
                    for (k kVar2 : parameters) {
                        String a5 = kVar2.a();
                        p.a((Object) a5);
                        arrayList.add(a5);
                    }
                    return new kotlin.reflect.jvm.internal.a.a(a4, arrayList, a.EnumC0614a.CALL_BY_NAME, a.b.KOTLIN, null, 16, null);
                }
                k kVar3 = l.this.f38545b;
                String desc = ((d.C0622d) a2).f36909a.f37219b;
                p.d(desc, "desc");
                Class<?> a6 = kVar3.a();
                ArrayList arrayList2 = new ArrayList();
                kVar3.a((List<Class<?>>) arrayList2, desc, true);
                v vVar = v.f38654a;
                constructor = k.a(a6, arrayList2);
            } else if (a2 instanceof d.a) {
                List<Method> list = ((d.a) a2).f36903a;
                Class<?> a7 = l.this.f38545b.a();
                List<Method> list2 = list;
                ArrayList arrayList3 = new ArrayList(n.a((Iterable) list2, 10));
                for (Method it2 : list2) {
                    p.b(it2, "it");
                    arrayList3.add(it2.getName());
                }
                return new kotlin.reflect.jvm.internal.a.a(a7, arrayList3, a.EnumC0614a.CALL_BY_NAME, a.b.JAVA, list);
            } else {
                constructor = null;
            }
            if (constructor instanceof Constructor) {
                l lVar = l.this;
                hVar = l.a(lVar, (Constructor) constructor, lVar.b());
            } else if (constructor instanceof Method) {
                if (l.this.b().getAnnotations().a(aj.a()) != null) {
                    kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration = l.this.b().getContainingDeclaration();
                    Objects.requireNonNull(containingDeclaration, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    if (!((kotlin.reflect.jvm.internal.impl.descriptors.d) containingDeclaration).isCompanionObject()) {
                        hVar2 = l.b(l.this, (Method) constructor);
                        hVar = hVar2;
                    }
                }
                hVar2 = l.c(l.this, (Method) constructor);
                hVar = hVar2;
            } else {
                hVar = null;
            }
            if (hVar != null) {
                return h.a(hVar, l.this.b(), true);
            }
            return null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/FunctionDescriptor;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/l$c.class */
    static final class c extends r implements Function0<w> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38551b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str) {
            super(0);
            this.f38551b = str;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ w invoke() {
            List list;
            k kVar = l.this.f38545b;
            String name = this.f38551b;
            String signature = l.this.f;
            p.d(name, "name");
            p.d(signature, "signature");
            if (p.a((Object) name, (Object) "<init>")) {
                list = n.h(kVar.b());
            } else {
                kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a(name);
                p.b(a2, "Name.identifier(name)");
                list = kVar.b(a2);
            }
            Collection<w> collection = list;
            ArrayList arrayList = new ArrayList();
            for (Object obj : collection) {
                if (p.a((Object) ah.f36880b.a((w) obj).a(), (Object) signature)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            boolean z = true;
            if (arrayList2.size() == 1) {
                return (w) n.i((List<? extends Object>) arrayList2);
            }
            String a3 = n.a(collection, StringUtils.LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, k.d.f38540a, 30);
            StringBuilder sb = new StringBuilder("Function '");
            sb.append(name);
            sb.append("' (JVM signature: ");
            sb.append(signature);
            sb.append(") not resolved in ");
            sb.append(kVar);
            sb.append(':');
            if (a3.length() != 0) {
                z = false;
            }
            sb.append(z ? " no members found" : StringUtils.LF.concat(String.valueOf(a3)));
            throw new ab(sb.toString());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public l(k container, String name, String signature, Object obj) {
        this(container, name, signature, null, obj);
        p.d(container, "container");
        p.d(name, "name");
        p.d(signature, "signature");
    }

    private l(k kVar, String str, String str2, w wVar, Object obj) {
        this.f38545b = kVar;
        this.f = str2;
        this.g = obj;
        this.f38546c = ad.a(wVar, new c(str));
        this.f38547d = ad.a(new a());
        this.e = ad.a(new b());
    }

    /* synthetic */ l(k kVar, String str, String str2, w wVar, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kVar, str, str2, wVar, (i & 16) != 0 ? kotlin.jvm.internal.e.NO_RECEIVER : obj);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l(kotlin.reflect.jvm.internal.k r10, kotlin.reflect.jvm.internal.impl.descriptors.w r11) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "container"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            java.lang.String r1 = "descriptor"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r11
            kotlin.reflect.jvm.internal.impl.c.e r0 = r0.getName()
            java.lang.String r0 = r0.a()
            r12 = r0
            r0 = r12
            java.lang.String r1 = "descriptor.name.asString()"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r9
            r1 = r10
            r2 = r12
            kotlin.reflect.jvm.internal.ah r3 = kotlin.reflect.jvm.internal.ah.f36880b
            r4 = r11
            kotlin.reflect.jvm.internal.d r3 = r3.a(r4)
            java.lang.String r3 = r3.a()
            r4 = r11
            r5 = 0
            r6 = 16
            r7 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.l.<init>(kotlin.reflect.jvm.internal.k, kotlin.reflect.jvm.internal.impl.descriptors.w):void");
    }

    public static final /* synthetic */ e.h a(l lVar, Method method) {
        return lVar.f() ? new e.h.a(method, lVar.h()) : new e.h.d(method);
    }

    public static final /* synthetic */ e a(l lVar, Constructor constructor, w wVar) {
        boolean z;
        w descriptor = wVar;
        p.d(descriptor, "descriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.c cVar = descriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.c ? (kotlin.reflect.jvm.internal.impl.descriptors.c) descriptor : null;
        if (cVar != null && !kotlin.reflect.jvm.internal.impl.descriptors.r.a(cVar.getVisibility())) {
            kotlin.reflect.jvm.internal.impl.descriptors.d c2 = cVar.c();
            p.b(c2, "constructorDescriptor.constructedClass");
            if (!kotlin.reflect.jvm.internal.impl.resolve.e.a((kotlin.reflect.jvm.internal.impl.descriptors.k) c2) && !kotlin.reflect.jvm.internal.impl.resolve.d.h(cVar.c())) {
                List<ba> valueParameters = cVar.getValueParameters();
                p.b(valueParameters, "constructorDescriptor.valueParameters");
                List<ba> list = valueParameters;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (ba baVar : list) {
                        KotlinType g = baVar.g();
                        p.b(g, "it.type");
                        if (kotlin.reflect.jvm.internal.impl.resolve.c.a.a(g)) {
                            z = true;
                            break;
                        }
                    }
                }
            }
        }
        z = false;
        return z ? lVar.f() ? new e.a(constructor, lVar.h()) : new e.b(constructor) : lVar.f() ? new e.c(constructor, lVar.h()) : new e.C0616e(constructor);
    }

    public static final /* synthetic */ e.h b(l lVar, Method method) {
        return lVar.f() ? new e.h.b(method) : new e.h.C0619e(method);
    }

    public static final /* synthetic */ e.h c(l lVar, Method method) {
        return lVar.f() ? new e.h.c(method, lVar.h()) : new e.h.f(method);
    }

    private final Object h() {
        return h.a(this.g, b());
    }

    @Override // kotlin.jvm.functions.n
    public final Object a(Object obj, Object obj2, Object obj3) {
        return call(obj, obj2, obj3);
    }

    /* renamed from: a */
    public final w b() {
        return (w) this.f38546c.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final kotlin.reflect.jvm.internal.a.d<?> c() {
        return (kotlin.reflect.jvm.internal.a.d) this.f38547d.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final kotlin.reflect.jvm.internal.a.d<?> d() {
        return (kotlin.reflect.jvm.internal.a.d) this.e.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final k e() {
        return this.f38545b;
    }

    public final boolean equals(Object obj) {
        l a2 = aj.a(obj);
        return a2 != null && p.a(this.f38545b, a2.f38545b) && p.a((Object) getName(), (Object) a2.getName()) && p.a((Object) this.f, (Object) a2.f) && p.a(this.g, a2.g);
    }

    @Override // kotlin.reflect.jvm.internal.f
    public final boolean f() {
        return !p.a(this.g, kotlin.jvm.internal.e.NO_RECEIVER);
    }

    @Override // kotlin.jvm.internal.l
    public final int getArity() {
        return f.a(c());
    }

    @Override // kotlin.reflect.KCallable
    public final String getName() {
        String a2 = b().getName().a();
        p.b(a2, "descriptor.name.asString()");
        return a2;
    }

    public final int hashCode() {
        return (((this.f38545b.hashCode() * 31) + getName().hashCode()) * 31) + this.f.hashCode();
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
        return b().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isInfix() {
        return b().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isInline() {
        return b().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public final boolean isOperator() {
        return b().isOperator();
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isSuspend() {
        return b().isSuspend();
    }

    public final String toString() {
        af afVar = af.f36874a;
        return af.a(b());
    }
}

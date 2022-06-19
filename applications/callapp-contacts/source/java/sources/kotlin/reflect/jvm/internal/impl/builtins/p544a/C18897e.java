package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18889a;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19160f;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e.class */
public final class C18897e implements AbstractC19043b {

    /* renamed from: a */
    public static final C18899a f64469a = new C18899a(null);

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f64470b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18897e.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};

    /* renamed from: f */
    private static final C18961b f64471f = C18954j.f64583m;

    /* renamed from: g */
    private static final C18966e f64472g;

    /* renamed from: h */
    private static final C18960a f64473h;

    /* renamed from: c */
    private final AbstractC18999ab f64474c;

    /* renamed from: d */
    private final Function1<AbstractC18999ab, AbstractC19193k> f64475d;

    /* renamed from: e */
    private final AbstractC19296i f64476e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.e$1 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e$1.class */
    public static final class C188981 extends AbstractC18526r implements Function1<AbstractC18999ab, AbstractC18889a> {

        /* renamed from: a */
        public static final C188981 f64477a = new C188981();

        C188981() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18889a invoke(AbstractC18999ab abstractC18999ab) {
            AbstractC18999ab module = abstractC18999ab;
            C18524p.m3840d(module, "module");
            List<AbstractC19006ae> mo2568d = module.getPackage(C18897e.f64471f).mo2568d();
            ArrayList arrayList = new ArrayList();
            for (Object obj : mo2568d) {
                if (obj instanceof AbstractC18889a) {
                    arrayList.add(obj);
                }
            }
            return (AbstractC18889a) C18282n.m4123e((List<? extends Object>) arrayList);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e$a.class */
    public static final class C18899a {
        private C18899a() {
        }

        public /* synthetic */ C18899a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e$b.class */
    public static final class C18900b extends AbstractC18526r implements Function0<C19160f> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19302n f64479b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18900b(AbstractC19302n abstractC19302n) {
            super(0);
            C18897e.this = r4;
            this.f64479b = abstractC19302n;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19160f invoke() {
            C19160f c19160f = new C19160f((AbstractC19193k) C18897e.this.f64475d.invoke(C18897e.this.f64474c), C18897e.f64472g, EnumC19222y.ABSTRACT, EnumC19127e.INTERFACE, C18282n.m4176a(C18897e.this.f64474c.getBuiltIns().m2798g()), AbstractC19026at.f64759a, false, this.f64479b);
            c19160f.initialize(new C18890a(this.f64479b, c19160f), C18240ab.f63351a, null);
            return c19160f;
        }
    }

    static {
        C18966e m2727e = C18954j.C18955a.f64649d.m2727e();
        C18524p.m3843b(m2727e, "cloneable.shortName()");
        f64472g = m2727e;
        C18960a m2754a = C18960a.m2754a(C18954j.C18955a.f64649d.m2730c());
        C18524p.m3843b(m2754a, "topLevel(StandardNames.FqNames.cloneable.toSafe())");
        f64473h = m2754a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18897e(AbstractC19302n storageManager, AbstractC18999ab moduleDescriptor, Function1<? super AbstractC18999ab, ? extends AbstractC19193k> computeContainingDeclaration) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(moduleDescriptor, "moduleDescriptor");
        C18524p.m3840d(computeContainingDeclaration, "computeContainingDeclaration");
        this.f64474c = moduleDescriptor;
        this.f64475d = computeContainingDeclaration;
        this.f64476e = storageManager.mo2313a(new C18900b(storageManager));
    }

    public /* synthetic */ C18897e(AbstractC19302n abstractC19302n, AbstractC18999ab abstractC18999ab, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19302n, abstractC18999ab, (i & 4) != 0 ? C188981.f64477a : function1);
    }

    /* renamed from: d */
    private final C19160f m2887d() {
        return (C19160f) C19301m.m2316a(this.f64476e, f64470b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b
    /* renamed from: a */
    public final Collection<AbstractC19070d> mo2683a(C18961b packageFqName) {
        C18524p.m3840d(packageFqName, "packageFqName");
        return C18524p.m3850a(packageFqName, f64471f) ? C18255ap.m4240a(m2887d()) : C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b
    /* renamed from: a */
    public final AbstractC19070d mo2684a(C18960a classId) {
        C18524p.m3840d(classId, "classId");
        if (C18524p.m3850a(classId, f64473h)) {
            return m2887d();
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b
    /* renamed from: a */
    public final boolean mo2682a(C18961b packageFqName, C18966e name) {
        C18524p.m3840d(packageFqName, "packageFqName");
        C18524p.m3840d(name, "name");
        return C18524p.m3850a(name, f64472g) && C18524p.m3850a(packageFqName, f64471f);
    }
}

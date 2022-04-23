package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.f;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e.class */
public final class e implements kotlin.reflect.jvm.internal.impl.descriptors.b.b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37245a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37246b = {ac.a(new aa(ac.b(e.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};
    private static final kotlin.reflect.jvm.internal.impl.c.b f = j.m;
    private static final kotlin.reflect.jvm.internal.impl.c.e g;
    private static final kotlin.reflect.jvm.internal.impl.c.a h;

    /* renamed from: c  reason: collision with root package name */
    private final ab f37247c;

    /* renamed from: d  reason: collision with root package name */
    private final Function1<ab, k> f37248d;
    private final i e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.e$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e$1.class */
    static final class AnonymousClass1 extends r implements Function1<ab, kotlin.reflect.jvm.internal.impl.builtins.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final AnonymousClass1 f37249a = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.builtins.a invoke(ab abVar) {
            ab module = abVar;
            p.d(module, "module");
            List<ae> d2 = module.getPackage(e.f).d();
            ArrayList arrayList = new ArrayList();
            for (Object obj : d2) {
                if (obj instanceof kotlin.reflect.jvm.internal.impl.builtins.a) {
                    arrayList.add(obj);
                }
            }
            return (kotlin.reflect.jvm.internal.impl.builtins.a) n.e((List<? extends Object>) arrayList);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/e$b.class */
    static final class b extends r implements Function0<f> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.f.n f37251b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlin.reflect.jvm.internal.impl.f.n nVar) {
            super(0);
            this.f37251b = nVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ f invoke() {
            f fVar = new f((k) e.this.f37248d.invoke(e.this.f37247c), e.g, y.ABSTRACT, kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE, n.a(e.this.f37247c.getBuiltIns().g()), at.f37401a, false, this.f37251b);
            fVar.initialize(new kotlin.reflect.jvm.internal.impl.builtins.a.a(this.f37251b, fVar), kotlin.a.ab.f36567a, null);
            return fVar;
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.c.e e = j.a.f37323d.e();
        p.b(e, "cloneable.shortName()");
        g = e;
        kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.c.a.a(j.a.f37323d.c());
        p.b(a2, "topLevel(StandardNames.FqNames.cloneable.toSafe())");
        h = a2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(kotlin.reflect.jvm.internal.impl.f.n storageManager, ab moduleDescriptor, Function1<? super ab, ? extends k> computeContainingDeclaration) {
        p.d(storageManager, "storageManager");
        p.d(moduleDescriptor, "moduleDescriptor");
        p.d(computeContainingDeclaration, "computeContainingDeclaration");
        this.f37247c = moduleDescriptor;
        this.f37248d = computeContainingDeclaration;
        this.e = storageManager.a(new b(storageManager));
    }

    public /* synthetic */ e(kotlin.reflect.jvm.internal.impl.f.n nVar, ab abVar, AnonymousClass1 r8, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVar, abVar, (i & 4) != 0 ? AnonymousClass1.f37249a : r8);
    }

    private final f d() {
        return (f) m.a(this.e, f37246b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.b
    public final Collection<d> a(kotlin.reflect.jvm.internal.impl.c.b packageFqName) {
        p.d(packageFqName, "packageFqName");
        return p.a(packageFqName, f) ? ap.a(d()) : kotlin.a.ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.b
    public final d a(kotlin.reflect.jvm.internal.impl.c.a classId) {
        p.d(classId, "classId");
        if (p.a(classId, h)) {
            return d();
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b.b
    public final boolean a(kotlin.reflect.jvm.internal.impl.c.b packageFqName, kotlin.reflect.jvm.internal.impl.c.e name) {
        p.d(packageFqName, "packageFqName");
        p.d(name, "name");
        return p.a(name, g) && p.a(packageFqName, f);
    }
}

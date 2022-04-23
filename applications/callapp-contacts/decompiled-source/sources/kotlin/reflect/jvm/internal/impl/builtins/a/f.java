package kotlin.reflect.jvm.internal.impl.builtins.a;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.t;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f.class */
public final class f extends g {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37252a = {ac.a(new aa(ac.b(f.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};
    public Function0<b> f;
    private final i g;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$a.class */
    public enum a {
        FROM_DEPENDENCIES,
        FROM_CLASS_LOADER,
        FALLBACK
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final ab f37253a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f37254b;

        public b(ab ownerModuleDescriptor, boolean z) {
            p.d(ownerModuleDescriptor, "ownerModuleDescriptor");
            this.f37253a = ownerModuleDescriptor;
            this.f37254b = z;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$c.class */
    public final /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f37255a;

        static {
            int[] iArr = new int[a.values().length];
            iArr[a.FROM_DEPENDENCIES.ordinal()] = 1;
            iArr[a.FROM_CLASS_LOADER.ordinal()] = 2;
            iArr[a.FALLBACK.ordinal()] = 3;
            f37255a = iArr;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$d.class */
    static final class d extends r implements Function0<g> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ n f37257b;

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$d$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$d$1.class */
        static final class AnonymousClass1 extends r implements Function0<b> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ f f37258a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(f fVar) {
                super(0);
                this.f37258a = fVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ b invoke() {
                Function0 function0 = this.f37258a.f;
                if (function0 != null) {
                    Object invoke = function0.invoke();
                    this.f37258a.f = null;
                    return (b) invoke;
                }
                throw new AssertionError("JvmBuiltins instance has not been initialized properly");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(n nVar) {
            super(0);
            this.f37257b = nVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ g invoke() {
            t builtInsModule = f.this.e();
            p.b(builtInsModule, "builtInsModule");
            return new g(builtInsModule, this.f37257b, new AnonymousClass1(f.this));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$e.class */
    public static final class e extends r implements Function0<b> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ab f37259a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f37260b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(ab abVar, boolean z) {
            super(0);
            this.f37259a = abVar;
            this.f37260b = z;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ b invoke() {
            return new b(this.f37259a, this.f37260b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(n storageManager, a kind) {
        super(storageManager);
        p.d(storageManager, "storageManager");
        p.d(kind, "kind");
        this.g = storageManager.a(new d(storageManager));
        int i = c.f37255a[kind.ordinal()];
        if (i == 2) {
            a(false);
        } else if (i == 3) {
            a(true);
        }
    }

    public final g a() {
        return (g) m.a(this.g, f37252a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    public final kotlin.reflect.jvm.internal.impl.descriptors.b.a b() {
        return a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    public final kotlin.reflect.jvm.internal.impl.descriptors.b.c c() {
        return a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.g
    public final /* synthetic */ Iterable d() {
        Iterable<kotlin.reflect.jvm.internal.impl.descriptors.b.b> d2 = super.d();
        p.b(d2, "super.getClassDescriptorFactories()");
        n storageManager = this.f37299c;
        if (storageManager == null) {
            g.b(5);
        }
        p.b(storageManager, "storageManager");
        t builtInsModule = e();
        p.b(builtInsModule, "builtInsModule");
        return kotlin.a.n.d(d2, new kotlin.reflect.jvm.internal.impl.builtins.a.e(storageManager, builtInsModule, null, 4, null));
    }
}

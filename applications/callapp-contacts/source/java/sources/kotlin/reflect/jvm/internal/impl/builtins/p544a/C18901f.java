package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19183t;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f.class */
public final class C18901f extends AbstractC18940g {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f64480a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18901f.class), "customizer", "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"))};

    /* renamed from: f */
    public Function0<C18903b> f64481f;

    /* renamed from: g */
    private final AbstractC19296i f64482g;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$a.class */
    public enum EnumC18902a {
        FROM_DEPENDENCIES,
        FROM_CLASS_LOADER,
        FALLBACK
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$b.class */
    public static final class C18903b {

        /* renamed from: a */
        final AbstractC18999ab f64483a;

        /* renamed from: b */
        final boolean f64484b;

        public C18903b(AbstractC18999ab ownerModuleDescriptor, boolean z) {
            C18524p.m3840d(ownerModuleDescriptor, "ownerModuleDescriptor");
            this.f64483a = ownerModuleDescriptor;
            this.f64484b = z;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$c.class */
    public final /* synthetic */ class C18904c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f64485a;

        static {
            int[] iArr = new int[EnumC18902a.values().length];
            iArr[EnumC18902a.FROM_DEPENDENCIES.ordinal()] = 1;
            iArr[EnumC18902a.FROM_CLASS_LOADER.ordinal()] = 2;
            iArr[EnumC18902a.FALLBACK.ordinal()] = 3;
            f64485a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$d.class */
    public static final class C18905d extends AbstractC18526r implements Function0<C18908g> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19302n f64487b;

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$d$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$d$1.class */
        static final class C189061 extends AbstractC18526r implements Function0<C18903b> {

            /* renamed from: a */
            final /* synthetic */ C18901f f64488a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C189061(C18901f c18901f) {
                super(0);
                this.f64488a = c18901f;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ C18903b invoke() {
                Function0 function0 = this.f64488a.f64481f;
                if (function0 != null) {
                    Object invoke = function0.invoke();
                    this.f64488a.f64481f = null;
                    return (C18903b) invoke;
                }
                throw new AssertionError("JvmBuiltins instance has not been initialized properly");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18905d(AbstractC19302n abstractC19302n) {
            super(0);
            C18901f.this = r4;
            this.f64487b = abstractC19302n;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18908g invoke() {
            C19183t builtInsModule = C18901f.this.m2804e();
            C18524p.m3843b(builtInsModule, "builtInsModule");
            return new C18908g(builtInsModule, this.f64487b, new C189061(C18901f.this));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.f$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/f$e.class */
    public static final class C18907e extends AbstractC18526r implements Function0<C18903b> {

        /* renamed from: a */
        final /* synthetic */ AbstractC18999ab f64489a;

        /* renamed from: b */
        final /* synthetic */ boolean f64490b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18907e(AbstractC18999ab abstractC18999ab, boolean z) {
            super(0);
            this.f64489a = abstractC18999ab;
            this.f64490b = z;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18903b invoke() {
            return new C18903b(this.f64489a, this.f64490b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18901f(AbstractC19302n storageManager, EnumC18902a kind) {
        super(storageManager);
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(kind, "kind");
        this.f64482g = storageManager.mo2313a(new C18905d(storageManager));
        int i = C18904c.f64485a[kind.ordinal()];
        if (i == 2) {
            m2821a(false);
        } else if (i != 3) {
        } else {
            m2821a(true);
        }
    }

    /* renamed from: a */
    public final C18908g m2886a() {
        return (C18908g) C19301m.m2316a(this.f64482g, f64480a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g
    /* renamed from: b */
    public final AbstractC19041a mo2820b() {
        return m2886a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g
    /* renamed from: c */
    public final AbstractC19044c mo2813c() {
        return m2886a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g
    /* renamed from: d */
    public final /* synthetic */ Iterable mo2808d() {
        Iterable<AbstractC19043b> mo2808d = super.mo2808d();
        C18524p.m3843b(mo2808d, "super.getClassDescriptorFactories()");
        AbstractC19302n storageManager = this.f64544c;
        if (storageManager == null) {
            AbstractC18940g.m2819b(5);
        }
        C18524p.m3843b(storageManager, "storageManager");
        C19183t builtInsModule = m2804e();
        C18524p.m3843b(builtInsModule, "builtInsModule");
        return C18282n.m4126d(mo2808d, new C18897e(storageManager, builtInsModule, null, 4, null));
    }
}

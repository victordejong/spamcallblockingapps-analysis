package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ar */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar.class */
public final class C19021ar<T extends AbstractC19834h> {

    /* renamed from: a */
    public static final C19022a f64750a = new C19022a(null);

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f64751b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19021ar.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* renamed from: c */
    private final AbstractC19070d f64752c;

    /* renamed from: d */
    private final Function1<KotlinTypeRefiner, T> f64753d;

    /* renamed from: e */
    private final KotlinTypeRefiner f64754e;

    /* renamed from: f */
    private final AbstractC19296i f64755f;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ar$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar$a.class */
    public static final class C19022a {
        private C19022a() {
        }

        public /* synthetic */ C19022a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static <T extends AbstractC19834h> C19021ar<T> m2692a(AbstractC19070d classDescriptor, AbstractC19302n storageManager, KotlinTypeRefiner kotlinTypeRefinerForOwnerModule, Function1<? super KotlinTypeRefiner, ? extends T> scopeFactory) {
            C18524p.m3840d(classDescriptor, "classDescriptor");
            C18524p.m3840d(storageManager, "storageManager");
            C18524p.m3840d(kotlinTypeRefinerForOwnerModule, "kotlinTypeRefinerForOwnerModule");
            C18524p.m3840d(scopeFactory, "scopeFactory");
            return new C19021ar<>(classDescriptor, storageManager, scopeFactory, kotlinTypeRefinerForOwnerModule, null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ar$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar$b.class */
    public static final class C19023b extends AbstractC18526r implements Function0<T> {

        /* renamed from: a */
        final /* synthetic */ C19021ar<T> f64756a;

        /* renamed from: b */
        final /* synthetic */ KotlinTypeRefiner f64757b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19023b(C19021ar<T> c19021ar, KotlinTypeRefiner kotlinTypeRefiner) {
            super(0);
            this.f64756a = c19021ar;
            this.f64757b = kotlinTypeRefiner;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return (AbstractC19834h) ((C19021ar) this.f64756a).f64753d.invoke(this.f64757b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.ar$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar$c.class */
    public static final class C19024c extends AbstractC18526r implements Function0<T> {

        /* renamed from: a */
        final /* synthetic */ C19021ar<T> f64758a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19024c(C19021ar<T> c19021ar) {
            super(0);
            this.f64758a = c19021ar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return (AbstractC19834h) ((C19021ar) this.f64758a).f64753d.invoke(((C19021ar) this.f64758a).f64754e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private C19021ar(AbstractC19070d abstractC19070d, AbstractC19302n abstractC19302n, Function1<? super KotlinTypeRefiner, ? extends T> function1, KotlinTypeRefiner kotlinTypeRefiner) {
        this.f64752c = abstractC19070d;
        this.f64753d = function1;
        this.f64754e = kotlinTypeRefiner;
        this.f64755f = abstractC19302n.mo2313a(new C19024c(this));
    }

    public /* synthetic */ C19021ar(AbstractC19070d abstractC19070d, AbstractC19302n abstractC19302n, Function1 function1, KotlinTypeRefiner kotlinTypeRefiner, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC19070d, abstractC19302n, function1, kotlinTypeRefiner);
    }

    /* renamed from: a */
    private final T m2696a() {
        return (T) C19301m.m2316a(this.f64755f, f64751b[0]);
    }

    /* renamed from: a */
    public final T m2694a(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (!kotlinTypeRefiner.isRefinementNeededForModule(C19756a.m1527c(this.f64752c))) {
            return m2696a();
        }
        TypeConstructor typeConstructor = this.f64752c.getTypeConstructor();
        C18524p.m3843b(typeConstructor, "classDescriptor.typeConstructor");
        return !kotlinTypeRefiner.isRefinementNeededForTypeConstructor(typeConstructor) ? m2696a() : (T) kotlinTypeRefiner.getOrPutScopeForClass(this.f64752c, new C19023b(this, kotlinTypeRefiner));
    }
}

package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar.class */
public final class ar<T extends h> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37394a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37395b = {ac.a(new aa(ac.b(ar.class), "scopeForOwnerModule", "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* renamed from: c  reason: collision with root package name */
    private final d f37396c;

    /* renamed from: d  reason: collision with root package name */
    private final Function1<KotlinTypeRefiner, T> f37397d;
    private final KotlinTypeRefiner e;
    private final i f;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static <T extends h> ar<T> a(d classDescriptor, n storageManager, KotlinTypeRefiner kotlinTypeRefinerForOwnerModule, Function1<? super KotlinTypeRefiner, ? extends T> scopeFactory) {
            p.d(classDescriptor, "classDescriptor");
            p.d(storageManager, "storageManager");
            p.d(kotlinTypeRefinerForOwnerModule, "kotlinTypeRefinerForOwnerModule");
            p.d(scopeFactory, "scopeFactory");
            return new ar<>(classDescriptor, storageManager, scopeFactory, kotlinTypeRefinerForOwnerModule, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar$b.class */
    public static final class b extends r implements Function0<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ar<T> f37398a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ KotlinTypeRefiner f37399b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ar<T> arVar, KotlinTypeRefiner kotlinTypeRefiner) {
            super(0);
            this.f37398a = arVar;
            this.f37399b = kotlinTypeRefiner;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return (h) ((ar) this.f37398a).f37397d.invoke(this.f37399b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ar$c.class */
    static final class c extends r implements Function0<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ar<T> f37400a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ar<T> arVar) {
            super(0);
            this.f37400a = arVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Object invoke() {
            return (h) ((ar) this.f37400a).f37397d.invoke(((ar) this.f37400a).e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ar(d dVar, n nVar, Function1<? super KotlinTypeRefiner, ? extends T> function1, KotlinTypeRefiner kotlinTypeRefiner) {
        this.f37396c = dVar;
        this.f37397d = function1;
        this.e = kotlinTypeRefiner;
        this.f = nVar.a(new c(this));
    }

    public /* synthetic */ ar(d dVar, n nVar, Function1 function1, KotlinTypeRefiner kotlinTypeRefiner, DefaultConstructorMarker defaultConstructorMarker) {
        this(dVar, nVar, function1, kotlinTypeRefiner);
    }

    private final T a() {
        return (T) ((h) m.a(this.f, f37395b[0]));
    }

    public final T a(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        if (!kotlinTypeRefiner.isRefinementNeededForModule(kotlin.reflect.jvm.internal.impl.resolve.b.a.c(this.f37396c))) {
            return a();
        }
        TypeConstructor typeConstructor = this.f37396c.getTypeConstructor();
        p.b(typeConstructor, "classDescriptor.typeConstructor");
        return !kotlinTypeRefiner.isRefinementNeededForTypeConstructor(typeConstructor) ? a() : (T) kotlinTypeRefiner.getOrPutScopeForClass(this.f37396c, new b(this, kotlinTypeRefiner));
    }
}

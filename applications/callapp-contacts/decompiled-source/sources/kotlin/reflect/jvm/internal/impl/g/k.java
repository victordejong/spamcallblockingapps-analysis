package kotlin.reflect.jvm.internal.impl.g;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.g.b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k.class */
public abstract class k implements kotlin.reflect.jvm.internal.impl.g.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f37698a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<g, KotlinType> f37699b;

    /* renamed from: c  reason: collision with root package name */
    private final String f37700c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$a.class */
    public static final class a extends k {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37701a = new a();

        /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$a$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$a$1.class */
        static final class AnonymousClass1 extends r implements Function1<g, KotlinType> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f37702a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ KotlinType invoke(g gVar) {
                g gVar2 = gVar;
                p.d(gVar2, "<this>");
                SimpleType booleanType = gVar2.n();
                p.b(booleanType, "booleanType");
                return booleanType;
            }
        }

        private a() {
            super("Boolean", AnonymousClass1.f37702a, null);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$b.class */
    public static final class b extends k {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37703a = new b();

        /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$b$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$b$1.class */
        static final class AnonymousClass1 extends r implements Function1<g, KotlinType> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f37704a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ KotlinType invoke(g gVar) {
                g gVar2 = gVar;
                p.d(gVar2, "<this>");
                SimpleType intType = gVar2.l();
                p.b(intType, "intType");
                return intType;
            }
        }

        private b() {
            super("Int", AnonymousClass1.f37704a, null);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$c.class */
    public static final class c extends k {

        /* renamed from: a  reason: collision with root package name */
        public static final c f37705a = new c();

        /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$c$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$c$1.class */
        static final class AnonymousClass1 extends r implements Function1<g, KotlinType> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f37706a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ KotlinType invoke(g gVar) {
                g gVar2 = gVar;
                p.d(gVar2, "<this>");
                SimpleType unitType = gVar2.o();
                p.b(unitType, "unitType");
                return unitType;
            }
        }

        private c() {
            super("Unit", AnonymousClass1.f37706a, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private k(String str, Function1<? super g, ? extends KotlinType> function1) {
        this.f37698a = str;
        this.f37699b = function1;
        this.f37700c = p.a("must return ", (Object) str);
    }

    public /* synthetic */ k(String str, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String a() {
        return this.f37700c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final boolean a(w functionDescriptor) {
        p.d(functionDescriptor, "functionDescriptor");
        return p.a(functionDescriptor.getReturnType(), this.f37699b.invoke(kotlin.reflect.jvm.internal.impl.resolve.b.a.d(functionDescriptor)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.g.b
    public final String b(w wVar) {
        return b.a.a(this, wVar);
    }
}

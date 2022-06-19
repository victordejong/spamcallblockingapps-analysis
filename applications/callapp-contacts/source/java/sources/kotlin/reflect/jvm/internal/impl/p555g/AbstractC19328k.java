package kotlin.reflect.jvm.internal.impl.p555g;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.g.k */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k.class */
public abstract class AbstractC19328k implements AbstractC19305b {

    /* renamed from: a */
    private final String f65217a;

    /* renamed from: b */
    private final Function1<AbstractC18940g, KotlinType> f65218b;

    /* renamed from: c */
    private final String f65219c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$a.class */
    public static final class C19329a extends AbstractC19328k {

        /* renamed from: a */
        public static final C19329a f65220a = new C19329a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$a$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$a$1.class */
        public static final class C193301 extends AbstractC18526r implements Function1<AbstractC18940g, KotlinType> {

            /* renamed from: a */
            public static final C193301 f65221a = new C193301();

            C193301() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ KotlinType invoke(AbstractC18940g abstractC18940g) {
                AbstractC18940g abstractC18940g2 = abstractC18940g;
                C18524p.m3840d(abstractC18940g2, "<this>");
                SimpleType booleanType = abstractC18940g2.m2784n();
                C18524p.m3843b(booleanType, "booleanType");
                return booleanType;
            }
        }

        private C19329a() {
            super("Boolean", C193301.f65221a, null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$b.class */
    public static final class C19331b extends AbstractC19328k {

        /* renamed from: a */
        public static final C19331b f65222a = new C19331b();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$b$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$b$1.class */
        public static final class C193321 extends AbstractC18526r implements Function1<AbstractC18940g, KotlinType> {

            /* renamed from: a */
            public static final C193321 f65223a = new C193321();

            C193321() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ KotlinType invoke(AbstractC18940g abstractC18940g) {
                AbstractC18940g abstractC18940g2 = abstractC18940g;
                C18524p.m3840d(abstractC18940g2, "<this>");
                SimpleType intType = abstractC18940g2.m2788l();
                C18524p.m3843b(intType, "intType");
                return intType;
            }
        }

        private C19331b() {
            super("Int", C193321.f65223a, null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$c.class */
    public static final class C19333c extends AbstractC19328k {

        /* renamed from: a */
        public static final C19333c f65224a = new C19333c();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.g.k$c$1 */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/k$c$1.class */
        public static final class C193341 extends AbstractC18526r implements Function1<AbstractC18940g, KotlinType> {

            /* renamed from: a */
            public static final C193341 f65225a = new C193341();

            C193341() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ KotlinType invoke(AbstractC18940g abstractC18940g) {
                AbstractC18940g abstractC18940g2 = abstractC18940g;
                C18524p.m3840d(abstractC18940g2, "<this>");
                SimpleType unitType = abstractC18940g2.m2782o();
                C18524p.m3843b(unitType, "unitType");
                return unitType;
            }
        }

        private C19333c() {
            super("Unit", C193341.f65225a, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractC19328k(String str, Function1<? super AbstractC18940g, ? extends KotlinType> function1) {
        this.f65217a = str;
        this.f65218b = function1;
        this.f65219c = C18524p.m3847a("must return ", (Object) str);
    }

    public /* synthetic */ AbstractC19328k(String str, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, function1);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final String mo2294a() {
        return this.f65219c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: a */
    public final boolean mo2292a(AbstractC19219w functionDescriptor) {
        C18524p.m3840d(functionDescriptor, "functionDescriptor");
        return C18524p.m3850a(functionDescriptor.getReturnType(), this.f65218b.invoke(C19756a.m1526d(functionDescriptor)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.p555g.AbstractC19305b
    /* renamed from: b */
    public final String mo2293b(AbstractC19219w abstractC19219w) {
        return AbstractC19305b.C19306a.m2298a(this, abstractC19219w);
    }
}

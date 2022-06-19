package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i.class */
public final class C18950i {

    /* renamed from: a */
    public static final C18952b f64557a = new C18952b(null);

    /* renamed from: b */
    public static final /* synthetic */ KProperty<Object>[] f64558b;

    /* renamed from: c */
    public final C19001ad f64559c;

    /* renamed from: d */
    public final Lazy f64560d;

    /* renamed from: e */
    public final C18951a f64561e = new C18951a(1);

    /* renamed from: f */
    private final C18951a f64562f = new C18951a(1);

    /* renamed from: g */
    private final C18951a f64563g = new C18951a(1);

    /* renamed from: h */
    private final C18951a f64564h = new C18951a(2);

    /* renamed from: i */
    private final C18951a f64565i = new C18951a(3);

    /* renamed from: j */
    private final C18951a f64566j = new C18951a(1);

    /* renamed from: k */
    private final C18951a f64567k = new C18951a(2);

    /* renamed from: l */
    private final C18951a f64568l = new C18951a(3);

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.i$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i$a.class */
    public static final class C18951a {

        /* renamed from: a */
        public final int f64569a;

        public C18951a(int i) {
            this.f64569a = i;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.i$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i$b.class */
    public static final class C18952b {
        private C18952b() {
        }

        public /* synthetic */ C18952b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.i$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i$c.class */
    public static final class C18953c extends AbstractC18526r implements Function0<AbstractC19834h> {

        /* renamed from: a */
        final /* synthetic */ AbstractC18999ab f64570a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18953c(AbstractC18999ab abstractC18999ab) {
            super(0);
            this.f64570a = abstractC18999ab;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19834h invoke() {
            return this.f64570a.getPackage(C18954j.f64580j).mo2570b();
        }
    }

    static {
        KProperty<Object>[] kPropertyArr = new KProperty[9];
        kPropertyArr[1] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[2] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[3] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[4] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[5] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[6] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[7] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[8] = C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C18950i.class), "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        f64558b = kPropertyArr;
    }

    public C18950i(AbstractC18999ab module, C19001ad notFoundClasses) {
        C18524p.m3840d(module, "module");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        this.f64559c = notFoundClasses;
        this.f64560d = C18399h.m3896a(EnumC18536l.PUBLICATION, new C18953c(module));
    }
}

package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final b f37310a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ KProperty<Object>[] f37311b;

    /* renamed from: c  reason: collision with root package name */
    public final ad f37312c;

    /* renamed from: d  reason: collision with root package name */
    public final Lazy f37313d;
    public final a e = new a(1);
    private final a f = new a(1);
    private final a g = new a(1);
    private final a h = new a(2);
    private final a i = new a(3);
    private final a j = new a(1);
    private final a k = new a(2);
    private final a l = new a(3);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f37314a;

        public a(int i) {
            this.f37314a = i;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/i$c.class */
    static final class c extends r implements Function0<h> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ab f37315a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ab abVar) {
            super(0);
            this.f37315a = abVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ h invoke() {
            return this.f37315a.getPackage(j.j).b();
        }
    }

    static {
        KProperty<Object>[] kPropertyArr = new KProperty[9];
        kPropertyArr[1] = ac.a(new aa(ac.b(i.class), "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[2] = ac.a(new aa(ac.b(i.class), "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[3] = ac.a(new aa(ac.b(i.class), "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[4] = ac.a(new aa(ac.b(i.class), "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[5] = ac.a(new aa(ac.b(i.class), "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[6] = ac.a(new aa(ac.b(i.class), "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[7] = ac.a(new aa(ac.b(i.class), "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        kPropertyArr[8] = ac.a(new aa(ac.b(i.class), "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"));
        f37311b = kPropertyArr;
    }

    public i(ab module, ad notFoundClasses) {
        p.d(module, "module");
        p.d(notFoundClasses, "notFoundClasses");
        this.f37312c = notFoundClasses;
        this.f37313d = kotlin.h.a(l.PUBLICATION, new c(module));
    }
}

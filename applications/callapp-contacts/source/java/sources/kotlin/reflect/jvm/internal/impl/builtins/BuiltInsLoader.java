package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ServiceLoader;
import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19041a;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19043b;
import kotlin.reflect.jvm.internal.impl.descriptors.p548b.AbstractC19044c;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader.class */
public interface BuiltInsLoader {

    /* renamed from: a */
    public static final C18887a f64442a = C18887a.f64443a;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$a.class */
    public static final class C18887a {

        /* renamed from: a */
        static final /* synthetic */ C18887a f64443a = new C18887a();

        /* renamed from: b */
        private static final Lazy<BuiltInsLoader> f64444b = C18399h.m3896a(EnumC18536l.PUBLICATION, C18888a.f64445a);

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$a$a.class */
        static final class C18888a extends AbstractC18526r implements Function0<BuiltInsLoader> {

            /* renamed from: a */
            public static final C18888a f64445a = new C18888a();

            C18888a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ BuiltInsLoader invoke() {
                ServiceLoader implementations = ServiceLoader.load(BuiltInsLoader.class, BuiltInsLoader.class.getClassLoader());
                C18524p.m3843b(implementations, "implementations");
                BuiltInsLoader builtInsLoader = (BuiltInsLoader) C18282n.m4142b((Iterable<? extends Object>) implementations);
                if (builtInsLoader != null) {
                    return builtInsLoader;
                }
                throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
            }
        }

        private C18887a() {
        }

        /* renamed from: a */
        public static BuiltInsLoader m2913a() {
            return f64444b.mo1102a();
        }
    }

    AbstractC19007af createPackageFragmentProvider(AbstractC19302n abstractC19302n, AbstractC18999ab abstractC18999ab, Iterable<? extends AbstractC19043b> iterable, AbstractC19044c abstractC19044c, AbstractC19041a abstractC19041a, boolean z);
}

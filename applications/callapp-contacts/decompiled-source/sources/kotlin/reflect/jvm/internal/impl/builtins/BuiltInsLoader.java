package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ServiceLoader;
import kotlin.Lazy;
import kotlin.a.n;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.af;
import kotlin.reflect.jvm.internal.impl.descriptors.b.b;
import kotlin.reflect.jvm.internal.impl.descriptors.b.c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader.class */
public interface BuiltInsLoader {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37230a = a.f37231a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f37231a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final Lazy<BuiltInsLoader> f37232b = h.a(l.PUBLICATION, C0664a.f37233a);

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/BuiltInsLoader$a$a.class */
        static final class C0664a extends r implements Function0<BuiltInsLoader> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0664a f37233a = new C0664a();

            C0664a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ BuiltInsLoader invoke() {
                ServiceLoader implementations = ServiceLoader.load(BuiltInsLoader.class, BuiltInsLoader.class.getClassLoader());
                p.b(implementations, "implementations");
                BuiltInsLoader builtInsLoader = (BuiltInsLoader) n.b((Iterable<? extends Object>) implementations);
                if (builtInsLoader != null) {
                    return builtInsLoader;
                }
                throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
            }
        }

        private a() {
        }

        public static BuiltInsLoader a() {
            return f37232b.a();
        }
    }

    af createPackageFragmentProvider(kotlin.reflect.jvm.internal.impl.f.n nVar, ab abVar, Iterable<? extends b> iterable, c cVar, kotlin.reflect.jvm.internal.impl.descriptors.b.a aVar, boolean z);
}

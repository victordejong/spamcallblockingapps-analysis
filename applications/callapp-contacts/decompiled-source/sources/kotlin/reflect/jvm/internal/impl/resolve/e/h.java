package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.Set;
import kotlin.a.ab;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h.class */
public interface h extends k {
    public static final a g = a.f38294a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f38294a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final Function1<e, Boolean> f38295b = C0711a.f38296a;

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$a$a.class */
        static final class C0711a extends r implements Function1<e, Boolean> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0711a f38296a = new C0711a();

            C0711a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Boolean invoke(e eVar) {
                e it2 = eVar;
                p.d(it2, "it");
                return Boolean.TRUE;
            }
        }

        private a() {
        }

        public static Function1<e, Boolean> a() {
            return f38295b;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$b.class */
    public static final class b {
        public static void a(h hVar, e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            h hVar2 = hVar;
            p.d(hVar2, "this");
            p.d(name, "name");
            p.d(location, "location");
            hVar2.getContributedFunctions(name, location);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/h$c.class */
    public static final class c extends i {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38297a = new c();

        private c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Set<e> getClassifierNames() {
            return ab.f36567a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Set<e> getFunctionNames() {
            return ab.f36567a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Set<e> getVariableNames() {
            return ab.f36567a;
        }
    }

    Set<e> getClassifierNames();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.k
    Collection<? extends as> getContributedFunctions(e eVar, kotlin.reflect.jvm.internal.impl.a.a.b bVar);

    Collection<? extends an> getContributedVariables(e eVar, kotlin.reflect.jvm.internal.impl.a.a.b bVar);

    Set<e> getFunctionNames();

    Set<e> getVariableNames();
}

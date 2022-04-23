package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import java.util.Set;
import kotlin.a.ap;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.f;
import kotlin.reflect.jvm.internal.impl.b.c.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.load.kotlin.a.a;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38064a = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Set<a.EnumC0694a> f38065c = ap.a(a.EnumC0694a.CLASS);

    /* renamed from: d  reason: collision with root package name */
    private static final Set<a.EnumC0694a> f38066d = ap.a((Object[]) new a.EnumC0694a[]{a.EnumC0694a.FILE_FACADE, a.EnumC0694a.MULTIFILE_CLASS_PART});
    private static final f e = new f(1, 1, 2);
    private static final f f = new f(1, 1, 11);
    private static final f g = new f(1, 1, 13);

    /* renamed from: b  reason: collision with root package name */
    public j f38067b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/e$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/e$b.class */
    static final class b extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38068a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            return z.f36608a;
        }
    }

    private static String[] a(o oVar, Set<? extends a.EnumC0694a> set) {
        kotlin.reflect.jvm.internal.impl.load.kotlin.a.a a2 = oVar.a();
        String[] strArr = a2.f38022c;
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = a2.f38023d;
        }
        if (strArr2 == null || !set.contains(a2.f38020a)) {
            return null;
        }
        return strArr2;
    }

    private final q<f> b(o oVar) {
        if (c() || oVar.a().f38021b.a()) {
            return null;
        }
        return new q<>(oVar.a().f38021b, f.f37221b, oVar.b(), oVar.c());
    }

    private final boolean c() {
        return a().f38443c.getSkipMetadataVersionCheck();
    }

    private final boolean c(o oVar) {
        return (a().f38443c.getReportErrorsOnPreReleaseDependencies() && (oVar.a().d() || p.a(oVar.a().f38021b, e))) || d(oVar);
    }

    private final boolean d(o oVar) {
        return !a().f38443c.getSkipPrereleaseCheck() && oVar.a().d() && p.a(oVar.a().f38021b, f);
    }

    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e e(o oVar) {
        if (!a().f38443c.getAllowUnstableDependencies()) {
            if (oVar.a().c()) {
                return kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e.FIR_UNSTABLE;
            }
            if (oVar.a().b()) {
                return kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e.IR_UNSTABLE;
            }
        }
        return kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e.STABLE;
    }

    public final h a(ae descriptor, o kotlinClass) {
        String[] strArr;
        n<g, a.k> nVar;
        p.d(descriptor, "descriptor");
        p.d(kotlinClass, "kotlinClass");
        String[] a2 = a(kotlinClass, f38066d);
        if (a2 == null || (strArr = kotlinClass.a().e) == null) {
            return null;
        }
        try {
            try {
                kotlin.reflect.jvm.internal.impl.b.c.a.h hVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
                nVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.b(a2, strArr);
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalStateException(p.a("Could not read data from ", (Object) kotlinClass.b()), e2);
            }
        } catch (Throwable th) {
            if (c() || kotlinClass.a().f38021b.a()) {
                throw th;
            }
            nVar = null;
        }
        if (nVar == null) {
            return null;
        }
        g gVar = nVar.f36810a;
        a.k kVar = nVar.f36811b;
        g gVar2 = gVar;
        return new i(descriptor, kVar, gVar2, kotlinClass.a().f38021b, new i(kotlinClass, kVar, gVar2, b(kotlinClass), c(kotlinClass), e(kotlinClass)), a(), b.f38068a);
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.f a(o kotlinClass) {
        String[] strArr;
        n<g, a.b> nVar;
        p.d(kotlinClass, "kotlinClass");
        String[] a2 = a(kotlinClass, f38065c);
        if (a2 == null || (strArr = kotlinClass.a().e) == null) {
            return null;
        }
        try {
            try {
                kotlin.reflect.jvm.internal.impl.b.c.a.h hVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.f37228a;
                nVar = kotlin.reflect.jvm.internal.impl.b.c.a.h.a(a2, strArr);
            } catch (InvalidProtocolBufferException e2) {
                throw new IllegalStateException(p.a("Could not read data from ", (Object) kotlinClass.b()), e2);
            }
        } catch (Throwable th) {
            if (c() || kotlinClass.a().f38021b.a()) {
                throw th;
            }
            nVar = null;
        }
        if (nVar == null) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.f(nVar.f36810a, nVar.f36811b, kotlinClass.a().f38021b, new q(kotlinClass, b(kotlinClass), c(kotlinClass), e(kotlinClass)));
    }

    public final j a() {
        j jVar = this.f38067b;
        if (jVar != null) {
            return jVar;
        }
        p.a("components");
        throw null;
    }
}

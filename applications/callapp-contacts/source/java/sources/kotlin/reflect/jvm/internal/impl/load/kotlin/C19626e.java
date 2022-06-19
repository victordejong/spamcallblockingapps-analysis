package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import java.util.Set;
import kotlin.C18538n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18856g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19939f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19959q;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19932i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.EnumC19905e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/e.class */
public final class C19626e {

    /* renamed from: a */
    public static final C19627a f65721a = new C19627a(null);

    /* renamed from: c */
    private static final Set<C19608a.EnumC19609a> f65722c = C18255ap.m4240a(C19608a.EnumC19609a.CLASS);

    /* renamed from: d */
    private static final Set<C19608a.EnumC19609a> f65723d = C18255ap.m4239a((Object[]) new C19608a.EnumC19609a[]{C19608a.EnumC19609a.FILE_FACADE, C19608a.EnumC19609a.MULTIFILE_CLASS_PART});

    /* renamed from: e */
    private static final C18854f f65724e = new C18854f(1, 1, 2);

    /* renamed from: f */
    private static final C18854f f65725f = new C18854f(1, 1, 11);

    /* renamed from: g */
    private static final C18854f f65726g = new C18854f(1, 1, 13);

    /* renamed from: b */
    public C19948j f65727b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/e$a.class */
    public static final class C19627a {
        private C19627a() {
        }

        public /* synthetic */ C19627a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/e$b.class */
    public static final class C19628b extends AbstractC18526r implements Function0<Collection<? extends C18966e>> {

        /* renamed from: a */
        public static final C19628b f65728a = new C19628b();

        C19628b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* bridge */ /* synthetic */ Collection<? extends C18966e> invoke() {
            return C18297z.f63400a;
        }
    }

    /* renamed from: a */
    private static String[] m1912a(AbstractC19646o abstractC19646o, Set<? extends C19608a.EnumC19609a> set) {
        C19608a mo1879a = abstractC19646o.mo1879a();
        String[] strArr = mo1879a.f65677c;
        String[] strArr2 = strArr;
        if (strArr == null) {
            strArr2 = mo1879a.f65678d;
        }
        if (strArr2 == null || !set.contains(mo1879a.f65675a)) {
            return null;
        }
        return strArr2;
    }

    /* renamed from: b */
    private final C19959q<C18854f> m1910b(AbstractC19646o abstractC19646o) {
        if (m1909c() || abstractC19646o.mo1879a().f65676b.m2928a()) {
            return null;
        }
        return new C19959q<>(abstractC19646o.mo1879a().f65676b, C18854f.f64428b, abstractC19646o.mo1876b(), abstractC19646o.mo1875c());
    }

    /* renamed from: c */
    private final boolean m1909c() {
        return m1915a().f66251c.getSkipMetadataVersionCheck();
    }

    /* renamed from: c */
    private final boolean m1908c(AbstractC19646o abstractC19646o) {
        return (m1915a().f66251c.getReportErrorsOnPreReleaseDependencies() && (abstractC19646o.mo1879a().m1938d() || C18524p.m3850a(abstractC19646o.mo1879a().f65676b, f65724e))) || m1907d(abstractC19646o);
    }

    /* renamed from: d */
    private final boolean m1907d(AbstractC19646o abstractC19646o) {
        return !m1915a().f66251c.getSkipPrereleaseCheck() && abstractC19646o.mo1879a().m1938d() && C18524p.m3850a(abstractC19646o.mo1879a().f65676b, f65725f);
    }

    /* renamed from: e */
    private final EnumC19905e m1906e(AbstractC19646o abstractC19646o) {
        if (!m1915a().f66251c.getAllowUnstableDependencies()) {
            if (abstractC19646o.mo1879a().m1939c()) {
                return EnumC19905e.FIR_UNSTABLE;
            }
            if (abstractC19646o.mo1879a().m1940b()) {
                return EnumC19905e.IR_UNSTABLE;
            }
        }
        return EnumC19905e.STABLE;
    }

    /* renamed from: a */
    public final AbstractC19834h m1914a(AbstractC19006ae descriptor, AbstractC19646o kotlinClass) {
        String[] strArr;
        C18538n<C18856g, C18702a.C18748k> c18538n;
        C18524p.m3840d(descriptor, "descriptor");
        C18524p.m3840d(kotlinClass, "kotlinClass");
        String[] m1912a = m1912a(kotlinClass, f65723d);
        if (m1912a == null || (strArr = kotlinClass.mo1879a().f65679e) == null) {
            return null;
        }
        try {
            try {
                C18859h c18859h = C18859h.f64440a;
                c18538n = C18859h.m2915b(m1912a, strArr);
            } catch (InvalidProtocolBufferException e) {
                throw new IllegalStateException(C18524p.m3847a("Could not read data from ", (Object) kotlinClass.mo1876b()), e);
            }
        } catch (Throwable th) {
            if (m1909c() || kotlinClass.mo1879a().f65676b.m2928a()) {
                throw th;
            }
            c18538n = null;
        }
        if (c18538n == null) {
            return null;
        }
        C18856g c18856g = c18538n.f63624a;
        C18702a.C18748k c18748k = c18538n.f63625b;
        C18856g c18856g2 = c18856g;
        return new C19932i(descriptor, c18748k, c18856g2, kotlinClass.mo1879a().f65676b, new C19632i(kotlinClass, c18748k, c18856g2, m1910b(kotlinClass), m1908c(kotlinClass), m1906e(kotlinClass)), m1915a(), C19628b.f65728a);
    }

    /* renamed from: a */
    public final C19939f m1913a(AbstractC19646o kotlinClass) {
        String[] strArr;
        C18538n<C18856g, C18702a.C18715b> c18538n;
        C18524p.m3840d(kotlinClass, "kotlinClass");
        String[] m1912a = m1912a(kotlinClass, f65722c);
        if (m1912a == null || (strArr = kotlinClass.mo1879a().f65679e) == null) {
            return null;
        }
        try {
            try {
                C18859h c18859h = C18859h.f64440a;
                c18538n = C18859h.m2916a(m1912a, strArr);
            } catch (InvalidProtocolBufferException e) {
                throw new IllegalStateException(C18524p.m3847a("Could not read data from ", (Object) kotlinClass.mo1876b()), e);
            }
        } catch (Throwable th) {
            if (m1909c() || kotlinClass.mo1879a().f65676b.m2928a()) {
                throw th;
            }
            c18538n = null;
        }
        if (c18538n != null) {
            return new C19939f(c18538n.f63624a, c18538n.f63625b, kotlinClass.mo1879a().f65676b, new C19653q(kotlinClass, m1910b(kotlinClass), m1908c(kotlinClass), m1906e(kotlinClass)));
        }
        return null;
    }

    /* renamed from: a */
    public final C19948j m1915a() {
        C19948j c19948j = this.f65727b;
        if (c19948j != null) {
            return c19948j;
        }
        C18524p.m3848a("components");
        throw null;
    }
}

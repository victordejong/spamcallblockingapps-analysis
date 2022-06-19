package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Collection;
import java.util.List;
import kotlin.C18349e;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.AbstractC19506k;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19467g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19271a;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/f.class */
public final class C19499f implements AbstractC19012ai {

    /* renamed from: a */
    final C19501g f65476a;

    /* renamed from: b */
    private final AbstractC19271a<C18961b, C19467g> f65477b;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.f$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/f$a.class */
    public static final class C19500a extends AbstractC18526r implements Function0<C19467g> {

        /* renamed from: b */
        final /* synthetic */ AbstractC19411t f65479b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19500a(AbstractC19411t abstractC19411t) {
            super(0);
            C19499f.this = r4;
            this.f65479b = abstractC19411t;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19467g invoke() {
            return new C19467g(C19499f.this.f65476a, this.f65479b);
        }
    }

    public C19499f(C19432b components) {
        C18524p.m3840d(components, "components");
        C19501g c19501g = new C19501g(components, AbstractC19506k.C19507a.f65492a, new C18349e(null));
        this.f65476a = c19501g;
        this.f65477b = c19501g.f65480a.f65318a.mo2309b();
    }

    /* renamed from: a */
    private final C19467g m2070a(C18961b c18961b) {
        return this.f65477b.mo2339a(c18961b, new C19500a(this.f65476a.f65480a.f65319b.mo2063a(c18961b)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: a */
    public final /* synthetic */ Collection mo1388a(C18961b fqName, Function1 nameFilter) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(nameFilter, "nameFilter");
        C19467g m2070a = m2070a(fqName);
        List<C18961b> invoke = m2070a == null ? null : m2070a.f65415c.invoke();
        List<C18961b> list = invoke;
        if (invoke == null) {
            list = C18297z.f63400a;
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19012ai
    /* renamed from: a */
    public final void mo1389a(C18961b fqName, Collection<AbstractC19006ae> packageFragments) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(packageFragments, "packageFragments");
        C19999a.m1208a(packageFragments, m2070a(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af
    /* renamed from: b */
    public final List<C19467g> mo1385b(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return C18282n.m4169b(m2070a(fqName));
    }
}

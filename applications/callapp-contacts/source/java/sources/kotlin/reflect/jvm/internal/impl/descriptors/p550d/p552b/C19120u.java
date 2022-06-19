package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.u */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/u.class */
public final class C19120u extends AbstractC19112n implements AbstractC19411t {

    /* renamed from: a */
    private final C18961b f64843a;

    public C19120u(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        this.f64843a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t
    /* renamed from: a */
    public final Collection<AbstractC19398g> mo2181a(Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(nameFilter, "nameFilter");
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t
    /* renamed from: a */
    public final C18961b mo2182a() {
        return this.f64843a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: a */
    public final AbstractC19389a mo2221a(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Collection mo2220b() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19395d
    /* renamed from: c */
    public final boolean mo2219c() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t
    /* renamed from: d */
    public final Collection<AbstractC19411t> mo2180d() {
        return C18297z.f63400a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C19120u) && C18524p.m3850a(this.f64843a, ((C19120u) obj).f64843a);
    }

    public final int hashCode() {
        return this.f64843a.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f64843a;
    }
}

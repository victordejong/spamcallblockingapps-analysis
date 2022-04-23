package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.util.Collection;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/u.class */
public final class u extends n implements t {

    /* renamed from: a  reason: collision with root package name */
    private final b f37484a;

    public u(b fqName) {
        p.d(fqName, "fqName");
        this.f37484a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.t
    public final Collection<g> a(Function1<? super e, Boolean> nameFilter) {
        p.d(nameFilter, "nameFilter");
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.t
    public final b a() {
        return this.f37484a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final a a(b fqName) {
        p.d(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final /* bridge */ /* synthetic */ Collection b() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.t
    public final Collection<t> d() {
        return z.f36608a;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof u) && p.a(this.f37484a, ((u) obj).f37484a);
    }

    public final int hashCode() {
        return this.f37484a.hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + this.f37484a;
    }
}

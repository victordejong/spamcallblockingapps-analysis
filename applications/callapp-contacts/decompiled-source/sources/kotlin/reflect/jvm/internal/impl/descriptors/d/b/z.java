package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import kotlin.a.i;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.a;
import kotlin.reflect.jvm.internal.impl.load.java.d.aa;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/z.class */
public final class z extends w implements aa {

    /* renamed from: a  reason: collision with root package name */
    private final WildcardType f37494a;

    /* renamed from: c  reason: collision with root package name */
    private final Collection<a> f37495c = kotlin.a.z.f36608a;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f37496d;

    public z(WildcardType reflectType) {
        p.d(reflectType, "reflectType");
        this.f37494a = reflectType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.w
    protected final /* bridge */ /* synthetic */ Type a() {
        return this.f37494a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final Collection<a> b() {
        return this.f37495c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.d
    public final boolean c() {
        return this.f37496d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.aa
    public final boolean d() {
        Type[] upperBounds = this.f37494a.getUpperBounds();
        p.b(upperBounds, "reflectType.upperBounds");
        return !p.a(i.d(upperBounds), Object.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.aa
    public final /* synthetic */ w e() {
        w wVar;
        Type[] upperBounds = this.f37494a.getUpperBounds();
        Type[] lowerBounds = this.f37494a.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException(p.a("Wildcard types with many bounds are not yet supported: ", (Object) this.f37494a));
        }
        if (lowerBounds.length == 1) {
            p.b(lowerBounds, "lowerBounds");
            Object f = i.f(lowerBounds);
            p.b(f, "lowerBounds.single()");
            wVar = w.a.a((Type) f);
        } else {
            wVar = null;
            if (upperBounds.length == 1) {
                p.b(upperBounds, "upperBounds");
                Type ub = (Type) i.f(upperBounds);
                wVar = null;
                if (!p.a(ub, Object.class)) {
                    p.b(ub, "ub");
                    wVar = w.a.a(ub);
                }
            }
        }
        return wVar;
    }
}

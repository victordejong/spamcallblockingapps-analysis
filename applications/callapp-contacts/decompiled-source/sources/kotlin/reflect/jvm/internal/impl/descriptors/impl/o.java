package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.ah;
import kotlin.reflect.jvm.internal.impl.descriptors.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.resolve.e.b;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/o.class */
public final class o extends h implements aj {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37557a = {ac.a(new aa(ac.b(o.class), "fragments", "getFragments()Ljava/util/List;"))};

    /* renamed from: b  reason: collision with root package name */
    final t f37558b;

    /* renamed from: c  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.c.b f37559c;

    /* renamed from: d  reason: collision with root package name */
    private final i f37560d;
    private final h e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/o$a.class */
    static final class a extends r implements Function0<List<? extends ae>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends ae> invoke() {
            return ah.a(o.this.f37558b.c(), o.this.f37559c);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/o$b.class */
    static final class b extends r implements Function0<h> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ h invoke() {
            if (o.this.d().isEmpty()) {
                return h.c.f38297a;
            }
            List<ae> d2 = o.this.d();
            ArrayList arrayList = new ArrayList(n.a((Iterable) d2, 10));
            for (ae aeVar : d2) {
                arrayList.add(aeVar.a());
            }
            List a2 = n.a((Collection<? extends ab>) arrayList, new ab(o.this.f37558b, o.this.f37559c));
            b.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.b.f38273a;
            return b.a.a("package view scope for " + o.this.f37559c + " in " + o.this.f37558b.getName(), (Iterable<? extends h>) a2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(t module, kotlin.reflect.jvm.internal.impl.c.b fqName, kotlin.reflect.jvm.internal.impl.f.n storageManager) {
        super(g.a.a(), fqName.f());
        p.d(module, "module");
        p.d(fqName, "fqName");
        p.d(storageManager, "storageManager");
        g.a aVar = g.f37361a;
        this.f37558b = module;
        this.f37559c = fqName;
        this.f37560d = storageManager.a(new a());
        this.e = new kotlin.reflect.jvm.internal.impl.resolve.e.g(storageManager, new b());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aj
    public final kotlin.reflect.jvm.internal.impl.c.b a() {
        return this.f37559c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final <R, D> R accept(m<R, D> visitor, D d2) {
        p.d(visitor, "visitor");
        return visitor.a((aj) this, (o) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aj
    public final h b() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aj
    public final /* bridge */ /* synthetic */ ab c() {
        return this.f37558b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aj
    public final List<ae> d() {
        return (List) kotlin.reflect.jvm.internal.impl.f.m.a(this.f37560d, f37557a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aj
    public final boolean e() {
        p.d(this, "this");
        return d().isEmpty();
    }

    public final boolean equals(Object obj) {
        aj ajVar = obj instanceof aj ? (aj) obj : null;
        return ajVar != null && p.a(this.f37559c, ajVar.a()) && p.a(this.f37558b, ajVar.c());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final /* synthetic */ k getContainingDeclaration() {
        aj ajVar;
        if (this.f37559c.f37335b.f37340a.isEmpty()) {
            ajVar = null;
        } else {
            t tVar = this.f37558b;
            kotlin.reflect.jvm.internal.impl.c.b d2 = this.f37559c.d();
            p.b(d2, "fqName.parent()");
            ajVar = tVar.getPackage(d2);
        }
        return ajVar;
    }

    public final int hashCode() {
        return (this.f37558b.hashCode() * 31) + this.f37559c.hashCode();
    }
}

package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.a.ai;
import kotlin.a.i;
import kotlin.a.z;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleException;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.af;
import kotlin.reflect.jvm.internal.impl.descriptors.aj;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.types.checker.Ref;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/t.class */
public final class t extends h implements ab {

    /* renamed from: a  reason: collision with root package name */
    final n f37572a;

    /* renamed from: b  reason: collision with root package name */
    r f37573b;

    /* renamed from: c  reason: collision with root package name */
    af f37574c;

    /* renamed from: d  reason: collision with root package name */
    private final g f37575d;
    private final kotlin.reflect.jvm.internal.impl.d.b e;
    private final e f;
    private final Map<aa<?>, Object> g;
    private boolean h;
    private final kotlin.reflect.jvm.internal.impl.f.g<kotlin.reflect.jvm.internal.impl.c.b, aj> i;
    private final Lazy j;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/t$a.class */
    static final class a extends r implements Function0<g> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ g invoke() {
            r rVar = t.this.f37573b;
            t tVar = t.this;
            if (rVar != null) {
                List<t> a2 = rVar.a();
                boolean contains = a2.contains(t.this);
                t tVar2 = t.this;
                if (!x.f38657a || contains) {
                    List<t> list = a2;
                    t tVar3 = t.this;
                    for (t tVar4 : list) {
                        boolean a3 = tVar4.a();
                        if (x.f38657a && !a3) {
                            throw new AssertionError("Dependency module " + tVar4.b() + " was not initialized by the time contents of dependent module " + tVar3.b() + " were queried");
                        }
                    }
                    ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list, 10));
                    for (t tVar5 : list) {
                        af afVar = tVar5.f37574c;
                        p.a(afVar);
                        arrayList.add(afVar);
                    }
                    return new g(arrayList);
                }
                throw new AssertionError("Module " + tVar2.b() + " is not contained in his own dependencies, this is probably a misconfiguration");
            }
            throw new AssertionError("Dependencies of module " + tVar.b() + " were not set before querying module content");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/t$b.class */
    static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.b, aj> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ aj invoke(kotlin.reflect.jvm.internal.impl.c.b bVar) {
            kotlin.reflect.jvm.internal.impl.c.b fqName = bVar;
            p.d(fqName, "fqName");
            t tVar = t.this;
            return new o(tVar, fqName, tVar.f37572a);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public t(e moduleName, n storageManager, g builtIns, kotlin.reflect.jvm.internal.impl.d.b bVar) {
        this(moduleName, storageManager, builtIns, bVar, null, null, 48, null);
        p.d(moduleName, "moduleName");
        p.d(storageManager, "storageManager");
        p.d(builtIns, "builtIns");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(e moduleName, n storageManager, g builtIns, kotlin.reflect.jvm.internal.impl.d.b bVar, Map<aa<?>, ? extends Object> capabilities, e eVar) {
        super(g.a.a(), moduleName);
        p.d(moduleName, "moduleName");
        p.d(storageManager, "storageManager");
        p.d(builtIns, "builtIns");
        p.d(capabilities, "capabilities");
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        this.f37572a = storageManager;
        this.f37575d = builtIns;
        this.e = bVar;
        this.f = eVar;
        if (moduleName.f37342a) {
            Map<aa<?>, Object> b2 = ai.b(capabilities);
            this.g = b2;
            b2.put(KotlinTypeRefinerKt.getREFINER_CAPABILITY(), new Ref(null));
            this.h = true;
            this.i = storageManager.a(new b());
            this.j = h.a(new a());
            return;
        }
        throw new IllegalArgumentException(p.a("Module name must be special: ", (Object) moduleName));
    }

    public /* synthetic */ t(e eVar, n nVar, kotlin.reflect.jvm.internal.impl.builtins.g gVar, kotlin.reflect.jvm.internal.impl.d.b bVar, Map map, e eVar2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, nVar, gVar, (i & 8) != 0 ? null : bVar, (i & 16) != 0 ? ai.a() : map, (i & 32) != 0 ? null : eVar2);
    }

    private void a(List<t> descriptors) {
        p.d(descriptors, "descriptors");
        a(descriptors, kotlin.a.ab.f36567a);
    }

    private void a(List<t> descriptors, Set<t> friends) {
        p.d(descriptors, "descriptors");
        p.d(friends, "friends");
        a(new s(descriptors, friends, z.f36608a, kotlin.a.ab.f36567a));
    }

    private void a(r dependencies) {
        p.d(dependencies, "dependencies");
        boolean z = this.f37573b == null;
        if (!x.f38657a || z) {
            this.f37573b = dependencies;
            return;
        }
        throw new AssertionError("Dependencies of " + b() + " were already set");
    }

    private void d() {
        if (!this.h) {
            throw new InvalidModuleException(p.a("Accessing invalid module descriptor ", (Object) this));
        }
    }

    private final g e() {
        return (g) this.j.a();
    }

    public final void a(af providerForModuleContent) {
        p.d(providerForModuleContent, "providerForModuleContent");
        boolean a2 = a();
        if (!x.f38657a || (!a2)) {
            this.f37574c = providerForModuleContent;
            return;
        }
        throw new AssertionError("Attempt to initialize module " + b() + " twice");
    }

    public final void a(t... descriptors) {
        p.d(descriptors, "descriptors");
        a(i.i(descriptors));
    }

    final boolean a() {
        return this.f37574c != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final <R, D> R accept(m<R, D> visitor, D d2) {
        p.d(this, "this");
        p.d(visitor, "visitor");
        return visitor.a((ab) this, (t) d2);
    }

    final String b() {
        String eVar = getName().toString();
        p.b(eVar, "name.toString()");
        return eVar;
    }

    public final af c() {
        d();
        return e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ab
    public final kotlin.reflect.jvm.internal.impl.builtins.g getBuiltIns() {
        return this.f37575d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ab
    public final <T> T getCapability(aa<T> capability) {
        p.d(capability, "capability");
        return (T) this.g.get(capability);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final k getContainingDeclaration() {
        p.d(this, "this");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ab
    public final List<ab> getExpectedByModules() {
        r rVar = this.f37573b;
        if (rVar != null) {
            return rVar.c();
        }
        throw new AssertionError("Dependencies of module " + b() + " were not set");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ab
    public final aj getPackage(kotlin.reflect.jvm.internal.impl.c.b fqName) {
        p.d(fqName, "fqName");
        d();
        return this.i.invoke(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ab
    public final Collection<kotlin.reflect.jvm.internal.impl.c.b> getSubPackagesOf(kotlin.reflect.jvm.internal.impl.c.b fqName, Function1<? super e, Boolean> nameFilter) {
        p.d(fqName, "fqName");
        p.d(nameFilter, "nameFilter");
        d();
        return c().a(fqName, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ab
    public final boolean shouldSeeInternalsOf(ab targetModule) {
        p.d(targetModule, "targetModule");
        if (p.a(this, targetModule)) {
            return true;
        }
        r rVar = this.f37573b;
        p.a(rVar);
        return kotlin.a.n.a((Iterable<? extends ab>) rVar.b(), targetModule) || getExpectedByModules().contains(targetModule) || targetModule.getExpectedByModules().contains(this);
    }
}

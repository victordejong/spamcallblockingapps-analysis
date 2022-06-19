package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.C18399h;
import kotlin.C20130x;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19007af;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19013aj;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.C18998aa;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleException;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p546d.C18971b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;
import kotlin.reflect.jvm.internal.impl.types.checker.Ref;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.t */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/t.class */
public final class C19183t extends AbstractC19162h implements AbstractC18999ab {

    /* renamed from: a */
    final AbstractC19302n f64963a;

    /* renamed from: b */
    AbstractC19181r f64964b;

    /* renamed from: c */
    AbstractC19007af f64965c;

    /* renamed from: d */
    private final AbstractC18940g f64966d;

    /* renamed from: e */
    private final C18971b f64967e;

    /* renamed from: f */
    private final C18966e f64968f;

    /* renamed from: g */
    private final Map<C18998aa<?>, Object> f64969g;

    /* renamed from: h */
    private boolean f64970h;

    /* renamed from: i */
    private final AbstractC19294g<C18961b, AbstractC19013aj> f64971i;

    /* renamed from: j */
    private final Lazy f64972j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.t$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/t$a.class */
    public static final class C19184a extends AbstractC18526r implements Function0<C19161g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19184a() {
            super(0);
            C19183t.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C19161g invoke() {
            AbstractC19181r abstractC19181r = C19183t.this.f64964b;
            C19183t c19183t = C19183t.this;
            if (abstractC19181r == null) {
                throw new AssertionError("Dependencies of module " + c19183t.m2553b() + " were not set before querying module content");
            }
            List<C19183t> mo2562a = abstractC19181r.mo2562a();
            boolean contains = mo2562a.contains(C19183t.this);
            C19183t c19183t2 = C19183t.this;
            if (C20130x.f66532a && !contains) {
                throw new AssertionError("Module " + c19183t2.m2553b() + " is not contained in his own dependencies, this is probably a misconfiguration");
            }
            List<C19183t> list = mo2562a;
            C19183t c19183t3 = C19183t.this;
            for (C19183t c19183t4 : list) {
                boolean m2559a = c19183t4.m2559a();
                if (C20130x.f66532a && !m2559a) {
                    throw new AssertionError("Dependency module " + c19183t4.m2553b() + " was not initialized by the time contents of dependent module " + c19183t3.m2553b() + " were queried");
                }
            }
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (C19183t c19183t5 : list) {
                AbstractC19007af abstractC19007af = c19183t5.f64965c;
                C18524p.m3851a(abstractC19007af);
                arrayList.add(abstractC19007af);
            }
            return new C19161g(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.t$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/t$b.class */
    public static final class C19185b extends AbstractC18526r implements Function1<C18961b, AbstractC19013aj> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19185b() {
            super(1);
            C19183t.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19013aj invoke(C18961b c18961b) {
            C18961b fqName = c18961b;
            C18524p.m3840d(fqName, "fqName");
            C19183t c19183t = C19183t.this;
            return new C19174o(c19183t, fqName, c19183t.f64963a);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C19183t(C18966e moduleName, AbstractC19302n storageManager, AbstractC18940g builtIns, C18971b c18971b) {
        this(moduleName, storageManager, builtIns, c18971b, null, null, 48, null);
        C18524p.m3840d(moduleName, "moduleName");
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(builtIns, "builtIns");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19183t(C18966e moduleName, AbstractC19302n storageManager, AbstractC18940g builtIns, C18971b c18971b, Map<C18998aa<?>, ? extends Object> capabilities, C18966e c18966e) {
        super(AbstractC18983g.C18984a.m2705a(), moduleName);
        C18524p.m3840d(moduleName, "moduleName");
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(builtIns, "builtIns");
        C18524p.m3840d(capabilities, "capabilities");
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        this.f64963a = storageManager;
        this.f64966d = builtIns;
        this.f64967e = c18971b;
        this.f64968f = c18966e;
        if (moduleName.f64696a) {
            Map<C18998aa<?>, Object> b = C18247ai.m4249b(capabilities);
            this.f64969g = b;
            b.put(KotlinTypeRefinerKt.getREFINER_CAPABILITY(), new Ref(null));
            this.f64970h = true;
            this.f64971i = storageManager.mo2310a(new C19185b());
            this.f64972j = C18399h.m3897a(new C19184a());
            return;
        }
        throw new IllegalArgumentException(C18524p.m3847a("Module name must be special: ", (Object) moduleName));
    }

    public /* synthetic */ C19183t(C18966e c18966e, AbstractC19302n abstractC19302n, AbstractC18940g abstractC18940g, C18971b c18971b, Map map, C18966e c18966e2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c18966e, abstractC19302n, abstractC18940g, (i & 8) != 0 ? null : c18971b, (i & 16) != 0 ? C18247ai.m4257a() : map, (i & 32) != 0 ? null : c18966e2);
    }

    /* renamed from: a */
    private void m2558a(List<C19183t> descriptors) {
        C18524p.m3840d(descriptors, "descriptors");
        m2557a(descriptors, C18240ab.f63351a);
    }

    /* renamed from: a */
    private void m2557a(List<C19183t> descriptors, Set<C19183t> friends) {
        C18524p.m3840d(descriptors, "descriptors");
        C18524p.m3840d(friends, "friends");
        m2555a(new C19182s(descriptors, friends, C18297z.f63400a, C18240ab.f63351a));
    }

    /* renamed from: a */
    private void m2555a(AbstractC19181r dependencies) {
        C18524p.m3840d(dependencies, "dependencies");
        boolean z = this.f64964b == null;
        if (!C20130x.f66532a || z) {
            this.f64964b = dependencies;
            return;
        }
        throw new AssertionError("Dependencies of " + m2553b() + " were already set");
    }

    /* renamed from: d */
    private void m2551d() {
        if (this.f64970h) {
            return;
        }
        throw new InvalidModuleException(C18524p.m3847a("Accessing invalid module descriptor ", (Object) this));
    }

    /* renamed from: e */
    private final C19161g m2550e() {
        return (C19161g) this.f64972j.mo1102a();
    }

    /* renamed from: a */
    public final void m2556a(AbstractC19007af providerForModuleContent) {
        C18524p.m3840d(providerForModuleContent, "providerForModuleContent");
        boolean m2559a = m2559a();
        if (!C20130x.f66532a || (!m2559a)) {
            this.f64965c = providerForModuleContent;
            return;
        }
        throw new AssertionError("Attempt to initialize module " + m2553b() + " twice");
    }

    /* renamed from: a */
    public final void m2554a(C19183t... descriptors) {
        C18524p.m3840d(descriptors, "descriptors");
        m2558a(C18273i.m4183i(descriptors));
    }

    /* renamed from: a */
    final boolean m2559a() {
        return this.f64965c != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final <R, D> R accept(AbstractC19195m<R, D> visitor, D d) {
        C18524p.m3840d(this, "this");
        C18524p.m3840d(visitor, "visitor");
        return visitor.mo2388a((AbstractC18999ab) this, (C19183t) d);
    }

    /* renamed from: b */
    final String m2553b() {
        String c18966e = getName().toString();
        C18524p.m3843b(c18966e, "name.toString()");
        return c18966e;
    }

    /* renamed from: c */
    public final AbstractC19007af m2552c() {
        m2551d();
        return m2550e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
    public final AbstractC18940g getBuiltIns() {
        return this.f64966d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
    public final <T> T getCapability(C18998aa<T> capability) {
        C18524p.m3840d(capability, "capability");
        return (T) this.f64969g.get(capability);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final AbstractC19193k getContainingDeclaration() {
        C18524p.m3840d(this, "this");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
    public final List<AbstractC18999ab> getExpectedByModules() {
        AbstractC19181r abstractC19181r = this.f64964b;
        if (abstractC19181r != null) {
            return abstractC19181r.mo2560c();
        }
        throw new AssertionError("Dependencies of module " + m2553b() + " were not set");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
    public final AbstractC19013aj getPackage(C18961b fqName) {
        C18524p.m3840d(fqName, "fqName");
        m2551d();
        return this.f64971i.invoke(fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
    public final Collection<C18961b> getSubPackagesOf(C18961b fqName, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(nameFilter, "nameFilter");
        m2551d();
        return m2552c().mo1388a(fqName, nameFilter);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab
    public final boolean shouldSeeInternalsOf(AbstractC18999ab targetModule) {
        C18524p.m3840d(targetModule, "targetModule");
        if (C18524p.m3850a(this, targetModule)) {
            return true;
        }
        AbstractC19181r abstractC19181r = this.f64964b;
        C18524p.m3851a(abstractC19181r);
        return C18282n.m4147a((Iterable<? extends AbstractC18999ab>) abstractC19181r.mo2561b(), targetModule) || getExpectedByModules().contains(targetModule) || targetModule.getExpectedByModules().contains(this);
    }
}

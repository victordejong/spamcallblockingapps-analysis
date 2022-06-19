package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.p537a.C18693a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.p555g.p557b.C19307a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19840j;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d.class */
public final class C19449d implements AbstractC19834h {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f65377a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19449d.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};

    /* renamed from: b */
    final C19472h f65378b;

    /* renamed from: c */
    private final C19501g f65379c;

    /* renamed from: d */
    private final C19467g f65380d;

    /* renamed from: e */
    private final AbstractC19296i f65381e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.d$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d$a.class */
    public static final class C19450a extends AbstractC18526r implements Function0<AbstractC19834h[]> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19450a() {
            super(0);
            C19449d.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19834h[] invoke() {
            Collection<AbstractC19646o> values = C19449d.this.f65380d.m2098d().values();
            C19449d c19449d = C19449d.this;
            ArrayList arrayList = new ArrayList();
            for (AbstractC19646o abstractC19646o : values) {
                AbstractC19834h m1914a = c19449d.f65379c.f65480a.f65321d.m1914a(c19449d.f65380d, abstractC19646o);
                if (m1914a != null) {
                    arrayList.add(m1914a);
                }
            }
            Object[] array = C19307a.m2300a(arrayList).toArray(new AbstractC19834h[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return (AbstractC19834h[]) array;
        }
    }

    public C19449d(C19501g c, AbstractC19411t jPackage, C19467g packageFragment) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(jPackage, "jPackage");
        C18524p.m3840d(packageFragment, "packageFragment");
        this.f65379c = c;
        this.f65380d = packageFragment;
        this.f65378b = new C19472h(c, jPackage, packageFragment);
        this.f65381e = c.f65480a.f65318a.mo2313a(new C19450a());
    }

    /* renamed from: a */
    private final AbstractC19834h[] m2141a() {
        return (AbstractC19834h[]) C19301m.m2316a(this.f65381e, f65377a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getClassifierNames() {
        Set<C18966e> m1412a = C19840j.m1412a(C18273i.m4178n(m2141a()));
        if (m1412a == null) {
            return null;
        }
        m1412a.addAll(this.f65378b.getClassifierNames());
        return m1412a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        AbstractC19070d contributedClassifier = this.f65378b.getContributedClassifier(name, location);
        if (contributedClassifier != null) {
            return contributedClassifier;
        }
        AbstractC19834h[] m2141a = m2141a();
        AbstractC19129g abstractC19129g = null;
        int i = 0;
        int length = m2141a.length;
        while (i < length) {
            AbstractC19834h abstractC19834h = m2141a[i];
            int i2 = i + 1;
            AbstractC19129g contributedClassifier2 = abstractC19834h.getContributedClassifier(name, location);
            i = i2;
            if (contributedClassifier2 != null) {
                if (!(contributedClassifier2 instanceof AbstractC19130h) || !((AbstractC19130h) contributedClassifier2).isExpect()) {
                    return contributedClassifier2;
                }
                i = i2;
                if (abstractC19129g == null) {
                    abstractC19129g = contributedClassifier2;
                    i = i2;
                }
            }
        }
        return abstractC19129g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        C19472h c19472h = this.f65378b;
        AbstractC19834h[] m2141a = m2141a();
        Collection<AbstractC19193k> contributedDescriptors = c19472h.getContributedDescriptors(kindFilter, nameFilter);
        int length = m2141a.length;
        int i = 0;
        while (i < length) {
            AbstractC19834h abstractC19834h = m2141a[i];
            i++;
            contributedDescriptors = C19307a.m2299a(contributedDescriptors, abstractC19834h.getContributedDescriptors(kindFilter, nameFilter));
        }
        return contributedDescriptors == null ? C18240ab.f63351a : contributedDescriptors;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        C19472h c19472h = this.f65378b;
        AbstractC19834h[] m2141a = m2141a();
        Collection contributedFunctions = c19472h.getContributedFunctions(name, location);
        int length = m2141a.length;
        int i = 0;
        while (i < length) {
            AbstractC19834h abstractC19834h = m2141a[i];
            i++;
            contributedFunctions = C19307a.m2299a(contributedFunctions, abstractC19834h.getContributedFunctions(name, location));
        }
        return contributedFunctions == null ? C18240ab.f63351a : contributedFunctions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        recordLookup(name, location);
        C19472h c19472h = this.f65378b;
        AbstractC19834h[] m2141a = m2141a();
        Collection contributedVariables = c19472h.getContributedVariables(name, location);
        int length = m2141a.length;
        int i = 0;
        while (i < length) {
            AbstractC19834h abstractC19834h = m2141a[i];
            i++;
            contributedVariables = C19307a.m2299a(contributedVariables, abstractC19834h.getContributedVariables(name, location));
        }
        return contributedVariables == null ? C18240ab.f63351a : contributedVariables;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getFunctionNames() {
        AbstractC19834h[] m2141a = m2141a();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (AbstractC19834h abstractC19834h : m2141a) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) abstractC19834h.getFunctionNames());
        }
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        linkedHashSet2.addAll(this.f65378b.getFunctionNames());
        return linkedHashSet2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getVariableNames() {
        AbstractC19834h[] m2141a = m2141a();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (AbstractC19834h abstractC19834h : m2141a) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) abstractC19834h.getVariableNames());
        }
        LinkedHashSet linkedHashSet2 = linkedHashSet;
        linkedHashSet2.addAll(this.f65378b.getVariableNames());
        return linkedHashSet2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final void recordLookup(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        C18693a.m3707a(this.f65379c.f65480a.f65331n, location, this.f65380d, name);
    }
}

package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p555g.p557b.C19307a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/b.class */
public final class C19820b implements AbstractC19834h {

    /* renamed from: a */
    public static final C19821a f65988a = new C19821a(null);

    /* renamed from: b */
    private final String f65989b;

    /* renamed from: c */
    private final AbstractC19834h[] f65990c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/b$a.class */
    public static final class C19821a {
        private C19821a() {
        }

        public /* synthetic */ C19821a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19834h m1432a(String debugName, Iterable<? extends AbstractC19834h> scopes) {
            C18524p.m3840d(debugName, "debugName");
            C18524p.m3840d(scopes, "scopes");
            C20023h c20023h = new C20023h();
            for (AbstractC19834h abstractC19834h : scopes) {
                if (abstractC19834h != AbstractC19834h.C19838c.f66035a) {
                    if (abstractC19834h instanceof C19820b) {
                        C18282n.m4157a((Collection) c20023h, (Object[]) ((C19820b) abstractC19834h).f65990c);
                    } else {
                        c20023h.add(abstractC19834h);
                    }
                }
            }
            return m1431a(debugName, (List<? extends AbstractC19834h>) c20023h);
        }

        /* renamed from: a */
        public static AbstractC19834h m1431a(String debugName, List<? extends AbstractC19834h> scopes) {
            C18524p.m3840d(debugName, "debugName");
            C18524p.m3840d(scopes, "scopes");
            int size = scopes.size();
            if (size != 0) {
                if (size == 1) {
                    return scopes.get(0);
                }
                Object[] array = scopes.toArray(new AbstractC19834h[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                return new C19820b(debugName, (AbstractC19834h[]) array, null);
            }
            return AbstractC19834h.C19838c.f66035a;
        }
    }

    private C19820b(String str, AbstractC19834h[] abstractC19834hArr) {
        this.f65989b = str;
        this.f65990c = abstractC19834hArr;
    }

    public /* synthetic */ C19820b(String str, AbstractC19834h[] abstractC19834hArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, abstractC19834hArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getClassifierNames() {
        return C19840j.m1412a(C18273i.m4178n(this.f65990c));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        AbstractC19834h[] abstractC19834hArr = this.f65990c;
        int length = abstractC19834hArr.length;
        AbstractC19129g abstractC19129g = null;
        int i = 0;
        while (i < length) {
            AbstractC19834h abstractC19834h = abstractC19834hArr[i];
            int i2 = i + 1;
            AbstractC19129g contributedClassifier = abstractC19834h.getContributedClassifier(name, location);
            i = i2;
            if (contributedClassifier != null) {
                if (!(contributedClassifier instanceof AbstractC19130h) || !((AbstractC19130h) contributedClassifier).isExpect()) {
                    return contributedClassifier;
                }
                i = i2;
                if (abstractC19129g == null) {
                    abstractC19129g = contributedClassifier;
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
        AbstractC19834h[] abstractC19834hArr = this.f65990c;
        int length = abstractC19834hArr.length;
        if (length != 0) {
            int i = 0;
            if (length == 1) {
                return abstractC19834hArr[0].getContributedDescriptors(kindFilter, nameFilter);
            }
            Collection<AbstractC19193k> collection = null;
            int length2 = abstractC19834hArr.length;
            while (i < length2) {
                AbstractC19834h abstractC19834h = abstractC19834hArr[i];
                i++;
                collection = C19307a.m2299a(collection, abstractC19834h.getContributedDescriptors(kindFilter, nameFilter));
            }
            return collection == null ? C18240ab.f63351a : collection;
        }
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        AbstractC19834h[] abstractC19834hArr = this.f65990c;
        int length = abstractC19834hArr.length;
        if (length != 0) {
            int i = 0;
            if (length == 1) {
                return abstractC19834hArr[0].getContributedFunctions(name, location);
            }
            Collection<AbstractC19025as> collection = null;
            int length2 = abstractC19834hArr.length;
            while (i < length2) {
                AbstractC19834h abstractC19834h = abstractC19834hArr[i];
                i++;
                collection = C19307a.m2299a(collection, abstractC19834h.getContributedFunctions(name, location));
            }
            return collection == null ? C18240ab.f63351a : collection;
        }
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        AbstractC19834h[] abstractC19834hArr = this.f65990c;
        int length = abstractC19834hArr.length;
        if (length != 0) {
            int i = 0;
            if (length == 1) {
                return abstractC19834hArr[0].getContributedVariables(name, location);
            }
            Collection<AbstractC19017an> collection = null;
            int length2 = abstractC19834hArr.length;
            while (i < length2) {
                AbstractC19834h abstractC19834h = abstractC19834hArr[i];
                i++;
                collection = C19307a.m2299a(collection, abstractC19834h.getContributedVariables(name, location));
            }
            return collection == null ? C18240ab.f63351a : collection;
        }
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getFunctionNames() {
        AbstractC19834h[] abstractC19834hArr = this.f65990c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (AbstractC19834h abstractC19834h : abstractC19834hArr) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) abstractC19834h.getFunctionNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Set<C18966e> getVariableNames() {
        AbstractC19834h[] abstractC19834hArr = this.f65990c;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (AbstractC19834h abstractC19834h : abstractC19834hArr) {
            C18282n.m4158a((Collection) linkedHashSet, (Iterable) abstractC19834h.getVariableNames());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final void recordLookup(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        for (AbstractC19834h abstractC19834h : this.f65990c) {
            abstractC19834h.recordLookup(name, location);
        }
    }

    public final String toString() {
        return this.f65989b;
    }
}

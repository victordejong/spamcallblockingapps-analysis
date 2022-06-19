package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.C18538n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p555g.p557b.C19307a;
import kotlin.reflect.jvm.internal.impl.resolve.C19857i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19820b;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n.class */
public final class C19847n extends AbstractC19811a {

    /* renamed from: a */
    public static final C19848a f66045a = new C19848a(null);

    /* renamed from: b */
    private final String f66046b;

    /* renamed from: c */
    private final AbstractC19834h f66047c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$a.class */
    public static final class C19848a {
        private C19848a() {
        }

        public /* synthetic */ C19848a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AbstractC19834h m1402a(String message, Collection<? extends KotlinType> types) {
            C18524p.m3840d(message, "message");
            C18524p.m3840d(types, "types");
            Collection<? extends KotlinType> collection = types;
            ArrayList arrayList = new ArrayList(C18282n.m4163a(collection, 10));
            for (KotlinType kotlinType : collection) {
                arrayList.add(kotlinType.getMemberScope());
            }
            C20023h<AbstractC19834h> m2300a = C19307a.m2300a(arrayList);
            C19820b.C19821a c19821a = C19820b.f65988a;
            AbstractC19834h m1431a = C19820b.C19821a.m1431a(message, (List<? extends AbstractC19834h>) m2300a);
            return m2300a.size() <= 1 ? m1431a : new C19847n(message, m1431a, null);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.n$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$b.class */
    static final class C19849b extends AbstractC18526r implements Function1<AbstractC18973a, AbstractC18973a> {

        /* renamed from: a */
        public static final C19849b f66048a = new C19849b();

        C19849b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18973a invoke(AbstractC18973a abstractC18973a) {
            AbstractC18973a abstractC18973a2 = abstractC18973a;
            C18524p.m3840d(abstractC18973a2, "<this>");
            return abstractC18973a2;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.n$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$c.class */
    static final class C19850c extends AbstractC18526r implements Function1<AbstractC19025as, AbstractC18973a> {

        /* renamed from: a */
        public static final C19850c f66049a = new C19850c();

        C19850c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18973a invoke(AbstractC19025as abstractC19025as) {
            AbstractC19025as abstractC19025as2 = abstractC19025as;
            C18524p.m3840d(abstractC19025as2, "<this>");
            return abstractC19025as2;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.n$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$d.class */
    static final class C19851d extends AbstractC18526r implements Function1<AbstractC19017an, AbstractC18973a> {

        /* renamed from: a */
        public static final C19851d f66050a = new C19851d();

        C19851d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC18973a invoke(AbstractC19017an abstractC19017an) {
            AbstractC19017an abstractC19017an2 = abstractC19017an;
            C18524p.m3840d(abstractC19017an2, "<this>");
            return abstractC19017an2;
        }
    }

    private C19847n(String str, AbstractC19834h abstractC19834h) {
        this.f66046b = str;
        this.f66047c = abstractC19834h;
    }

    public /* synthetic */ C19847n(String str, AbstractC19834h abstractC19834h, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, abstractC19834h);
    }

    /* renamed from: a */
    public static final AbstractC19834h m1403a(String str, Collection<? extends KotlinType> collection) {
        return C19848a.m1402a(str, collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19811a
    /* renamed from: a */
    protected final AbstractC19834h mo1404a() {
        return this.f66047c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19811a, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        Collection<AbstractC19193k> contributedDescriptors = super.getContributedDescriptors(kindFilter, nameFilter);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : contributedDescriptors) {
            if (((AbstractC19193k) obj) instanceof AbstractC18973a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        C18538n c18538n = new C18538n(arrayList, arrayList2);
        List list = (List) c18538n.f63624a;
        return C18282n.m4135b(C19857i.m1395a(list, C19849b.f66048a), (Iterable) ((List) c18538n.f63625b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19811a, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return C19857i.m1395a(super.getContributedFunctions(name, location), C19850c.f66049a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19811a, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return C19857i.m1395a(super.getContributedVariables(name, location), C19851d.f66050a);
    }
}

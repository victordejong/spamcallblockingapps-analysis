package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.C20128v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/e.class */
public abstract class AbstractC19828e extends AbstractC19839i {

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f66022b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC19828e.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};

    /* renamed from: a */
    private final AbstractC19296i f66023a;

    /* renamed from: c */
    public final AbstractC19070d f66024c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/e$a.class */
    public static final class C19829a extends AbstractC18526r implements Function0<List<? extends AbstractC19193k>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19829a() {
            super(0);
            AbstractC19828e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC19193k> invoke() {
            List<AbstractC19219w> mo1417a = AbstractC19828e.this.mo1417a();
            return C18282n.m4135b((Collection) mo1417a, (Iterable) AbstractC19828e.m1416a(AbstractC19828e.this, mo1417a));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/e$b.class */
    public static final class C19830b extends AbstractC19855g {

        /* renamed from: a */
        final /* synthetic */ ArrayList<AbstractC19193k> f66026a;

        /* renamed from: b */
        final /* synthetic */ AbstractC19828e f66027b;

        C19830b(ArrayList<AbstractC19193k> arrayList, AbstractC19828e abstractC19828e) {
            this.f66026a = arrayList;
            this.f66027b = abstractC19828e;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
        /* renamed from: a */
        public final void mo1343a(AbstractC19039b fakeOverride) {
            C18524p.m3840d(fakeOverride, "fakeOverride");
            OverridingUtil.m1568a(fakeOverride, (Function1<AbstractC19039b, C20128v>) null);
            this.f66026a.add(fakeOverride);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g
        /* renamed from: a */
        public final void mo1342a(AbstractC19039b fromSuper, AbstractC19039b fromCurrent) {
            C18524p.m3840d(fromSuper, "fromSuper");
            C18524p.m3840d(fromCurrent, "fromCurrent");
            throw new IllegalStateException(("Conflict in scope of " + this.f66027b.f66024c + ": " + fromSuper + " vs " + fromCurrent).toString());
        }
    }

    public AbstractC19828e(AbstractC19302n storageManager, AbstractC19070d containingClass) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(containingClass, "containingClass");
        this.f66024c = containingClass;
        this.f66023a = storageManager.mo2313a(new C19829a());
    }

    /* renamed from: a */
    public static final /* synthetic */ List m1416a(AbstractC19828e abstractC19828e, List list) {
        List list2;
        ArrayList arrayList = new ArrayList(3);
        Collection<KotlinType> mo53752getSupertypes = abstractC19828e.f66024c.getTypeConstructor().mo53752getSupertypes();
        C18524p.m3843b(mo53752getSupertypes, "containingClass.typeConstructor.supertypes");
        Collection<KotlinType> collection = mo53752getSupertypes;
        ArrayList arrayList2 = new ArrayList();
        for (KotlinType kotlinType : collection) {
            C18282n.m4158a((Collection) arrayList2, (Iterable) AbstractC19841k.C19842a.m1411a(kotlinType.getMemberScope(), null, null, 3));
        }
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : arrayList3) {
            if (obj instanceof AbstractC19039b) {
                arrayList4.add(obj);
            }
        }
        ArrayList arrayList5 = arrayList4;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList5) {
            C18966e name = ((AbstractC19039b) obj2).getName();
            Object obj3 = linkedHashMap.get(name);
            ArrayList arrayList6 = obj3;
            if (obj3 == null) {
                arrayList6 = new ArrayList();
                linkedHashMap.put(name, arrayList6);
            }
            ((List) arrayList6).add(obj2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            C18966e c18966e = (C18966e) entry.getKey();
            List list3 = (List) entry.getValue();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj4 : list3) {
                Boolean valueOf = Boolean.valueOf(((AbstractC19039b) obj4) instanceof AbstractC19219w);
                Object obj5 = linkedHashMap2.get(valueOf);
                ArrayList arrayList7 = obj5;
                if (obj5 == null) {
                    arrayList7 = new ArrayList();
                    linkedHashMap2.put(valueOf, arrayList7);
                }
                ((List) arrayList7).add(obj4);
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                boolean booleanValue = ((Boolean) entry2.getKey()).booleanValue();
                List list4 = (List) entry2.getValue();
                OverridingUtil overridingUtil = OverridingUtil.f65920a;
                List list5 = list4;
                if (booleanValue) {
                    ArrayList arrayList8 = new ArrayList();
                    for (Object obj6 : list) {
                        if (C18524p.m3850a(((AbstractC19219w) obj6).getName(), c18966e)) {
                            arrayList8.add(obj6);
                        }
                    }
                    list2 = arrayList8;
                } else {
                    list2 = C18297z.f63400a;
                }
                overridingUtil.m1580a(c18966e, list5, list2, abstractC19828e.f66024c, new C19830b(arrayList, abstractC19828e));
            }
        }
        return C19999a.m1209a(arrayList);
    }

    /* renamed from: b */
    private final List<AbstractC19193k> m1415b() {
        return (List) C19301m.m2316a(this.f66023a, f66022b[0]);
    }

    /* renamed from: a */
    protected abstract List<AbstractC19219w> mo1417a();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        return !kindFilter.m1428a(C19825d.f65996e.f66019c) ? C18297z.f63400a : m1415b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        List<AbstractC19193k> m1415b = m1415b();
        C20023h c20023h = new C20023h();
        for (Object obj : m1415b) {
            if ((obj instanceof AbstractC19025as) && C18524p.m3850a(((AbstractC19025as) obj).getName(), name)) {
                c20023h.add(obj);
            }
        }
        return c20023h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        List<AbstractC19193k> m1415b = m1415b();
        C20023h c20023h = new C20023h();
        for (Object obj : m1415b) {
            if ((obj instanceof AbstractC19017an) && C18524p.m3850a(((AbstractC19017an) obj).getName(), name)) {
                c20023h.add(obj);
            }
        }
        return c20023h;
    }
}

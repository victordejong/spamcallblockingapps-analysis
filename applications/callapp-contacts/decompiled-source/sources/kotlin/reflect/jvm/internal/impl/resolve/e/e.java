package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.e.k;
import kotlin.reflect.jvm.internal.impl.resolve.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.h;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/e.class */
public abstract class e extends i {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f38285b = {ac.a(new aa(ac.b(e.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};

    /* renamed from: a  reason: collision with root package name */
    private final i f38286a;

    /* renamed from: c  reason: collision with root package name */
    public final d f38287c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/e$a.class */
    static final class a extends r implements Function0<List<? extends k>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends k> invoke() {
            List<w> a2 = e.this.a();
            return n.b((Collection) a2, (Iterable) e.a(e.this, a2));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/e$b.class */
    public static final class b extends g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList<k> f38289a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f38290b;

        b(ArrayList<k> arrayList, e eVar) {
            this.f38289a = arrayList;
            this.f38290b = eVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.h
        public final void a(kotlin.reflect.jvm.internal.impl.descriptors.b fakeOverride) {
            p.d(fakeOverride, "fakeOverride");
            OverridingUtil.a(fakeOverride, (Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, v>) null);
            this.f38289a.add(fakeOverride);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.g
        public final void a(kotlin.reflect.jvm.internal.impl.descriptors.b fromSuper, kotlin.reflect.jvm.internal.impl.descriptors.b fromCurrent) {
            p.d(fromSuper, "fromSuper");
            p.d(fromCurrent, "fromCurrent");
            throw new IllegalStateException(("Conflict in scope of " + this.f38290b.f38287c + ": " + fromSuper + " vs " + fromCurrent).toString());
        }
    }

    public e(kotlin.reflect.jvm.internal.impl.f.n storageManager, d containingClass) {
        p.d(storageManager, "storageManager");
        p.d(containingClass, "containingClass");
        this.f38287c = containingClass;
        this.f38286a = storageManager.a(new a());
    }

    public static final /* synthetic */ List a(e eVar, List list) {
        List list2;
        ArrayList arrayList = new ArrayList(3);
        Collection<KotlinType> supertypes = eVar.f38287c.getTypeConstructor().mo7371getSupertypes();
        p.b(supertypes, "containingClass.typeConstructor.supertypes");
        Collection<KotlinType> collection = supertypes;
        ArrayList arrayList2 = new ArrayList();
        for (KotlinType kotlinType : collection) {
            n.a((Collection) arrayList2, (Iterable) k.a.a(kotlinType.getMemberScope(), null, null, 3));
        }
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : arrayList3) {
            if (obj instanceof kotlin.reflect.jvm.internal.impl.descriptors.b) {
                arrayList4.add(obj);
            }
        }
        ArrayList arrayList5 = arrayList4;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList5) {
            kotlin.reflect.jvm.internal.impl.c.e name = ((kotlin.reflect.jvm.internal.impl.descriptors.b) obj2).getName();
            Object obj3 = linkedHashMap.get(name);
            ArrayList arrayList6 = obj3;
            if (obj3 == null) {
                arrayList6 = new ArrayList();
                linkedHashMap.put(name, arrayList6);
            }
            ((List) arrayList6).add(obj2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            kotlin.reflect.jvm.internal.impl.c.e eVar2 = (kotlin.reflect.jvm.internal.impl.c.e) entry.getKey();
            List list3 = (List) entry.getValue();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj4 : list3) {
                Boolean valueOf = Boolean.valueOf(((kotlin.reflect.jvm.internal.impl.descriptors.b) obj4) instanceof w);
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
                OverridingUtil overridingUtil = OverridingUtil.f38207a;
                List list5 = list4;
                if (booleanValue) {
                    ArrayList arrayList8 = new ArrayList();
                    for (Object obj6 : list) {
                        if (p.a(((w) obj6).getName(), eVar2)) {
                            arrayList8.add(obj6);
                        }
                    }
                    list2 = arrayList8;
                } else {
                    list2 = z.f36608a;
                }
                overridingUtil.a(eVar2, list5, list2, eVar.f38287c, new b(arrayList, eVar));
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList);
    }

    private final List<kotlin.reflect.jvm.internal.impl.descriptors.k> b() {
        return (List) m.a(this.f38286a, f38285b[0]);
    }

    protected abstract List<w> a();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> getContributedDescriptors(d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        return !kindFilter.a(d.e.f38282c) ? z.f36608a : b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<as> getContributedFunctions(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        List<kotlin.reflect.jvm.internal.impl.descriptors.k> b2 = b();
        h hVar = new h();
        for (Object obj : b2) {
            if ((obj instanceof as) && p.a(((as) obj).getName(), name)) {
                hVar.add(obj);
            }
        }
        return hVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Collection<an> getContributedVariables(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        List<kotlin.reflect.jvm.internal.impl.descriptors.k> b2 = b();
        h hVar = new h();
        for (Object obj : b2) {
            if ((obj instanceof an) && p.a(((an) obj).getName(), name)) {
                hVar.add(obj);
            }
        }
        return hVar;
    }
}

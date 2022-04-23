package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.b;
import kotlin.reflect.jvm.internal.impl.resolve.i;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n.class */
public final class n extends kotlin.reflect.jvm.internal.impl.resolve.e.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f38307a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final String f38308b;

    /* renamed from: c  reason: collision with root package name */
    private final h f38309c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static h a(String message, Collection<? extends KotlinType> types) {
            p.d(message, "message");
            p.d(types, "types");
            Collection<? extends KotlinType> collection = types;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a(collection, 10));
            for (KotlinType kotlinType : collection) {
                arrayList.add(kotlinType.getMemberScope());
            }
            h<h> a2 = kotlin.reflect.jvm.internal.impl.g.b.a.a(arrayList);
            b.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.b.f38273a;
            h a3 = b.a.a(message, (List<? extends h>) a2);
            return a2.size() <= 1 ? a3 : new n(message, a3, null);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$b.class */
    static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38310a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = aVar;
            p.d(aVar2, "<this>");
            return aVar2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$c.class */
    static final class c extends r implements Function1<as, kotlin.reflect.jvm.internal.impl.descriptors.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38311a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(as asVar) {
            as asVar2 = asVar;
            p.d(asVar2, "<this>");
            return asVar2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/n$d.class */
    static final class d extends r implements Function1<an, kotlin.reflect.jvm.internal.impl.descriptors.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f38312a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a invoke(an anVar) {
            an anVar2 = anVar;
            p.d(anVar2, "<this>");
            return anVar2;
        }
    }

    private n(String str, h hVar) {
        this.f38308b = str;
        this.f38309c = hVar;
    }

    public /* synthetic */ n(String str, h hVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, hVar);
    }

    public static final h a(String str, Collection<? extends KotlinType> collection) {
        return a.a(str, collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a
    protected final h a() {
        return this.f38309c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super e, Boolean> nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        Collection<k> contributedDescriptors = super.getContributedDescriptors(kindFilter, nameFilter);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : contributedDescriptors) {
            if (((k) obj) instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        kotlin.n nVar = new kotlin.n(arrayList, arrayList2);
        List list = (List) nVar.f36810a;
        return kotlin.a.n.b(i.a(list, b.f38310a), (Iterable) ((List) nVar.f36811b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final Collection<as> getContributedFunctions(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        return i.a(super.getContributedFunctions(name, location), c.f38311a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.a, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Collection<an> getContributedVariables(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        return i.a(super.getContributedVariables(name, location), d.f38312a);
    }
}

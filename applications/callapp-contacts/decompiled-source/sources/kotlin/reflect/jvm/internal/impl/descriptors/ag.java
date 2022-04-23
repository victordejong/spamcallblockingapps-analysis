package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ag.class */
public final class ag implements ai {

    /* renamed from: a  reason: collision with root package name */
    private final Collection<ae> f37388a;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ag$a.class */
    static final class a extends r implements Function1<ae, kotlin.reflect.jvm.internal.impl.c.b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37389a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.b invoke(ae aeVar) {
            ae it2 = aeVar;
            p.d(it2, "it");
            return it2.c();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ag$b.class */
    static final class b extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.b, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.b f37390a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlin.reflect.jvm.internal.impl.c.b bVar) {
            super(1);
            this.f37390a = bVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Boolean invoke(kotlin.reflect.jvm.internal.impl.c.b bVar) {
            kotlin.reflect.jvm.internal.impl.c.b it2 = bVar;
            p.d(it2, "it");
            return Boolean.valueOf(!it2.f37335b.f37340a.isEmpty() && p.a(it2.d(), this.f37390a));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ag(Collection<? extends ae> packageFragments) {
        p.d(packageFragments, "packageFragments");
        this.f37388a = packageFragments;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final Collection<kotlin.reflect.jvm.internal.impl.c.b> a(kotlin.reflect.jvm.internal.impl.c.b fqName, Function1<? super e, Boolean> nameFilter) {
        p.d(fqName, "fqName");
        p.d(nameFilter, "nameFilter");
        return k.f(k.a(k.d(n.p(this.f37388a), a.f37389a), (Function1) new b(fqName)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ai
    public final void a(kotlin.reflect.jvm.internal.impl.c.b fqName, Collection<ae> packageFragments) {
        p.d(fqName, "fqName");
        p.d(packageFragments, "packageFragments");
        for (Object obj : this.f37388a) {
            if (p.a(((ae) obj).c(), fqName)) {
                packageFragments.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final List<ae> b(kotlin.reflect.jvm.internal.impl.c.b fqName) {
        p.d(fqName, "fqName");
        Collection<ae> collection = this.f37388a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (p.a(((ae) obj).c(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}

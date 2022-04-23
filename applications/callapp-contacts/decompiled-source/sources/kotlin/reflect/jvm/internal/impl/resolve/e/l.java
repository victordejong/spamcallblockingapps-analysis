package kotlin.reflect.jvm.internal.impl.resolve.e;

import java.util.Collection;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.a.a.b;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.resolve.c;
import kotlin.reflect.jvm.internal.impl.utils.h;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/l.class */
public final class l extends i {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f38298a = {ac.a(new aa(ac.b(l.class), "functions", "getFunctions()Ljava/util/List;"))};

    /* renamed from: b  reason: collision with root package name */
    private final d f38299b;

    /* renamed from: c  reason: collision with root package name */
    private final i f38300c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/l$a.class */
    static final class a extends r implements Function0<List<? extends as>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends as> invoke() {
            return n.b((Object[]) new as[]{c.b(l.this.f38299b), c.a(l.this.f38299b)});
        }
    }

    public l(kotlin.reflect.jvm.internal.impl.f.n storageManager, d containingClass) {
        p.d(storageManager, "storageManager");
        p.d(containingClass, "containingClass");
        this.f38299b = containingClass;
        boolean z = containingClass.getKind() == e.ENUM_CLASS;
        if (!x.f38657a || z) {
            this.f38300c = storageManager.a(new a());
            return;
        }
        throw new AssertionError(p.a("Class should be an enum: ", (Object) containingClass));
    }

    private final List<as> a() {
        return (List) m.a(this.f38300c, f38298a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final /* synthetic */ g getContributedClassifier(kotlin.reflect.jvm.internal.impl.c.e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final /* synthetic */ Collection getContributedDescriptors(d kindFilter, Function1 nameFilter) {
        p.d(kindFilter, "kindFilter");
        p.d(nameFilter, "nameFilter");
        return a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public final /* synthetic */ Collection getContributedFunctions(kotlin.reflect.jvm.internal.impl.c.e name, b location) {
        p.d(name, "name");
        p.d(location, "location");
        List<as> a2 = a();
        h hVar = new h();
        for (Object obj : a2) {
            if (p.a(((as) obj).getName(), name)) {
                hVar.add(obj);
            }
        }
        return hVar;
    }
}

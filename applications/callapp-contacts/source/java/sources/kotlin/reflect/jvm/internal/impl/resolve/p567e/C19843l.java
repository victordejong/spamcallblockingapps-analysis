package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import java.util.Collection;
import java.util.List;
import kotlin.C20130x;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.l */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/l.class */
public final class C19843l extends AbstractC19839i {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f66036a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19843l.class), "functions", "getFunctions()Ljava/util/List;"))};

    /* renamed from: b */
    private final AbstractC19070d f66037b;

    /* renamed from: c */
    private final AbstractC19296i f66038c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.l$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/l$a.class */
    public static final class C19844a extends AbstractC18526r implements Function0<List<? extends AbstractC19025as>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19844a() {
            super(0);
            C19843l.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC19025as> invoke() {
            return C18282n.m4167b((Object[]) new AbstractC19025as[]{C19762c.m1513b(C19843l.this.f66037b), C19762c.m1516a(C19843l.this.f66037b)});
        }
    }

    public C19843l(AbstractC19302n storageManager, AbstractC19070d containingClass) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(containingClass, "containingClass");
        this.f66037b = containingClass;
        boolean z = containingClass.getKind() == EnumC19127e.ENUM_CLASS;
        if (!C20130x.f66532a || z) {
            this.f66038c = storageManager.mo2313a(new C19844a());
            return;
        }
        throw new AssertionError(C18524p.m3847a("Class should be an enum: ", (Object) containingClass));
    }

    /* renamed from: a */
    private final List<AbstractC19025as> m1410a() {
        return (List) C19301m.m2316a(this.f66038c, f66036a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final /* synthetic */ AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final /* synthetic */ Collection getContributedDescriptors(C19825d kindFilter, Function1 nameFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        return m1410a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public final /* synthetic */ Collection getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        List<AbstractC19025as> m1410a = m1410a();
        C20023h c20023h = new C20023h();
        for (Object obj : m1410a) {
            if (C18524p.m3850a(((AbstractC19025as) obj).getName(), name)) {
                c20023h.add(obj);
            }
        }
        return c20023h;
    }
}

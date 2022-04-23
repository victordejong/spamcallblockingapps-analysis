package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.ai;
import kotlin.reflect.jvm.internal.impl.f.h;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/a.class */
public abstract class a implements ai {

    /* renamed from: a  reason: collision with root package name */
    protected j f38326a;

    /* renamed from: b  reason: collision with root package name */
    private final n f38327b;

    /* renamed from: c  reason: collision with root package name */
    private final r f38328c;

    /* renamed from: d  reason: collision with root package name */
    private final ab f38329d;
    private final h<b, ae> e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/a$a.class */
    static final class C0713a extends r implements Function1<b, ae> {
        C0713a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ ae invoke(b bVar) {
            b fqName = bVar;
            p.d(fqName, "fqName");
            m a2 = a.this.a(fqName);
            if (a2 == null) {
                a2 = null;
            } else {
                a2.a(a.this.d());
            }
            return a2;
        }
    }

    public a(n storageManager, r finder, ab moduleDescriptor) {
        p.d(storageManager, "storageManager");
        p.d(finder, "finder");
        p.d(moduleDescriptor, "moduleDescriptor");
        this.f38327b = storageManager;
        this.f38328c = finder;
        this.f38329d = moduleDescriptor;
        this.e = storageManager.b(new C0713a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final Collection<b> a(b fqName, Function1<? super e, Boolean> nameFilter) {
        p.d(fqName, "fqName");
        p.d(nameFilter, "nameFilter");
        return kotlin.a.ab.f36567a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final n a() {
        return this.f38327b;
    }

    protected abstract m a(b bVar);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ai
    public final void a(b fqName, Collection<ae> packageFragments) {
        p.d(fqName, "fqName");
        p.d(packageFragments, "packageFragments");
        kotlin.reflect.jvm.internal.impl.utils.a.a(packageFragments, this.e.invoke(fqName));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(j jVar) {
        p.d(jVar, "<set-?>");
        this.f38326a = jVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.af
    public final List<ae> b(b fqName) {
        p.d(fqName, "fqName");
        return kotlin.a.n.b(this.e.invoke(fqName));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final r b() {
        return this.f38328c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ab c() {
        return this.f38329d;
    }

    protected final j d() {
        j jVar = this.f38326a;
        if (jVar != null) {
            return jVar;
        }
        p.a("components");
        throw null;
    }
}

package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b.class */
public class b implements g {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f38374b = {ac.a(new aa(ac.b(b.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* renamed from: c  reason: collision with root package name */
    private final i f38375c;

    public b(n storageManager, Function0<? extends List<? extends c>> compute) {
        p.d(storageManager, "storageManager");
        p.d(compute, "compute");
        this.f38375c = storageManager.a(compute);
    }

    private final List<c> b() {
        return (List) m.a(this.f38375c, f38374b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final c a(kotlin.reflect.jvm.internal.impl.c.b bVar) {
        return g.b.a(this, bVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public boolean a() {
        return b().isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean b(kotlin.reflect.jvm.internal.impl.c.b bVar) {
        return g.b.b(this, bVar);
    }

    @Override // java.lang.Iterable
    public Iterator<c> iterator() {
        return b().iterator();
    }
}

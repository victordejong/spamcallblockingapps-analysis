package kotlin.reflect.jvm.internal.impl.resolve.d;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/d/b.class */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<Object> f38264a;

    /* renamed from: b  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.f.b<d, SimpleType> f38265b;

    public b(n storageManager, Iterable<? extends Object> samWithReceiverResolvers) {
        p.d(storageManager, "storageManager");
        p.d(samWithReceiverResolvers, "samWithReceiverResolvers");
        this.f38264a = samWithReceiverResolvers;
        this.f38265b = storageManager.a();
    }
}

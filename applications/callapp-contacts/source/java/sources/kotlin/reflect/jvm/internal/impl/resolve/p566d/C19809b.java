package kotlin.reflect.jvm.internal.impl.resolve.p566d;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19272b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.d.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/d/b.class */
public final class C19809b implements AbstractC19808a {

    /* renamed from: a */
    private final Iterable<Object> f65979a;

    /* renamed from: b */
    private final AbstractC19272b<AbstractC19070d, SimpleType> f65980b;

    public C19809b(AbstractC19302n storageManager, Iterable<? extends Object> samWithReceiverResolvers) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(samWithReceiverResolvers, "samWithReceiverResolvers");
        this.f65979a = samWithReceiverResolvers;
        this.f65980b = storageManager.mo2314a();
    }
}

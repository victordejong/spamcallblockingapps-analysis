package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19187v;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/m.class */
public abstract class AbstractC19951m extends AbstractC19187v {

    /* renamed from: b */
    private final AbstractC19302n f66279b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19951m(C18961b fqName, AbstractC19302n storageManager, AbstractC18999ab module) {
        super(module, fqName);
        C18524p.m3840d(fqName, "fqName");
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(module, "module");
        this.f66279b = storageManager;
    }

    /* renamed from: a */
    public abstract void mo1256a(C19948j c19948j);

    /* renamed from: d */
    public abstract AbstractC19940g mo1254d();
}

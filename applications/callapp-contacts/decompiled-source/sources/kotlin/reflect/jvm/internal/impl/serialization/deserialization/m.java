package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.v;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/m.class */
public abstract class m extends v {

    /* renamed from: b  reason: collision with root package name */
    private final n f38450b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(b fqName, n storageManager, ab module) {
        super(module, fqName);
        p.d(fqName, "fqName");
        p.d(storageManager, "storageManager");
        p.d(module, "module");
        this.f38450b = storageManager;
    }

    public abstract void a(j jVar);

    public abstract g d();
}

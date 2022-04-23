package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/LazyWrappedType.class */
public final class LazyWrappedType extends WrappedType {
    private final Function0<KotlinType> computation;
    private final i<KotlinType> lazyValue;
    private final n storageManager;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyWrappedType(n storageManager, Function0<? extends KotlinType> computation) {
        p.d(storageManager, "storageManager");
        p.d(computation, "computation");
        this.storageManager = storageManager;
        this.computation = computation;
        this.lazyValue = storageManager.a(computation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    protected final KotlinType getDelegate() {
        return this.lazyValue.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    public final boolean isComputed() {
        return this.lazyValue.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final LazyWrappedType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new LazyWrappedType(this.storageManager, new LazyWrappedType$refine$1(kotlinTypeRefiner, this));
    }
}

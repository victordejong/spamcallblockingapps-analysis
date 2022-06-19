package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/LazyWrappedType.class */
public final class LazyWrappedType extends WrappedType {
    private final Function0<KotlinType> computation;
    private final AbstractC19296i<KotlinType> lazyValue;
    private final AbstractC19302n storageManager;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyWrappedType(AbstractC19302n storageManager, Function0<? extends KotlinType> computation) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(computation, "computation");
        this.storageManager = storageManager;
        this.computation = computation;
        this.lazyValue = storageManager.mo2313a(computation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    protected final KotlinType getDelegate() {
        return this.lazyValue.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    public final boolean isComputed() {
        return this.lazyValue.m2321a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final LazyWrappedType refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new LazyWrappedType(this.storageManager, new LazyWrappedType$refine$1(kotlinTypeRefiner, this));
    }
}

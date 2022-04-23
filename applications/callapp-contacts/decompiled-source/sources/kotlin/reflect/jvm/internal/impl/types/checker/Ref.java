package kotlin.reflect.jvm.internal.impl.types.checker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/Ref.class */
public final class Ref<T> {
    private T value;

    public Ref(T t) {
        this.value = t;
    }

    public final T getValue() {
        return this.value;
    }
}

package kotlin;

import java.io.Serializable;
import p573f.AbstractC9907c;
/* loaded from: classes2-dex2jar.jar:kotlin/InitializedLazyImpl.class */
public final class InitializedLazyImpl<T> implements AbstractC9907c<T>, Serializable {
    public final T value;

    public InitializedLazyImpl(T t) {
        this.value = t;
    }

    @Override // p573f.AbstractC9907c
    public T getValue() {
        return this.value;
    }

    public boolean isInitialized() {
        return true;
    }

    public String toString() {
        return String.valueOf(getValue());
    }
}

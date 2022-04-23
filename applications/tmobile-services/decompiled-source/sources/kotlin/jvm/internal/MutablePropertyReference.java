package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KMutableProperty;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference.class */
public abstract class MutablePropertyReference extends PropertyReference implements KMutableProperty {
    public MutablePropertyReference() {
    }

    @SinceKotlin
    public MutablePropertyReference(Object obj) {
        super(obj);
    }

    @SinceKotlin
    public MutablePropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }
}

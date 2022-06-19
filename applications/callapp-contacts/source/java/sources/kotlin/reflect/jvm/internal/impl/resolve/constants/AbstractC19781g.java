package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/g.class */
public abstract class AbstractC19781g<T> {

    /* renamed from: a */
    private final T f65966a;

    public AbstractC19781g(T t) {
        this.f65966a = t;
    }

    /* renamed from: a */
    public T mo1489a() {
        return this.f65966a;
    }

    /* renamed from: a */
    public abstract KotlinType mo1485a(AbstractC18999ab abstractC18999ab);

    public boolean equals(Object obj) {
        if (this != obj) {
            T mo1489a = mo1489a();
            AbstractC19781g abstractC19781g = obj instanceof AbstractC19781g ? (AbstractC19781g) obj : null;
            return C18524p.m3850a(mo1489a, abstractC19781g == null ? null : abstractC19781g.mo1489a());
        }
        return true;
    }

    public int hashCode() {
        T mo1489a = mo1489a();
        if (mo1489a == null) {
            return 0;
        }
        return mo1489a.hashCode();
    }

    public String toString() {
        return String.valueOf(mo1489a());
    }
}

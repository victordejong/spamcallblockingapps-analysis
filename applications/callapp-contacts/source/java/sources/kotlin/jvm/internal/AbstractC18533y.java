package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;
/* renamed from: kotlin.jvm.internal.y */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/y.class */
public abstract class AbstractC18533y extends AbstractC18511e implements KProperty {
    public AbstractC18533y() {
    }

    public AbstractC18533y(Object obj) {
        super(obj);
    }

    public AbstractC18533y(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC18533y) {
            AbstractC18533y abstractC18533y = (AbstractC18533y) obj;
            return getOwner().equals(abstractC18533y.getOwner()) && getName().equals(abstractC18533y.getName()) && getSignature().equals(abstractC18533y.getSignature()) && C18524p.m3850a(getBoundReceiver(), abstractC18533y.getBoundReceiver());
        } else if (!(obj instanceof KProperty)) {
            return false;
        } else {
            return obj.equals(compute());
        }
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public KProperty getReflected() {
        return (KProperty) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // kotlin.reflect.KProperty
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        KCallable compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}

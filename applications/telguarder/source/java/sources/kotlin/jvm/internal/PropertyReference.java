package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;
/* loaded from: classes-dex2jar.jar:kotlin/jvm/internal/PropertyReference.class */
public abstract class PropertyReference extends CallableReference implements KProperty {
    public PropertyReference() {
    }

    public PropertyReference(Object obj) {
        super(obj);
    }

    public PropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PropertyReference)) {
            if (!(obj instanceof KProperty)) {
                return false;
            }
            return obj.equals(compute());
        }
        PropertyReference propertyReference = (PropertyReference) obj;
        if (!getOwner().equals(propertyReference.getOwner()) || !getName().equals(propertyReference.getName()) || !getSignature().equals(propertyReference.getSignature()) || !Intrinsics.areEqual(getBoundReceiver(), propertyReference.getBoundReceiver())) {
            z = false;
        }
        return z;
    }

    @Override // kotlin.jvm.internal.CallableReference
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

package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9881j;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference.class */
public abstract class PropertyReference extends CallableReference implements AbstractC9881j {
    public PropertyReference() {
    }

    public PropertyReference(Object obj) {
        super(obj);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            if (!getOwner().equals(propertyReference.getOwner()) || !getName().equals(propertyReference.getName()) || !getSignature().equals(propertyReference.getSignature()) || !C10059q.m1643a(getBoundReceiver(), propertyReference.getBoundReceiver())) {
                z = false;
            }
            return z;
        } else if (obj instanceof AbstractC9881j) {
            return obj.equals(compute());
        } else {
            return false;
        }
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9881j getReflected() {
        return (AbstractC9881j) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // p573f.p574a0.AbstractC9881j
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // p573f.p574a0.AbstractC9881j
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        AbstractC9869b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}

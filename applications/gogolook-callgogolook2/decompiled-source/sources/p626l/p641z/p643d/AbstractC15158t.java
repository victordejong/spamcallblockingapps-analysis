package p626l.p641z.p643d;

import p626l.p629c0.AbstractC14899b;
import p626l.p629c0.AbstractC14906i;
/* renamed from: l.z.d.t */
/* loaded from: classes3-dex2jar.jar:l/z/d/t.class */
public abstract class AbstractC15158t extends AbstractC15134c implements AbstractC14906i {
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC15158t) {
            AbstractC15158t tVar = (AbstractC15158t) obj;
            if (!getOwner().equals(tVar.getOwner()) || !getName().equals(tVar.getName()) || !getSignature().equals(tVar.getSignature()) || !C15149k.m384a(getBoundReceiver(), tVar.getBoundReceiver())) {
                z = false;
            }
            return z;
        } else if (obj instanceof AbstractC14906i) {
            return obj.equals(compute());
        } else {
            return false;
        }
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public AbstractC14906i getReflected() {
        return (AbstractC14906i) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    public String toString() {
        AbstractC14899b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}

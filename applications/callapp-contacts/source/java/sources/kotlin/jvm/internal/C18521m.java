package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
/* renamed from: kotlin.jvm.internal.m */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/m.class */
public class C18521m extends AbstractC18511e implements AbstractC18520l, KFunction {
    private final int arity;
    private final int flags;

    public C18521m(int i) {
        this(i, NO_RECEIVER, null, null, null, 0);
    }

    public C18521m(int i, Object obj) {
        this(i, obj, null, null, null, 0);
    }

    public C18521m(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
        this.flags = i2 >> 1;
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    protected KCallable computeReflected() {
        return C18496ac.m3887a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C18521m) {
            C18521m c18521m = (C18521m) obj;
            return C18524p.m3850a(getOwner(), c18521m.getOwner()) && getName().equals(c18521m.getName()) && getSignature().equals(c18521m.getSignature()) && this.flags == c18521m.flags && this.arity == c18521m.arity && C18524p.m3850a(getBoundReceiver(), c18521m.getBoundReceiver());
        } else if (!(obj instanceof KFunction)) {
            return false;
        } else {
            return obj.equals(compute());
        }
    }

    @Override // kotlin.jvm.internal.AbstractC18520l
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public KFunction getReflected() {
        return (KFunction) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // kotlin.reflect.KFunction
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        KCallable compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }
}

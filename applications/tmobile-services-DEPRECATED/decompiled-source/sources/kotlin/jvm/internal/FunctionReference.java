package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/FunctionReference.class */
public class FunctionReference extends CallableReference implements FunctionBase, KFunction {

    /* renamed from: f */
    private final int f20741f;
    @SinceKotlin

    /* renamed from: g */
    private final int f20742g;

    public FunctionReference(int i) {
        this(i, CallableReference.NO_RECEIVER, null, null, null, 0);
    }

    @SinceKotlin
    public FunctionReference(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.f20741f = i;
        this.f20742g = i2 >> 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SinceKotlin
    /* renamed from: c */
    public KFunction getReflected() {
        return (KFunction) super.getReflected();
    }

    @Override // kotlin.jvm.internal.CallableReference
    @SinceKotlin
    protected KCallable computeReflected() {
        Reflection.m1810a(this);
        return this;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            if (!Intrinsics.m1834a(getOwner(), functionReference.getOwner()) || !getName().equals(functionReference.getName()) || !getSignature().equals(functionReference.getSignature()) || this.f20742g != functionReference.f20742g || this.f20741f != functionReference.f20741f || !Intrinsics.m1834a(getBoundReceiver(), functionReference.getBoundReceiver())) {
                z = false;
            }
            return z;
        } else if (obj instanceof KFunction) {
            return obj.equals(compute());
        } else {
            return false;
        }
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.f20741f;
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    @SinceKotlin
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        String str;
        KCallable compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if ("<init>".equals(getName())) {
            str = "constructor (Kotlin reflection is not available)";
        } else {
            str = "function " + getName() + " (Kotlin reflection is not available)";
        }
        return str;
    }
}

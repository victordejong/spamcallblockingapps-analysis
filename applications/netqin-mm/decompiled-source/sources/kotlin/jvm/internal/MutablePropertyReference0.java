package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9875g;
import p573f.p574a0.AbstractC9883k;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference0.class */
public abstract class MutablePropertyReference0 extends MutablePropertyReference implements AbstractC9875g {
    public MutablePropertyReference0() {
    }

    public MutablePropertyReference0(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9869b computeReflected() {
        C10062t.m1625a(this);
        return this;
    }

    @Override // p573f.p574a0.AbstractC9883k
    public Object getDelegate() {
        return ((AbstractC9875g) getReflected()).getDelegate();
    }

    @Override // p573f.p574a0.AbstractC9883k
    public AbstractC9883k.AbstractC9884a getGetter() {
        return ((AbstractC9875g) getReflected()).getGetter();
    }

    @Override // p573f.p574a0.AbstractC9875g
    public AbstractC9875g.AbstractC9876a getSetter() {
        return ((AbstractC9875g) getReflected()).getSetter();
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public Object invoke() {
        return get();
    }
}

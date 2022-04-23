package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9877h;
import p573f.p574a0.AbstractC9885l;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference1.class */
public abstract class MutablePropertyReference1 extends MutablePropertyReference implements AbstractC9877h {
    public MutablePropertyReference1() {
    }

    public MutablePropertyReference1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9869b computeReflected() {
        C10062t.m1624a(this);
        return this;
    }

    @Override // p573f.p574a0.AbstractC9885l
    public Object getDelegate(Object obj) {
        return ((AbstractC9877h) getReflected()).getDelegate(obj);
    }

    @Override // p573f.p574a0.AbstractC9885l
    public AbstractC9885l.AbstractC9886a getGetter() {
        return ((AbstractC9877h) getReflected()).getGetter();
    }

    @Override // p573f.p574a0.AbstractC9877h
    public AbstractC9877h.AbstractC9878a getSetter() {
        return ((AbstractC9877h) getReflected()).getSetter();
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public Object invoke(Object obj) {
        return get(obj);
    }
}

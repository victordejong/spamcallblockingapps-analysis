package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9885l;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference1.class */
public abstract class PropertyReference1 extends PropertyReference implements AbstractC9885l {
    public PropertyReference1() {
    }

    public PropertyReference1(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9869b computeReflected() {
        C10062t.m1621a(this);
        return this;
    }

    @Override // p573f.p574a0.AbstractC9885l
    public Object getDelegate(Object obj) {
        return ((AbstractC9885l) getReflected()).getDelegate(obj);
    }

    @Override // p573f.p574a0.AbstractC9885l
    public AbstractC9885l.AbstractC9886a getGetter() {
        return ((AbstractC9885l) getReflected()).getGetter();
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public Object invoke(Object obj) {
        return get(obj);
    }
}

package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty2;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference2.class */
public abstract class PropertyReference2 extends PropertyReference implements KProperty2 {
    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        Reflection.m1801j(this);
        return this;
    }

    @Override // kotlin.reflect.KProperty2
    public KProperty2.Getter getGetter() {
        return ((KProperty2) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public Object mo422o(Object obj, Object obj2) {
        return mo1691w(obj, obj2);
    }
}

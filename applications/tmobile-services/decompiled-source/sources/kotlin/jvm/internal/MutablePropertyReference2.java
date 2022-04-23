package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty2;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference2.class */
public abstract class MutablePropertyReference2 extends MutablePropertyReference implements KMutableProperty2 {
    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        Reflection.m1805f(this);
        return this;
    }

    @Override // kotlin.reflect.KProperty2
    public KProperty2.Getter getGetter() {
        return ((KMutableProperty2) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public Object mo422o(Object obj, Object obj2) {
        return mo1691w(obj, obj2);
    }
}

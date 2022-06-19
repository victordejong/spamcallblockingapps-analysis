package kotlin.jvm.internal;

import kotlin.reflect.AbstractC18555f;
import kotlin.reflect.AbstractC20105l;
import kotlin.reflect.KCallable;
/* renamed from: kotlin.jvm.internal.t */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/t.class */
public abstract class AbstractC18528t extends AbstractC18527s implements AbstractC18555f {
    public AbstractC18528t() {
    }

    public AbstractC18528t(Object obj) {
        super(obj);
    }

    public AbstractC18528t(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    protected KCallable computeReflected() {
        return C18496ac.m3885a(this);
    }

    @Override // kotlin.reflect.AbstractC20105l
    public Object getDelegate() {
        return ((AbstractC18555f) getReflected()).getDelegate();
    }

    @Override // kotlin.reflect.AbstractC20105l
    public AbstractC20105l.AbstractC20106a getGetter() {
        return ((AbstractC18555f) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.AbstractC18555f
    public AbstractC18555f.AbstractC18556a getSetter() {
        return ((AbstractC18555f) getReflected()).getSetter();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }
}

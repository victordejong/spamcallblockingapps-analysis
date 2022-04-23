package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.f;
import kotlin.reflect.l;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/t.class */
public abstract class t extends s implements f {
    public t() {
    }

    public t(Object obj) {
        super(obj);
    }

    public t(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.jvm.internal.e
    protected KCallable computeReflected() {
        return ac.a(this);
    }

    @Override // kotlin.reflect.l
    public Object getDelegate() {
        return ((f) getReflected()).getDelegate();
    }

    @Override // kotlin.reflect.l
    public l.a getGetter() {
        return ((f) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.f
    public f.a getSetter() {
        return ((f) getReflected()).getSetter();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }
}

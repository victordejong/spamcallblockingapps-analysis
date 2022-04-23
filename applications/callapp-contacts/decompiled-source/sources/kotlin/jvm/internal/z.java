package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.m;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/z.class */
public abstract class z extends y implements m {
    public z() {
    }

    public z(Object obj) {
        super(obj);
    }

    public z(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.reflect.m
    public final m.a a() {
        return ((m) getReflected()).a();
    }

    @Override // kotlin.jvm.internal.e
    protected KCallable computeReflected() {
        return ac.a(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return a(obj);
    }
}

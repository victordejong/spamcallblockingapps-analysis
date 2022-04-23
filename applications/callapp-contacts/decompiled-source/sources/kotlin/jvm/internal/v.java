package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.g;
import kotlin.reflect.m;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/v.class */
public abstract class v extends s implements g {
    public v() {
    }

    public v(Object obj) {
        super(obj);
    }

    public v(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.reflect.m
    public final m.a a() {
        return ((g) getReflected()).a();
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

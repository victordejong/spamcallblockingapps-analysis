package kotlin.jvm.internal;

import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.KCallable;
/* renamed from: kotlin.jvm.internal.z */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/z.class */
public abstract class AbstractC18534z extends AbstractC18533y implements AbstractC20107m {
    public AbstractC18534z() {
    }

    public AbstractC18534z(Object obj) {
        super(obj);
    }

    public AbstractC18534z(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.reflect.AbstractC20107m
    /* renamed from: a */
    public final AbstractC20107m.AbstractC20108a mo1115a() {
        return ((AbstractC20107m) getReflected()).mo1115a();
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    protected KCallable computeReflected() {
        return C18496ac.m3883a(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return mo1114a(obj);
    }
}

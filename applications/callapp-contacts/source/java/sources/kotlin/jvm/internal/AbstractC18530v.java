package kotlin.jvm.internal;

import kotlin.reflect.AbstractC18564g;
import kotlin.reflect.AbstractC20107m;
import kotlin.reflect.KCallable;
/* renamed from: kotlin.jvm.internal.v */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/v.class */
public abstract class AbstractC18530v extends AbstractC18527s implements AbstractC18564g {
    public AbstractC18530v() {
    }

    public AbstractC18530v(Object obj) {
        super(obj);
    }

    public AbstractC18530v(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.reflect.AbstractC20107m
    /* renamed from: a */
    public final AbstractC20107m.AbstractC20108a mo1115a() {
        return ((AbstractC18564g) getReflected()).mo1115a();
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    protected KCallable computeReflected() {
        return C18496ac.m3884a(this);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return mo1114a(obj);
    }
}

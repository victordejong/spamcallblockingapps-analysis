package kotlin.jvm.internal;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference2Impl.class */
public class MutablePropertyReference2Impl extends MutablePropertyReference2 {
    @Override // kotlin.reflect.KProperty2
    /* renamed from: w */
    public Object mo1691w(Object obj, Object obj2) {
        return getGetter().call(obj, obj2);
    }
}

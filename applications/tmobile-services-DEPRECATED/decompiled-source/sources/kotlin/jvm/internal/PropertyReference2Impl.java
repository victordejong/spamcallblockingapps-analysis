package kotlin.jvm.internal;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference2Impl.class */
public class PropertyReference2Impl extends PropertyReference2 {
    @Override // kotlin.reflect.KProperty2
    /* renamed from: w */
    public Object mo1691w(Object obj, Object obj2) {
        return getGetter().call(obj, obj2);
    }
}

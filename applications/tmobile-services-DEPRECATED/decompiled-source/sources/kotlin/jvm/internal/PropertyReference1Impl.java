package kotlin.jvm.internal;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference1Impl.class */
public class PropertyReference1Impl extends PropertyReference1 {
    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return getGetter().call(obj);
    }
}

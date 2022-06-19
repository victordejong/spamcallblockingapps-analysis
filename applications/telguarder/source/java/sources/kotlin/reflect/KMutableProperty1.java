package kotlin.reflect;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KMutableProperty;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001\u000eJ\u001d\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028��2\u0006\u0010\f\u001a\u00028\u0001H&¢\u0006\u0002\u0010\rR\u001e\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u000f"}, m400d2 = {"Lkotlin/reflect/KMutableProperty1;", "T", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/KMutableProperty;", "setter", "Lkotlin/reflect/KMutableProperty1$Setter;", "getSetter", "()Lkotlin/reflect/KMutableProperty1$Setter;", "set", "", "receiver", "value", "(Ljava/lang/Object;Ljava/lang/Object;)V", "Setter", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/reflect/KMutableProperty1.class */
public interface KMutableProperty1<T, V> extends KProperty1<T, V>, KMutableProperty<V> {

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\bf\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, m400d2 = {"Lkotlin/reflect/KMutableProperty1$Setter;", "T", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KMutableProperty$Setter;", "Lkotlin/Function2;", "", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/reflect/KMutableProperty1$Setter.class */
    public interface Setter<T, V> extends KMutableProperty.Setter<V>, Function2<T, V, Unit> {
    }

    @Override // kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    Setter<T, V> getSetter();

    void set(T t, V v);
}

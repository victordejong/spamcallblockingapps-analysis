package kotlin.reflect;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KMutableProperty;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\fJ\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028��H&¢\u0006\u0002\u0010\u000bR\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, m400d2 = {"Lkotlin/reflect/KMutableProperty0;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KProperty0;", "Lkotlin/reflect/KMutableProperty;", "setter", "Lkotlin/reflect/KMutableProperty0$Setter;", "getSetter", "()Lkotlin/reflect/KMutableProperty0$Setter;", "set", "", "value", "(Ljava/lang/Object;)V", "Setter", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/reflect/KMutableProperty0.class */
public interface KMutableProperty0<V> extends KProperty0<V>, KMutableProperty<V> {

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\bf\u0018��*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00040\u0003¨\u0006\u0005"}, m400d2 = {"Lkotlin/reflect/KMutableProperty0$Setter;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/reflect/KMutableProperty$Setter;", "Lkotlin/Function1;", "", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/reflect/KMutableProperty0$Setter.class */
    public interface Setter<V> extends KMutableProperty.Setter<V>, Function1<V, Unit> {
    }

    Setter<V> getSetter();

    void set(V v);
}

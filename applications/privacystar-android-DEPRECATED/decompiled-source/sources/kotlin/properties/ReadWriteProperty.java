package kotlin.properties;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018��*\u0006\b��\u0010\u0001 ��*\u0004\b\u0001\u0010\u00022\u00020\u0003J\"\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0005\u001a\u00028��2\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0007H¦\u0002¢\u0006\u0002\u0010\bJ*\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00028��2\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u000b\u001a\u00028\u0001H¦\u0002¢\u0006\u0002\u0010\f¨\u0006\r"}, m254d2 = {"Lkotlin/properties/ReadWriteProperty;", "R", "T", "", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;", "setValue", "", FirebaseAnalytics.Param.VALUE, "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/properties/ReadWriteProperty.class */
public interface ReadWriteProperty<R, T> {
    T getValue(R r, @NotNull KProperty<?> kProperty);

    void setValue(R r, @NotNull KProperty<?> kProperty, T t);
}

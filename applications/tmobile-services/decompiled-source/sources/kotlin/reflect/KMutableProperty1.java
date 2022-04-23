package kotlin.reflect;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KMutableProperty;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\u000fJ\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00028��2\u0006\u0010\u0007\u001a\u00028\u0001H&¢\u0006\u0004\b\t\u0010\nR\"\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u000b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlin/reflect/KMutableProperty1;", "T", "V", "Lkotlin/reflect/KProperty1;", "Lkotlin/reflect/KMutableProperty;", "Lkotlin/Any;", "receiver", FirebaseAnalytics.Param.VALUE, "", "set", "(Ljava/lang/Object;Ljava/lang/Object;)V", "Lkotlin/reflect/KMutableProperty1$Setter;", "getSetter", "()Lkotlin/reflect/KMutableProperty1$Setter;", "setter", "Setter", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/reflect/KMutableProperty1.class */
public interface KMutableProperty1<T, V> extends KProperty1<T, V>, KMutableProperty<V> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\bf\u0018��*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u00032\u00020\u00042\u00020\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/KMutableProperty1$Setter;", "T", "V", "kotlin/reflect/KMutableProperty$Setter", "Lkotlin/jvm/functions/Function2;", "Lkotlin/Any;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/reflect/KMutableProperty1$Setter.class */
    public interface Setter<T, V> extends KMutableProperty.Setter<V>, Function2<T, V, Unit> {
    }
}

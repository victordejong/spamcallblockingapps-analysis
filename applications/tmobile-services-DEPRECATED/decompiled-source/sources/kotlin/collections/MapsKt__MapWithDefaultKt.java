package kotlin.collections;

import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0002\u001a3\u0010\u0006\u001a\u00028\u0001\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028��H\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001aX\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00022!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00118��¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\u0004\b\u000b\u0010\f\u001aZ\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\r\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\r2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00118��¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\u0003\u0012\u0004\u0012\u00028\u00010\u0007H\u0007¢\u0006\u0004\b\u000e\u0010\f¨\u0006\u000f"}, d2 = {"K", "V", "", "key", "getOrImplicitDefaultNullable", "(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;", "getOrImplicitDefault", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "defaultValue", "withDefault", "(Ljava/util/Map;Lkotlin/Function1;)Ljava/util/Map;", "", "withDefaultMutable", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/MapsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/MapsKt__MapWithDefaultKt.class */
public class MapsKt__MapWithDefaultKt {
    @PublishedApi
    @JvmName
    /* renamed from: a */
    public static final <K, V> V m2090a(@NotNull Map<K, ? extends V> getOrImplicitDefault, K k) {
        Intrinsics.m1830e(getOrImplicitDefault, "$this$getOrImplicitDefault");
        if (getOrImplicitDefault instanceof MapWithDefault) {
            return (V) ((MapWithDefault) getOrImplicitDefault).mo2072d(k);
        }
        V v = (V) getOrImplicitDefault.get(k);
        if (v != null || getOrImplicitDefault.containsKey(k)) {
            return v;
        }
        throw new NoSuchElementException("Key " + k + " is missing in the map.");
    }

    @NotNull
    /* renamed from: b */
    public static <K, V> Map<K, V> m2089b(@NotNull Map<K, ? extends V> withDefault, @NotNull Function1<? super K, ? extends V> defaultValue) {
        Intrinsics.m1830e(withDefault, "$this$withDefault");
        Intrinsics.m1830e(defaultValue, "defaultValue");
        return withDefault instanceof MapWithDefault ? m2089b(((MapWithDefault) withDefault).getMap(), defaultValue) : new MapWithDefaultImpl<>(withDefault, defaultValue);
    }
}

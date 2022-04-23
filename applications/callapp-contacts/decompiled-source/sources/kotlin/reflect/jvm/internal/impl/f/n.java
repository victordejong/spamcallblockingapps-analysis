package kotlin.reflect.jvm.internal.impl.f;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/n.class */
public interface n {
    <K, V> b<K, V> a();

    <K, V> g<K, V> a(Function1<? super K, ? extends V> function1);

    <T> i<T> a(Function0<? extends T> function0);

    <T> i<T> a(Function0<? extends T> function0, T t);

    <T> i<T> a(Function0<? extends T> function0, Function1<? super Boolean, ? extends T> function1, Function1<? super T, v> function12);

    <K, V> a<K, V> b();

    <K, V> h<K, V> b(Function1<? super K, ? extends V> function1);

    <T> j<T> b(Function0<? extends T> function0);

    <T> T c(Function0<? extends T> function0);
}

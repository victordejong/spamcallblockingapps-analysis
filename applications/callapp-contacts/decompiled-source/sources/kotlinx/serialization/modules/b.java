package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J(\u0010\u0006\u001a\n\u0012\u0004\u0012\u0002H\b\u0018\u00010\u0007\"\b\b��\u0010\b*\u00020\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH&J7\u0010\u000b\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\b\u0018\u00010\u0007\"\b\b��\u0010\b*\u00020\u00012\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\n2\u0006\u0010\r\u001a\u0002H\bH&¢\u0006\u0002\u0010\u000eJ2\u0010\u000b\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\b\u0018\u00010\u0007\"\b\b��\u0010\b*\u00020\u00012\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\b0\n2\u0006\u0010\u000f\u001a\u00020\u0010H&¨\u0006\u0011"}, d2 = {"Lkotlinx/serialization/modules/SerialModule;", "", "dumpTo", "", "collector", "Lkotlinx/serialization/modules/SerialModuleCollector;", "getContextual", "Lkotlinx/serialization/KSerializer;", "T", "kclass", "Lkotlin/reflect/KClass;", "getPolymorphic", "baseClass", "value", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serializedClassName", "", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/b.class */
public interface b {
    <T> KSerializer<T> a(c<T> cVar);

    <T> KSerializer<? extends T> a(c<T> cVar, T t);

    <T> KSerializer<? extends T> a(c<T> cVar, String str);

    void a(d dVar);
}

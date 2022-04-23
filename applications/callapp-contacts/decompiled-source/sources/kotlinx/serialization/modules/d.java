package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J.\u0010\u0002\u001a\u00020\u0003\"\b\b��\u0010\u0004*\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\bH&JF\u0010\t\u001a\u00020\u0003\"\b\b��\u0010\n*\u00020\u0001\"\b\b\u0001\u0010\u000b*\u0002H\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u000b0\bH&¨\u0006\u000f"}, d2 = {"Lkotlinx/serialization/modules/SerialModuleCollector;", "", "contextual", "", "T", "kClass", "Lkotlin/reflect/KClass;", "serializer", "Lkotlinx/serialization/KSerializer;", "polymorphic", "Base", "Sub", "baseClass", "actualClass", "actualSerializer", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/d.class */
public interface d {
    <T> void contextual(c<T> cVar, KSerializer<T> kSerializer);

    <Base, Sub extends Base> void polymorphic(c<Base> cVar, c<Sub> cVar2, KSerializer<Sub> kSerializer);
}

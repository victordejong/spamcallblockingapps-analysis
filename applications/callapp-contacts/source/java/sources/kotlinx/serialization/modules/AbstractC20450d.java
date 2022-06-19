package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J.\u0010\u0002\u001a\u00020\u0003\"\b\b��\u0010\u0004*\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\bH&JF\u0010\t\u001a\u00020\u0003\"\b\b��\u0010\n*\u00020\u0001\"\b\b\u0001\u0010\u000b*\u0002H\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\n0\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u000b0\bH&¨\u0006\u000f"}, m4298d2 = {"Lkotlinx/serialization/modules/SerialModuleCollector;", "", "contextual", "", "T", "kClass", "Lkotlin/reflect/KClass;", "serializer", "Lkotlinx/serialization/KSerializer;", "polymorphic", "Base", "Sub", "baseClass", "actualClass", "actualSerializer", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.modules.d */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/d.class */
public interface AbstractC20450d {
    <T> void contextual(AbstractC18551c<T> abstractC18551c, KSerializer<T> kSerializer);

    <Base, Sub extends Base> void polymorphic(AbstractC18551c<Base> abstractC18551c, AbstractC18551c<Sub> abstractC18551c2, KSerializer<Sub> kSerializer);
}

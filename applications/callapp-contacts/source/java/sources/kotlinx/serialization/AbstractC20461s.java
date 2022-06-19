package kotlinx.serialization;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J)\u0010\u0002\u001a\u0002H\u0003\"\u0004\b��\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¢\u0006\u0002\u0010\bJ)\u0010\t\u001a\u00020\u0007\"\u0004\b��\u0010\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u000b2\u0006\u0010\f\u001a\u0002H\u0003H&¢\u0006\u0002\u0010\r¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/serialization/StringFormat;", "Lkotlinx/serialization/SerialFormat;", "parse", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "string", "", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;", "stringify", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.s */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/s.class */
public interface AbstractC20461s {
    <T> T parse(AbstractC20415d<T> abstractC20415d, String str);

    <T> String stringify(AbstractC20460r<? super T> abstractC20460r, T t);
}

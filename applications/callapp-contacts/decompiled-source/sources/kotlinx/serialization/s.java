package kotlinx.serialization;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J)\u0010\u0002\u001a\u0002H\u0003\"\u0004\b��\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¢\u0006\u0002\u0010\bJ)\u0010\t\u001a\u00020\u0007\"\u0004\b��\u0010\u00032\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00030\u000b2\u0006\u0010\f\u001a\u0002H\u0003H&¢\u0006\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lkotlinx/serialization/StringFormat;", "Lkotlinx/serialization/SerialFormat;", "parse", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "string", "", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;", "stringify", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/s.class */
public interface s {
    <T> T parse(d<T> dVar, String str);

    <T> String stringify(r<? super T> rVar, T t);
}

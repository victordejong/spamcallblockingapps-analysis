package kotlinx.serialization;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u0015\u0010\u0007\u001a\u00028��2\u0006\u0010\b\u001a\u00020\tH&¢\u0006\u0002\u0010\nJ\u001d\u0010\u000b\u001a\u00028��2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\f\u001a\u00028��H&¢\u0006\u0002\u0010\rR\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lkotlinx/serialization/DeserializationStrategy;", "T", "", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "deserialize", "decoder", "Lkotlinx/serialization/Decoder;", "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;", "patch", "old", "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/d.class */
public interface d<T> {
    T deserialize(Decoder decoder);

    SerialDescriptor getDescriptor();

    T patch(Decoder decoder, T t);
}

package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003J\u001d\u0010\b\u001a\u00028��2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028��H\u0016¢\u0006\u0002\u0010\fR\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lkotlinx/serialization/KSerializer;", "T", "Lkotlinx/serialization/SerializationStrategy;", "Lkotlinx/serialization/DeserializationStrategy;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/SerialDescriptor;", "patch", "decoder", "Lkotlinx/serialization/Decoder;", "old", "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/KSerializer.class */
public interface KSerializer<T> extends d<T>, r<T> {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/KSerializer$a.class */
    public static final class a {
        public static <T> T a(KSerializer<T> kSerializer, Decoder decoder) {
            p.c(decoder, "decoder");
            throw new UpdateNotSupportedException(kSerializer.getDescriptor().a());
        }
    }

    @Override // kotlinx.serialization.d, kotlinx.serialization.r
    SerialDescriptor getDescriptor();
}

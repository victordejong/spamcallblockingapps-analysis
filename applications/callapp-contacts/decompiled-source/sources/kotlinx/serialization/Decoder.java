package kotlinx.serialization;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\f\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\n\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J1\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u001a\u0010\u000e\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00100\u000f\"\u0006\u0012\u0002\b\u00030\u0010H&¢\u0006\u0002\u0010\u0011J\b\u0010\u0012\u001a\u00020\u0013H&J\b\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0017H&J\b\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH&J\b\u0010\u001d\u001a\u00020\u001eH&J\b\u0010\u001f\u001a\u00020\u001bH&J\b\u0010 \u001a\u00020!H&J\b\u0010\"\u001a\u00020\u0013H&J\n\u0010#\u001a\u0004\u0018\u00010$H&J)\u0010%\u001a\u0004\u0018\u0001H&\"\b\b��\u0010&*\u00020\u00012\u000e\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H&0(H\u0016¢\u0006\u0002\u0010)J!\u0010*\u001a\u0002H&\"\u0004\b��\u0010&2\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H&0(H\u0016¢\u0006\u0002\u0010)J\b\u0010+\u001a\u00020,H&J\b\u0010-\u001a\u00020.H&J\b\u0010/\u001a\u000200H&J3\u00101\u001a\u0004\u0018\u0001H&\"\b\b��\u0010&*\u00020\u00012\u000e\u0010'\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H&0(2\b\u00102\u001a\u0004\u0018\u0001H&H\u0016¢\u0006\u0002\u00103J)\u00104\u001a\u0002H&\"\u0004\b��\u0010&2\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H&0(2\u0006\u00102\u001a\u0002H&H\u0016¢\u0006\u0002\u00103R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u00065"}, d2 = {"Lkotlinx/serialization/Decoder;", "", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "updateMode", "Lkotlinx/serialization/UpdateMode;", "getUpdateMode", "()Lkotlinx/serialization/UpdateMode;", "beginStructure", "Lkotlinx/serialization/CompositeDecoder;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;", "decodeBoolean", "", "decodeByte", "", "decodeChar", "", "decodeDouble", "", "decodeEnum", "", "enumDescriptor", "decodeFloat", "", "decodeInt", "decodeLong", "", "decodeNotNullMark", "decodeNull", "", "decodeNullableSerializableValue", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeSerializableValue", "decodeShort", "", "decodeString", "", "decodeUnit", "", "updateNullableSerializableValue", "old", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "updateSerializableValue", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/Decoder.class */
public interface Decoder {

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/Decoder$a.class */
    public static final class a {
        public static <T> T a(Decoder decoder, d<T> deserializer) {
            p.c(deserializer, "deserializer");
            return deserializer.deserialize(decoder);
        }

        public static <T> T a(Decoder decoder, d<T> deserializer, T t) {
            p.c(deserializer, "deserializer");
            int i = b.f38871a[decoder.getUpdateMode().ordinal()];
            if (i == 1) {
                throw new UpdateNotSupportedException(deserializer.getDescriptor().a());
            } else if (i == 2) {
                return (T) decoder.decodeSerializableValue(deserializer);
            } else {
                if (i == 3) {
                    return deserializer.patch(decoder, t);
                }
                throw new NoWhenBranchMatchedException();
            }
        }

        public static <T> T b(Decoder decoder, d<T> deserializer) {
            p.c(deserializer, "deserializer");
            return decoder.decodeNotNullMark() ? (T) decoder.decodeSerializableValue(deserializer) : (T) decoder.decodeNull();
        }

        public static <T> T b(Decoder decoder, d<T> deserializer, T t) {
            p.c(deserializer, "deserializer");
            if (decoder.getUpdateMode() == v.BANNED) {
                throw new UpdateNotSupportedException(deserializer.getDescriptor().a());
            } else if (decoder.getUpdateMode() == v.OVERWRITE || t == null) {
                return (T) decoder.decodeNullableSerializableValue(deserializer);
            } else {
                if (decoder.decodeNotNullMark()) {
                    return deserializer.patch(decoder, t);
                }
                decoder.decodeNull();
                return t;
            }
        }
    }

    kotlinx.serialization.a beginStructure(SerialDescriptor serialDescriptor, KSerializer<?>... kSerializerArr);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(SerialDescriptor serialDescriptor);

    float decodeFloat();

    int decodeInt();

    long decodeLong();

    boolean decodeNotNullMark();

    Void decodeNull();

    <T> T decodeNullableSerializableValue(d<T> dVar);

    <T> T decodeSerializableValue(d<T> dVar);

    short decodeShort();

    String decodeString();

    v getUpdateMode();

    <T> T updateSerializableValue(d<T> dVar, T t);
}

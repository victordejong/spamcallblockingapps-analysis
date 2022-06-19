package org.bson.codecs;

import java.util.HashMap;
import java.util.Map;
import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/ValueCodecProvider.class */
public class ValueCodecProvider implements CodecProvider {
    private final Map<Class<?>, Codec<?>> codecs = new HashMap();

    public ValueCodecProvider() {
        addCodecs();
    }

    private <T> void addCodec(Codec<T> codec) {
        this.codecs.put(codec.getEncoderClass(), codec);
    }

    private void addCodecs() {
        addCodec(new BinaryCodec());
        addCodec(new BooleanCodec());
        addCodec(new DateCodec());
        addCodec(new DoubleCodec());
        addCodec(new IntegerCodec());
        addCodec(new LongCodec());
        addCodec(new MinKeyCodec());
        addCodec(new MaxKeyCodec());
        addCodec(new CodeCodec());
        addCodec(new Decimal128Codec());
        addCodec(new BigDecimalCodec());
        addCodec(new ObjectIdCodec());
        addCodec(new CharacterCodec());
        addCodec(new StringCodec());
        addCodec(new SymbolCodec());
        addCodec(new OverridableUuidRepresentationUuidCodec());
        addCodec(new ByteCodec());
        addCodec(new PatternCodec());
        addCodec(new ShortCodec());
        addCodec(new ByteArrayCodec());
        addCodec(new FloatCodec());
        addCodec(new AtomicBooleanCodec());
        addCodec(new AtomicIntegerCodec());
        addCodec(new AtomicLongCodec());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    @Override // org.bson.codecs.configuration.CodecProvider
    public <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry) {
        return (Codec<T>) this.codecs.get(cls);
    }

    public int hashCode() {
        return 0;
    }
}

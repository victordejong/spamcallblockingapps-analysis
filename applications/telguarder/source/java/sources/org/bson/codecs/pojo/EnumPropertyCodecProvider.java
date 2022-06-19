package org.bson.codecs.pojo;

import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.Codec;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/EnumPropertyCodecProvider.class */
final class EnumPropertyCodecProvider implements PropertyCodecProvider {
    private final CodecRegistry codecRegistry;

    /* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/EnumPropertyCodecProvider$EnumCodec.class */
    private static class EnumCodec<T extends Enum<T>> implements Codec<T> {
        private final Class<T> clazz;

        EnumCodec(Class<T> cls) {
            this.clazz = cls;
        }

        @Override // org.bson.codecs.Decoder
        public T decode(BsonReader bsonReader, DecoderContext decoderContext) {
            return (T) Enum.valueOf(this.clazz, bsonReader.readString());
        }

        public void encode(BsonWriter bsonWriter, T t, EncoderContext encoderContext) {
            bsonWriter.writeString(t.name());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.bson.codecs.Encoder
        public /* bridge */ /* synthetic */ void encode(BsonWriter bsonWriter, Object obj, EncoderContext encoderContext) {
            encode(bsonWriter, (BsonWriter) ((Enum) obj), encoderContext);
        }

        @Override // org.bson.codecs.Encoder
        public Class<T> getEncoderClass() {
            return this.clazz;
        }
    }

    public EnumPropertyCodecProvider(CodecRegistry codecRegistry) {
        this.codecRegistry = codecRegistry;
    }

    @Override // org.bson.codecs.pojo.PropertyCodecProvider
    public <T> Codec<T> get(TypeWithTypeParameters<T> typeWithTypeParameters, PropertyCodecRegistry propertyCodecRegistry) {
        Class<T> type = typeWithTypeParameters.getType();
        if (Enum.class.isAssignableFrom(type)) {
            try {
                return this.codecRegistry.get(type);
            } catch (CodecConfigurationException e) {
                return new EnumCodec(type);
            }
        }
        return null;
    }
}

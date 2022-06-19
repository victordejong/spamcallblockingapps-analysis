package org.bson.codecs.jsr310;

import java.time.Instant;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/jsr310/InstantCodec.class */
public class InstantCodec extends DateTimeBasedCodec<Instant> {
    @Override // org.bson.codecs.Decoder
    public Instant decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Instant.ofEpochMilli(validateAndReadDateTime(bsonReader));
    }

    public void encode(BsonWriter bsonWriter, Instant instant, EncoderContext encoderContext) {
        try {
            bsonWriter.writeDateTime(instant.toEpochMilli());
        } catch (ArithmeticException e) {
            throw new CodecConfigurationException(String.format("Unsupported Instant value '%s' could not be converted to milliseconds: %s", instant, e.getMessage()), e);
        }
    }

    @Override // org.bson.codecs.Encoder
    public Class<Instant> getEncoderClass() {
        return Instant.class;
    }
}

package org.bson.codecs.jsr310;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/jsr310/LocalDateTimeCodec.class */
public class LocalDateTimeCodec extends DateTimeBasedCodec<LocalDateTime> {
    @Override // org.bson.codecs.Decoder
    public LocalDateTime decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Instant.ofEpochMilli(validateAndReadDateTime(bsonReader)).atZone(ZoneOffset.UTC).toLocalDateTime();
    }

    public void encode(BsonWriter bsonWriter, LocalDateTime localDateTime, EncoderContext encoderContext) {
        try {
            bsonWriter.writeDateTime(localDateTime.toInstant(ZoneOffset.UTC).toEpochMilli());
        } catch (ArithmeticException e) {
            throw new CodecConfigurationException(String.format("Unsupported LocalDateTime value '%s' could not be converted to milliseconds: %s", localDateTime, e.getMessage()), e);
        }
    }

    @Override // org.bson.codecs.Encoder
    public Class<LocalDateTime> getEncoderClass() {
        return LocalDateTime.class;
    }
}

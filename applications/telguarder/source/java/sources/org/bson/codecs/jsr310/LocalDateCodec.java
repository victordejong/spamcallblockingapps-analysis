package org.bson.codecs.jsr310;

import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneOffset;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/jsr310/LocalDateCodec.class */
public class LocalDateCodec extends DateTimeBasedCodec<LocalDate> {
    @Override // org.bson.codecs.Decoder
    public LocalDate decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Instant.ofEpochMilli(validateAndReadDateTime(bsonReader)).atZone(ZoneOffset.UTC).toLocalDate();
    }

    public void encode(BsonWriter bsonWriter, LocalDate localDate, EncoderContext encoderContext) {
        try {
            bsonWriter.writeDateTime(localDate.atStartOfDay(ZoneOffset.UTC).toInstant().toEpochMilli());
        } catch (ArithmeticException e) {
            throw new CodecConfigurationException(String.format("Unsupported LocalDate '%s' could not be converted to milliseconds: %s", localDate, e.getMessage()), e);
        }
    }

    @Override // org.bson.codecs.Encoder
    public Class<LocalDate> getEncoderClass() {
        return LocalDate.class;
    }
}

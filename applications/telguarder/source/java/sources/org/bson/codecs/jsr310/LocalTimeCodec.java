package org.bson.codecs.jsr310;

import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneOffset;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/jsr310/LocalTimeCodec.class */
public class LocalTimeCodec extends DateTimeBasedCodec<LocalTime> {
    @Override // org.bson.codecs.Decoder
    public LocalTime decode(BsonReader bsonReader, DecoderContext decoderContext) {
        return Instant.ofEpochMilli(validateAndReadDateTime(bsonReader)).atOffset(ZoneOffset.UTC).toLocalTime();
    }

    public void encode(BsonWriter bsonWriter, LocalTime localTime, EncoderContext encoderContext) {
        bsonWriter.writeDateTime(localTime.atDate(LocalDate.ofEpochDay(0L)).toInstant(ZoneOffset.UTC).toEpochMilli());
    }

    @Override // org.bson.codecs.Encoder
    public Class<LocalTime> getEncoderClass() {
        return LocalTime.class;
    }
}

package org.bson.codecs;

import org.bson.BsonInvalidOperationException;
import org.bson.BsonReader;
import org.bson.BsonWriter;
import org.bson.assertions.Assertions;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/CharacterCodec.class */
public class CharacterCodec implements Codec<Character> {
    @Override // org.bson.codecs.Decoder
    public Character decode(BsonReader bsonReader, DecoderContext decoderContext) {
        String readString = bsonReader.readString();
        if (readString.length() == 1) {
            return Character.valueOf(readString.charAt(0));
        }
        throw new BsonInvalidOperationException(String.format("Attempting to decode the string '%s' to a character, but its length is not equal to one", readString));
    }

    public void encode(BsonWriter bsonWriter, Character ch, EncoderContext encoderContext) {
        Assertions.notNull("value", ch);
        bsonWriter.writeString(ch.toString());
    }

    @Override // org.bson.codecs.Encoder
    public Class<Character> getEncoderClass() {
        return Character.class;
    }
}

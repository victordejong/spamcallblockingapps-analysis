package org.bson.codecs;

import java.util.ArrayList;
import java.util.Iterator;
import org.bson.BsonArray;
import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.BsonValue;
import org.bson.BsonWriter;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonArrayCodec.class */
public class BsonArrayCodec implements Codec<BsonArray> {
    private static final CodecRegistry DEFAULT_REGISTRY = CodecRegistries.fromProviders(new BsonValueCodecProvider());
    private final CodecRegistry codecRegistry;

    public BsonArrayCodec() {
        this(DEFAULT_REGISTRY);
    }

    public BsonArrayCodec(CodecRegistry codecRegistry) {
        this.codecRegistry = (CodecRegistry) Assertions.notNull("codecRegistry", codecRegistry);
    }

    @Override // org.bson.codecs.Decoder
    public BsonArray decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readStartArray();
        ArrayList arrayList = new ArrayList();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            arrayList.add(readValue(bsonReader, decoderContext));
        }
        bsonReader.readEndArray();
        return new BsonArray(arrayList);
    }

    public void encode(BsonWriter bsonWriter, BsonArray bsonArray, EncoderContext encoderContext) {
        bsonWriter.writeStartArray();
        Iterator<BsonValue> it = bsonArray.iterator();
        while (it.hasNext()) {
            BsonValue next = it.next();
            encoderContext.encodeWithChildContext(this.codecRegistry.get(next.getClass()), bsonWriter, next);
        }
        bsonWriter.writeEndArray();
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonArray> getEncoderClass() {
        return BsonArray.class;
    }

    protected BsonValue readValue(BsonReader bsonReader, DecoderContext decoderContext) {
        return (BsonValue) this.codecRegistry.get(BsonValueCodecProvider.getClassForBsonType(bsonReader.getCurrentBsonType())).decode(bsonReader, decoderContext);
    }
}

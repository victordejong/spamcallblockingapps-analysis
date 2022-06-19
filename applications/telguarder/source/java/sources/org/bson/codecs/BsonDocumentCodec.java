package org.bson.codecs;

import java.util.ArrayList;
import java.util.Map;
import org.bson.BsonDocument;
import org.bson.BsonElement;
import org.bson.BsonObjectId;
import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.BsonValue;
import org.bson.BsonWriter;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonDocumentCodec.class */
public class BsonDocumentCodec implements CollectibleCodec<BsonDocument> {
    private static final CodecRegistry DEFAULT_REGISTRY = CodecRegistries.fromProviders(new BsonValueCodecProvider());
    private static final String ID_FIELD_NAME = "_id";
    private final BsonTypeCodecMap bsonTypeCodecMap;
    private final CodecRegistry codecRegistry;

    public BsonDocumentCodec() {
        this(DEFAULT_REGISTRY);
    }

    public BsonDocumentCodec(CodecRegistry codecRegistry) {
        if (codecRegistry != null) {
            this.codecRegistry = codecRegistry;
            this.bsonTypeCodecMap = new BsonTypeCodecMap(BsonValueCodecProvider.getBsonTypeClassMap(), codecRegistry);
            return;
        }
        throw new IllegalArgumentException("Codec registry can not be null");
    }

    private void beforeFields(BsonWriter bsonWriter, EncoderContext encoderContext, BsonDocument bsonDocument) {
        if (!encoderContext.isEncodingCollectibleDocument() || !bsonDocument.containsKey("_id")) {
            return;
        }
        bsonWriter.writeName("_id");
        writeValue(bsonWriter, encoderContext, bsonDocument.get("_id"));
    }

    private boolean skipField(EncoderContext encoderContext, String str) {
        return encoderContext.isEncodingCollectibleDocument() && str.equals("_id");
    }

    private void writeValue(BsonWriter bsonWriter, EncoderContext encoderContext, BsonValue bsonValue) {
        encoderContext.encodeWithChildContext(this.codecRegistry.get(bsonValue.getClass()), bsonWriter, bsonValue);
    }

    @Override // org.bson.codecs.Decoder
    public BsonDocument decode(BsonReader bsonReader, DecoderContext decoderContext) {
        ArrayList arrayList = new ArrayList();
        bsonReader.readStartDocument();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            arrayList.add(new BsonElement(bsonReader.readName(), readValue(bsonReader, decoderContext)));
        }
        bsonReader.readEndDocument();
        return new BsonDocument(arrayList);
    }

    public boolean documentHasId(BsonDocument bsonDocument) {
        return bsonDocument.containsKey("_id");
    }

    public void encode(BsonWriter bsonWriter, BsonDocument bsonDocument, EncoderContext encoderContext) {
        bsonWriter.writeStartDocument();
        beforeFields(bsonWriter, encoderContext, bsonDocument);
        for (Map.Entry<String, BsonValue> entry : bsonDocument.entrySet()) {
            if (!skipField(encoderContext, entry.getKey())) {
                bsonWriter.writeName(entry.getKey());
                writeValue(bsonWriter, encoderContext, entry.getValue());
            }
        }
        bsonWriter.writeEndDocument();
    }

    public BsonDocument generateIdIfAbsentFromDocument(BsonDocument bsonDocument) {
        if (!documentHasId(bsonDocument)) {
            bsonDocument.put("_id", (BsonValue) new BsonObjectId(new ObjectId()));
        }
        return bsonDocument;
    }

    public CodecRegistry getCodecRegistry() {
        return this.codecRegistry;
    }

    public BsonValue getDocumentId(BsonDocument bsonDocument) {
        return bsonDocument.get("_id");
    }

    @Override // org.bson.codecs.Encoder
    public Class<BsonDocument> getEncoderClass() {
        return BsonDocument.class;
    }

    protected BsonValue readValue(BsonReader bsonReader, DecoderContext decoderContext) {
        return (BsonValue) this.bsonTypeCodecMap.get(bsonReader.getCurrentBsonType()).decode(bsonReader, decoderContext);
    }
}

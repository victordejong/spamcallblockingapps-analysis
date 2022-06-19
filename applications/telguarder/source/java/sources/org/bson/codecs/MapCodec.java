package org.bson.codecs;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.BsonWriter;
import org.bson.Transformer;
import org.bson.UuidRepresentation;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/MapCodec.class */
public class MapCodec implements Codec<Map<String, Object>>, OverridableUuidRepresentationCodec<Map<String, Object>> {
    private final BsonTypeCodecMap bsonTypeCodecMap;
    private final CodecRegistry registry;
    private final UuidRepresentation uuidRepresentation;
    private final Transformer valueTransformer;
    private static final CodecRegistry DEFAULT_REGISTRY = CodecRegistries.fromProviders(Arrays.asList(new ValueCodecProvider(), new BsonValueCodecProvider(), new DocumentCodecProvider(), new IterableCodecProvider(), new MapCodecProvider()));
    private static final BsonTypeClassMap DEFAULT_BSON_TYPE_CLASS_MAP = new BsonTypeClassMap();

    public MapCodec() {
        this(DEFAULT_REGISTRY);
    }

    public MapCodec(CodecRegistry codecRegistry) {
        this(codecRegistry, DEFAULT_BSON_TYPE_CLASS_MAP);
    }

    public MapCodec(CodecRegistry codecRegistry, BsonTypeClassMap bsonTypeClassMap) {
        this(codecRegistry, bsonTypeClassMap, null);
    }

    public MapCodec(CodecRegistry codecRegistry, BsonTypeClassMap bsonTypeClassMap, Transformer transformer) {
        this(codecRegistry, new BsonTypeCodecMap((BsonTypeClassMap) Assertions.notNull("bsonTypeClassMap", bsonTypeClassMap), codecRegistry), transformer, UuidRepresentation.JAVA_LEGACY);
    }

    private MapCodec(CodecRegistry codecRegistry, BsonTypeCodecMap bsonTypeCodecMap, Transformer transformer, UuidRepresentation uuidRepresentation) {
        this.registry = (CodecRegistry) Assertions.notNull("registry", codecRegistry);
        this.bsonTypeCodecMap = bsonTypeCodecMap;
        this.valueTransformer = transformer == null ? new Transformer() { // from class: org.bson.codecs.MapCodec.1
            @Override // org.bson.Transformer
            public Object transform(Object obj) {
                return obj;
            }
        } : transformer;
        this.uuidRepresentation = uuidRepresentation;
    }

    private Object readValue(BsonReader bsonReader, DecoderContext decoderContext) {
        BsonType currentBsonType = bsonReader.getCurrentBsonType();
        if (currentBsonType == BsonType.NULL) {
            bsonReader.readNull();
            return null;
        } else if (currentBsonType == BsonType.ARRAY) {
            return decoderContext.decodeWithChildContext(this.registry.get(List.class), bsonReader);
        } else {
            if (currentBsonType != BsonType.BINARY || bsonReader.peekBinarySize() != 16) {
                return this.valueTransformer.transform(this.bsonTypeCodecMap.get(currentBsonType).decode(bsonReader, decoderContext));
            }
            Codec<?> codec = this.bsonTypeCodecMap.get(currentBsonType);
            byte peekBinarySubType = bsonReader.peekBinarySubType();
            if (peekBinarySubType != 3) {
                if (peekBinarySubType == 4 && (this.uuidRepresentation == UuidRepresentation.JAVA_LEGACY || this.uuidRepresentation == UuidRepresentation.STANDARD)) {
                    codec = this.registry.get(UUID.class);
                }
            } else if (this.uuidRepresentation == UuidRepresentation.JAVA_LEGACY || this.uuidRepresentation == UuidRepresentation.C_SHARP_LEGACY || this.uuidRepresentation == UuidRepresentation.PYTHON_LEGACY) {
                codec = this.registry.get(UUID.class);
            }
            return decoderContext.decodeWithChildContext(codec, bsonReader);
        }
    }

    private void writeValue(BsonWriter bsonWriter, EncoderContext encoderContext, Object obj) {
        if (obj == null) {
            bsonWriter.writeNull();
        } else {
            encoderContext.encodeWithChildContext(this.registry.get(obj.getClass()), bsonWriter, obj);
        }
    }

    @Override // org.bson.codecs.Decoder
    public Map<String, Object> decode(BsonReader bsonReader, DecoderContext decoderContext) {
        HashMap hashMap = new HashMap();
        bsonReader.readStartDocument();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            hashMap.put(bsonReader.readName(), readValue(bsonReader, decoderContext));
        }
        bsonReader.readEndDocument();
        return hashMap;
    }

    public void encode(BsonWriter bsonWriter, Map<String, Object> map, EncoderContext encoderContext) {
        bsonWriter.writeStartDocument();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            bsonWriter.writeName(entry.getKey());
            writeValue(bsonWriter, encoderContext, entry.getValue());
        }
        bsonWriter.writeEndDocument();
    }

    @Override // org.bson.codecs.Encoder
    public Class<Map<String, Object>> getEncoderClass() {
        return Map.class;
    }

    @Override // org.bson.codecs.OverridableUuidRepresentationCodec
    public Codec<Map<String, Object>> withUuidRepresentation(UuidRepresentation uuidRepresentation) {
        return new MapCodec(this.registry, this.bsonTypeCodecMap, this.valueTransformer, uuidRepresentation);
    }
}

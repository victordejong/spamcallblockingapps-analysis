package org.bson.codecs;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.bson.BsonDocument;
import org.bson.BsonDocumentWriter;
import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.BsonValue;
import org.bson.BsonWriter;
import org.bson.Document;
import org.bson.Transformer;
import org.bson.UuidRepresentation;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/DocumentCodec.class */
public class DocumentCodec implements CollectibleCodec<Document>, OverridableUuidRepresentationCodec<Document> {
    private static final String ID_FIELD_NAME = "_id";
    private final BsonTypeCodecMap bsonTypeCodecMap;
    private final IdGenerator idGenerator;
    private final CodecRegistry registry;
    private final UuidRepresentation uuidRepresentation;
    private final Transformer valueTransformer;
    private static final CodecRegistry DEFAULT_REGISTRY = CodecRegistries.fromProviders(Arrays.asList(new ValueCodecProvider(), new BsonValueCodecProvider(), new DocumentCodecProvider()));
    private static final BsonTypeClassMap DEFAULT_BSON_TYPE_CLASS_MAP = new BsonTypeClassMap();

    public DocumentCodec() {
        this(DEFAULT_REGISTRY);
    }

    public DocumentCodec(CodecRegistry codecRegistry) {
        this(codecRegistry, DEFAULT_BSON_TYPE_CLASS_MAP);
    }

    public DocumentCodec(CodecRegistry codecRegistry, BsonTypeClassMap bsonTypeClassMap) {
        this(codecRegistry, bsonTypeClassMap, null);
    }

    public DocumentCodec(CodecRegistry codecRegistry, BsonTypeClassMap bsonTypeClassMap, Transformer transformer) {
        this(codecRegistry, new BsonTypeCodecMap((BsonTypeClassMap) Assertions.notNull("bsonTypeClassMap", bsonTypeClassMap), codecRegistry), new ObjectIdGenerator(), transformer, UuidRepresentation.JAVA_LEGACY);
    }

    private DocumentCodec(CodecRegistry codecRegistry, BsonTypeCodecMap bsonTypeCodecMap, IdGenerator idGenerator, Transformer transformer, UuidRepresentation uuidRepresentation) {
        this.registry = (CodecRegistry) Assertions.notNull("registry", codecRegistry);
        this.bsonTypeCodecMap = bsonTypeCodecMap;
        this.idGenerator = idGenerator;
        this.valueTransformer = transformer == null ? new Transformer() { // from class: org.bson.codecs.DocumentCodec.1
            @Override // org.bson.Transformer
            public Object transform(Object obj) {
                return obj;
            }
        } : transformer;
        this.uuidRepresentation = uuidRepresentation;
    }

    private void beforeFields(BsonWriter bsonWriter, EncoderContext encoderContext, Map<String, Object> map) {
        if (!encoderContext.isEncodingCollectibleDocument() || !map.containsKey("_id")) {
            return;
        }
        bsonWriter.writeName("_id");
        writeValue(bsonWriter, encoderContext, map.get("_id"));
    }

    private List<Object> readList(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readStartArray();
        ArrayList arrayList = new ArrayList();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            arrayList.add(readValue(bsonReader, decoderContext));
        }
        bsonReader.readEndArray();
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0078, code lost:
        if (r5.uuidRepresentation == org.bson.UuidRepresentation.STANDARD) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00aa, code lost:
        if (r5.uuidRepresentation == org.bson.UuidRepresentation.PYTHON_LEGACY) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object readValue(org.bson.BsonReader r6, org.bson.codecs.DecoderContext r7) {
        /*
            r5 = this;
            r0 = r6
            org.bson.BsonType r0 = r0.getCurrentBsonType()
            r8 = r0
            r0 = r8
            org.bson.BsonType r1 = org.bson.BsonType.NULL
            if (r0 != r1) goto L16
            r0 = r6
            r0.readNull()
            r0 = 0
            return r0
        L16:
            r0 = r8
            org.bson.BsonType r1 = org.bson.BsonType.ARRAY
            if (r0 != r1) goto L24
            r0 = r5
            r1 = r6
            r2 = r7
            java.util.List r0 = r0.readList(r1, r2)
            return r0
        L24:
            r0 = r5
            org.bson.codecs.BsonTypeCodecMap r0 = r0.bsonTypeCodecMap
            r1 = r8
            org.bson.codecs.Codec r0 = r0.get(r1)
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            org.bson.BsonType r1 = org.bson.BsonType.BINARY
            if (r0 != r1) goto Lba
            r0 = r9
            r10 = r0
            r0 = r6
            int r0 = r0.peekBinarySize()
            r1 = 16
            if (r0 != r1) goto Lba
            r0 = r6
            byte r0 = r0.peekBinarySubType()
            r11 = r0
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L8b
            r0 = r11
            r1 = 4
            if (r0 == r1) goto L63
            r0 = r9
            r10 = r0
            goto Lba
        L63:
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.JAVA_LEGACY
            if (r0 == r1) goto L7b
            r0 = r9
            r10 = r0
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.STANDARD
            if (r0 != r1) goto Lba
        L7b:
            r0 = r5
            org.bson.codecs.configuration.CodecRegistry r0 = r0.registry
            java.lang.Class<java.util.UUID> r1 = java.util.UUID.class
            org.bson.codecs.Codec r0 = r0.get(r1)
            r10 = r0
            goto Lba
        L8b:
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.JAVA_LEGACY
            if (r0 == r1) goto Lad
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.C_SHARP_LEGACY
            if (r0 == r1) goto Lad
            r0 = r9
            r10 = r0
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.PYTHON_LEGACY
            if (r0 != r1) goto Lba
        Lad:
            r0 = r5
            org.bson.codecs.configuration.CodecRegistry r0 = r0.registry
            java.lang.Class<java.util.UUID> r1 = java.util.UUID.class
            org.bson.codecs.Codec r0 = r0.get(r1)
            r10 = r0
        Lba:
            r0 = r5
            org.bson.Transformer r0 = r0.valueTransformer
            r1 = r10
            r2 = r6
            r3 = r7
            java.lang.Object r1 = r1.decode(r2, r3)
            java.lang.Object r0 = r0.transform(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bson.codecs.DocumentCodec.readValue(org.bson.BsonReader, org.bson.codecs.DecoderContext):java.lang.Object");
    }

    private boolean skipField(EncoderContext encoderContext, String str) {
        return encoderContext.isEncodingCollectibleDocument() && str.equals("_id");
    }

    private void writeIterable(BsonWriter bsonWriter, Iterable<Object> iterable, EncoderContext encoderContext) {
        bsonWriter.writeStartArray();
        for (Object obj : iterable) {
            writeValue(bsonWriter, encoderContext, obj);
        }
        bsonWriter.writeEndArray();
    }

    private void writeMap(BsonWriter bsonWriter, Map<String, Object> map, EncoderContext encoderContext) {
        bsonWriter.writeStartDocument();
        beforeFields(bsonWriter, encoderContext, map);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!skipField(encoderContext, entry.getKey())) {
                bsonWriter.writeName(entry.getKey());
                writeValue(bsonWriter, encoderContext, entry.getValue());
            }
        }
        bsonWriter.writeEndDocument();
    }

    private void writeValue(BsonWriter bsonWriter, EncoderContext encoderContext, Object obj) {
        if (obj == null) {
            bsonWriter.writeNull();
        } else if (obj instanceof Iterable) {
            writeIterable(bsonWriter, (Iterable) obj, encoderContext.getChildContext());
        } else if (obj instanceof Map) {
            writeMap(bsonWriter, (Map) obj, encoderContext.getChildContext());
        } else {
            encoderContext.encodeWithChildContext(this.registry.get(obj.getClass()), bsonWriter, obj);
        }
    }

    @Override // org.bson.codecs.Decoder
    public Document decode(BsonReader bsonReader, DecoderContext decoderContext) {
        Document document = new Document();
        bsonReader.readStartDocument();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            document.put(bsonReader.readName(), readValue(bsonReader, decoderContext));
        }
        bsonReader.readEndDocument();
        return document;
    }

    public boolean documentHasId(Document document) {
        return document.containsKey("_id");
    }

    public void encode(BsonWriter bsonWriter, Document document, EncoderContext encoderContext) {
        writeMap(bsonWriter, document, encoderContext);
    }

    public Document generateIdIfAbsentFromDocument(Document document) {
        if (!documentHasId(document)) {
            document.put("_id", this.idGenerator.generate());
        }
        return document;
    }

    public BsonValue getDocumentId(Document document) {
        if (documentHasId(document)) {
            Object obj = document.get("_id");
            if (obj instanceof BsonValue) {
                return (BsonValue) obj;
            }
            BsonDocument bsonDocument = new BsonDocument();
            BsonDocumentWriter bsonDocumentWriter = new BsonDocumentWriter(bsonDocument);
            bsonDocumentWriter.writeStartDocument();
            bsonDocumentWriter.writeName("_id");
            writeValue(bsonDocumentWriter, EncoderContext.builder().build(), obj);
            bsonDocumentWriter.writeEndDocument();
            return bsonDocument.get((Object) "_id");
        }
        throw new IllegalStateException("The document does not contain an _id");
    }

    @Override // org.bson.codecs.Encoder
    public Class<Document> getEncoderClass() {
        return Document.class;
    }

    @Override // org.bson.codecs.OverridableUuidRepresentationCodec
    public Codec<Document> withUuidRepresentation(UuidRepresentation uuidRepresentation) {
        return new DocumentCodec(this.registry, this.bsonTypeCodecMap, this.idGenerator, this.valueTransformer, uuidRepresentation);
    }
}

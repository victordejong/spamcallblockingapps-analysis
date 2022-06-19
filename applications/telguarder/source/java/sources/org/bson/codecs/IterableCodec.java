package org.bson.codecs;

import java.util.ArrayList;
import org.bson.BsonReader;
import org.bson.BsonType;
import org.bson.BsonWriter;
import org.bson.Transformer;
import org.bson.UuidRepresentation;
import org.bson.assertions.Assertions;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/IterableCodec.class */
public class IterableCodec implements Codec<Iterable>, OverridableUuidRepresentationCodec<Iterable> {
    private final BsonTypeCodecMap bsonTypeCodecMap;
    private final CodecRegistry registry;
    private final UuidRepresentation uuidRepresentation;
    private final Transformer valueTransformer;

    public IterableCodec(CodecRegistry codecRegistry, BsonTypeClassMap bsonTypeClassMap) {
        this(codecRegistry, bsonTypeClassMap, null);
    }

    public IterableCodec(CodecRegistry codecRegistry, BsonTypeClassMap bsonTypeClassMap, Transformer transformer) {
        this(codecRegistry, new BsonTypeCodecMap((BsonTypeClassMap) Assertions.notNull("bsonTypeClassMap", bsonTypeClassMap), codecRegistry), transformer, UuidRepresentation.JAVA_LEGACY);
    }

    private IterableCodec(CodecRegistry codecRegistry, BsonTypeCodecMap bsonTypeCodecMap, Transformer transformer, UuidRepresentation uuidRepresentation) {
        this.registry = (CodecRegistry) Assertions.notNull("registry", codecRegistry);
        this.bsonTypeCodecMap = bsonTypeCodecMap;
        this.valueTransformer = transformer == null ? new Transformer() { // from class: org.bson.codecs.IterableCodec.1
            @Override // org.bson.Transformer
            public Object transform(Object obj) {
                return obj;
            }
        } : transformer;
        this.uuidRepresentation = uuidRepresentation;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
        if (r5.uuidRepresentation == org.bson.UuidRepresentation.STANDARD) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009c, code lost:
        if (r5.uuidRepresentation == org.bson.UuidRepresentation.PYTHON_LEGACY) goto L26;
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
            r0 = r5
            org.bson.codecs.BsonTypeCodecMap r0 = r0.bsonTypeCodecMap
            r1 = r8
            org.bson.codecs.Codec r0 = r0.get(r1)
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            org.bson.BsonType r1 = org.bson.BsonType.BINARY
            if (r0 != r1) goto Lac
            r0 = r9
            r10 = r0
            r0 = r6
            int r0 = r0.peekBinarySize()
            r1 = 16
            if (r0 != r1) goto Lac
            r0 = r6
            byte r0 = r0.peekBinarySubType()
            r11 = r0
            r0 = r11
            r1 = 3
            if (r0 == r1) goto L7d
            r0 = r11
            r1 = 4
            if (r0 == r1) goto L55
            r0 = r9
            r10 = r0
            goto Lac
        L55:
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.JAVA_LEGACY
            if (r0 == r1) goto L6d
            r0 = r9
            r10 = r0
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.STANDARD
            if (r0 != r1) goto Lac
        L6d:
            r0 = r5
            org.bson.codecs.configuration.CodecRegistry r0 = r0.registry
            java.lang.Class<java.util.UUID> r1 = java.util.UUID.class
            org.bson.codecs.Codec r0 = r0.get(r1)
            r10 = r0
            goto Lac
        L7d:
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.JAVA_LEGACY
            if (r0 == r1) goto L9f
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.C_SHARP_LEGACY
            if (r0 == r1) goto L9f
            r0 = r9
            r10 = r0
            r0 = r5
            org.bson.UuidRepresentation r0 = r0.uuidRepresentation
            org.bson.UuidRepresentation r1 = org.bson.UuidRepresentation.PYTHON_LEGACY
            if (r0 != r1) goto Lac
        L9f:
            r0 = r5
            org.bson.codecs.configuration.CodecRegistry r0 = r0.registry
            java.lang.Class<java.util.UUID> r1 = java.util.UUID.class
            org.bson.codecs.Codec r0 = r0.get(r1)
            r10 = r0
        Lac:
            r0 = r5
            org.bson.Transformer r0 = r0.valueTransformer
            r1 = r10
            r2 = r6
            r3 = r7
            java.lang.Object r1 = r1.decode(r2, r3)
            java.lang.Object r0 = r0.transform(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bson.codecs.IterableCodec.readValue(org.bson.BsonReader, org.bson.codecs.DecoderContext):java.lang.Object");
    }

    private void writeValue(BsonWriter bsonWriter, EncoderContext encoderContext, Object obj) {
        if (obj == null) {
            bsonWriter.writeNull();
        } else {
            encoderContext.encodeWithChildContext(this.registry.get(obj.getClass()), bsonWriter, obj);
        }
    }

    @Override // org.bson.codecs.Decoder
    public Iterable decode(BsonReader bsonReader, DecoderContext decoderContext) {
        bsonReader.readStartArray();
        ArrayList arrayList = new ArrayList();
        while (bsonReader.readBsonType() != BsonType.END_OF_DOCUMENT) {
            arrayList.add(readValue(bsonReader, decoderContext));
        }
        bsonReader.readEndArray();
        return arrayList;
    }

    public void encode(BsonWriter bsonWriter, Iterable iterable, EncoderContext encoderContext) {
        bsonWriter.writeStartArray();
        for (Object obj : iterable) {
            writeValue(bsonWriter, encoderContext, obj);
        }
        bsonWriter.writeEndArray();
    }

    @Override // org.bson.codecs.Encoder
    public Class<Iterable> getEncoderClass() {
        return Iterable.class;
    }

    @Override // org.bson.codecs.OverridableUuidRepresentationCodec
    public Codec<Iterable> withUuidRepresentation(UuidRepresentation uuidRepresentation) {
        return new IterableCodec(this.registry, this.bsonTypeCodecMap, this.valueTransformer, uuidRepresentation);
    }
}

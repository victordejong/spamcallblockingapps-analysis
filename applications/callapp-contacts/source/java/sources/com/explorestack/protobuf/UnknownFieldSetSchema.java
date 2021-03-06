package com.explorestack.protobuf;

import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/UnknownFieldSetSchema.class */
class UnknownFieldSetSchema extends UnknownFieldSchema<UnknownFieldSet, UnknownFieldSet.Builder> {
    private final boolean proto3;

    public UnknownFieldSetSchema(boolean z) {
        this.proto3 = z;
    }

    public void addFixed32(UnknownFieldSet.Builder builder, int i, int i2) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addFixed32(i2).build());
    }

    public void addFixed64(UnknownFieldSet.Builder builder, int i, long j) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addFixed64(j).build());
    }

    public void addGroup(UnknownFieldSet.Builder builder, int i, UnknownFieldSet unknownFieldSet) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addGroup(unknownFieldSet).build());
    }

    public void addLengthDelimited(UnknownFieldSet.Builder builder, int i, ByteString byteString) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addLengthDelimited(byteString).build());
    }

    public void addVarint(UnknownFieldSet.Builder builder, int i, long j) {
        builder.mergeField(i, UnknownFieldSet.Field.newBuilder().addVarint(j).build());
    }

    @Override // com.explorestack.protobuf.UnknownFieldSchema
    public UnknownFieldSet.Builder getBuilderFromMessage(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields.toBuilder();
    }

    @Override // com.explorestack.protobuf.UnknownFieldSchema
    public UnknownFieldSet getFromMessage(Object obj) {
        return ((GeneratedMessageV3) obj).unknownFields;
    }

    public int getSerializedSize(UnknownFieldSet unknownFieldSet) {
        return unknownFieldSet.getSerializedSize();
    }

    public int getSerializedSizeAsMessageSet(UnknownFieldSet unknownFieldSet) {
        return unknownFieldSet.getSerializedSizeAsMessageSet();
    }

    @Override // com.explorestack.protobuf.UnknownFieldSchema
    public void makeImmutable(Object obj) {
    }

    public UnknownFieldSet merge(UnknownFieldSet unknownFieldSet, UnknownFieldSet unknownFieldSet2) {
        return unknownFieldSet.toBuilder().mergeFrom(unknownFieldSet2).build();
    }

    @Override // com.explorestack.protobuf.UnknownFieldSchema
    public UnknownFieldSet.Builder newBuilder() {
        return UnknownFieldSet.newBuilder();
    }

    public void setBuilderToMessage(Object obj, UnknownFieldSet.Builder builder) {
        ((GeneratedMessageV3) obj).unknownFields = builder.build();
    }

    public void setToMessage(Object obj, UnknownFieldSet unknownFieldSet) {
        ((GeneratedMessageV3) obj).unknownFields = unknownFieldSet;
    }

    @Override // com.explorestack.protobuf.UnknownFieldSchema
    public boolean shouldDiscardUnknownFields(Reader reader) {
        return reader.shouldDiscardUnknownFields();
    }

    public UnknownFieldSet toImmutable(UnknownFieldSet.Builder builder) {
        return builder.build();
    }

    public void writeAsMessageSetTo(UnknownFieldSet unknownFieldSet, Writer writer) throws IOException {
        unknownFieldSet.writeAsMessageSetTo(writer);
    }

    public void writeTo(UnknownFieldSet unknownFieldSet, Writer writer) throws IOException {
        unknownFieldSet.writeTo(writer);
    }
}

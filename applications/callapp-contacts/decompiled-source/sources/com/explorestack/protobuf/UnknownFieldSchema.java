package com.explorestack.protobuf;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/UnknownFieldSchema.class */
public abstract class UnknownFieldSchema<T, B> {
    abstract void addFixed32(B b2, int i, int i2);

    abstract void addFixed64(B b2, int i, long j);

    abstract void addGroup(B b2, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void addLengthDelimited(B b2, int i, ByteString byteString);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void addVarint(B b2, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B getBuilderFromMessage(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T getFromMessage(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getSerializedSize(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getSerializedSizeAsMessageSet(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void makeImmutable(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T merge(T t, T t2);

    final void mergeFrom(B b2, Reader reader) throws IOException {
        while (reader.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b2, reader)) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean mergeOneFieldFrom(B b2, Reader reader) throws IOException {
        int tag = reader.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            addVarint(b2, tagFieldNumber, reader.readInt64());
            return true;
        } else if (tagWireType == 1) {
            addFixed64(b2, tagFieldNumber, reader.readFixed64());
            return true;
        } else if (tagWireType == 2) {
            addLengthDelimited(b2, tagFieldNumber, reader.readBytes());
            return true;
        } else if (tagWireType == 3) {
            B newBuilder = newBuilder();
            int makeTag = WireFormat.makeTag(tagFieldNumber, 4);
            mergeFrom(newBuilder, reader);
            if (makeTag == reader.getTag()) {
                addGroup(b2, tagFieldNumber, toImmutable(newBuilder));
                return true;
            }
            throw InvalidProtocolBufferException.invalidEndTag();
        } else if (tagWireType == 4) {
            return false;
        } else {
            if (tagWireType == 5) {
                addFixed32(b2, tagFieldNumber, reader.readFixed32());
                return true;
            }
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B newBuilder();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setBuilderToMessage(Object obj, B b2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void setToMessage(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean shouldDiscardUnknownFields(Reader reader);

    abstract T toImmutable(B b2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeAsMessageSetTo(T t, Writer writer) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void writeTo(T t, Writer writer) throws IOException;
}

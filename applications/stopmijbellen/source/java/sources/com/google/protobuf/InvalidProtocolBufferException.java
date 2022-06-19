package com.google.protobuf;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/protobuf/InvalidProtocolBufferException.class */
public class InvalidProtocolBufferException extends IOException {

    /* loaded from: classes-dex2jar.jar:com/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException.class */
    public static class InvalidWireTypeException extends InvalidProtocolBufferException {
        public InvalidWireTypeException(String str) {
            super(str);
        }
    }

    public InvalidProtocolBufferException(String str) {
        super(str);
    }

    /* renamed from: a */
    public static InvalidWireTypeException m4398a() {
        return new InvalidWireTypeException("Protocol message tag had invalid wire type.");
    }

    /* renamed from: b */
    public static InvalidProtocolBufferException m4397b() {
        return new InvalidProtocolBufferException("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static InvalidProtocolBufferException m4396c() {
        return new InvalidProtocolBufferException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}

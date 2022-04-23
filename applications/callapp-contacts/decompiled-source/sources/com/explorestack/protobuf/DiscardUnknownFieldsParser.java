package com.explorestack.protobuf;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/DiscardUnknownFieldsParser.class */
public final class DiscardUnknownFieldsParser {
    private DiscardUnknownFieldsParser() {
    }

    public static final <T extends Message> Parser<T> wrap(final Parser<T> parser) {
        return new AbstractParser<T>() { // from class: com.explorestack.protobuf.DiscardUnknownFieldsParser.1
            /* JADX WARN: Incorrect return type in method signature: (Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)TT; */
            @Override // com.explorestack.protobuf.Parser
            public final Message parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                try {
                    codedInputStream.discardUnknownFields();
                    return (Message) Parser.this.parsePartialFrom(codedInputStream, extensionRegistryLite);
                } finally {
                    codedInputStream.unsetDiscardUnknownFields();
                }
            }
        };
    }
}

package com.truecaller.api.services.searchwarnings.p141v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.ListAllSearchWarningsRequest */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsRequest.class */
public final class ListAllSearchWarningsRequest extends GeneratedMessageLite<ListAllSearchWarningsRequest, C3382b> implements Object {
    private static final ListAllSearchWarningsRequest DEFAULT_INSTANCE;
    private static volatile Parser<ListAllSearchWarningsRequest> PARSER;

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.ListAllSearchWarningsRequest$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsRequest$b.class */
    public static final class C3382b extends GeneratedMessageLite.Builder<ListAllSearchWarningsRequest, C3382b> implements Object {
        public C3382b() {
            super(ListAllSearchWarningsRequest.DEFAULT_INSTANCE);
        }

        public C3382b(C3381a c3381a) {
            super(ListAllSearchWarningsRequest.DEFAULT_INSTANCE);
        }
    }

    static {
        ListAllSearchWarningsRequest listAllSearchWarningsRequest = new ListAllSearchWarningsRequest();
        DEFAULT_INSTANCE = listAllSearchWarningsRequest;
        GeneratedMessageLite.registerDefaultInstance(ListAllSearchWarningsRequest.class, listAllSearchWarningsRequest);
    }

    private ListAllSearchWarningsRequest() {
    }

    public static ListAllSearchWarningsRequest getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3382b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3382b newBuilder(ListAllSearchWarningsRequest listAllSearchWarningsRequest) {
        return DEFAULT_INSTANCE.createBuilder(listAllSearchWarningsRequest);
    }

    public static ListAllSearchWarningsRequest parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListAllSearchWarningsRequest parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsRequest parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static ListAllSearchWarningsRequest parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static ListAllSearchWarningsRequest parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static ListAllSearchWarningsRequest parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsRequest parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListAllSearchWarningsRequest parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsRequest parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static ListAllSearchWarningsRequest parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static ListAllSearchWarningsRequest parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ListAllSearchWarningsRequest parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<ListAllSearchWarningsRequest> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new ListAllSearchWarningsRequest();
            case 4:
                return new C3382b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (ListAllSearchWarningsRequest.class) {
                        try {
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                            defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                            if (defaultInstanceBasedParser3 == null) {
                                defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return defaultInstanceBasedParser2;
            default:
                throw new UnsupportedOperationException();
        }
    }
}

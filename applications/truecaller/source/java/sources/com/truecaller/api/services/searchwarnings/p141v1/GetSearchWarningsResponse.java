package com.truecaller.api.services.searchwarnings.p141v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.AbstractC20482b;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSearchWarningsResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSearchWarningsResponse.class */
public final class GetSearchWarningsResponse extends GeneratedMessageLite<GetSearchWarningsResponse, C3374b> implements Object {
    private static final GetSearchWarningsResponse DEFAULT_INSTANCE;
    private static volatile Parser<GetSearchWarningsResponse> PARSER;
    public static final int RESULT_FIELD_NUMBER = 1;
    private Internal.ProtobufList<GetSearchWarningsResult> result_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.GetSearchWarningsResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/GetSearchWarningsResponse$b.class */
    public static final class C3374b extends GeneratedMessageLite.Builder<GetSearchWarningsResponse, C3374b> implements Object {
        public C3374b() {
            super(GetSearchWarningsResponse.DEFAULT_INSTANCE);
        }

        public C3374b(C3373a c3373a) {
            super(GetSearchWarningsResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        GetSearchWarningsResponse getSearchWarningsResponse = new GetSearchWarningsResponse();
        DEFAULT_INSTANCE = getSearchWarningsResponse;
        GeneratedMessageLite.registerDefaultInstance(GetSearchWarningsResponse.class, getSearchWarningsResponse);
    }

    private GetSearchWarningsResponse() {
    }

    public void addAllResult(Iterable<? extends GetSearchWarningsResult> iterable) {
        ensureResultIsMutable();
        AbstractMessageLite.addAll(iterable, this.result_);
    }

    public void addResult(int i, GetSearchWarningsResult getSearchWarningsResult) {
        getSearchWarningsResult.getClass();
        ensureResultIsMutable();
        this.result_.add(i, getSearchWarningsResult);
    }

    public void addResult(GetSearchWarningsResult getSearchWarningsResult) {
        getSearchWarningsResult.getClass();
        ensureResultIsMutable();
        this.result_.add(getSearchWarningsResult);
    }

    public void clearResult() {
        this.result_ = GeneratedMessageLite.emptyProtobufList();
    }

    private void ensureResultIsMutable() {
        Internal.ProtobufList<GetSearchWarningsResult> protobufList = this.result_;
        if (!protobufList.isModifiable()) {
            this.result_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static GetSearchWarningsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3374b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3374b newBuilder(GetSearchWarningsResponse getSearchWarningsResponse) {
        return DEFAULT_INSTANCE.createBuilder(getSearchWarningsResponse);
    }

    public static GetSearchWarningsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSearchWarningsResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GetSearchWarningsResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GetSearchWarningsResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GetSearchWarningsResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GetSearchWarningsResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GetSearchWarningsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GetSearchWarningsResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GetSearchWarningsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GetSearchWarningsResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GetSearchWarningsResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeResult(int i) {
        ensureResultIsMutable();
        this.result_.remove(i);
    }

    public void setResult(int i, GetSearchWarningsResult getSearchWarningsResult) {
        getSearchWarningsResult.getClass();
        ensureResultIsMutable();
        this.result_.set(i, getSearchWarningsResult);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"result_", GetSearchWarningsResult.class});
            case 3:
                return new GetSearchWarningsResponse();
            case 4:
                return new C3374b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GetSearchWarningsResponse.class) {
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

    public GetSearchWarningsResult getResult(int i) {
        return this.result_.get(i);
    }

    public int getResultCount() {
        return this.result_.size();
    }

    public List<GetSearchWarningsResult> getResultList() {
        return this.result_;
    }

    public AbstractC20482b getResultOrBuilder(int i) {
        return this.result_.get(i);
    }

    public List<? extends AbstractC20482b> getResultOrBuilderList() {
        return this.result_;
    }
}

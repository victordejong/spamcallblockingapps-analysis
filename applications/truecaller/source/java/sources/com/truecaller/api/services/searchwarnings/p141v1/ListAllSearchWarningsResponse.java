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
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.AbstractC20483c;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.ListAllSearchWarningsResponse */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResponse.class */
public final class ListAllSearchWarningsResponse extends GeneratedMessageLite<ListAllSearchWarningsResponse, C3384b> implements Object {
    private static final ListAllSearchWarningsResponse DEFAULT_INSTANCE;
    private static volatile Parser<ListAllSearchWarningsResponse> PARSER;
    public static final int RESULT_FIELD_NUMBER = 1;
    private Internal.ProtobufList<ListAllSearchWarningsResult> result_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.ListAllSearchWarningsResponse$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResponse$b.class */
    public static final class C3384b extends GeneratedMessageLite.Builder<ListAllSearchWarningsResponse, C3384b> implements Object {
        public C3384b() {
            super(ListAllSearchWarningsResponse.DEFAULT_INSTANCE);
        }

        public C3384b(C3383a c3383a) {
            super(ListAllSearchWarningsResponse.DEFAULT_INSTANCE);
        }
    }

    static {
        ListAllSearchWarningsResponse listAllSearchWarningsResponse = new ListAllSearchWarningsResponse();
        DEFAULT_INSTANCE = listAllSearchWarningsResponse;
        GeneratedMessageLite.registerDefaultInstance(ListAllSearchWarningsResponse.class, listAllSearchWarningsResponse);
    }

    private ListAllSearchWarningsResponse() {
    }

    public void addAllResult(Iterable<? extends ListAllSearchWarningsResult> iterable) {
        ensureResultIsMutable();
        AbstractMessageLite.addAll(iterable, this.result_);
    }

    public void addResult(int i, ListAllSearchWarningsResult listAllSearchWarningsResult) {
        listAllSearchWarningsResult.getClass();
        ensureResultIsMutable();
        this.result_.add(i, listAllSearchWarningsResult);
    }

    public void addResult(ListAllSearchWarningsResult listAllSearchWarningsResult) {
        listAllSearchWarningsResult.getClass();
        ensureResultIsMutable();
        this.result_.add(listAllSearchWarningsResult);
    }

    public void clearResult() {
        this.result_ = GeneratedMessageLite.emptyProtobufList();
    }

    private void ensureResultIsMutable() {
        Internal.ProtobufList<ListAllSearchWarningsResult> protobufList = this.result_;
        if (!protobufList.isModifiable()) {
            this.result_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static ListAllSearchWarningsResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3384b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3384b newBuilder(ListAllSearchWarningsResponse listAllSearchWarningsResponse) {
        return DEFAULT_INSTANCE.createBuilder(listAllSearchWarningsResponse);
    }

    public static ListAllSearchWarningsResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListAllSearchWarningsResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static ListAllSearchWarningsResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static ListAllSearchWarningsResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResponse parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListAllSearchWarningsResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static ListAllSearchWarningsResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ListAllSearchWarningsResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<ListAllSearchWarningsResponse> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeResult(int i) {
        ensureResultIsMutable();
        this.result_.remove(i);
    }

    public void setResult(int i, ListAllSearchWarningsResult listAllSearchWarningsResult) {
        listAllSearchWarningsResult.getClass();
        ensureResultIsMutable();
        this.result_.set(i, listAllSearchWarningsResult);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"result_", ListAllSearchWarningsResult.class});
            case 3:
                return new ListAllSearchWarningsResponse();
            case 4:
                return new C3384b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (ListAllSearchWarningsResponse.class) {
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

    public ListAllSearchWarningsResult getResult(int i) {
        return this.result_.get(i);
    }

    public int getResultCount() {
        return this.result_.size();
    }

    public List<ListAllSearchWarningsResult> getResultList() {
        return this.result_;
    }

    public AbstractC20483c getResultOrBuilder(int i) {
        return this.result_.get(i);
    }

    public List<? extends AbstractC20483c> getResultOrBuilderList() {
        return this.result_;
    }
}

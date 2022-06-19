package com.truecaller.api.services.searchwarnings.p141v1;

import com.google.protobuf.AbstractMessageLite;
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
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.AbstractC20483c;
/* renamed from: com.truecaller.api.services.searchwarnings.v1.ListAllSearchWarningsResult */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult.class */
public final class ListAllSearchWarningsResult extends GeneratedMessageLite<ListAllSearchWarningsResult, C3386b> implements AbstractC20483c {
    public static final int BACKGROUNDCOLOR_FIELD_NUMBER = 4;
    private static final ListAllSearchWarningsResult DEFAULT_INSTANCE;
    public static final int FOREGROUNDCOLOR_FIELD_NUMBER = 5;
    public static final int HEADER_FIELD_NUMBER = 2;
    public static final int ICONURL_FIELD_NUMBER = 6;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int MESSAGE_FIELD_NUMBER = 3;
    private static volatile Parser<ListAllSearchWarningsResult> PARSER;
    private String id_ = "";
    private String header_ = "";
    private String message_ = "";
    private String backgroundColor_ = "";
    private String foregroundColor_ = "";
    private String iconUrl_ = "";

    /* renamed from: com.truecaller.api.services.searchwarnings.v1.ListAllSearchWarningsResult$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult$b.class */
    public static final class C3386b extends GeneratedMessageLite.Builder<ListAllSearchWarningsResult, C3386b> implements AbstractC20483c {
        public C3386b() {
            super(ListAllSearchWarningsResult.DEFAULT_INSTANCE);
        }

        public C3386b(C3385a c3385a) {
            super(ListAllSearchWarningsResult.DEFAULT_INSTANCE);
        }
    }

    static {
        ListAllSearchWarningsResult listAllSearchWarningsResult = new ListAllSearchWarningsResult();
        DEFAULT_INSTANCE = listAllSearchWarningsResult;
        GeneratedMessageLite.registerDefaultInstance(ListAllSearchWarningsResult.class, listAllSearchWarningsResult);
    }

    private ListAllSearchWarningsResult() {
    }

    public void clearBackgroundColor() {
        this.backgroundColor_ = getDefaultInstance().getBackgroundColor();
    }

    public void clearForegroundColor() {
        this.foregroundColor_ = getDefaultInstance().getForegroundColor();
    }

    public void clearHeader() {
        this.header_ = getDefaultInstance().getHeader();
    }

    public void clearIconUrl() {
        this.iconUrl_ = getDefaultInstance().getIconUrl();
    }

    public void clearId() {
        this.id_ = getDefaultInstance().getId();
    }

    public void clearMessage() {
        this.message_ = getDefaultInstance().getMessage();
    }

    public static ListAllSearchWarningsResult getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3386b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3386b newBuilder(ListAllSearchWarningsResult listAllSearchWarningsResult) {
        return DEFAULT_INSTANCE.createBuilder(listAllSearchWarningsResult);
    }

    public static ListAllSearchWarningsResult parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListAllSearchWarningsResult parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResult parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static ListAllSearchWarningsResult parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResult parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static ListAllSearchWarningsResult parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResult parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ListAllSearchWarningsResult parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResult parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static ListAllSearchWarningsResult parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static ListAllSearchWarningsResult parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ListAllSearchWarningsResult parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<ListAllSearchWarningsResult> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setBackgroundColor(String str) {
        str.getClass();
        this.backgroundColor_ = str;
    }

    public void setBackgroundColorBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.backgroundColor_ = byteString.toStringUtf8();
    }

    public void setForegroundColor(String str) {
        str.getClass();
        this.foregroundColor_ = str;
    }

    public void setForegroundColorBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.foregroundColor_ = byteString.toStringUtf8();
    }

    public void setHeader(String str) {
        str.getClass();
        this.header_ = str;
    }

    public void setHeaderBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.header_ = byteString.toStringUtf8();
    }

    public void setIconUrl(String str) {
        str.getClass();
        this.iconUrl_ = str;
    }

    public void setIconUrlBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.iconUrl_ = byteString.toStringUtf8();
    }

    public void setId(String str) {
        str.getClass();
        this.id_ = str;
    }

    public void setIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.id_ = byteString.toStringUtf8();
    }

    public void setMessage(String str) {
        str.getClass();
        this.message_ = str;
    }

    public void setMessageBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.message_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0006����\u0001\u0006\u0006������\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ", new Object[]{"id_", "header_", "message_", "backgroundColor_", "foregroundColor_", "iconUrl_"});
            case 3:
                return new ListAllSearchWarningsResult();
            case 4:
                return new C3386b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (ListAllSearchWarningsResult.class) {
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

    public String getBackgroundColor() {
        return this.backgroundColor_;
    }

    public ByteString getBackgroundColorBytes() {
        return ByteString.copyFromUtf8(this.backgroundColor_);
    }

    public String getForegroundColor() {
        return this.foregroundColor_;
    }

    public ByteString getForegroundColorBytes() {
        return ByteString.copyFromUtf8(this.foregroundColor_);
    }

    public String getHeader() {
        return this.header_;
    }

    public ByteString getHeaderBytes() {
        return ByteString.copyFromUtf8(this.header_);
    }

    public String getIconUrl() {
        return this.iconUrl_;
    }

    public ByteString getIconUrlBytes() {
        return ByteString.copyFromUtf8(this.iconUrl_);
    }

    public String getId() {
        return this.id_;
    }

    public ByteString getIdBytes() {
        return ByteString.copyFromUtf8(this.id_);
    }

    public String getMessage() {
        return this.message_;
    }

    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.message_);
    }
}

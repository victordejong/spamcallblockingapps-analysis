package com.truecaller.api.services.callerid.p135v1.model;

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
/* renamed from: com.truecaller.api.services.callerid.v1.model.SignatureMetadata */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/SignatureMetadata.class */
public final class SignatureMetadata extends GeneratedMessageLite<SignatureMetadata, C2930b> implements Object {
    public static final int AUTHORITY_FIELD_NUMBER = 1;
    private static final SignatureMetadata DEFAULT_INSTANCE;
    public static final int EXPIREDATE_FIELD_NUMBER = 3;
    public static final int ISSUEDATE_FIELD_NUMBER = 4;
    private static volatile Parser<SignatureMetadata> PARSER;
    public static final int VERSION_FIELD_NUMBER = 2;
    private String authority_ = "";
    private int expireDate_;
    private int issueDate_;
    private int version_;

    /* renamed from: com.truecaller.api.services.callerid.v1.model.SignatureMetadata$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/SignatureMetadata$b.class */
    public static final class C2930b extends GeneratedMessageLite.Builder<SignatureMetadata, C2930b> implements Object {
        public C2930b() {
            super(SignatureMetadata.DEFAULT_INSTANCE);
        }

        public C2930b(C2929a c2929a) {
            super(SignatureMetadata.DEFAULT_INSTANCE);
        }
    }

    static {
        SignatureMetadata signatureMetadata = new SignatureMetadata();
        DEFAULT_INSTANCE = signatureMetadata;
        GeneratedMessageLite.registerDefaultInstance(SignatureMetadata.class, signatureMetadata);
    }

    private SignatureMetadata() {
    }

    public void clearAuthority() {
        this.authority_ = getDefaultInstance().getAuthority();
    }

    public void clearExpireDate() {
        this.expireDate_ = 0;
    }

    public void clearIssueDate() {
        this.issueDate_ = 0;
    }

    public void clearVersion() {
        this.version_ = 0;
    }

    public static SignatureMetadata getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C2930b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2930b newBuilder(SignatureMetadata signatureMetadata) {
        return DEFAULT_INSTANCE.createBuilder(signatureMetadata);
    }

    public static SignatureMetadata parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SignatureMetadata parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SignatureMetadata parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SignatureMetadata parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SignatureMetadata parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SignatureMetadata parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SignatureMetadata parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SignatureMetadata parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SignatureMetadata parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SignatureMetadata parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SignatureMetadata parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SignatureMetadata parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SignatureMetadata> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setAuthority(String str) {
        str.getClass();
        this.authority_ = str;
    }

    public void setAuthorityBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.authority_ = byteString.toStringUtf8();
    }

    public void setExpireDate(int i) {
        this.expireDate_ = i;
    }

    public void setIssueDate(int i) {
        this.issueDate_ = i;
    }

    public void setVersion(int i) {
        this.version_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\u0004\u0003\u0004\u0004\u0004", new Object[]{"authority_", "version_", "expireDate_", "issueDate_"});
            case 3:
                return new SignatureMetadata();
            case 4:
                return new C2930b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SignatureMetadata.class) {
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

    public String getAuthority() {
        return this.authority_;
    }

    public ByteString getAuthorityBytes() {
        return ByteString.copyFromUtf8(this.authority_);
    }

    public int getExpireDate() {
        return this.expireDate_;
    }

    public int getIssueDate() {
        return this.issueDate_;
    }

    public int getVersion() {
        return this.version_;
    }
}

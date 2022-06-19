package com.truecaller.api.services.callerid.p135v1.model;

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
/* renamed from: com.truecaller.api.services.callerid.v1.model.SignedBusinessCard */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/SignedBusinessCard.class */
public final class SignedBusinessCard extends GeneratedMessageLite<SignedBusinessCard, C2932b> implements Object {
    public static final int CARD_FIELD_NUMBER = 2;
    private static final SignedBusinessCard DEFAULT_INSTANCE;
    public static final int METADATA_FIELD_NUMBER = 1;
    private static volatile Parser<SignedBusinessCard> PARSER;
    public static final int SIGNATURE_FIELD_NUMBER = 3;
    private BusinessCard card_;
    private SignatureMetadata metadata_;
    private ByteString signature_ = ByteString.EMPTY;

    /* renamed from: com.truecaller.api.services.callerid.v1.model.SignedBusinessCard$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/callerid/v1/model/SignedBusinessCard$b.class */
    public static final class C2932b extends GeneratedMessageLite.Builder<SignedBusinessCard, C2932b> implements Object {
        public C2932b() {
            super(SignedBusinessCard.DEFAULT_INSTANCE);
        }

        public C2932b(C2931a c2931a) {
            super(SignedBusinessCard.DEFAULT_INSTANCE);
        }
    }

    static {
        SignedBusinessCard signedBusinessCard = new SignedBusinessCard();
        DEFAULT_INSTANCE = signedBusinessCard;
        GeneratedMessageLite.registerDefaultInstance(SignedBusinessCard.class, signedBusinessCard);
    }

    private SignedBusinessCard() {
    }

    public void clearCard() {
        this.card_ = null;
    }

    public void clearMetadata() {
        this.metadata_ = null;
    }

    public void clearSignature() {
        this.signature_ = getDefaultInstance().getSignature();
    }

    public static SignedBusinessCard getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeCard(BusinessCard businessCard) {
        businessCard.getClass();
        BusinessCard businessCard2 = this.card_;
        if (businessCard2 == null || businessCard2 == BusinessCard.getDefaultInstance()) {
            this.card_ = businessCard;
        } else {
            this.card_ = BusinessCard.newBuilder(this.card_).mergeFrom(businessCard).buildPartial();
        }
    }

    public void mergeMetadata(SignatureMetadata signatureMetadata) {
        signatureMetadata.getClass();
        SignatureMetadata signatureMetadata2 = this.metadata_;
        if (signatureMetadata2 == null || signatureMetadata2 == SignatureMetadata.getDefaultInstance()) {
            this.metadata_ = signatureMetadata;
        } else {
            this.metadata_ = SignatureMetadata.newBuilder(this.metadata_).mergeFrom(signatureMetadata).buildPartial();
        }
    }

    public static C2932b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C2932b newBuilder(SignedBusinessCard signedBusinessCard) {
        return DEFAULT_INSTANCE.createBuilder(signedBusinessCard);
    }

    public static SignedBusinessCard parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SignedBusinessCard parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SignedBusinessCard parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static SignedBusinessCard parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static SignedBusinessCard parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static SignedBusinessCard parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static SignedBusinessCard parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static SignedBusinessCard parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static SignedBusinessCard parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static SignedBusinessCard parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static SignedBusinessCard parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static SignedBusinessCard parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<SignedBusinessCard> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setCard(BusinessCard businessCard) {
        businessCard.getClass();
        this.card_ = businessCard;
    }

    public void setMetadata(SignatureMetadata signatureMetadata) {
        signatureMetadata.getClass();
        this.metadata_ = signatureMetadata;
    }

    public void setSignature(ByteString byteString) {
        byteString.getClass();
        this.signature_ = byteString;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\n", new Object[]{"metadata_", "card_", "signature_"});
            case 3:
                return new SignedBusinessCard();
            case 4:
                return new C2932b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (SignedBusinessCard.class) {
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

    public BusinessCard getCard() {
        BusinessCard businessCard = this.card_;
        BusinessCard businessCard2 = businessCard;
        if (businessCard == null) {
            businessCard2 = BusinessCard.getDefaultInstance();
        }
        return businessCard2;
    }

    public SignatureMetadata getMetadata() {
        SignatureMetadata signatureMetadata = this.metadata_;
        SignatureMetadata signatureMetadata2 = signatureMetadata;
        if (signatureMetadata == null) {
            signatureMetadata2 = SignatureMetadata.getDefaultInstance();
        }
        return signatureMetadata2;
    }

    public ByteString getSignature() {
        return this.signature_;
    }

    public boolean hasCard() {
        return this.card_ != null;
    }

    public boolean hasMetadata() {
        return this.metadata_ != null;
    }
}

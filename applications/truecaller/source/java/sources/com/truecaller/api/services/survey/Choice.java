package com.truecaller.api.services.survey;

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
import p193e.p194a.p1238t2.p1239a.p1260i.AbstractC20492a;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Choice.class */
public final class Choice extends GeneratedMessageLite<Choice, C3402b> implements AbstractC20492a {
    private static final Choice DEFAULT_INSTANCE;
    public static final int FOLLOWUP_QUESTION_ID_FIELD_NUMBER = 3;
    public static final int ID_FIELD_NUMBER = 2;
    private static volatile Parser<Choice> PARSER;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int followupQuestionId_;
    private int id_;
    private String text_ = "";

    /* renamed from: com.truecaller.api.services.survey.Choice$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Choice$b.class */
    public static final class C3402b extends GeneratedMessageLite.Builder<Choice, C3402b> implements AbstractC20492a {
        public C3402b() {
            super(Choice.DEFAULT_INSTANCE);
        }

        public C3402b(C3401a c3401a) {
            super(Choice.DEFAULT_INSTANCE);
        }
    }

    static {
        Choice choice = new Choice();
        DEFAULT_INSTANCE = choice;
        GeneratedMessageLite.registerDefaultInstance(Choice.class, choice);
    }

    private Choice() {
    }

    public void clearFollowupQuestionId() {
        this.followupQuestionId_ = 0;
    }

    public void clearId() {
        this.id_ = 0;
    }

    public void clearText() {
        this.text_ = getDefaultInstance().getText();
    }

    public static Choice getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3402b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3402b newBuilder(Choice choice) {
        return DEFAULT_INSTANCE.createBuilder(choice);
    }

    public static Choice parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Choice parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Choice parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Choice parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Choice parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Choice parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Choice parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Choice parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Choice parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Choice parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Choice parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Choice parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Choice> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setFollowupQuestionId(int i) {
        this.followupQuestionId_ = i;
    }

    public void setId(int i) {
        this.id_ = i;
    }

    public void setText(String str) {
        str.getClass();
        this.text_ = str;
    }

    public void setTextBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.text_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\u0004\u0003\u0004", new Object[]{"text_", "id_", "followupQuestionId_"});
            case 3:
                return new Choice();
            case 4:
                return new C3402b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Choice.class) {
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

    public int getFollowupQuestionId() {
        return this.followupQuestionId_;
    }

    public int getId() {
        return this.id_;
    }

    public String getText() {
        return this.text_;
    }

    public ByteString getTextBytes() {
        return ByteString.copyFromUtf8(this.text_);
    }
}

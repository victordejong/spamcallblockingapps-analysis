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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/FreeText.class */
public final class FreeText extends GeneratedMessageLite<FreeText, C3404b> implements Object {
    public static final int BUTTON_LABEL_FIELD_NUMBER = 3;
    private static final FreeText DEFAULT_INSTANCE;
    public static final int FOLLOWUP_QUESTION_ID_FIELD_NUMBER = 1;
    public static final int HINT_LABEL_FIELD_NUMBER = 2;
    private static volatile Parser<FreeText> PARSER;
    private int followupQuestionId_;
    private String hintLabel_ = "";
    private String buttonLabel_ = "";

    /* renamed from: com.truecaller.api.services.survey.FreeText$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/FreeText$b.class */
    public static final class C3404b extends GeneratedMessageLite.Builder<FreeText, C3404b> implements Object {
        public C3404b() {
            super(FreeText.DEFAULT_INSTANCE);
        }

        public C3404b(C3403a c3403a) {
            super(FreeText.DEFAULT_INSTANCE);
        }
    }

    static {
        FreeText freeText = new FreeText();
        DEFAULT_INSTANCE = freeText;
        GeneratedMessageLite.registerDefaultInstance(FreeText.class, freeText);
    }

    private FreeText() {
    }

    public void clearButtonLabel() {
        this.buttonLabel_ = getDefaultInstance().getButtonLabel();
    }

    public void clearFollowupQuestionId() {
        this.followupQuestionId_ = 0;
    }

    public void clearHintLabel() {
        this.hintLabel_ = getDefaultInstance().getHintLabel();
    }

    public static FreeText getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3404b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3404b newBuilder(FreeText freeText) {
        return DEFAULT_INSTANCE.createBuilder(freeText);
    }

    public static FreeText parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FreeText parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static FreeText parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static FreeText parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static FreeText parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static FreeText parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static FreeText parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static FreeText parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static FreeText parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static FreeText parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static FreeText parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static FreeText parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<FreeText> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setButtonLabel(String str) {
        str.getClass();
        this.buttonLabel_ = str;
    }

    public void setButtonLabelBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.buttonLabel_ = byteString.toStringUtf8();
    }

    public void setFollowupQuestionId(int i) {
        this.followupQuestionId_ = i;
    }

    public void setHintLabel(String str) {
        str.getClass();
        this.hintLabel_ = str;
    }

    public void setHintLabelBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.hintLabel_ = byteString.toStringUtf8();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003����\u0001\u0003\u0003������\u0001\u0004\u0002Ȉ\u0003Ȉ", new Object[]{"followupQuestionId_", "hintLabel_", "buttonLabel_"});
            case 3:
                return new FreeText();
            case 4:
                return new C3404b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (FreeText.class) {
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

    public String getButtonLabel() {
        return this.buttonLabel_;
    }

    public ByteString getButtonLabelBytes() {
        return ByteString.copyFromUtf8(this.buttonLabel_);
    }

    public int getFollowupQuestionId() {
        return this.followupQuestionId_;
    }

    public String getHintLabel() {
        return this.hintLabel_;
    }

    public ByteString getHintLabelBytes() {
        return ByteString.copyFromUtf8(this.hintLabel_);
    }
}

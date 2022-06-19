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
import p193e.p194a.p1238t2.p1239a.p1260i.AbstractC20497d;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Question.class */
public final class Question extends GeneratedMessageLite<Question, C3424b> implements AbstractC20497d {
    public static final int BOOL_FIELD_NUMBER = 4;
    private static final Question DEFAULT_INSTANCE;
    public static final int FREE_TEXT_FIELD_NUMBER = 8;
    public static final int HEADER_MESSAGE_FIELD_NUMBER = 2;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int MESSAGE_FIELD_NUMBER = 3;
    public static final int MULTI_ANSWER_FIELD_NUMBER = 7;
    private static volatile Parser<Question> PARSER;
    public static final int RATING_FIELD_NUMBER = 5;
    public static final int SINGLE_ANSWER_FIELD_NUMBER = 6;
    private int id_;
    private Object questionType_;
    private int questionTypeCase_ = 0;
    private String headerMessage_ = "";
    private String message_ = "";

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Question$QuestionTypeCase.class */
    public enum QuestionTypeCase {
        BOOL(4),
        RATING(5),
        SINGLE_ANSWER(6),
        MULTI_ANSWER(7),
        FREE_TEXT(8),
        QUESTIONTYPE_NOT_SET(0);
        
        private final int value;

        QuestionTypeCase(int i) {
            this.value = i;
        }

        public static QuestionTypeCase forNumber(int i) {
            if (i != 0) {
                switch (i) {
                    case 4:
                        return BOOL;
                    case 5:
                        return RATING;
                    case 6:
                        return SINGLE_ANSWER;
                    case 7:
                        return MULTI_ANSWER;
                    case 8:
                        return FREE_TEXT;
                    default:
                        return null;
                }
            }
            return QUESTIONTYPE_NOT_SET;
        }

        @Deprecated
        public static QuestionTypeCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.survey.Question$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Question$b.class */
    public static final class C3424b extends GeneratedMessageLite.Builder<Question, C3424b> implements AbstractC20497d {
        public C3424b() {
            super(Question.DEFAULT_INSTANCE);
        }

        public C3424b(C3423a c3423a) {
            super(Question.DEFAULT_INSTANCE);
        }
    }

    static {
        Question question = new Question();
        DEFAULT_INSTANCE = question;
        GeneratedMessageLite.registerDefaultInstance(Question.class, question);
    }

    private Question() {
    }

    public void clearBool() {
        if (this.questionTypeCase_ == 4) {
            this.questionTypeCase_ = 0;
            this.questionType_ = null;
        }
    }

    public void clearFreeText() {
        if (this.questionTypeCase_ == 8) {
            this.questionTypeCase_ = 0;
            this.questionType_ = null;
        }
    }

    public void clearHeaderMessage() {
        this.headerMessage_ = getDefaultInstance().getHeaderMessage();
    }

    public void clearId() {
        this.id_ = 0;
    }

    public void clearMessage() {
        this.message_ = getDefaultInstance().getMessage();
    }

    public void clearMultiAnswer() {
        if (this.questionTypeCase_ == 7) {
            this.questionTypeCase_ = 0;
            this.questionType_ = null;
        }
    }

    public void clearQuestionType() {
        this.questionTypeCase_ = 0;
        this.questionType_ = null;
    }

    public void clearRating() {
        if (this.questionTypeCase_ == 5) {
            this.questionTypeCase_ = 0;
            this.questionType_ = null;
        }
    }

    public void clearSingleAnswer() {
        if (this.questionTypeCase_ == 6) {
            this.questionTypeCase_ = 0;
            this.questionType_ = null;
        }
    }

    public static Question getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeBool(Bool bool) {
        bool.getClass();
        if (this.questionTypeCase_ != 4 || this.questionType_ == Bool.getDefaultInstance()) {
            this.questionType_ = bool;
        } else {
            this.questionType_ = Bool.newBuilder((Bool) this.questionType_).mergeFrom(bool).buildPartial();
        }
        this.questionTypeCase_ = 4;
    }

    public void mergeFreeText(FreeText freeText) {
        freeText.getClass();
        if (this.questionTypeCase_ != 8 || this.questionType_ == FreeText.getDefaultInstance()) {
            this.questionType_ = freeText;
        } else {
            this.questionType_ = FreeText.newBuilder((FreeText) this.questionType_).mergeFrom(freeText).buildPartial();
        }
        this.questionTypeCase_ = 8;
    }

    public void mergeMultiAnswer(MultiAnswer multiAnswer) {
        multiAnswer.getClass();
        if (this.questionTypeCase_ != 7 || this.questionType_ == MultiAnswer.getDefaultInstance()) {
            this.questionType_ = multiAnswer;
        } else {
            this.questionType_ = MultiAnswer.newBuilder((MultiAnswer) this.questionType_).mergeFrom(multiAnswer).buildPartial();
        }
        this.questionTypeCase_ = 7;
    }

    public void mergeRating(Rating rating) {
        rating.getClass();
        if (this.questionTypeCase_ != 5 || this.questionType_ == Rating.getDefaultInstance()) {
            this.questionType_ = rating;
        } else {
            this.questionType_ = Rating.newBuilder((Rating) this.questionType_).mergeFrom(rating).buildPartial();
        }
        this.questionTypeCase_ = 5;
    }

    public void mergeSingleAnswer(SingleAnswer singleAnswer) {
        singleAnswer.getClass();
        if (this.questionTypeCase_ != 6 || this.questionType_ == SingleAnswer.getDefaultInstance()) {
            this.questionType_ = singleAnswer;
        } else {
            this.questionType_ = SingleAnswer.newBuilder((SingleAnswer) this.questionType_).mergeFrom(singleAnswer).buildPartial();
        }
        this.questionTypeCase_ = 6;
    }

    public static C3424b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3424b newBuilder(Question question) {
        return DEFAULT_INSTANCE.createBuilder(question);
    }

    public static Question parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Question parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Question parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Question parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Question parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Question parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Question parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Question parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Question parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Question parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Question parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Question parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Question> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setBool(Bool bool) {
        bool.getClass();
        this.questionType_ = bool;
        this.questionTypeCase_ = 4;
    }

    public void setFreeText(FreeText freeText) {
        freeText.getClass();
        this.questionType_ = freeText;
        this.questionTypeCase_ = 8;
    }

    public void setHeaderMessage(String str) {
        str.getClass();
        this.headerMessage_ = str;
    }

    public void setHeaderMessageBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.headerMessage_ = byteString.toStringUtf8();
    }

    public void setId(int i) {
        this.id_ = i;
    }

    public void setMessage(String str) {
        str.getClass();
        this.message_ = str;
    }

    public void setMessageBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.message_ = byteString.toStringUtf8();
    }

    public void setMultiAnswer(MultiAnswer multiAnswer) {
        multiAnswer.getClass();
        this.questionType_ = multiAnswer;
        this.questionTypeCase_ = 7;
    }

    public void setRating(Rating rating) {
        rating.getClass();
        this.questionType_ = rating;
        this.questionTypeCase_ = 5;
    }

    public void setSingleAnswer(SingleAnswer singleAnswer) {
        singleAnswer.getClass();
        this.questionType_ = singleAnswer;
        this.questionTypeCase_ = 6;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\b\u0001��\u0001\b\b������\u0001\u0004\u0002Ȉ\u0003Ȉ\u0004<��\u0005<��\u0006<��\u0007<��\b<��", new Object[]{"questionType_", "questionTypeCase_", "id_", "headerMessage_", "message_", Bool.class, Rating.class, SingleAnswer.class, MultiAnswer.class, FreeText.class});
            case 3:
                return new Question();
            case 4:
                return new C3424b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Question.class) {
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

    public Bool getBool() {
        return this.questionTypeCase_ == 4 ? (Bool) this.questionType_ : Bool.getDefaultInstance();
    }

    public FreeText getFreeText() {
        return this.questionTypeCase_ == 8 ? (FreeText) this.questionType_ : FreeText.getDefaultInstance();
    }

    public String getHeaderMessage() {
        return this.headerMessage_;
    }

    public ByteString getHeaderMessageBytes() {
        return ByteString.copyFromUtf8(this.headerMessage_);
    }

    public int getId() {
        return this.id_;
    }

    public String getMessage() {
        return this.message_;
    }

    public ByteString getMessageBytes() {
        return ByteString.copyFromUtf8(this.message_);
    }

    public MultiAnswer getMultiAnswer() {
        return this.questionTypeCase_ == 7 ? (MultiAnswer) this.questionType_ : MultiAnswer.getDefaultInstance();
    }

    public QuestionTypeCase getQuestionTypeCase() {
        return QuestionTypeCase.forNumber(this.questionTypeCase_);
    }

    public Rating getRating() {
        return this.questionTypeCase_ == 5 ? (Rating) this.questionType_ : Rating.getDefaultInstance();
    }

    public SingleAnswer getSingleAnswer() {
        return this.questionTypeCase_ == 6 ? (SingleAnswer) this.questionType_ : SingleAnswer.getDefaultInstance();
    }

    public boolean hasBool() {
        return this.questionTypeCase_ == 4;
    }

    public boolean hasFreeText() {
        return this.questionTypeCase_ == 8;
    }

    public boolean hasMultiAnswer() {
        return this.questionTypeCase_ == 7;
    }

    public boolean hasRating() {
        return this.questionTypeCase_ == 5;
    }

    public boolean hasSingleAnswer() {
        return this.questionTypeCase_ == 6;
    }
}

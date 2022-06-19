package com.truecaller.api.services.survey;

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
import p193e.p194a.p1238t2.p1239a.p1260i.AbstractC20497d;
import p193e.p194a.p1238t2.p1239a.p1260i.AbstractC20498e;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Survey.class */
public final class Survey extends GeneratedMessageLite<Survey, C3432b> implements AbstractC20498e {
    public static final int ACS_BIZMON_FIELD_NUMBER = 6;
    public static final int ACS_GENERIC_FIELD_NUMBER = 3;
    public static final int ACS_NAME_SUGGESTION_FIELD_NUMBER = 4;
    public static final int BOTTOM_SHEET_QUESTIONS_IDS_FIELD_NUMBER = 7;
    private static final Survey DEFAULT_INSTANCE;
    public static final int ID_FIELD_NUMBER = 1;
    private static volatile Parser<Survey> PARSER;
    public static final int QUESTIONS_FIELD_NUMBER = 2;
    public static final int REPORT_PROFILE_FIELD_NUMBER = 5;
    private Object flow_;
    private int flowCase_ = 0;
    private int bottomSheetQuestionsIdsMemoizedSerializedSize = -1;
    private String id_ = "";
    private Internal.ProtobufList<Question> questions_ = GeneratedMessageLite.emptyProtobufList();
    private Internal.IntList bottomSheetQuestionsIds_ = GeneratedMessageLite.emptyIntList();

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Survey$FlowCase.class */
    public enum FlowCase {
        ACS_GENERIC(3),
        ACS_NAME_SUGGESTION(4),
        REPORT_PROFILE(5),
        ACS_BIZMON(6),
        FLOW_NOT_SET(0);
        
        private final int value;

        FlowCase(int i) {
            this.value = i;
        }

        public static FlowCase forNumber(int i) {
            if (i != 0) {
                if (i == 3) {
                    return ACS_GENERIC;
                }
                if (i == 4) {
                    return ACS_NAME_SUGGESTION;
                }
                if (i == 5) {
                    return REPORT_PROFILE;
                }
                if (i == 6) {
                    return ACS_BIZMON;
                }
                return null;
            }
            return FLOW_NOT_SET;
        }

        @Deprecated
        public static FlowCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.survey.Survey$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Survey$b.class */
    public static final class C3432b extends GeneratedMessageLite.Builder<Survey, C3432b> implements AbstractC20498e {
        public C3432b() {
            super(Survey.DEFAULT_INSTANCE);
        }

        public C3432b(C3431a c3431a) {
            super(Survey.DEFAULT_INSTANCE);
        }
    }

    static {
        Survey survey = new Survey();
        DEFAULT_INSTANCE = survey;
        GeneratedMessageLite.registerDefaultInstance(Survey.class, survey);
    }

    private Survey() {
    }

    public void addAllBottomSheetQuestionsIds(Iterable<? extends Integer> iterable) {
        ensureBottomSheetQuestionsIdsIsMutable();
        AbstractMessageLite.addAll(iterable, this.bottomSheetQuestionsIds_);
    }

    public void addAllQuestions(Iterable<? extends Question> iterable) {
        ensureQuestionsIsMutable();
        AbstractMessageLite.addAll(iterable, this.questions_);
    }

    public void addBottomSheetQuestionsIds(int i) {
        ensureBottomSheetQuestionsIdsIsMutable();
        this.bottomSheetQuestionsIds_.addInt(i);
    }

    public void addQuestions(int i, Question question) {
        question.getClass();
        ensureQuestionsIsMutable();
        this.questions_.add(i, question);
    }

    public void addQuestions(Question question) {
        question.getClass();
        ensureQuestionsIsMutable();
        this.questions_.add(question);
    }

    public void clearAcsBizmon() {
        if (this.flowCase_ == 6) {
            this.flowCase_ = 0;
            this.flow_ = null;
        }
    }

    public void clearAcsGeneric() {
        if (this.flowCase_ == 3) {
            this.flowCase_ = 0;
            this.flow_ = null;
        }
    }

    public void clearAcsNameSuggestion() {
        if (this.flowCase_ == 4) {
            this.flowCase_ = 0;
            this.flow_ = null;
        }
    }

    public void clearBottomSheetQuestionsIds() {
        this.bottomSheetQuestionsIds_ = GeneratedMessageLite.emptyIntList();
    }

    public void clearFlow() {
        this.flowCase_ = 0;
        this.flow_ = null;
    }

    public void clearId() {
        this.id_ = getDefaultInstance().getId();
    }

    public void clearQuestions() {
        this.questions_ = GeneratedMessageLite.emptyProtobufList();
    }

    public void clearReportProfile() {
        if (this.flowCase_ == 5) {
            this.flowCase_ = 0;
            this.flow_ = null;
        }
    }

    private void ensureBottomSheetQuestionsIdsIsMutable() {
        Internal.IntList intList = this.bottomSheetQuestionsIds_;
        if (!intList.isModifiable()) {
            this.bottomSheetQuestionsIds_ = GeneratedMessageLite.mutableCopy(intList);
        }
    }

    private void ensureQuestionsIsMutable() {
        Internal.ProtobufList<Question> protobufList = this.questions_;
        if (!protobufList.isModifiable()) {
            this.questions_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static Survey getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeAcsBizmon(AcsBizmon acsBizmon) {
        acsBizmon.getClass();
        if (this.flowCase_ != 6 || this.flow_ == AcsBizmon.getDefaultInstance()) {
            this.flow_ = acsBizmon;
        } else {
            this.flow_ = AcsBizmon.newBuilder((AcsBizmon) this.flow_).mergeFrom(acsBizmon).buildPartial();
        }
        this.flowCase_ = 6;
    }

    public void mergeAcsGeneric(AcsGeneric acsGeneric) {
        acsGeneric.getClass();
        if (this.flowCase_ != 3 || this.flow_ == AcsGeneric.getDefaultInstance()) {
            this.flow_ = acsGeneric;
        } else {
            this.flow_ = AcsGeneric.newBuilder((AcsGeneric) this.flow_).mergeFrom(acsGeneric).buildPartial();
        }
        this.flowCase_ = 3;
    }

    public void mergeAcsNameSuggestion(AcsNameSuggestion acsNameSuggestion) {
        acsNameSuggestion.getClass();
        if (this.flowCase_ != 4 || this.flow_ == AcsNameSuggestion.getDefaultInstance()) {
            this.flow_ = acsNameSuggestion;
        } else {
            this.flow_ = AcsNameSuggestion.newBuilder((AcsNameSuggestion) this.flow_).mergeFrom(acsNameSuggestion).buildPartial();
        }
        this.flowCase_ = 4;
    }

    public void mergeReportProfile(ReportProfile reportProfile) {
        reportProfile.getClass();
        if (this.flowCase_ != 5 || this.flow_ == ReportProfile.getDefaultInstance()) {
            this.flow_ = reportProfile;
        } else {
            this.flow_ = ReportProfile.newBuilder((ReportProfile) this.flow_).mergeFrom(reportProfile).buildPartial();
        }
        this.flowCase_ = 5;
    }

    public static C3432b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3432b newBuilder(Survey survey) {
        return DEFAULT_INSTANCE.createBuilder(survey);
    }

    public static Survey parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Survey parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Survey parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Survey parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Survey parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Survey parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Survey parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Survey parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Survey parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Survey parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Survey parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Survey parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Survey> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeQuestions(int i) {
        ensureQuestionsIsMutable();
        this.questions_.remove(i);
    }

    public void setAcsBizmon(AcsBizmon acsBizmon) {
        acsBizmon.getClass();
        this.flow_ = acsBizmon;
        this.flowCase_ = 6;
    }

    public void setAcsGeneric(AcsGeneric acsGeneric) {
        acsGeneric.getClass();
        this.flow_ = acsGeneric;
        this.flowCase_ = 3;
    }

    public void setAcsNameSuggestion(AcsNameSuggestion acsNameSuggestion) {
        acsNameSuggestion.getClass();
        this.flow_ = acsNameSuggestion;
        this.flowCase_ = 4;
    }

    public void setBottomSheetQuestionsIds(int i, int i2) {
        ensureBottomSheetQuestionsIdsIsMutable();
        this.bottomSheetQuestionsIds_.setInt(i, i2);
    }

    public void setId(String str) {
        str.getClass();
        this.id_ = str;
    }

    public void setIdBytes(ByteString byteString) {
        AbstractMessageLite.checkByteStringIsUtf8(byteString);
        this.id_ = byteString.toStringUtf8();
    }

    public void setQuestions(int i, Question question) {
        question.getClass();
        ensureQuestionsIsMutable();
        this.questions_.set(i, question);
    }

    public void setReportProfile(ReportProfile reportProfile) {
        reportProfile.getClass();
        this.flow_ = reportProfile;
        this.flowCase_ = 5;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0007\u0001��\u0001\u0007\u0007��\u0002��\u0001Ȉ\u0002\u001b\u0003<��\u0004<��\u0005<��\u0006<��\u0007'", new Object[]{"flow_", "flowCase_", "id_", "questions_", Question.class, AcsGeneric.class, AcsNameSuggestion.class, ReportProfile.class, AcsBizmon.class, "bottomSheetQuestionsIds_"});
            case 3:
                return new Survey();
            case 4:
                return new C3432b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Survey.class) {
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

    public AcsBizmon getAcsBizmon() {
        return this.flowCase_ == 6 ? (AcsBizmon) this.flow_ : AcsBizmon.getDefaultInstance();
    }

    public AcsGeneric getAcsGeneric() {
        return this.flowCase_ == 3 ? (AcsGeneric) this.flow_ : AcsGeneric.getDefaultInstance();
    }

    public AcsNameSuggestion getAcsNameSuggestion() {
        return this.flowCase_ == 4 ? (AcsNameSuggestion) this.flow_ : AcsNameSuggestion.getDefaultInstance();
    }

    public int getBottomSheetQuestionsIds(int i) {
        return this.bottomSheetQuestionsIds_.getInt(i);
    }

    public int getBottomSheetQuestionsIdsCount() {
        return this.bottomSheetQuestionsIds_.size();
    }

    public List<Integer> getBottomSheetQuestionsIdsList() {
        return this.bottomSheetQuestionsIds_;
    }

    public FlowCase getFlowCase() {
        return FlowCase.forNumber(this.flowCase_);
    }

    public String getId() {
        return this.id_;
    }

    public ByteString getIdBytes() {
        return ByteString.copyFromUtf8(this.id_);
    }

    public Question getQuestions(int i) {
        return this.questions_.get(i);
    }

    public int getQuestionsCount() {
        return this.questions_.size();
    }

    public List<Question> getQuestionsList() {
        return this.questions_;
    }

    public AbstractC20497d getQuestionsOrBuilder(int i) {
        return this.questions_.get(i);
    }

    public List<? extends AbstractC20497d> getQuestionsOrBuilderList() {
        return this.questions_;
    }

    public ReportProfile getReportProfile() {
        return this.flowCase_ == 5 ? (ReportProfile) this.flow_ : ReportProfile.getDefaultInstance();
    }

    public boolean hasAcsBizmon() {
        return this.flowCase_ == 6;
    }

    public boolean hasAcsGeneric() {
        return this.flowCase_ == 3;
    }

    public boolean hasAcsNameSuggestion() {
        return this.flowCase_ == 4;
    }

    public boolean hasReportProfile() {
        return this.flowCase_ == 5;
    }
}

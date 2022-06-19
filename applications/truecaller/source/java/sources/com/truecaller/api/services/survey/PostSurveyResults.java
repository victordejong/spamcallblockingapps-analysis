package com.truecaller.api.services.survey;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.MessageLiteOrBuilder;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults.class */
public final class PostSurveyResults extends GeneratedMessageLite<PostSurveyResults, C3422b> implements Object {
    private static final PostSurveyResults DEFAULT_INSTANCE;
    private static volatile Parser<PostSurveyResults> PARSER;

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3418b> implements Object {
        public static final int ANSWERS_FIELD_NUMBER = 2;
        public static final int CLIENT_DATA_FIELD_NUMBER = 4;
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int PASSTHROUGH_FIELD_NUMBER = 3;
        public static final int SURVEY_ID_FIELD_NUMBER = 1;
        private MapFieldLite<Integer, Answers> answers_ = MapFieldLite.emptyMapField();
        private String surveyId_ = "";
        private String passthrough_ = "";
        private Internal.ProtobufList<ClientData> clientData_ = GeneratedMessageLite.emptyProtobufList();

        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$Answers.class */
        public static final class Answers extends GeneratedMessageLite<Answers, C3413a> implements Object {
            public static final int CHOICE_IDS_FIELD_NUMBER = 1;
            private static final Answers DEFAULT_INSTANCE;
            public static final int FREE_TEXT_ANSWER_FIELD_NUMBER = 2;
            private static volatile Parser<Answers> PARSER;
            private int choiceIdsMemoizedSerializedSize = -1;
            private Internal.IntList choiceIds_ = GeneratedMessageLite.emptyIntList();
            private String freeTextAnswer_ = "";

            /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$Answers$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a.class */
            public static final class C3413a extends GeneratedMessageLite.Builder<Answers, C3413a> implements Object {
                public C3413a() {
                    super(Answers.DEFAULT_INSTANCE);
                }

                public C3413a(C3421a c3421a) {
                    super(Answers.DEFAULT_INSTANCE);
                }

                /* renamed from: a */
                public C3413a m35892a(int i) {
                    copyOnWrite();
                    ((GeneratedMessageLite.Builder) this).instance.addChoiceIds(i);
                    return this;
                }
            }

            static {
                Answers answers = new Answers();
                DEFAULT_INSTANCE = answers;
                GeneratedMessageLite.registerDefaultInstance(Answers.class, answers);
            }

            private Answers() {
            }

            public void addAllChoiceIds(Iterable<? extends Integer> iterable) {
                ensureChoiceIdsIsMutable();
                AbstractMessageLite.addAll(iterable, this.choiceIds_);
            }

            public void addChoiceIds(int i) {
                ensureChoiceIdsIsMutable();
                this.choiceIds_.addInt(i);
            }

            public void clearChoiceIds() {
                this.choiceIds_ = GeneratedMessageLite.emptyIntList();
            }

            public void clearFreeTextAnswer() {
                this.freeTextAnswer_ = getDefaultInstance().getFreeTextAnswer();
            }

            private void ensureChoiceIdsIsMutable() {
                Internal.IntList intList = this.choiceIds_;
                if (!intList.isModifiable()) {
                    this.choiceIds_ = GeneratedMessageLite.mutableCopy(intList);
                }
            }

            public static Answers getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3413a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3413a newBuilder(Answers answers) {
                return DEFAULT_INSTANCE.createBuilder(answers);
            }

            public static Answers parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Answers parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Answers parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static Answers parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static Answers parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static Answers parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static Answers parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static Answers parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static Answers parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static Answers parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static Answers parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static Answers parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<Answers> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setChoiceIds(int i, int i2) {
                ensureChoiceIdsIsMutable();
                this.choiceIds_.setInt(i, i2);
            }

            public void setFreeTextAnswer(String str) {
                str.getClass();
                this.freeTextAnswer_ = str;
            }

            public void setFreeTextAnswerBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.freeTextAnswer_ = byteString.toStringUtf8();
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001'\u0002Ȉ", new Object[]{"choiceIds_", "freeTextAnswer_"});
                    case 3:
                        return new Answers();
                    case 4:
                        return new C3413a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (Answers.class) {
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

            public int getChoiceIds(int i) {
                return this.choiceIds_.getInt(i);
            }

            public int getChoiceIdsCount() {
                return this.choiceIds_.size();
            }

            public List<Integer> getChoiceIdsList() {
                return this.choiceIds_;
            }

            public String getFreeTextAnswer() {
                return this.freeTextAnswer_;
            }

            public ByteString getFreeTextAnswerBytes() {
                return ByteString.copyFromUtf8(this.freeTextAnswer_);
            }
        }

        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$ClientData.class */
        public static final class ClientData extends GeneratedMessageLite<ClientData, C3416a> implements AbstractC3419c {
            private static final ClientData DEFAULT_INSTANCE;
            public static final int KEY_FIELD_NUMBER = 1;
            private static volatile Parser<ClientData> PARSER;
            public static final int VALUE_FIELD_NUMBER = 2;
            private int key_;
            private String value_ = "";

            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key.class */
            public enum Key implements Internal.EnumLite {
                UNKNOWN(0),
                PROFILE_ID(1),
                DISPLAYED_NAME(2),
                IMAGE_URL(3),
                UNRECOGNIZED(-1);
                
                public static final int DISPLAYED_NAME_VALUE = 2;
                public static final int IMAGE_URL_VALUE = 3;
                public static final int PROFILE_ID_VALUE = 1;
                public static final int UNKNOWN_VALUE = 0;
                private static final Internal.EnumLiteMap<Key> internalValueMap = new C3414a();
                private final int value;

                /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$ClientData$Key$a */
                /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key$a.class */
                public static final class C3414a implements Internal.EnumLiteMap<Key> {
                    @Override // com.google.protobuf.Internal.EnumLiteMap
                    public Key findValueByNumber(int i) {
                        return Key.forNumber(i);
                    }
                }

                /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$ClientData$Key$b */
                /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key$b.class */
                public static final class C3415b implements Internal.EnumVerifier {

                    /* renamed from: a */
                    public static final Internal.EnumVerifier f10135a = new C3415b();

                    @Override // com.google.protobuf.Internal.EnumVerifier
                    public boolean isInRange(int i) {
                        return Key.forNumber(i) != null;
                    }
                }

                Key(int i) {
                    this.value = i;
                }

                public static Key forNumber(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return PROFILE_ID;
                        }
                        if (i == 2) {
                            return DISPLAYED_NAME;
                        }
                        if (i == 3) {
                            return IMAGE_URL;
                        }
                        return null;
                    }
                    return UNKNOWN;
                }

                public static Internal.EnumLiteMap<Key> internalGetValueMap() {
                    return internalValueMap;
                }

                public static Internal.EnumVerifier internalGetVerifier() {
                    return C3415b.f10135a;
                }

                @Deprecated
                public static Key valueOf(int i) {
                    return forNumber(i);
                }

                @Override // com.google.protobuf.Internal.EnumLite
                public final int getNumber() {
                    if (this != UNRECOGNIZED) {
                        return this.value;
                    }
                    throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
                }
            }

            /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$ClientData$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$a.class */
            public static final class C3416a extends GeneratedMessageLite.Builder<ClientData, C3416a> implements AbstractC3419c {
                public C3416a() {
                    super(ClientData.DEFAULT_INSTANCE);
                }

                public C3416a(C3421a c3421a) {
                    super(ClientData.DEFAULT_INSTANCE);
                }
            }

            static {
                ClientData clientData = new ClientData();
                DEFAULT_INSTANCE = clientData;
                GeneratedMessageLite.registerDefaultInstance(ClientData.class, clientData);
            }

            private ClientData() {
            }

            public void clearKey() {
                this.key_ = 0;
            }

            public void clearValue() {
                this.value_ = getDefaultInstance().getValue();
            }

            public static ClientData getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3416a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3416a newBuilder(ClientData clientData) {
                return DEFAULT_INSTANCE.createBuilder(clientData);
            }

            public static ClientData parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static ClientData parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static ClientData parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static ClientData parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static ClientData parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static ClientData parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static ClientData parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static ClientData parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static ClientData parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static ClientData parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static ClientData parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static ClientData parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<ClientData> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setKey(Key key) {
                this.key_ = key.getNumber();
            }

            public void setKeyValue(int i) {
                this.key_ = i;
            }

            public void setValue(String str) {
                str.getClass();
                this.value_ = str;
            }

            public void setValueBytes(ByteString byteString) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.value_ = byteString.toStringUtf8();
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002Ȉ", new Object[]{"key_", "value_"});
                    case 3:
                        return new ClientData();
                    case 4:
                        return new C3416a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (ClientData.class) {
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

            public Key getKey() {
                Key forNumber = Key.forNumber(this.key_);
                Key key = forNumber;
                if (forNumber == null) {
                    key = Key.UNRECOGNIZED;
                }
                return key;
            }

            public int getKeyValue() {
                return this.key_;
            }

            public String getValue() {
                return this.value_;
            }

            public ByteString getValueBytes() {
                return ByteString.copyFromUtf8(this.value_);
            }
        }

        /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$a.class */
        public static final class C3417a {

            /* renamed from: a */
            public static final MapEntryLite<Integer, Answers> f10136a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.INT32, 0, WireFormat.FieldType.MESSAGE, Answers.getDefaultInstance());
        }

        /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$b.class */
        public static final class C3418b extends GeneratedMessageLite.Builder<Request, C3418b> implements Object {
            public C3418b() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3418b(C3421a c3421a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Request$c */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Request$c.class */
        public interface AbstractC3419c extends MessageLiteOrBuilder {
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void addAllClientData(Iterable<? extends ClientData> iterable) {
            ensureClientDataIsMutable();
            AbstractMessageLite.addAll(iterable, this.clientData_);
        }

        public void addClientData(int i, ClientData clientData) {
            clientData.getClass();
            ensureClientDataIsMutable();
            this.clientData_.add(i, clientData);
        }

        public void addClientData(ClientData clientData) {
            clientData.getClass();
            ensureClientDataIsMutable();
            this.clientData_.add(clientData);
        }

        public void clearClientData() {
            this.clientData_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearPassthrough() {
            this.passthrough_ = getDefaultInstance().getPassthrough();
        }

        public void clearSurveyId() {
            this.surveyId_ = getDefaultInstance().getSurveyId();
        }

        private void ensureClientDataIsMutable() {
            Internal.ProtobufList<ClientData> protobufList = this.clientData_;
            if (!protobufList.isModifiable()) {
                this.clientData_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<Integer, Answers> getMutableAnswersMap() {
            return internalGetMutableAnswers();
        }

        private MapFieldLite<Integer, Answers> internalGetAnswers() {
            return this.answers_;
        }

        private MapFieldLite<Integer, Answers> internalGetMutableAnswers() {
            if (!this.answers_.isMutable()) {
                this.answers_ = this.answers_.mutableCopy();
            }
            return this.answers_;
        }

        public static C3418b newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3418b newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeClientData(int i) {
            ensureClientDataIsMutable();
            this.clientData_.remove(i);
        }

        public void setClientData(int i, ClientData clientData) {
            clientData.getClass();
            ensureClientDataIsMutable();
            this.clientData_.set(i, clientData);
        }

        public void setPassthrough(String str) {
            str.getClass();
            this.passthrough_ = str;
        }

        public void setPassthroughBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.passthrough_ = byteString.toStringUtf8();
        }

        public void setSurveyId(String str) {
            str.getClass();
            this.surveyId_ = str;
        }

        public void setSurveyIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.surveyId_ = byteString.toStringUtf8();
        }

        public boolean containsAnswers(int i) {
            return internalGetAnswers().containsKey(Integer.valueOf(i));
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004\u0001\u0001��\u0001Ȉ\u00022\u0003Ȉ\u0004\u001b", new Object[]{"surveyId_", "answers_", C3417a.f10136a, "passthrough_", "clientData_", ClientData.class});
                case 3:
                    return new Request();
                case 4:
                    return new C3418b(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
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

        @Deprecated
        public Map<Integer, Answers> getAnswers() {
            return getAnswersMap();
        }

        public int getAnswersCount() {
            return internalGetAnswers().size();
        }

        public Map<Integer, Answers> getAnswersMap() {
            return Collections.unmodifiableMap(internalGetAnswers());
        }

        public Answers getAnswersOrDefault(int i, Answers answers) {
            MapFieldLite<Integer, Answers> internalGetAnswers = internalGetAnswers();
            if (internalGetAnswers.containsKey(Integer.valueOf(i))) {
                answers = internalGetAnswers.get(Integer.valueOf(i));
            }
            return answers;
        }

        public Answers getAnswersOrThrow(int i) {
            MapFieldLite<Integer, Answers> internalGetAnswers = internalGetAnswers();
            if (internalGetAnswers.containsKey(Integer.valueOf(i))) {
                return internalGetAnswers.get(Integer.valueOf(i));
            }
            throw new IllegalArgumentException();
        }

        public ClientData getClientData(int i) {
            return this.clientData_.get(i);
        }

        public int getClientDataCount() {
            return this.clientData_.size();
        }

        public List<ClientData> getClientDataList() {
            return this.clientData_;
        }

        public AbstractC3419c getClientDataOrBuilder(int i) {
            return this.clientData_.get(i);
        }

        public List<? extends AbstractC3419c> getClientDataOrBuilderList() {
            return this.clientData_;
        }

        public String getPassthrough() {
            return this.passthrough_;
        }

        public ByteString getPassthroughBytes() {
            return ByteString.copyFromUtf8(this.passthrough_);
        }

        public String getSurveyId() {
            return this.surveyId_;
        }

        public ByteString getSurveyIdBytes() {
            return ByteString.copyFromUtf8(this.surveyId_);
        }
    }

    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3420a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;

        /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$Response$a.class */
        public static final class C3420a extends GeneratedMessageLite.Builder<Response, C3420a> implements Object {
            public C3420a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3420a(C3421a c3421a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3420a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3420a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
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
                    return new Response();
                case 4:
                    return new C3420a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
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

    /* renamed from: com.truecaller.api.services.survey.PostSurveyResults$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/PostSurveyResults$b.class */
    public static final class C3422b extends GeneratedMessageLite.Builder<PostSurveyResults, C3422b> implements Object {
        public C3422b() {
            super(PostSurveyResults.DEFAULT_INSTANCE);
        }

        public C3422b(C3421a c3421a) {
            super(PostSurveyResults.DEFAULT_INSTANCE);
        }
    }

    static {
        PostSurveyResults postSurveyResults = new PostSurveyResults();
        DEFAULT_INSTANCE = postSurveyResults;
        GeneratedMessageLite.registerDefaultInstance(PostSurveyResults.class, postSurveyResults);
    }

    private PostSurveyResults() {
    }

    public static PostSurveyResults getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3422b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3422b newBuilder(PostSurveyResults postSurveyResults) {
        return DEFAULT_INSTANCE.createBuilder(postSurveyResults);
    }

    public static PostSurveyResults parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static PostSurveyResults parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static PostSurveyResults parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static PostSurveyResults parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static PostSurveyResults parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static PostSurveyResults parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static PostSurveyResults parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static PostSurveyResults parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static PostSurveyResults parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static PostSurveyResults parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static PostSurveyResults parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static PostSurveyResults parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<PostSurveyResults> parser() {
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
                return new PostSurveyResults();
            case 4:
                return new C3422b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (PostSurveyResults.class) {
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

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
import p193e.p194a.p1238t2.p1239a.p1260i.AbstractC20492a;
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/MultiAnswer.class */
public final class MultiAnswer extends GeneratedMessageLite<MultiAnswer, C3410b> implements Object {
    public static final int CHOICES_FIELD_NUMBER = 1;
    private static final MultiAnswer DEFAULT_INSTANCE;
    private static volatile Parser<MultiAnswer> PARSER;
    private Internal.ProtobufList<Choice> choices_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.survey.MultiAnswer$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/MultiAnswer$b.class */
    public static final class C3410b extends GeneratedMessageLite.Builder<MultiAnswer, C3410b> implements Object {
        public C3410b() {
            super(MultiAnswer.DEFAULT_INSTANCE);
        }

        public C3410b(C3409a c3409a) {
            super(MultiAnswer.DEFAULT_INSTANCE);
        }
    }

    static {
        MultiAnswer multiAnswer = new MultiAnswer();
        DEFAULT_INSTANCE = multiAnswer;
        GeneratedMessageLite.registerDefaultInstance(MultiAnswer.class, multiAnswer);
    }

    private MultiAnswer() {
    }

    public void addAllChoices(Iterable<? extends Choice> iterable) {
        ensureChoicesIsMutable();
        AbstractMessageLite.addAll(iterable, this.choices_);
    }

    public void addChoices(int i, Choice choice) {
        choice.getClass();
        ensureChoicesIsMutable();
        this.choices_.add(i, choice);
    }

    public void addChoices(Choice choice) {
        choice.getClass();
        ensureChoicesIsMutable();
        this.choices_.add(choice);
    }

    public void clearChoices() {
        this.choices_ = GeneratedMessageLite.emptyProtobufList();
    }

    private void ensureChoicesIsMutable() {
        Internal.ProtobufList<Choice> protobufList = this.choices_;
        if (!protobufList.isModifiable()) {
            this.choices_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static MultiAnswer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3410b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3410b newBuilder(MultiAnswer multiAnswer) {
        return DEFAULT_INSTANCE.createBuilder(multiAnswer);
    }

    public static MultiAnswer parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MultiAnswer parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MultiAnswer parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static MultiAnswer parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static MultiAnswer parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static MultiAnswer parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static MultiAnswer parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MultiAnswer parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MultiAnswer parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static MultiAnswer parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static MultiAnswer parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MultiAnswer parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<MultiAnswer> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeChoices(int i) {
        ensureChoicesIsMutable();
        this.choices_.remove(i);
    }

    public void setChoices(int i, Choice choice) {
        choice.getClass();
        ensureChoicesIsMutable();
        this.choices_.set(i, choice);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"choices_", Choice.class});
            case 3:
                return new MultiAnswer();
            case 4:
                return new C3410b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (MultiAnswer.class) {
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

    public Choice getChoices(int i) {
        return this.choices_.get(i);
    }

    public int getChoicesCount() {
        return this.choices_.size();
    }

    public List<Choice> getChoicesList() {
        return this.choices_;
    }

    public AbstractC20492a getChoicesOrBuilder(int i) {
        return this.choices_.get(i);
    }

    public List<? extends AbstractC20492a> getChoicesOrBuilderList() {
        return this.choices_;
    }
}

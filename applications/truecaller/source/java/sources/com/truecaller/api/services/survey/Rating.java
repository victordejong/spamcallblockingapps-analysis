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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Rating.class */
public final class Rating extends GeneratedMessageLite<Rating, C3426b> implements Object {
    public static final int CHOICES_FIELD_NUMBER = 1;
    private static final Rating DEFAULT_INSTANCE;
    private static volatile Parser<Rating> PARSER;
    private Internal.ProtobufList<Choice> choices_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.survey.Rating$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Rating$b.class */
    public static final class C3426b extends GeneratedMessageLite.Builder<Rating, C3426b> implements Object {
        public C3426b() {
            super(Rating.DEFAULT_INSTANCE);
        }

        public C3426b(C3425a c3425a) {
            super(Rating.DEFAULT_INSTANCE);
        }
    }

    static {
        Rating rating = new Rating();
        DEFAULT_INSTANCE = rating;
        GeneratedMessageLite.registerDefaultInstance(Rating.class, rating);
    }

    private Rating() {
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

    public static Rating getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3426b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3426b newBuilder(Rating rating) {
        return DEFAULT_INSTANCE.createBuilder(rating);
    }

    public static Rating parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Rating parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Rating parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Rating parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Rating parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Rating parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Rating parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Rating parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Rating parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Rating parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Rating parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Rating parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Rating> parser() {
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
                return new Rating();
            case 4:
                return new C3426b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Rating.class) {
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

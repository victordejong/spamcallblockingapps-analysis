package com.truecaller.api.services.survey;

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
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Bool.class */
public final class Bool extends GeneratedMessageLite<Bool, C3400b> implements Object {
    private static final Bool DEFAULT_INSTANCE;
    public static final int FALSE_FIELD_NUMBER = 2;
    private static volatile Parser<Bool> PARSER;
    public static final int TRUE_FIELD_NUMBER = 1;
    private Choice false_;
    private Choice true_;

    /* renamed from: com.truecaller.api.services.survey.Bool$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/survey/Bool$b.class */
    public static final class C3400b extends GeneratedMessageLite.Builder<Bool, C3400b> implements Object {
        public C3400b() {
            super(Bool.DEFAULT_INSTANCE);
        }

        public C3400b(C3399a c3399a) {
            super(Bool.DEFAULT_INSTANCE);
        }
    }

    static {
        Bool bool = new Bool();
        DEFAULT_INSTANCE = bool;
        GeneratedMessageLite.registerDefaultInstance(Bool.class, bool);
    }

    private Bool() {
    }

    public void clearFalse() {
        this.false_ = null;
    }

    public void clearTrue() {
        this.true_ = null;
    }

    public static Bool getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeFalse(Choice choice) {
        choice.getClass();
        Choice choice2 = this.false_;
        if (choice2 == null || choice2 == Choice.getDefaultInstance()) {
            this.false_ = choice;
        } else {
            this.false_ = Choice.newBuilder(this.false_).mergeFrom(choice).buildPartial();
        }
    }

    public void mergeTrue(Choice choice) {
        choice.getClass();
        Choice choice2 = this.true_;
        if (choice2 == null || choice2 == Choice.getDefaultInstance()) {
            this.true_ = choice;
        } else {
            this.true_ = Choice.newBuilder(this.true_).mergeFrom(choice).buildPartial();
        }
    }

    public static C3400b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3400b newBuilder(Bool bool) {
        return DEFAULT_INSTANCE.createBuilder(bool);
    }

    public static Bool parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Bool parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Bool parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Bool parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Bool parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Bool parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Bool parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Bool parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Bool parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Bool parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Bool parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Bool parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Bool> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setFalse(Choice choice) {
        choice.getClass();
        this.false_ = choice;
    }

    public void setTrue(Choice choice) {
        choice.getClass();
        this.true_ = choice;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"true_", "false_"});
            case 3:
                return new Bool();
            case 4:
                return new C3400b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Bool.class) {
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

    public Choice getFalse() {
        Choice choice = this.false_;
        Choice choice2 = choice;
        if (choice == null) {
            choice2 = Choice.getDefaultInstance();
        }
        return choice2;
    }

    public Choice getTrue() {
        Choice choice = this.true_;
        Choice choice2 = choice;
        if (choice == null) {
            choice2 = Choice.getDefaultInstance();
        }
        return choice2;
    }

    public boolean hasFalse() {
        return this.false_ != null;
    }

    public boolean hasTrue() {
        return this.true_ != null;
    }
}

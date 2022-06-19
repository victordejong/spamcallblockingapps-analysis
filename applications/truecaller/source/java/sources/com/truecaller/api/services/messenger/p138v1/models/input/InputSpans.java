package com.truecaller.api.services.messenger.p138v1.models.input;

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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20471c;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpans */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpans.class */
public final class InputSpans extends GeneratedMessageLite<InputSpans, C3306b> implements Object {
    private static final InputSpans DEFAULT_INSTANCE;
    private static volatile Parser<InputSpans> PARSER;
    public static final int SENTTS_FIELD_NUMBER = 1;
    public static final int SPANS_FIELD_NUMBER = 2;
    private long sentTs_;
    private Internal.ProtobufList<InputSpan> spans_ = GeneratedMessageLite.emptyProtobufList();

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputSpans$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputSpans$b.class */
    public static final class C3306b extends GeneratedMessageLite.Builder<InputSpans, C3306b> implements Object {
        public C3306b() {
            super(InputSpans.DEFAULT_INSTANCE);
        }

        public C3306b(C3305a c3305a) {
            super(InputSpans.DEFAULT_INSTANCE);
        }
    }

    static {
        InputSpans inputSpans = new InputSpans();
        DEFAULT_INSTANCE = inputSpans;
        GeneratedMessageLite.registerDefaultInstance(InputSpans.class, inputSpans);
    }

    private InputSpans() {
    }

    public void addAllSpans(Iterable<? extends InputSpan> iterable) {
        ensureSpansIsMutable();
        AbstractMessageLite.addAll(iterable, this.spans_);
    }

    public void addSpans(int i, InputSpan inputSpan) {
        inputSpan.getClass();
        ensureSpansIsMutable();
        this.spans_.add(i, inputSpan);
    }

    public void addSpans(InputSpan inputSpan) {
        inputSpan.getClass();
        ensureSpansIsMutable();
        this.spans_.add(inputSpan);
    }

    public void clearSentTs() {
        this.sentTs_ = 0L;
    }

    public void clearSpans() {
        this.spans_ = GeneratedMessageLite.emptyProtobufList();
    }

    private void ensureSpansIsMutable() {
        Internal.ProtobufList<InputSpan> protobufList = this.spans_;
        if (!protobufList.isModifiable()) {
            this.spans_ = GeneratedMessageLite.mutableCopy(protobufList);
        }
    }

    public static InputSpans getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3306b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3306b newBuilder(InputSpans inputSpans) {
        return DEFAULT_INSTANCE.createBuilder(inputSpans);
    }

    public static InputSpans parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputSpans parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputSpans parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputSpans parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputSpans parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputSpans parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputSpans parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputSpans parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputSpans parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputSpans parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputSpans parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputSpans parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputSpans> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void removeSpans(int i) {
        ensureSpansIsMutable();
        this.spans_.remove(i);
    }

    public void setSentTs(long j) {
        this.sentTs_ = j;
    }

    public void setSpans(int i, InputSpan inputSpan) {
        inputSpan.getClass();
        ensureSpansIsMutable();
        this.spans_.set(i, inputSpan);
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u0002\u0002\u001b", new Object[]{"sentTs_", "spans_", InputSpan.class});
            case 3:
                return new InputSpans();
            case 4:
                return new C3306b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputSpans.class) {
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

    public long getSentTs() {
        return this.sentTs_;
    }

    public InputSpan getSpans(int i) {
        return this.spans_.get(i);
    }

    public int getSpansCount() {
        return this.spans_.size();
    }

    public List<InputSpan> getSpansList() {
        return this.spans_;
    }

    public AbstractC20471c getSpansOrBuilder(int i) {
        return this.spans_.get(i);
    }

    public List<? extends AbstractC20471c> getSpansOrBuilderList() {
        return this.spans_;
    }
}

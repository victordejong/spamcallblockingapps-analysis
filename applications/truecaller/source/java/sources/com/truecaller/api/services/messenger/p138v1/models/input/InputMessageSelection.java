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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20469a;
/* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageSelection */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageSelection.class */
public final class InputMessageSelection extends GeneratedMessageLite<InputMessageSelection, C3277b> implements Object {
    private static final InputMessageSelection DEFAULT_INSTANCE;
    public static final int MARKED_FIELD_NUMBER = 1;
    private static volatile Parser<InputMessageSelection> PARSER;
    public static final int PEER_FIELD_NUMBER = 2;
    private int scopeCase_ = 0;
    private Object scope_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageSelection$Marked */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked.class */
    public static final class Marked extends GeneratedMessageLite<Marked, C3275a> implements Object {
        private static final Marked DEFAULT_INSTANCE;
        public static final int MESSAGE_DESCRIPTORS_FIELD_NUMBER = 1;
        private static volatile Parser<Marked> PARSER;
        private Internal.ProtobufList<InputMessageDescriptor> messageDescriptors_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageSelection$Marked$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked$a.class */
        public static final class C3275a extends GeneratedMessageLite.Builder<Marked, C3275a> implements Object {
            public C3275a() {
                super(Marked.DEFAULT_INSTANCE);
            }

            public C3275a(C3276a c3276a) {
                super(Marked.DEFAULT_INSTANCE);
            }
        }

        static {
            Marked marked = new Marked();
            DEFAULT_INSTANCE = marked;
            GeneratedMessageLite.registerDefaultInstance(Marked.class, marked);
        }

        private Marked() {
        }

        public void addAllMessageDescriptors(Iterable<? extends InputMessageDescriptor> iterable) {
            ensureMessageDescriptorsIsMutable();
            AbstractMessageLite.addAll(iterable, this.messageDescriptors_);
        }

        public void addMessageDescriptors(int i, InputMessageDescriptor inputMessageDescriptor) {
            inputMessageDescriptor.getClass();
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.add(i, inputMessageDescriptor);
        }

        public void addMessageDescriptors(InputMessageDescriptor inputMessageDescriptor) {
            inputMessageDescriptor.getClass();
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.add(inputMessageDescriptor);
        }

        public void clearMessageDescriptors() {
            this.messageDescriptors_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureMessageDescriptorsIsMutable() {
            Internal.ProtobufList<InputMessageDescriptor> protobufList = this.messageDescriptors_;
            if (!protobufList.isModifiable()) {
                this.messageDescriptors_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Marked getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3275a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3275a newBuilder(Marked marked) {
            return DEFAULT_INSTANCE.createBuilder(marked);
        }

        public static Marked parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Marked parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Marked parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Marked parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Marked parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Marked parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Marked parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Marked parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Marked parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Marked parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Marked parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Marked parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Marked> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeMessageDescriptors(int i) {
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.remove(i);
        }

        public void setMessageDescriptors(int i, InputMessageDescriptor inputMessageDescriptor) {
            inputMessageDescriptor.getClass();
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.set(i, inputMessageDescriptor);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"messageDescriptors_", InputMessageDescriptor.class});
                case 3:
                    return new Marked();
                case 4:
                    return new C3275a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Marked.class) {
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

        public InputMessageDescriptor getMessageDescriptors(int i) {
            return this.messageDescriptors_.get(i);
        }

        public int getMessageDescriptorsCount() {
            return this.messageDescriptors_.size();
        }

        public List<InputMessageDescriptor> getMessageDescriptorsList() {
            return this.messageDescriptors_;
        }

        public AbstractC20469a getMessageDescriptorsOrBuilder(int i) {
            return this.messageDescriptors_.get(i);
        }

        public List<? extends AbstractC20469a> getMessageDescriptorsOrBuilderList() {
            return this.messageDescriptors_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageSelection$ScopeCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase.class */
    public enum ScopeCase {
        MARKED(1),
        PEER(2),
        SCOPE_NOT_SET(0);
        
        private final int value;

        ScopeCase(int i) {
            this.value = i;
        }

        public static ScopeCase forNumber(int i) {
            if (i != 0) {
                if (i == 1) {
                    return MARKED;
                }
                if (i == 2) {
                    return PEER;
                }
                return null;
            }
            return SCOPE_NOT_SET;
        }

        @Deprecated
        public static ScopeCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.input.InputMessageSelection$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b.class */
    public static final class C3277b extends GeneratedMessageLite.Builder<InputMessageSelection, C3277b> implements Object {
        public C3277b() {
            super(InputMessageSelection.DEFAULT_INSTANCE);
        }

        public C3277b(C3276a c3276a) {
            super(InputMessageSelection.DEFAULT_INSTANCE);
        }
    }

    static {
        InputMessageSelection inputMessageSelection = new InputMessageSelection();
        DEFAULT_INSTANCE = inputMessageSelection;
        GeneratedMessageLite.registerDefaultInstance(InputMessageSelection.class, inputMessageSelection);
    }

    private InputMessageSelection() {
    }

    public void clearMarked() {
        if (this.scopeCase_ == 1) {
            this.scopeCase_ = 0;
            this.scope_ = null;
        }
    }

    public void clearPeer() {
        if (this.scopeCase_ == 2) {
            this.scopeCase_ = 0;
            this.scope_ = null;
        }
    }

    public void clearScope() {
        this.scopeCase_ = 0;
        this.scope_ = null;
    }

    public static InputMessageSelection getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeMarked(Marked marked) {
        marked.getClass();
        if (this.scopeCase_ != 1 || this.scope_ == Marked.getDefaultInstance()) {
            this.scope_ = marked;
        } else {
            this.scope_ = Marked.newBuilder((Marked) this.scope_).mergeFrom(marked).buildPartial();
        }
        this.scopeCase_ = 1;
    }

    public void mergePeer(InputPeer inputPeer) {
        inputPeer.getClass();
        if (this.scopeCase_ != 2 || this.scope_ == InputPeer.getDefaultInstance()) {
            this.scope_ = inputPeer;
        } else {
            this.scope_ = InputPeer.newBuilder((InputPeer) this.scope_).mergeFrom(inputPeer).buildPartial();
        }
        this.scopeCase_ = 2;
    }

    public static C3277b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3277b newBuilder(InputMessageSelection inputMessageSelection) {
        return DEFAULT_INSTANCE.createBuilder(inputMessageSelection);
    }

    public static InputMessageSelection parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputMessageSelection parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputMessageSelection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static InputMessageSelection parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static InputMessageSelection parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static InputMessageSelection parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static InputMessageSelection parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static InputMessageSelection parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static InputMessageSelection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static InputMessageSelection parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static InputMessageSelection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static InputMessageSelection parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<InputMessageSelection> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setMarked(Marked marked) {
        marked.getClass();
        this.scope_ = marked;
        this.scopeCase_ = 1;
    }

    public void setPeer(InputPeer inputPeer) {
        inputPeer.getClass();
        this.scope_ = inputPeer;
        this.scopeCase_ = 2;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002\u0001��\u0001\u0002\u0002������\u0001<��\u0002<��", new Object[]{"scope_", "scopeCase_", Marked.class, InputPeer.class});
            case 3:
                return new InputMessageSelection();
            case 4:
                return new C3277b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (InputMessageSelection.class) {
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

    public Marked getMarked() {
        return this.scopeCase_ == 1 ? (Marked) this.scope_ : Marked.getDefaultInstance();
    }

    public InputPeer getPeer() {
        return this.scopeCase_ == 2 ? (InputPeer) this.scope_ : InputPeer.getDefaultInstance();
    }

    public ScopeCase getScopeCase() {
        return ScopeCase.forNumber(this.scopeCase_);
    }

    public boolean hasMarked() {
        boolean z = true;
        if (this.scopeCase_ != 1) {
            z = false;
        }
        return z;
    }

    public boolean hasPeer() {
        return this.scopeCase_ == 2;
    }
}

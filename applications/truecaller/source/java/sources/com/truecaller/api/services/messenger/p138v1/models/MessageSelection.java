package com.truecaller.api.services.messenger.p138v1.models;

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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20463b;
/* renamed from: com.truecaller.api.services.messenger.v1.models.MessageSelection */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageSelection.class */
public final class MessageSelection extends GeneratedMessageLite<MessageSelection, C3207b> implements Object {
    private static final MessageSelection DEFAULT_INSTANCE;
    public static final int MARKED_FIELD_NUMBER = 1;
    private static volatile Parser<MessageSelection> PARSER;
    public static final int PEER_FIELD_NUMBER = 2;
    private int scopeCase_ = 0;
    private Object scope_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.MessageSelection$Marked */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageSelection$Marked.class */
    public static final class Marked extends GeneratedMessageLite<Marked, C3205a> implements Object {
        private static final Marked DEFAULT_INSTANCE;
        public static final int MESSAGE_DESCRIPTORS_FIELD_NUMBER = 1;
        private static volatile Parser<Marked> PARSER;
        private Internal.ProtobufList<MessageDescriptor> messageDescriptors_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.models.MessageSelection$Marked$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageSelection$Marked$a.class */
        public static final class C3205a extends GeneratedMessageLite.Builder<Marked, C3205a> implements Object {
            public C3205a() {
                super(Marked.DEFAULT_INSTANCE);
            }

            public C3205a(C3206a c3206a) {
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

        public void addAllMessageDescriptors(Iterable<? extends MessageDescriptor> iterable) {
            ensureMessageDescriptorsIsMutable();
            AbstractMessageLite.addAll(iterable, this.messageDescriptors_);
        }

        public void addMessageDescriptors(int i, MessageDescriptor messageDescriptor) {
            messageDescriptor.getClass();
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.add(i, messageDescriptor);
        }

        public void addMessageDescriptors(MessageDescriptor messageDescriptor) {
            messageDescriptor.getClass();
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.add(messageDescriptor);
        }

        public void clearMessageDescriptors() {
            this.messageDescriptors_ = GeneratedMessageLite.emptyProtobufList();
        }

        private void ensureMessageDescriptorsIsMutable() {
            Internal.ProtobufList<MessageDescriptor> protobufList = this.messageDescriptors_;
            if (!protobufList.isModifiable()) {
                this.messageDescriptors_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Marked getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3205a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3205a newBuilder(Marked marked) {
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

        public void setMessageDescriptors(int i, MessageDescriptor messageDescriptor) {
            messageDescriptor.getClass();
            ensureMessageDescriptorsIsMutable();
            this.messageDescriptors_.set(i, messageDescriptor);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"messageDescriptors_", MessageDescriptor.class});
                case 3:
                    return new Marked();
                case 4:
                    return new C3205a(null);
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

        public MessageDescriptor getMessageDescriptors(int i) {
            return this.messageDescriptors_.get(i);
        }

        public int getMessageDescriptorsCount() {
            return this.messageDescriptors_.size();
        }

        public List<MessageDescriptor> getMessageDescriptorsList() {
            return this.messageDescriptors_;
        }

        public AbstractC20463b getMessageDescriptorsOrBuilder(int i) {
            return this.messageDescriptors_.get(i);
        }

        public List<? extends AbstractC20463b> getMessageDescriptorsOrBuilderList() {
            return this.messageDescriptors_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.models.MessageSelection$ScopeCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageSelection$ScopeCase.class */
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

    /* renamed from: com.truecaller.api.services.messenger.v1.models.MessageSelection$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/MessageSelection$b.class */
    public static final class C3207b extends GeneratedMessageLite.Builder<MessageSelection, C3207b> implements Object {
        public C3207b() {
            super(MessageSelection.DEFAULT_INSTANCE);
        }

        public C3207b(C3206a c3206a) {
            super(MessageSelection.DEFAULT_INSTANCE);
        }
    }

    static {
        MessageSelection messageSelection = new MessageSelection();
        DEFAULT_INSTANCE = messageSelection;
        GeneratedMessageLite.registerDefaultInstance(MessageSelection.class, messageSelection);
    }

    private MessageSelection() {
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

    public static MessageSelection getDefaultInstance() {
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

    public void mergePeer(Peer peer) {
        peer.getClass();
        if (this.scopeCase_ != 2 || this.scope_ == Peer.getDefaultInstance()) {
            this.scope_ = peer;
        } else {
            this.scope_ = Peer.newBuilder((Peer) this.scope_).mergeFrom(peer).buildPartial();
        }
        this.scopeCase_ = 2;
    }

    public static C3207b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3207b newBuilder(MessageSelection messageSelection) {
        return DEFAULT_INSTANCE.createBuilder(messageSelection);
    }

    public static MessageSelection parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessageSelection parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MessageSelection parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static MessageSelection parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static MessageSelection parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static MessageSelection parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static MessageSelection parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static MessageSelection parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static MessageSelection parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static MessageSelection parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static MessageSelection parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static MessageSelection parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<MessageSelection> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setMarked(Marked marked) {
        marked.getClass();
        this.scope_ = marked;
        this.scopeCase_ = 1;
    }

    public void setPeer(Peer peer) {
        peer.getClass();
        this.scope_ = peer;
        this.scopeCase_ = 2;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002\u0001��\u0001\u0002\u0002������\u0001<��\u0002<��", new Object[]{"scope_", "scopeCase_", Marked.class, Peer.class});
            case 3:
                return new MessageSelection();
            case 4:
                return new C3207b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (MessageSelection.class) {
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

    public Peer getPeer() {
        return this.scopeCase_ == 2 ? (Peer) this.scope_ : Peer.getDefaultInstance();
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

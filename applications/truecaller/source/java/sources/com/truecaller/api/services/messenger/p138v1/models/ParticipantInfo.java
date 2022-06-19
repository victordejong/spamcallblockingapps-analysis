package com.truecaller.api.services.messenger.p138v1.models;

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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20466e;
/* renamed from: com.truecaller.api.services.messenger.v1.models.ParticipantInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/ParticipantInfo.class */
public final class ParticipantInfo extends GeneratedMessageLite<ParticipantInfo, C3222b> implements AbstractC20466e {
    private static final ParticipantInfo DEFAULT_INSTANCE;
    private static volatile Parser<ParticipantInfo> PARSER;
    public static final int PEER_FIELD_NUMBER = 1;
    public static final int ROLES_FIELD_NUMBER = 2;
    private Peer peer_;
    private int roles_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.ParticipantInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/ParticipantInfo$b.class */
    public static final class C3222b extends GeneratedMessageLite.Builder<ParticipantInfo, C3222b> implements AbstractC20466e {
        public C3222b() {
            super(ParticipantInfo.DEFAULT_INSTANCE);
        }

        public C3222b(C3221a c3221a) {
            super(ParticipantInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        ParticipantInfo participantInfo = new ParticipantInfo();
        DEFAULT_INSTANCE = participantInfo;
        GeneratedMessageLite.registerDefaultInstance(ParticipantInfo.class, participantInfo);
    }

    private ParticipantInfo() {
    }

    public void clearPeer() {
        this.peer_ = null;
    }

    public void clearRoles() {
        this.roles_ = 0;
    }

    public static ParticipantInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergePeer(Peer peer) {
        peer.getClass();
        Peer peer2 = this.peer_;
        if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
            this.peer_ = peer;
        } else {
            this.peer_ = Peer.newBuilder(this.peer_).mergeFrom(peer).buildPartial();
        }
    }

    public static C3222b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3222b newBuilder(ParticipantInfo participantInfo) {
        return DEFAULT_INSTANCE.createBuilder(participantInfo);
    }

    public static ParticipantInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ParticipantInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ParticipantInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static ParticipantInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static ParticipantInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static ParticipantInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static ParticipantInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ParticipantInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ParticipantInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static ParticipantInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static ParticipantInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ParticipantInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<ParticipantInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setPeer(Peer peer) {
        peer.getClass();
        this.peer_ = peer;
    }

    public void setRoles(int i) {
        this.roles_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u0004", new Object[]{"peer_", "roles_"});
            case 3:
                return new ParticipantInfo();
            case 4:
                return new C3222b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (ParticipantInfo.class) {
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

    public Peer getPeer() {
        Peer peer = this.peer_;
        Peer peer2 = peer;
        if (peer == null) {
            peer2 = Peer.getDefaultInstance();
        }
        return peer2;
    }

    public int getRoles() {
        return this.roles_;
    }

    public boolean hasPeer() {
        return this.peer_ != null;
    }
}

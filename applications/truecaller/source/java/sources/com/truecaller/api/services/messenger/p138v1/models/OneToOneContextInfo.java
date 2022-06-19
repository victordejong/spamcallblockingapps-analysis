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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20465d;
/* renamed from: com.truecaller.api.services.messenger.v1.models.OneToOneContextInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/OneToOneContextInfo.class */
public final class OneToOneContextInfo extends GeneratedMessageLite<OneToOneContextInfo, C3220b> implements AbstractC20465d {
    private static final OneToOneContextInfo DEFAULT_INSTANCE;
    public static final int NOTIFICATION_SETTINGS_FIELD_NUMBER = 3;
    private static volatile Parser<OneToOneContextInfo> PARSER;
    public static final int PEER_FIELD_NUMBER = 1;
    private NotificationSettings notificationSettings_;
    private Peer peer_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.OneToOneContextInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b.class */
    public static final class C3220b extends GeneratedMessageLite.Builder<OneToOneContextInfo, C3220b> implements AbstractC20465d {
        public C3220b() {
            super(OneToOneContextInfo.DEFAULT_INSTANCE);
        }

        public C3220b(C3219a c3219a) {
            super(OneToOneContextInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        OneToOneContextInfo oneToOneContextInfo = new OneToOneContextInfo();
        DEFAULT_INSTANCE = oneToOneContextInfo;
        GeneratedMessageLite.registerDefaultInstance(OneToOneContextInfo.class, oneToOneContextInfo);
    }

    private OneToOneContextInfo() {
    }

    public void clearNotificationSettings() {
        this.notificationSettings_ = null;
    }

    public void clearPeer() {
        this.peer_ = null;
    }

    public static OneToOneContextInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeNotificationSettings(NotificationSettings notificationSettings) {
        notificationSettings.getClass();
        NotificationSettings notificationSettings2 = this.notificationSettings_;
        if (notificationSettings2 == null || notificationSettings2 == NotificationSettings.getDefaultInstance()) {
            this.notificationSettings_ = notificationSettings;
        } else {
            this.notificationSettings_ = NotificationSettings.newBuilder(this.notificationSettings_).mergeFrom(notificationSettings).buildPartial();
        }
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

    public static C3220b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3220b newBuilder(OneToOneContextInfo oneToOneContextInfo) {
        return DEFAULT_INSTANCE.createBuilder(oneToOneContextInfo);
    }

    public static OneToOneContextInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static OneToOneContextInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static OneToOneContextInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static OneToOneContextInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static OneToOneContextInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static OneToOneContextInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static OneToOneContextInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static OneToOneContextInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static OneToOneContextInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static OneToOneContextInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static OneToOneContextInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static OneToOneContextInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<OneToOneContextInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setNotificationSettings(NotificationSettings notificationSettings) {
        notificationSettings.getClass();
        this.notificationSettings_ = notificationSettings;
    }

    public void setPeer(Peer peer) {
        peer.getClass();
        this.peer_ = peer;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0003\u0002������\u0001\t\u0003\t", new Object[]{"peer_", "notificationSettings_"});
            case 3:
                return new OneToOneContextInfo();
            case 4:
                return new C3220b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (OneToOneContextInfo.class) {
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

    public NotificationSettings getNotificationSettings() {
        NotificationSettings notificationSettings = this.notificationSettings_;
        NotificationSettings notificationSettings2 = notificationSettings;
        if (notificationSettings == null) {
            notificationSettings2 = NotificationSettings.getDefaultInstance();
        }
        return notificationSettings2;
    }

    public Peer getPeer() {
        Peer peer = this.peer_;
        Peer peer2 = peer;
        if (peer == null) {
            peer2 = Peer.getDefaultInstance();
        }
        return peer2;
    }

    public boolean hasNotificationSettings() {
        return this.notificationSettings_ != null;
    }

    public boolean hasPeer() {
        return this.peer_ != null;
    }
}

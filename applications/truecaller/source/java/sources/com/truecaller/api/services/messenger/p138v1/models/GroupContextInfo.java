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
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20462a;
/* renamed from: com.truecaller.api.services.messenger.v1.models.GroupContextInfo */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupContextInfo.class */
public final class GroupContextInfo extends GeneratedMessageLite<GroupContextInfo, C3169b> implements AbstractC20462a {
    public static final int CURRENT_SEQ_FIELD_NUMBER = 1;
    private static final GroupContextInfo DEFAULT_INSTANCE;
    public static final int GROUP_INFO_EXT_FIELD_NUMBER = 10;
    public static final int GROUP_INFO_FIELD_NUMBER = 5;
    public static final int INVITER_FIELD_NUMBER = 9;
    public static final int NOTIFICATION_SETTINGS_FIELD_NUMBER = 7;
    private static volatile Parser<GroupContextInfo> PARSER;
    public static final int PEER_FIELD_NUMBER = 6;
    public static final int PERMISSIONS_FIELD_NUMBER = 4;
    public static final int ROLES_FIELD_NUMBER = 3;
    public static final int SINCE_DATE_FIELD_NUMBER = 8;
    public static final int SINCE_SEQ_FIELD_NUMBER = 2;
    private long currentSeq_;
    private GroupInfoExt groupInfoExt_;
    private GroupInfo groupInfo_;
    private Peer inviter_;
    private NotificationSettings notificationSettings_;
    private Peer peer_;
    private ContextPermissions permissions_;
    private int roles_;
    private int sinceDate_;
    private long sinceSeq_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.GroupContextInfo$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/GroupContextInfo$b.class */
    public static final class C3169b extends GeneratedMessageLite.Builder<GroupContextInfo, C3169b> implements AbstractC20462a {
        public C3169b() {
            super(GroupContextInfo.DEFAULT_INSTANCE);
        }

        public C3169b(C3168a c3168a) {
            super(GroupContextInfo.DEFAULT_INSTANCE);
        }
    }

    static {
        GroupContextInfo groupContextInfo = new GroupContextInfo();
        DEFAULT_INSTANCE = groupContextInfo;
        GeneratedMessageLite.registerDefaultInstance(GroupContextInfo.class, groupContextInfo);
    }

    private GroupContextInfo() {
    }

    public void clearCurrentSeq() {
        this.currentSeq_ = 0L;
    }

    public void clearGroupInfo() {
        this.groupInfo_ = null;
    }

    public void clearGroupInfoExt() {
        this.groupInfoExt_ = null;
    }

    public void clearInviter() {
        this.inviter_ = null;
    }

    public void clearNotificationSettings() {
        this.notificationSettings_ = null;
    }

    public void clearPeer() {
        this.peer_ = null;
    }

    public void clearPermissions() {
        this.permissions_ = null;
    }

    public void clearRoles() {
        this.roles_ = 0;
    }

    public void clearSinceDate() {
        this.sinceDate_ = 0;
    }

    public void clearSinceSeq() {
        this.sinceSeq_ = 0L;
    }

    public static GroupContextInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeGroupInfo(GroupInfo groupInfo) {
        groupInfo.getClass();
        GroupInfo groupInfo2 = this.groupInfo_;
        if (groupInfo2 == null || groupInfo2 == GroupInfo.getDefaultInstance()) {
            this.groupInfo_ = groupInfo;
        } else {
            this.groupInfo_ = GroupInfo.newBuilder(this.groupInfo_).mergeFrom(groupInfo).buildPartial();
        }
    }

    public void mergeGroupInfoExt(GroupInfoExt groupInfoExt) {
        groupInfoExt.getClass();
        GroupInfoExt groupInfoExt2 = this.groupInfoExt_;
        if (groupInfoExt2 == null || groupInfoExt2 == GroupInfoExt.getDefaultInstance()) {
            this.groupInfoExt_ = groupInfoExt;
        } else {
            this.groupInfoExt_ = GroupInfoExt.newBuilder(this.groupInfoExt_).mergeFrom(groupInfoExt).buildPartial();
        }
    }

    public void mergeInviter(Peer peer) {
        peer.getClass();
        Peer peer2 = this.inviter_;
        if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
            this.inviter_ = peer;
        } else {
            this.inviter_ = Peer.newBuilder(this.inviter_).mergeFrom(peer).buildPartial();
        }
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

    public void mergePermissions(ContextPermissions contextPermissions) {
        contextPermissions.getClass();
        ContextPermissions contextPermissions2 = this.permissions_;
        if (contextPermissions2 == null || contextPermissions2 == ContextPermissions.getDefaultInstance()) {
            this.permissions_ = contextPermissions;
        } else {
            this.permissions_ = ContextPermissions.newBuilder(this.permissions_).mergeFrom(contextPermissions).buildPartial();
        }
    }

    public static C3169b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3169b newBuilder(GroupContextInfo groupContextInfo) {
        return DEFAULT_INSTANCE.createBuilder(groupContextInfo);
    }

    public static GroupContextInfo parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GroupContextInfo parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GroupContextInfo parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static GroupContextInfo parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static GroupContextInfo parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static GroupContextInfo parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static GroupContextInfo parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static GroupContextInfo parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static GroupContextInfo parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static GroupContextInfo parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static GroupContextInfo parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static GroupContextInfo parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<GroupContextInfo> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setCurrentSeq(long j) {
        this.currentSeq_ = j;
    }

    public void setGroupInfo(GroupInfo groupInfo) {
        groupInfo.getClass();
        this.groupInfo_ = groupInfo;
    }

    public void setGroupInfoExt(GroupInfoExt groupInfoExt) {
        groupInfoExt.getClass();
        this.groupInfoExt_ = groupInfoExt;
    }

    public void setInviter(Peer peer) {
        peer.getClass();
        this.inviter_ = peer;
    }

    public void setNotificationSettings(NotificationSettings notificationSettings) {
        notificationSettings.getClass();
        this.notificationSettings_ = notificationSettings;
    }

    public void setPeer(Peer peer) {
        peer.getClass();
        this.peer_ = peer;
    }

    public void setPermissions(ContextPermissions contextPermissions) {
        contextPermissions.getClass();
        this.permissions_ = contextPermissions;
    }

    public void setRoles(int i) {
        this.roles_ = i;
    }

    public void setSinceDate(int i) {
        this.sinceDate_ = i;
    }

    public void setSinceSeq(long j) {
        this.sinceSeq_ = j;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\n����\u0001\n\n������\u0001\u0002\u0002\u0002\u0003\u0004\u0004\t\u0005\t\u0006\t\u0007\t\b\u0004\t\t\n\t", new Object[]{"currentSeq_", "sinceSeq_", "roles_", "permissions_", "groupInfo_", "peer_", "notificationSettings_", "sinceDate_", "inviter_", "groupInfoExt_"});
            case 3:
                return new GroupContextInfo();
            case 4:
                return new C3169b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (GroupContextInfo.class) {
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

    public long getCurrentSeq() {
        return this.currentSeq_;
    }

    public GroupInfo getGroupInfo() {
        GroupInfo groupInfo = this.groupInfo_;
        GroupInfo groupInfo2 = groupInfo;
        if (groupInfo == null) {
            groupInfo2 = GroupInfo.getDefaultInstance();
        }
        return groupInfo2;
    }

    public GroupInfoExt getGroupInfoExt() {
        GroupInfoExt groupInfoExt = this.groupInfoExt_;
        GroupInfoExt groupInfoExt2 = groupInfoExt;
        if (groupInfoExt == null) {
            groupInfoExt2 = GroupInfoExt.getDefaultInstance();
        }
        return groupInfoExt2;
    }

    public Peer getInviter() {
        Peer peer = this.inviter_;
        Peer peer2 = peer;
        if (peer == null) {
            peer2 = Peer.getDefaultInstance();
        }
        return peer2;
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

    public ContextPermissions getPermissions() {
        ContextPermissions contextPermissions = this.permissions_;
        ContextPermissions contextPermissions2 = contextPermissions;
        if (contextPermissions == null) {
            contextPermissions2 = ContextPermissions.getDefaultInstance();
        }
        return contextPermissions2;
    }

    public int getRoles() {
        return this.roles_;
    }

    public int getSinceDate() {
        return this.sinceDate_;
    }

    public long getSinceSeq() {
        return this.sinceSeq_;
    }

    public boolean hasGroupInfo() {
        return this.groupInfo_ != null;
    }

    public boolean hasGroupInfoExt() {
        return this.groupInfoExt_ != null;
    }

    public boolean hasInviter() {
        return this.inviter_ != null;
    }

    public boolean hasNotificationSettings() {
        return this.notificationSettings_ != null;
    }

    public boolean hasPeer() {
        return this.peer_ != null;
    }

    public boolean hasPermissions() {
        return this.permissions_ != null;
    }
}

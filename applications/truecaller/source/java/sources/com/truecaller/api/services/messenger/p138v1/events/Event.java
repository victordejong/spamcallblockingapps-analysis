package com.truecaller.api.services.messenger.p138v1.events;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Int64Value;
import com.google.protobuf.Int64ValueOrBuilder;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MapEntryLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.Parser;
import com.google.protobuf.WireFormat;
import com.truecaller.api.services.messenger.p138v1.models.ContextPermissions;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfo;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfoDelta;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfoExt;
import com.truecaller.api.services.messenger.p138v1.models.MessageCategory;
import com.truecaller.api.services.messenger.p138v1.models.MessageContent;
import com.truecaller.api.services.messenger.p138v1.models.MessageSelection;
import com.truecaller.api.services.messenger.p138v1.models.ParticipantInfo;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.ReactionContent;
import com.truecaller.api.services.messenger.p138v1.models.ReportType;
import com.truecaller.api.services.messenger.p138v1.models.Urgency;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import com.truecaller.api.services.messenger.p138v1.models.UserTypingKind;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1250c.AbstractC20461a;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20466e;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20467f;
/* renamed from: com.truecaller.api.services.messenger.v1.events.Event */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event.class */
public final class Event extends GeneratedMessageLite<Event, C3157b> implements AbstractC20461a {
    public static final int CONTEXT_SEQ_FIELD_NUMBER = 996;
    private static final Event DEFAULT_INSTANCE;
    public static final int GROUP_CREATED_FIELD_NUMBER = 5;
    public static final int GROUP_DELETED_FIELD_NUMBER = 10;
    public static final int GROUP_INFO_UPDATED_FIELD_NUMBER = 9;
    public static final int GROUP_INVITE_KEY_UPDATED_FIELD_NUMBER = 12;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int INCOMPATIBLE_EVENT_FIELD_NUMBER = 998;
    public static final int MESSAGES_DELETED_FIELD_NUMBER = 14;
    public static final int MESSAGE_EDITED_FIELD_NUMBER = 13;
    public static final int MESSAGE_SENT_FIELD_NUMBER = 2;
    public static final int ORIGINAL_FIELD_NUMBER = 999;
    private static volatile Parser<Event> PARSER;
    public static final int PARTICIPANT_ADDED_FIELD_NUMBER = 6;
    public static final int PARTICIPANT_REMOVED_FIELD_NUMBER = 7;
    public static final int PING_FIELD_NUMBER = 997;
    public static final int REACTION_SENT_FIELD_NUMBER = 4;
    public static final int REPORT_SENT_FIELD_NUMBER = 3;
    public static final int ROLES_UPDATED_FIELD_NUMBER = 8;
    public static final int USER_TYPING_FIELD_NUMBER = 11;
    private long contextSeq_;
    private long id_;
    private OriginalEvent original_;
    private int payloadCase_ = 0;
    private Object payload_;

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$Ack */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$Ack.class */
    public static final class Ack extends GeneratedMessageLite<Ack, C3135a> implements Object {
        private static final Ack DEFAULT_INSTANCE;
        public static final int EVENT_ID_FIELD_NUMBER = 1;
        private static volatile Parser<Ack> PARSER;
        private long eventId_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$Ack$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$Ack$a.class */
        public static final class C3135a extends GeneratedMessageLite.Builder<Ack, C3135a> implements Object {
            public C3135a() {
                super(Ack.DEFAULT_INSTANCE);
            }

            public C3135a(C3156a c3156a) {
                super(Ack.DEFAULT_INSTANCE);
            }
        }

        static {
            Ack ack = new Ack();
            DEFAULT_INSTANCE = ack;
            GeneratedMessageLite.registerDefaultInstance(Ack.class, ack);
        }

        private Ack() {
        }

        public void clearEventId() {
            this.eventId_ = 0L;
        }

        public static Ack getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3135a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3135a newBuilder(Ack ack) {
            return DEFAULT_INSTANCE.createBuilder(ack);
        }

        public static Ack parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Ack parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Ack parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Ack parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Ack parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Ack parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Ack parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Ack parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Ack parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Ack parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Ack parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Ack parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Ack> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setEventId(long j) {
            this.eventId_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\u0002", new Object[]{"eventId_"});
                case 3:
                    return new Ack();
                case 4:
                    return new C3135a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Ack.class) {
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

        public long getEventId() {
            return this.eventId_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupCreated */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupCreated.class */
    public static final class GroupCreated extends GeneratedMessageLite<GroupCreated, C3136a> implements Object {
        public static final int DATE_FIELD_NUMBER = 4;
        private static final GroupCreated DEFAULT_INSTANCE;
        public static final int GROUP_ID_FIELD_NUMBER = 2;
        public static final int GROUP_INFO_EXT_FIELD_NUMBER = 12;
        public static final int GROUP_INFO_FIELD_NUMBER = 6;
        public static final int LEGACY_PARTICIPANTS_FIELD_NUMBER = 5;
        public static final int LEGACY_PARTICIPANT_ROLES_FIELD_NUMBER = 9;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<GroupCreated> PARSER;
        public static final int PARTICIPANTS_FIELD_NUMBER = 10;
        public static final int PERMISSIONS_FIELD_NUMBER = 11;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int SENDER_ROLES_FIELD_NUMBER = 8;
        public static final int USER_INFO_FIELD_NUMBER = 7;
        private int date_;
        private GroupInfoExt groupInfoExt_;
        private GroupInfo groupInfo_;
        private int legacyParticipantRoles_;
        private ContextPermissions permissions_;
        private int senderRoles_;
        private Peer sender_;
        private MapFieldLite<String, UserInfo> userInfo_ = MapFieldLite.emptyMapField();
        private String groupId_ = "";
        private String messageId_ = "";
        private Internal.ProtobufList<Peer> legacyParticipants_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ParticipantInfo> participants_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupCreated$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupCreated$a.class */
        public static final class C3136a extends GeneratedMessageLite.Builder<GroupCreated, C3136a> implements Object {
            public C3136a() {
                super(GroupCreated.DEFAULT_INSTANCE);
            }

            public C3136a(C3156a c3156a) {
                super(GroupCreated.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupCreated$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupCreated$b.class */
        public static final class C3137b {

            /* renamed from: a */
            public static final MapEntryLite<String, UserInfo> f10105a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, UserInfo.getDefaultInstance());
        }

        static {
            GroupCreated groupCreated = new GroupCreated();
            DEFAULT_INSTANCE = groupCreated;
            GeneratedMessageLite.registerDefaultInstance(GroupCreated.class, groupCreated);
        }

        private GroupCreated() {
        }

        public void addAllLegacyParticipants(Iterable<? extends Peer> iterable) {
            ensureLegacyParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.legacyParticipants_);
        }

        public void addAllParticipants(Iterable<? extends ParticipantInfo> iterable) {
            ensureParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.participants_);
        }

        public void addLegacyParticipants(int i, Peer peer) {
            peer.getClass();
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.add(i, peer);
        }

        public void addLegacyParticipants(Peer peer) {
            peer.getClass();
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.add(peer);
        }

        public void addParticipants(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(i, participantInfo);
        }

        public void addParticipants(ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(participantInfo);
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearGroupId() {
            this.groupId_ = getDefaultInstance().getGroupId();
        }

        public void clearGroupInfo() {
            this.groupInfo_ = null;
        }

        public void clearGroupInfoExt() {
            this.groupInfoExt_ = null;
        }

        public void clearLegacyParticipantRoles() {
            this.legacyParticipantRoles_ = 0;
        }

        public void clearLegacyParticipants() {
            this.legacyParticipants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearParticipants() {
            this.participants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearPermissions() {
            this.permissions_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public void clearSenderRoles() {
            this.senderRoles_ = 0;
        }

        private void ensureLegacyParticipantsIsMutable() {
            Internal.ProtobufList<Peer> protobufList = this.legacyParticipants_;
            if (!protobufList.isModifiable()) {
                this.legacyParticipants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureParticipantsIsMutable() {
            Internal.ProtobufList<ParticipantInfo> protobufList = this.participants_;
            if (!protobufList.isModifiable()) {
                this.participants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static GroupCreated getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<String, UserInfo> getMutableUserInfoMap() {
            return internalGetMutableUserInfo();
        }

        private MapFieldLite<String, UserInfo> internalGetMutableUserInfo() {
            if (!this.userInfo_.isMutable()) {
                this.userInfo_ = this.userInfo_.mutableCopy();
            }
            return this.userInfo_;
        }

        private MapFieldLite<String, UserInfo> internalGetUserInfo() {
            return this.userInfo_;
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

        public void mergePermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            ContextPermissions contextPermissions2 = this.permissions_;
            if (contextPermissions2 == null || contextPermissions2 == ContextPermissions.getDefaultInstance()) {
                this.permissions_ = contextPermissions;
            } else {
                this.permissions_ = ContextPermissions.newBuilder(this.permissions_).mergeFrom(contextPermissions).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3136a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3136a newBuilder(GroupCreated groupCreated) {
            return DEFAULT_INSTANCE.createBuilder(groupCreated);
        }

        public static GroupCreated parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupCreated parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupCreated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static GroupCreated parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static GroupCreated parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static GroupCreated parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static GroupCreated parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupCreated parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupCreated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static GroupCreated parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static GroupCreated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static GroupCreated parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<GroupCreated> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeLegacyParticipants(int i) {
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.remove(i);
        }

        public void removeParticipants(int i) {
            ensureParticipantsIsMutable();
            this.participants_.remove(i);
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setGroupId(String str) {
            str.getClass();
            this.groupId_ = str;
        }

        public void setGroupIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.groupId_ = byteString.toStringUtf8();
        }

        public void setGroupInfo(GroupInfo groupInfo) {
            groupInfo.getClass();
            this.groupInfo_ = groupInfo;
        }

        public void setGroupInfoExt(GroupInfoExt groupInfoExt) {
            groupInfoExt.getClass();
            this.groupInfoExt_ = groupInfoExt;
        }

        public void setLegacyParticipantRoles(int i) {
            this.legacyParticipantRoles_ = i;
        }

        public void setLegacyParticipants(int i, Peer peer) {
            peer.getClass();
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.set(i, peer);
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setParticipants(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsIsMutable();
            this.participants_.set(i, participantInfo);
        }

        public void setPermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            this.permissions_ = contextPermissions;
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public void setSenderRoles(int i) {
            this.senderRoles_ = i;
        }

        public boolean containsUserInfo(String str) {
            str.getClass();
            return internalGetUserInfo().containsKey(str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\f����\u0001\f\f\u0001\u0002��\u0001\t\u0002Ȉ\u0003Ȉ\u0004\u0004\u0005\u001b\u0006\t\u00072\b\u0004\t\u0004\n\u001b\u000b\t\f\t", new Object[]{"sender_", "groupId_", "messageId_", "date_", "legacyParticipants_", Peer.class, "groupInfo_", "userInfo_", C3137b.f10105a, "senderRoles_", "legacyParticipantRoles_", "participants_", ParticipantInfo.class, "permissions_", "groupInfoExt_"});
                case 3:
                    return new GroupCreated();
                case 4:
                    return new C3136a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (GroupCreated.class) {
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

        public int getDate() {
            return this.date_;
        }

        public String getGroupId() {
            return this.groupId_;
        }

        public ByteString getGroupIdBytes() {
            return ByteString.copyFromUtf8(this.groupId_);
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

        public int getLegacyParticipantRoles() {
            return this.legacyParticipantRoles_;
        }

        public Peer getLegacyParticipants(int i) {
            return this.legacyParticipants_.get(i);
        }

        public int getLegacyParticipantsCount() {
            return this.legacyParticipants_.size();
        }

        public List<Peer> getLegacyParticipantsList() {
            return this.legacyParticipants_;
        }

        public AbstractC20467f getLegacyParticipantsOrBuilder(int i) {
            return this.legacyParticipants_.get(i);
        }

        public List<? extends AbstractC20467f> getLegacyParticipantsOrBuilderList() {
            return this.legacyParticipants_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public ParticipantInfo getParticipants(int i) {
            return this.participants_.get(i);
        }

        public int getParticipantsCount() {
            return this.participants_.size();
        }

        public List<ParticipantInfo> getParticipantsList() {
            return this.participants_;
        }

        public AbstractC20466e getParticipantsOrBuilder(int i) {
            return this.participants_.get(i);
        }

        public List<? extends AbstractC20466e> getParticipantsOrBuilderList() {
            return this.participants_;
        }

        public ContextPermissions getPermissions() {
            ContextPermissions contextPermissions = this.permissions_;
            ContextPermissions contextPermissions2 = contextPermissions;
            if (contextPermissions == null) {
                contextPermissions2 = ContextPermissions.getDefaultInstance();
            }
            return contextPermissions2;
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public int getSenderRoles() {
            return this.senderRoles_;
        }

        @Deprecated
        public Map<String, UserInfo> getUserInfo() {
            return getUserInfoMap();
        }

        public int getUserInfoCount() {
            return internalGetUserInfo().size();
        }

        public Map<String, UserInfo> getUserInfoMap() {
            return Collections.unmodifiableMap(internalGetUserInfo());
        }

        public UserInfo getUserInfoOrDefault(String str, UserInfo userInfo) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                userInfo = internalGetUserInfo.get(str);
            }
            return userInfo;
        }

        public UserInfo getUserInfoOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                return internalGetUserInfo.get(str);
            }
            throw new IllegalArgumentException();
        }

        public boolean hasGroupInfo() {
            return this.groupInfo_ != null;
        }

        public boolean hasGroupInfoExt() {
            return this.groupInfoExt_ != null;
        }

        public boolean hasPermissions() {
            return this.permissions_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupDeleted */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupDeleted.class */
    public static final class GroupDeleted extends GeneratedMessageLite<GroupDeleted, C3138a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 2;
        public static final int DATE_FIELD_NUMBER = 4;
        private static final GroupDeleted DEFAULT_INSTANCE;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<GroupDeleted> PARSER;
        public static final int SENDER_FIELD_NUMBER = 1;
        private Peer context_;
        private int date_;
        private String messageId_ = "";
        private Peer sender_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupDeleted$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupDeleted$a.class */
        public static final class C3138a extends GeneratedMessageLite.Builder<GroupDeleted, C3138a> implements Object {
            public C3138a() {
                super(GroupDeleted.DEFAULT_INSTANCE);
            }

            public C3138a(C3156a c3156a) {
                super(GroupDeleted.DEFAULT_INSTANCE);
            }
        }

        static {
            GroupDeleted groupDeleted = new GroupDeleted();
            DEFAULT_INSTANCE = groupDeleted;
            GeneratedMessageLite.registerDefaultInstance(GroupDeleted.class, groupDeleted);
        }

        private GroupDeleted() {
        }

        public void clearContext() {
            this.context_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public static GroupDeleted getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContext(Peer peer) {
            peer.getClass();
            Peer peer2 = this.context_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.context_ = peer;
            } else {
                this.context_ = Peer.newBuilder(this.context_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3138a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3138a newBuilder(GroupDeleted groupDeleted) {
            return DEFAULT_INSTANCE.createBuilder(groupDeleted);
        }

        public static GroupDeleted parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupDeleted parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupDeleted parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static GroupDeleted parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static GroupDeleted parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static GroupDeleted parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static GroupDeleted parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupDeleted parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupDeleted parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static GroupDeleted parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static GroupDeleted parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static GroupDeleted parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<GroupDeleted> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setContext(Peer peer) {
            peer.getClass();
            this.context_ = peer;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\t\u0003Ȉ\u0004\u0004", new Object[]{"sender_", "context_", "messageId_", "date_"});
                case 3:
                    return new GroupDeleted();
                case 4:
                    return new C3138a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (GroupDeleted.class) {
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

        public Peer getContext() {
            Peer peer = this.context_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public int getDate() {
            return this.date_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasContext() {
            return this.context_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupInfoUpdated */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated.class */
    public static final class GroupInfoUpdated extends GeneratedMessageLite<GroupInfoUpdated, C3139a> implements Object {
        public static final int DATE_FIELD_NUMBER = 4;
        private static final GroupInfoUpdated DEFAULT_INSTANCE;
        public static final int GROUP_ID_FIELD_NUMBER = 2;
        public static final int GROUP_INFO_FIELD_NUMBER = 5;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<GroupInfoUpdated> PARSER;
        public static final int SENDER_FIELD_NUMBER = 1;
        private int date_;
        private GroupInfoDelta groupInfo_;
        private Peer sender_;
        private String groupId_ = "";
        private String messageId_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupInfoUpdated$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupInfoUpdated$a.class */
        public static final class C3139a extends GeneratedMessageLite.Builder<GroupInfoUpdated, C3139a> implements Object {
            public C3139a() {
                super(GroupInfoUpdated.DEFAULT_INSTANCE);
            }

            public C3139a(C3156a c3156a) {
                super(GroupInfoUpdated.DEFAULT_INSTANCE);
            }
        }

        static {
            GroupInfoUpdated groupInfoUpdated = new GroupInfoUpdated();
            DEFAULT_INSTANCE = groupInfoUpdated;
            GeneratedMessageLite.registerDefaultInstance(GroupInfoUpdated.class, groupInfoUpdated);
        }

        private GroupInfoUpdated() {
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearGroupId() {
            this.groupId_ = getDefaultInstance().getGroupId();
        }

        public void clearGroupInfo() {
            this.groupInfo_ = null;
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public static GroupInfoUpdated getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeGroupInfo(GroupInfoDelta groupInfoDelta) {
            groupInfoDelta.getClass();
            GroupInfoDelta groupInfoDelta2 = this.groupInfo_;
            if (groupInfoDelta2 == null || groupInfoDelta2 == GroupInfoDelta.getDefaultInstance()) {
                this.groupInfo_ = groupInfoDelta;
            } else {
                this.groupInfo_ = GroupInfoDelta.newBuilder(this.groupInfo_).mergeFrom(groupInfoDelta).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3139a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3139a newBuilder(GroupInfoUpdated groupInfoUpdated) {
            return DEFAULT_INSTANCE.createBuilder(groupInfoUpdated);
        }

        public static GroupInfoUpdated parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupInfoUpdated parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupInfoUpdated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static GroupInfoUpdated parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static GroupInfoUpdated parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static GroupInfoUpdated parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static GroupInfoUpdated parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupInfoUpdated parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupInfoUpdated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static GroupInfoUpdated parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static GroupInfoUpdated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static GroupInfoUpdated parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<GroupInfoUpdated> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setGroupId(String str) {
            str.getClass();
            this.groupId_ = str;
        }

        public void setGroupIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.groupId_ = byteString.toStringUtf8();
        }

        public void setGroupInfo(GroupInfoDelta groupInfoDelta) {
            groupInfoDelta.getClass();
            this.groupInfo_ = groupInfoDelta;
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001\t\u0002Ȉ\u0003Ȉ\u0004\u0004\u0005\t", new Object[]{"sender_", "groupId_", "messageId_", "date_", "groupInfo_"});
                case 3:
                    return new GroupInfoUpdated();
                case 4:
                    return new C3139a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (GroupInfoUpdated.class) {
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

        public int getDate() {
            return this.date_;
        }

        public String getGroupId() {
            return this.groupId_;
        }

        public ByteString getGroupIdBytes() {
            return ByteString.copyFromUtf8(this.groupId_);
        }

        public GroupInfoDelta getGroupInfo() {
            GroupInfoDelta groupInfoDelta = this.groupInfo_;
            GroupInfoDelta groupInfoDelta2 = groupInfoDelta;
            if (groupInfoDelta == null) {
                groupInfoDelta2 = GroupInfoDelta.getDefaultInstance();
            }
            return groupInfoDelta2;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasGroupInfo() {
            return this.groupInfo_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupInviteKeyUpdated */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated.class */
    public static final class GroupInviteKeyUpdated extends GeneratedMessageLite<GroupInviteKeyUpdated, C3140a> implements Object {
        public static final int DATE_FIELD_NUMBER = 4;
        private static final GroupInviteKeyUpdated DEFAULT_INSTANCE;
        public static final int GROUP_ID_FIELD_NUMBER = 2;
        public static final int INVITE_KEY_FIELD_NUMBER = 5;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<GroupInviteKeyUpdated> PARSER;
        public static final int SENDER_FIELD_NUMBER = 1;
        private int date_;
        private Peer sender_;
        private String groupId_ = "";
        private String messageId_ = "";
        private String inviteKey_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$GroupInviteKeyUpdated$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$GroupInviteKeyUpdated$a.class */
        public static final class C3140a extends GeneratedMessageLite.Builder<GroupInviteKeyUpdated, C3140a> implements Object {
            public C3140a() {
                super(GroupInviteKeyUpdated.DEFAULT_INSTANCE);
            }

            public C3140a(C3156a c3156a) {
                super(GroupInviteKeyUpdated.DEFAULT_INSTANCE);
            }
        }

        static {
            GroupInviteKeyUpdated groupInviteKeyUpdated = new GroupInviteKeyUpdated();
            DEFAULT_INSTANCE = groupInviteKeyUpdated;
            GeneratedMessageLite.registerDefaultInstance(GroupInviteKeyUpdated.class, groupInviteKeyUpdated);
        }

        private GroupInviteKeyUpdated() {
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearGroupId() {
            this.groupId_ = getDefaultInstance().getGroupId();
        }

        public void clearInviteKey() {
            this.inviteKey_ = getDefaultInstance().getInviteKey();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public static GroupInviteKeyUpdated getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3140a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3140a newBuilder(GroupInviteKeyUpdated groupInviteKeyUpdated) {
            return DEFAULT_INSTANCE.createBuilder(groupInviteKeyUpdated);
        }

        public static GroupInviteKeyUpdated parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupInviteKeyUpdated parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupInviteKeyUpdated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static GroupInviteKeyUpdated parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static GroupInviteKeyUpdated parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static GroupInviteKeyUpdated parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static GroupInviteKeyUpdated parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static GroupInviteKeyUpdated parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static GroupInviteKeyUpdated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static GroupInviteKeyUpdated parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static GroupInviteKeyUpdated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static GroupInviteKeyUpdated parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<GroupInviteKeyUpdated> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setGroupId(String str) {
            str.getClass();
            this.groupId_ = str;
        }

        public void setGroupIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.groupId_ = byteString.toStringUtf8();
        }

        public void setInviteKey(String str) {
            str.getClass();
            this.inviteKey_ = str;
        }

        public void setInviteKeyBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.inviteKey_ = byteString.toStringUtf8();
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005������\u0001\t\u0002Ȉ\u0003Ȉ\u0004\u0004\u0005Ȉ", new Object[]{"sender_", "groupId_", "messageId_", "date_", "inviteKey_"});
                case 3:
                    return new GroupInviteKeyUpdated();
                case 4:
                    return new C3140a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (GroupInviteKeyUpdated.class) {
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

        public int getDate() {
            return this.date_;
        }

        public String getGroupId() {
            return this.groupId_;
        }

        public ByteString getGroupIdBytes() {
            return ByteString.copyFromUtf8(this.groupId_);
        }

        public String getInviteKey() {
            return this.inviteKey_;
        }

        public ByteString getInviteKeyBytes() {
            return ByteString.copyFromUtf8(this.inviteKey_);
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$IncompatibleEvent */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent.class */
    public static final class IncompatibleEvent extends GeneratedMessageLite<IncompatibleEvent, C3141a> implements Object {
        private static final IncompatibleEvent DEFAULT_INSTANCE;
        public static final int IGNORABLE_FIELD_NUMBER = 1;
        private static volatile Parser<IncompatibleEvent> PARSER;
        private boolean ignorable_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$IncompatibleEvent$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$IncompatibleEvent$a.class */
        public static final class C3141a extends GeneratedMessageLite.Builder<IncompatibleEvent, C3141a> implements Object {
            public C3141a() {
                super(IncompatibleEvent.DEFAULT_INSTANCE);
            }

            public C3141a(C3156a c3156a) {
                super(IncompatibleEvent.DEFAULT_INSTANCE);
            }
        }

        static {
            IncompatibleEvent incompatibleEvent = new IncompatibleEvent();
            DEFAULT_INSTANCE = incompatibleEvent;
            GeneratedMessageLite.registerDefaultInstance(IncompatibleEvent.class, incompatibleEvent);
        }

        private IncompatibleEvent() {
        }

        public void clearIgnorable() {
            this.ignorable_ = false;
        }

        public static IncompatibleEvent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3141a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3141a newBuilder(IncompatibleEvent incompatibleEvent) {
            return DEFAULT_INSTANCE.createBuilder(incompatibleEvent);
        }

        public static IncompatibleEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static IncompatibleEvent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static IncompatibleEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static IncompatibleEvent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static IncompatibleEvent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static IncompatibleEvent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static IncompatibleEvent parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static IncompatibleEvent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static IncompatibleEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static IncompatibleEvent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static IncompatibleEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static IncompatibleEvent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<IncompatibleEvent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setIgnorable(boolean z) {
            this.ignorable_ = z;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\u0007", new Object[]{"ignorable_"});
                case 3:
                    return new IncompatibleEvent();
                case 4:
                    return new C3141a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (IncompatibleEvent.class) {
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

        public boolean getIgnorable() {
            return this.ignorable_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessageEdited */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessageEdited.class */
    public static final class MessageEdited extends GeneratedMessageLite<MessageEdited, C3142a> implements Object {
        public static final int CONTENT_FIELD_NUMBER = 5;
        public static final int DATE_FIELD_NUMBER = 4;
        private static final MessageEdited DEFAULT_INSTANCE;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<MessageEdited> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int USER_INFO_FIELD_NUMBER = 6;
        private MessageContent content_;
        private int date_;
        private Peer recipient_;
        private Peer.User sender_;
        private MapFieldLite<String, UserInfo> userInfo_ = MapFieldLite.emptyMapField();
        private String messageId_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessageEdited$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessageEdited$a.class */
        public static final class C3142a extends GeneratedMessageLite.Builder<MessageEdited, C3142a> implements Object {
            public C3142a() {
                super(MessageEdited.DEFAULT_INSTANCE);
            }

            public C3142a(C3156a c3156a) {
                super(MessageEdited.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessageEdited$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessageEdited$b.class */
        public static final class C3143b {

            /* renamed from: a */
            public static final MapEntryLite<String, UserInfo> f10106a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, UserInfo.getDefaultInstance());
        }

        static {
            MessageEdited messageEdited = new MessageEdited();
            DEFAULT_INSTANCE = messageEdited;
            GeneratedMessageLite.registerDefaultInstance(MessageEdited.class, messageEdited);
        }

        private MessageEdited() {
        }

        public void clearContent() {
            this.content_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public static MessageEdited getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<String, UserInfo> getMutableUserInfoMap() {
            return internalGetMutableUserInfo();
        }

        private MapFieldLite<String, UserInfo> internalGetMutableUserInfo() {
            if (!this.userInfo_.isMutable()) {
                this.userInfo_ = this.userInfo_.mutableCopy();
            }
            return this.userInfo_;
        }

        private MapFieldLite<String, UserInfo> internalGetUserInfo() {
            return this.userInfo_;
        }

        public void mergeContent(MessageContent messageContent) {
            messageContent.getClass();
            MessageContent messageContent2 = this.content_;
            if (messageContent2 == null || messageContent2 == MessageContent.getDefaultInstance()) {
                this.content_ = messageContent;
            } else {
                this.content_ = MessageContent.newBuilder(this.content_).mergeFrom(messageContent).buildPartial();
            }
        }

        public void mergeRecipient(Peer peer) {
            peer.getClass();
            Peer peer2 = this.recipient_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.recipient_ = peer;
            } else {
                this.recipient_ = Peer.newBuilder(this.recipient_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSender(Peer.User user) {
            user.getClass();
            Peer.User user2 = this.sender_;
            if (user2 == null || user2 == Peer.User.getDefaultInstance()) {
                this.sender_ = user;
            } else {
                this.sender_ = Peer.User.newBuilder(this.sender_).mergeFrom(user).buildPartial();
            }
        }

        public static C3142a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3142a newBuilder(MessageEdited messageEdited) {
            return DEFAULT_INSTANCE.createBuilder(messageEdited);
        }

        public static MessageEdited parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessageEdited parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessageEdited parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static MessageEdited parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static MessageEdited parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static MessageEdited parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static MessageEdited parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessageEdited parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessageEdited parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static MessageEdited parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static MessageEdited parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static MessageEdited parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<MessageEdited> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setContent(MessageContent messageContent) {
            messageContent.getClass();
            this.content_ = messageContent;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setRecipient(Peer peer) {
            peer.getClass();
            this.recipient_ = peer;
        }

        public void setSender(Peer.User user) {
            user.getClass();
            this.sender_ = user;
        }

        public boolean containsUserInfo(String str) {
            str.getClass();
            return internalGetUserInfo().containsKey(str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0006����\u0001\u0006\u0006\u0001����\u0001\t\u0002\t\u0003Ȉ\u0004\u0004\u0005\t\u00062", new Object[]{"sender_", "recipient_", "messageId_", "date_", "content_", "userInfo_", C3143b.f10106a});
                case 3:
                    return new MessageEdited();
                case 4:
                    return new C3142a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (MessageEdited.class) {
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

        public MessageContent getContent() {
            MessageContent messageContent = this.content_;
            MessageContent messageContent2 = messageContent;
            if (messageContent == null) {
                messageContent2 = MessageContent.getDefaultInstance();
            }
            return messageContent2;
        }

        public int getDate() {
            return this.date_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getRecipient() {
            Peer peer = this.recipient_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public Peer.User getSender() {
            Peer.User user = this.sender_;
            Peer.User user2 = user;
            if (user == null) {
                user2 = Peer.User.getDefaultInstance();
            }
            return user2;
        }

        @Deprecated
        public Map<String, UserInfo> getUserInfo() {
            return getUserInfoMap();
        }

        public int getUserInfoCount() {
            return internalGetUserInfo().size();
        }

        public Map<String, UserInfo> getUserInfoMap() {
            return Collections.unmodifiableMap(internalGetUserInfo());
        }

        public UserInfo getUserInfoOrDefault(String str, UserInfo userInfo) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                userInfo = internalGetUserInfo.get(str);
            }
            return userInfo;
        }

        public UserInfo getUserInfoOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                return internalGetUserInfo.get(str);
            }
            throw new IllegalArgumentException();
        }

        public boolean hasContent() {
            return this.content_ != null;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessageSent */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessageSent.class */
    public static final class MessageSent extends GeneratedMessageLite<MessageSent, C3144a> implements Object {
        public static final int CATEGORY_FIELD_NUMBER = 10;
        public static final int CONTENT_FIELD_NUMBER = 5;
        public static final int DATE_FIELD_NUMBER = 4;
        private static final MessageSent DEFAULT_INSTANCE;
        public static final int EXPIRATION_DATE_FIELD_NUMBER = 9;
        public static final int FORWARDING_ID_FIELD_NUMBER = 12;
        public static final int KNOWN_PHONE_NUMBERS_FIELD_NUMBER = 7;
        public static final int LEGACY_USER_INFO_FIELD_NUMBER = 6;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<MessageSent> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int URGENCY_FIELD_NUMBER = 13;
        public static final int USER_INFO_FIELD_NUMBER = 8;
        private int category_;
        private MessageContent content_;
        private int date_;
        private int expirationDate_;
        private UserInfo legacyUserInfo_;
        private Peer recipient_;
        private Peer.User sender_;
        private int urgency_;
        private MapFieldLite<String, UserInfo> userInfo_ = MapFieldLite.emptyMapField();
        private String messageId_ = "";
        private Internal.ProtobufList<Int64Value> knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        private String forwardingId_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessageSent$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessageSent$a.class */
        public static final class C3144a extends GeneratedMessageLite.Builder<MessageSent, C3144a> implements Object {
            public C3144a() {
                super(MessageSent.DEFAULT_INSTANCE);
            }

            public C3144a(C3156a c3156a) {
                super(MessageSent.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessageSent$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessageSent$b.class */
        public static final class C3145b {

            /* renamed from: a */
            public static final MapEntryLite<String, UserInfo> f10107a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, UserInfo.getDefaultInstance());
        }

        static {
            MessageSent messageSent = new MessageSent();
            DEFAULT_INSTANCE = messageSent;
            GeneratedMessageLite.registerDefaultInstance(MessageSent.class, messageSent);
        }

        private MessageSent() {
        }

        public void addAllKnownPhoneNumbers(Iterable<? extends Int64Value> iterable) {
            ensureKnownPhoneNumbersIsMutable();
            AbstractMessageLite.addAll(iterable, this.knownPhoneNumbers_);
        }

        public void addKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(i, int64Value);
        }

        public void addKnownPhoneNumbers(Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(int64Value);
        }

        public void clearCategory() {
            this.category_ = 0;
        }

        public void clearContent() {
            this.content_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearExpirationDate() {
            this.expirationDate_ = 0;
        }

        public void clearForwardingId() {
            this.forwardingId_ = getDefaultInstance().getForwardingId();
        }

        public void clearKnownPhoneNumbers() {
            this.knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearLegacyUserInfo() {
            this.legacyUserInfo_ = null;
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public void clearUrgency() {
            this.urgency_ = 0;
        }

        private void ensureKnownPhoneNumbersIsMutable() {
            Internal.ProtobufList<Int64Value> protobufList = this.knownPhoneNumbers_;
            if (!protobufList.isModifiable()) {
                this.knownPhoneNumbers_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static MessageSent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<String, UserInfo> getMutableUserInfoMap() {
            return internalGetMutableUserInfo();
        }

        private MapFieldLite<String, UserInfo> internalGetMutableUserInfo() {
            if (!this.userInfo_.isMutable()) {
                this.userInfo_ = this.userInfo_.mutableCopy();
            }
            return this.userInfo_;
        }

        private MapFieldLite<String, UserInfo> internalGetUserInfo() {
            return this.userInfo_;
        }

        public void mergeContent(MessageContent messageContent) {
            messageContent.getClass();
            MessageContent messageContent2 = this.content_;
            if (messageContent2 == null || messageContent2 == MessageContent.getDefaultInstance()) {
                this.content_ = messageContent;
            } else {
                this.content_ = MessageContent.newBuilder(this.content_).mergeFrom(messageContent).buildPartial();
            }
        }

        public void mergeLegacyUserInfo(UserInfo userInfo) {
            userInfo.getClass();
            UserInfo userInfo2 = this.legacyUserInfo_;
            if (userInfo2 == null || userInfo2 == UserInfo.getDefaultInstance()) {
                this.legacyUserInfo_ = userInfo;
            } else {
                this.legacyUserInfo_ = UserInfo.newBuilder(this.legacyUserInfo_).mergeFrom(userInfo).buildPartial();
            }
        }

        public void mergeRecipient(Peer peer) {
            peer.getClass();
            Peer peer2 = this.recipient_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.recipient_ = peer;
            } else {
                this.recipient_ = Peer.newBuilder(this.recipient_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSender(Peer.User user) {
            user.getClass();
            Peer.User user2 = this.sender_;
            if (user2 == null || user2 == Peer.User.getDefaultInstance()) {
                this.sender_ = user;
            } else {
                this.sender_ = Peer.User.newBuilder(this.sender_).mergeFrom(user).buildPartial();
            }
        }

        public static C3144a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3144a newBuilder(MessageSent messageSent) {
            return DEFAULT_INSTANCE.createBuilder(messageSent);
        }

        public static MessageSent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessageSent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessageSent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static MessageSent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static MessageSent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static MessageSent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static MessageSent parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessageSent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessageSent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static MessageSent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static MessageSent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static MessageSent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<MessageSent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeKnownPhoneNumbers(int i) {
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.remove(i);
        }

        public void setCategory(MessageCategory messageCategory) {
            this.category_ = messageCategory.getNumber();
        }

        public void setCategoryValue(int i) {
            this.category_ = i;
        }

        public void setContent(MessageContent messageContent) {
            messageContent.getClass();
            this.content_ = messageContent;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setExpirationDate(int i) {
            this.expirationDate_ = i;
        }

        public void setForwardingId(String str) {
            str.getClass();
            this.forwardingId_ = str;
        }

        public void setForwardingIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.forwardingId_ = byteString.toStringUtf8();
        }

        public void setKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.set(i, int64Value);
        }

        public void setLegacyUserInfo(UserInfo userInfo) {
            userInfo.getClass();
            this.legacyUserInfo_ = userInfo;
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setRecipient(Peer peer) {
            peer.getClass();
            this.recipient_ = peer;
        }

        public void setSender(Peer.User user) {
            user.getClass();
            this.sender_ = user;
        }

        public void setUrgency(Urgency urgency) {
            this.urgency_ = urgency.getNumber();
        }

        public void setUrgencyValue(int i) {
            this.urgency_ = i;
        }

        public boolean containsUserInfo(String str) {
            str.getClass();
            return internalGetUserInfo().containsKey(str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\f����\u0001\r\f\u0001\u0001��\u0001\t\u0002\t\u0003Ȉ\u0004\u0004\u0005\t\u0006\t\u0007\u001b\b2\t\u0004\n\f\fȈ\r\f", new Object[]{"sender_", "recipient_", "messageId_", "date_", "content_", "legacyUserInfo_", "knownPhoneNumbers_", Int64Value.class, "userInfo_", C3145b.f10107a, "expirationDate_", "category_", "forwardingId_", "urgency_"});
                case 3:
                    return new MessageSent();
                case 4:
                    return new C3144a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (MessageSent.class) {
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

        public MessageCategory getCategory() {
            MessageCategory forNumber = MessageCategory.forNumber(this.category_);
            MessageCategory messageCategory = forNumber;
            if (forNumber == null) {
                messageCategory = MessageCategory.UNRECOGNIZED;
            }
            return messageCategory;
        }

        public int getCategoryValue() {
            return this.category_;
        }

        public MessageContent getContent() {
            MessageContent messageContent = this.content_;
            MessageContent messageContent2 = messageContent;
            if (messageContent == null) {
                messageContent2 = MessageContent.getDefaultInstance();
            }
            return messageContent2;
        }

        public int getDate() {
            return this.date_;
        }

        public int getExpirationDate() {
            return this.expirationDate_;
        }

        public String getForwardingId() {
            return this.forwardingId_;
        }

        public ByteString getForwardingIdBytes() {
            return ByteString.copyFromUtf8(this.forwardingId_);
        }

        public Int64Value getKnownPhoneNumbers(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public int getKnownPhoneNumbersCount() {
            return this.knownPhoneNumbers_.size();
        }

        public List<Int64Value> getKnownPhoneNumbersList() {
            return this.knownPhoneNumbers_;
        }

        public Int64ValueOrBuilder getKnownPhoneNumbersOrBuilder(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public List<? extends Int64ValueOrBuilder> getKnownPhoneNumbersOrBuilderList() {
            return this.knownPhoneNumbers_;
        }

        public UserInfo getLegacyUserInfo() {
            UserInfo userInfo = this.legacyUserInfo_;
            UserInfo userInfo2 = userInfo;
            if (userInfo == null) {
                userInfo2 = UserInfo.getDefaultInstance();
            }
            return userInfo2;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getRecipient() {
            Peer peer = this.recipient_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public Peer.User getSender() {
            Peer.User user = this.sender_;
            Peer.User user2 = user;
            if (user == null) {
                user2 = Peer.User.getDefaultInstance();
            }
            return user2;
        }

        public Urgency getUrgency() {
            Urgency forNumber = Urgency.forNumber(this.urgency_);
            Urgency urgency = forNumber;
            if (forNumber == null) {
                urgency = Urgency.UNRECOGNIZED;
            }
            return urgency;
        }

        public int getUrgencyValue() {
            return this.urgency_;
        }

        @Deprecated
        public Map<String, UserInfo> getUserInfo() {
            return getUserInfoMap();
        }

        public int getUserInfoCount() {
            return internalGetUserInfo().size();
        }

        public Map<String, UserInfo> getUserInfoMap() {
            return Collections.unmodifiableMap(internalGetUserInfo());
        }

        public UserInfo getUserInfoOrDefault(String str, UserInfo userInfo) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                userInfo = internalGetUserInfo.get(str);
            }
            return userInfo;
        }

        public UserInfo getUserInfoOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                return internalGetUserInfo.get(str);
            }
            throw new IllegalArgumentException();
        }

        public boolean hasContent() {
            return this.content_ != null;
        }

        public boolean hasLegacyUserInfo() {
            return this.legacyUserInfo_ != null;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessagesDeleted */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted.class */
    public static final class MessagesDeleted extends GeneratedMessageLite<MessagesDeleted, C3146a> implements Object {
        public static final int DATE_FIELD_NUMBER = 4;
        private static final MessagesDeleted DEFAULT_INSTANCE;
        private static volatile Parser<MessagesDeleted> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int SELECTION_FIELD_NUMBER = 3;
        public static final int SENDER_FIELD_NUMBER = 1;
        private int date_;
        private Peer recipient_;
        private MessageSelection selection_;
        private Peer sender_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$MessagesDeleted$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted$a.class */
        public static final class C3146a extends GeneratedMessageLite.Builder<MessagesDeleted, C3146a> implements Object {
            public C3146a() {
                super(MessagesDeleted.DEFAULT_INSTANCE);
            }

            public C3146a(C3156a c3156a) {
                super(MessagesDeleted.DEFAULT_INSTANCE);
            }
        }

        static {
            MessagesDeleted messagesDeleted = new MessagesDeleted();
            DEFAULT_INSTANCE = messagesDeleted;
            GeneratedMessageLite.registerDefaultInstance(MessagesDeleted.class, messagesDeleted);
        }

        private MessagesDeleted() {
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearSelection() {
            this.selection_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public static MessagesDeleted getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeRecipient(Peer peer) {
            peer.getClass();
            Peer peer2 = this.recipient_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.recipient_ = peer;
            } else {
                this.recipient_ = Peer.newBuilder(this.recipient_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSelection(MessageSelection messageSelection) {
            messageSelection.getClass();
            MessageSelection messageSelection2 = this.selection_;
            if (messageSelection2 == null || messageSelection2 == MessageSelection.getDefaultInstance()) {
                this.selection_ = messageSelection;
            } else {
                this.selection_ = MessageSelection.newBuilder(this.selection_).mergeFrom(messageSelection).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3146a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3146a newBuilder(MessagesDeleted messagesDeleted) {
            return DEFAULT_INSTANCE.createBuilder(messagesDeleted);
        }

        public static MessagesDeleted parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessagesDeleted parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessagesDeleted parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static MessagesDeleted parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static MessagesDeleted parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static MessagesDeleted parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static MessagesDeleted parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static MessagesDeleted parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static MessagesDeleted parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static MessagesDeleted parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static MessagesDeleted parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static MessagesDeleted parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<MessagesDeleted> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setRecipient(Peer peer) {
            peer.getClass();
            this.recipient_ = peer;
        }

        public void setSelection(MessageSelection messageSelection) {
            messageSelection.getClass();
            this.selection_ = messageSelection;
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\t\u0003\t\u0004\u0004", new Object[]{"sender_", "recipient_", "selection_", "date_"});
                case 3:
                    return new MessagesDeleted();
                case 4:
                    return new C3146a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (MessagesDeleted.class) {
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

        public int getDate() {
            return this.date_;
        }

        public Peer getRecipient() {
            Peer peer = this.recipient_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public MessageSelection getSelection() {
            MessageSelection messageSelection = this.selection_;
            MessageSelection messageSelection2 = messageSelection;
            if (messageSelection == null) {
                messageSelection2 = MessageSelection.getDefaultInstance();
            }
            return messageSelection2;
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }

        public boolean hasSelection() {
            return this.selection_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$OriginalEvent */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$OriginalEvent.class */
    public static final class OriginalEvent extends GeneratedMessageLite<OriginalEvent, C3147a> implements Object {
        public static final int APIVERSION_FIELD_NUMBER = 1;
        private static final OriginalEvent DEFAULT_INSTANCE;
        public static final int EVENT_FIELD_NUMBER = 2;
        private static volatile Parser<OriginalEvent> PARSER;
        private int apiVersion_;
        private ByteString event_ = ByteString.EMPTY;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$OriginalEvent$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$OriginalEvent$a.class */
        public static final class C3147a extends GeneratedMessageLite.Builder<OriginalEvent, C3147a> implements Object {
            public C3147a() {
                super(OriginalEvent.DEFAULT_INSTANCE);
            }

            public C3147a(C3156a c3156a) {
                super(OriginalEvent.DEFAULT_INSTANCE);
            }
        }

        static {
            OriginalEvent originalEvent = new OriginalEvent();
            DEFAULT_INSTANCE = originalEvent;
            GeneratedMessageLite.registerDefaultInstance(OriginalEvent.class, originalEvent);
        }

        private OriginalEvent() {
        }

        public void clearApiVersion() {
            this.apiVersion_ = 0;
        }

        public void clearEvent() {
            this.event_ = getDefaultInstance().getEvent();
        }

        public static OriginalEvent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3147a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3147a newBuilder(OriginalEvent originalEvent) {
            return DEFAULT_INSTANCE.createBuilder(originalEvent);
        }

        public static OriginalEvent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static OriginalEvent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static OriginalEvent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static OriginalEvent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static OriginalEvent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static OriginalEvent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static OriginalEvent parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static OriginalEvent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static OriginalEvent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static OriginalEvent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static OriginalEvent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static OriginalEvent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<OriginalEvent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setApiVersion(int i) {
            this.apiVersion_ = i;
        }

        public void setEvent(ByteString byteString) {
            byteString.getClass();
            this.event_ = byteString;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\u0004\u0002\n", new Object[]{"apiVersion_", "event_"});
                case 3:
                    return new OriginalEvent();
                case 4:
                    return new C3147a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (OriginalEvent.class) {
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

        public int getApiVersion() {
            return this.apiVersion_;
        }

        public ByteString getEvent() {
            return this.event_;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ParticipantsAdded */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded.class */
    public static final class ParticipantsAdded extends GeneratedMessageLite<ParticipantsAdded, C3148a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 2;
        public static final int DATE_FIELD_NUMBER = 4;
        private static final ParticipantsAdded DEFAULT_INSTANCE;
        public static final int EXISTING_PARTICIPANTS_FIELD_NUMBER = 11;
        public static final int GROUP_INFO_EXT_FIELD_NUMBER = 13;
        public static final int GROUP_INFO_FIELD_NUMBER = 7;
        public static final int LEGACY_EXISTING_PARTICIPANTS_FIELD_NUMBER = 6;
        public static final int LEGACY_PARTICIPANTS_FIELD_NUMBER = 5;
        public static final int LEGACY_PARTICIPANT_ROLES_FIELD_NUMBER = 9;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<ParticipantsAdded> PARSER;
        public static final int PARTICIPANTS_FIELD_NUMBER = 10;
        public static final int PERMISSIONS_FIELD_NUMBER = 12;
        public static final int SENDER_FIELD_NUMBER = 1;
        public static final int USER_INFO_FIELD_NUMBER = 8;
        private Peer context_;
        private int date_;
        private GroupInfoExt groupInfoExt_;
        private GroupInfo groupInfo_;
        private int legacyParticipantRoles_;
        private ContextPermissions permissions_;
        private Peer sender_;
        private MapFieldLite<String, UserInfo> userInfo_ = MapFieldLite.emptyMapField();
        private String messageId_ = "";
        private Internal.ProtobufList<Peer> legacyParticipants_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<Peer> legacyExistingParticipants_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ParticipantInfo> participants_ = GeneratedMessageLite.emptyProtobufList();
        private Internal.ProtobufList<ParticipantInfo> existingParticipants_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ParticipantsAdded$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$a.class */
        public static final class C3148a extends GeneratedMessageLite.Builder<ParticipantsAdded, C3148a> implements Object {
            public C3148a() {
                super(ParticipantsAdded.DEFAULT_INSTANCE);
            }

            public C3148a(C3156a c3156a) {
                super(ParticipantsAdded.DEFAULT_INSTANCE);
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ParticipantsAdded$b */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ParticipantsAdded$b.class */
        public static final class C3149b {

            /* renamed from: a */
            public static final MapEntryLite<String, UserInfo> f10108a = MapEntryLite.newDefaultInstance(WireFormat.FieldType.STRING, "", WireFormat.FieldType.MESSAGE, UserInfo.getDefaultInstance());
        }

        static {
            ParticipantsAdded participantsAdded = new ParticipantsAdded();
            DEFAULT_INSTANCE = participantsAdded;
            GeneratedMessageLite.registerDefaultInstance(ParticipantsAdded.class, participantsAdded);
        }

        private ParticipantsAdded() {
        }

        public void addAllExistingParticipants(Iterable<? extends ParticipantInfo> iterable) {
            ensureExistingParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.existingParticipants_);
        }

        public void addAllLegacyExistingParticipants(Iterable<? extends Peer> iterable) {
            ensureLegacyExistingParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.legacyExistingParticipants_);
        }

        public void addAllLegacyParticipants(Iterable<? extends Peer> iterable) {
            ensureLegacyParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.legacyParticipants_);
        }

        public void addAllParticipants(Iterable<? extends ParticipantInfo> iterable) {
            ensureParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.participants_);
        }

        public void addExistingParticipants(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureExistingParticipantsIsMutable();
            this.existingParticipants_.add(i, participantInfo);
        }

        public void addExistingParticipants(ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureExistingParticipantsIsMutable();
            this.existingParticipants_.add(participantInfo);
        }

        public void addLegacyExistingParticipants(int i, Peer peer) {
            peer.getClass();
            ensureLegacyExistingParticipantsIsMutable();
            this.legacyExistingParticipants_.add(i, peer);
        }

        public void addLegacyExistingParticipants(Peer peer) {
            peer.getClass();
            ensureLegacyExistingParticipantsIsMutable();
            this.legacyExistingParticipants_.add(peer);
        }

        public void addLegacyParticipants(int i, Peer peer) {
            peer.getClass();
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.add(i, peer);
        }

        public void addLegacyParticipants(Peer peer) {
            peer.getClass();
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.add(peer);
        }

        public void addParticipants(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(i, participantInfo);
        }

        public void addParticipants(ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(participantInfo);
        }

        public void clearContext() {
            this.context_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearExistingParticipants() {
            this.existingParticipants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearGroupInfo() {
            this.groupInfo_ = null;
        }

        public void clearGroupInfoExt() {
            this.groupInfoExt_ = null;
        }

        public void clearLegacyExistingParticipants() {
            this.legacyExistingParticipants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearLegacyParticipantRoles() {
            this.legacyParticipantRoles_ = 0;
        }

        public void clearLegacyParticipants() {
            this.legacyParticipants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearParticipants() {
            this.participants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearPermissions() {
            this.permissions_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        private void ensureExistingParticipantsIsMutable() {
            Internal.ProtobufList<ParticipantInfo> protobufList = this.existingParticipants_;
            if (!protobufList.isModifiable()) {
                this.existingParticipants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureLegacyExistingParticipantsIsMutable() {
            Internal.ProtobufList<Peer> protobufList = this.legacyExistingParticipants_;
            if (!protobufList.isModifiable()) {
                this.legacyExistingParticipants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureLegacyParticipantsIsMutable() {
            Internal.ProtobufList<Peer> protobufList = this.legacyParticipants_;
            if (!protobufList.isModifiable()) {
                this.legacyParticipants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        private void ensureParticipantsIsMutable() {
            Internal.ProtobufList<ParticipantInfo> protobufList = this.participants_;
            if (!protobufList.isModifiable()) {
                this.participants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static ParticipantsAdded getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public Map<String, UserInfo> getMutableUserInfoMap() {
            return internalGetMutableUserInfo();
        }

        private MapFieldLite<String, UserInfo> internalGetMutableUserInfo() {
            if (!this.userInfo_.isMutable()) {
                this.userInfo_ = this.userInfo_.mutableCopy();
            }
            return this.userInfo_;
        }

        private MapFieldLite<String, UserInfo> internalGetUserInfo() {
            return this.userInfo_;
        }

        public void mergeContext(Peer peer) {
            peer.getClass();
            Peer peer2 = this.context_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.context_ = peer;
            } else {
                this.context_ = Peer.newBuilder(this.context_).mergeFrom(peer).buildPartial();
            }
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

        public void mergePermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            ContextPermissions contextPermissions2 = this.permissions_;
            if (contextPermissions2 == null || contextPermissions2 == ContextPermissions.getDefaultInstance()) {
                this.permissions_ = contextPermissions;
            } else {
                this.permissions_ = ContextPermissions.newBuilder(this.permissions_).mergeFrom(contextPermissions).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3148a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3148a newBuilder(ParticipantsAdded participantsAdded) {
            return DEFAULT_INSTANCE.createBuilder(participantsAdded);
        }

        public static ParticipantsAdded parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ParticipantsAdded parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ParticipantsAdded parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ParticipantsAdded parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ParticipantsAdded parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ParticipantsAdded parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static ParticipantsAdded parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ParticipantsAdded parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ParticipantsAdded parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static ParticipantsAdded parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ParticipantsAdded parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ParticipantsAdded parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<ParticipantsAdded> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeExistingParticipants(int i) {
            ensureExistingParticipantsIsMutable();
            this.existingParticipants_.remove(i);
        }

        public void removeLegacyExistingParticipants(int i) {
            ensureLegacyExistingParticipantsIsMutable();
            this.legacyExistingParticipants_.remove(i);
        }

        public void removeLegacyParticipants(int i) {
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.remove(i);
        }

        public void removeParticipants(int i) {
            ensureParticipantsIsMutable();
            this.participants_.remove(i);
        }

        public void setContext(Peer peer) {
            peer.getClass();
            this.context_ = peer;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setExistingParticipants(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureExistingParticipantsIsMutable();
            this.existingParticipants_.set(i, participantInfo);
        }

        public void setGroupInfo(GroupInfo groupInfo) {
            groupInfo.getClass();
            this.groupInfo_ = groupInfo;
        }

        public void setGroupInfoExt(GroupInfoExt groupInfoExt) {
            groupInfoExt.getClass();
            this.groupInfoExt_ = groupInfoExt;
        }

        public void setLegacyExistingParticipants(int i, Peer peer) {
            peer.getClass();
            ensureLegacyExistingParticipantsIsMutable();
            this.legacyExistingParticipants_.set(i, peer);
        }

        public void setLegacyParticipantRoles(int i) {
            this.legacyParticipantRoles_ = i;
        }

        public void setLegacyParticipants(int i, Peer peer) {
            peer.getClass();
            ensureLegacyParticipantsIsMutable();
            this.legacyParticipants_.set(i, peer);
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setParticipants(int i, ParticipantInfo participantInfo) {
            participantInfo.getClass();
            ensureParticipantsIsMutable();
            this.participants_.set(i, participantInfo);
        }

        public void setPermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            this.permissions_ = contextPermissions;
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public boolean containsUserInfo(String str) {
            str.getClass();
            return internalGetUserInfo().containsKey(str);
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\r����\u0001\r\r\u0001\u0004��\u0001\t\u0002\t\u0003Ȉ\u0004\u0004\u0005\u001b\u0006\u001b\u0007\t\b2\t\u0004\n\u001b\u000b\u001b\f\t\r\t", new Object[]{"sender_", "context_", "messageId_", "date_", "legacyParticipants_", Peer.class, "legacyExistingParticipants_", Peer.class, "groupInfo_", "userInfo_", C3149b.f10108a, "legacyParticipantRoles_", "participants_", ParticipantInfo.class, "existingParticipants_", ParticipantInfo.class, "permissions_", "groupInfoExt_"});
                case 3:
                    return new ParticipantsAdded();
                case 4:
                    return new C3148a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (ParticipantsAdded.class) {
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

        public Peer getContext() {
            Peer peer = this.context_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public int getDate() {
            return this.date_;
        }

        public ParticipantInfo getExistingParticipants(int i) {
            return this.existingParticipants_.get(i);
        }

        public int getExistingParticipantsCount() {
            return this.existingParticipants_.size();
        }

        public List<ParticipantInfo> getExistingParticipantsList() {
            return this.existingParticipants_;
        }

        public AbstractC20466e getExistingParticipantsOrBuilder(int i) {
            return this.existingParticipants_.get(i);
        }

        public List<? extends AbstractC20466e> getExistingParticipantsOrBuilderList() {
            return this.existingParticipants_;
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

        public Peer getLegacyExistingParticipants(int i) {
            return this.legacyExistingParticipants_.get(i);
        }

        public int getLegacyExistingParticipantsCount() {
            return this.legacyExistingParticipants_.size();
        }

        public List<Peer> getLegacyExistingParticipantsList() {
            return this.legacyExistingParticipants_;
        }

        public AbstractC20467f getLegacyExistingParticipantsOrBuilder(int i) {
            return this.legacyExistingParticipants_.get(i);
        }

        public List<? extends AbstractC20467f> getLegacyExistingParticipantsOrBuilderList() {
            return this.legacyExistingParticipants_;
        }

        public int getLegacyParticipantRoles() {
            return this.legacyParticipantRoles_;
        }

        public Peer getLegacyParticipants(int i) {
            return this.legacyParticipants_.get(i);
        }

        public int getLegacyParticipantsCount() {
            return this.legacyParticipants_.size();
        }

        public List<Peer> getLegacyParticipantsList() {
            return this.legacyParticipants_;
        }

        public AbstractC20467f getLegacyParticipantsOrBuilder(int i) {
            return this.legacyParticipants_.get(i);
        }

        public List<? extends AbstractC20467f> getLegacyParticipantsOrBuilderList() {
            return this.legacyParticipants_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public ParticipantInfo getParticipants(int i) {
            return this.participants_.get(i);
        }

        public int getParticipantsCount() {
            return this.participants_.size();
        }

        public List<ParticipantInfo> getParticipantsList() {
            return this.participants_;
        }

        public AbstractC20466e getParticipantsOrBuilder(int i) {
            return this.participants_.get(i);
        }

        public List<? extends AbstractC20466e> getParticipantsOrBuilderList() {
            return this.participants_;
        }

        public ContextPermissions getPermissions() {
            ContextPermissions contextPermissions = this.permissions_;
            ContextPermissions contextPermissions2 = contextPermissions;
            if (contextPermissions == null) {
                contextPermissions2 = ContextPermissions.getDefaultInstance();
            }
            return contextPermissions2;
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        @Deprecated
        public Map<String, UserInfo> getUserInfo() {
            return getUserInfoMap();
        }

        public int getUserInfoCount() {
            return internalGetUserInfo().size();
        }

        public Map<String, UserInfo> getUserInfoMap() {
            return Collections.unmodifiableMap(internalGetUserInfo());
        }

        public UserInfo getUserInfoOrDefault(String str, UserInfo userInfo) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                userInfo = internalGetUserInfo.get(str);
            }
            return userInfo;
        }

        public UserInfo getUserInfoOrThrow(String str) {
            str.getClass();
            MapFieldLite<String, UserInfo> internalGetUserInfo = internalGetUserInfo();
            if (internalGetUserInfo.containsKey(str)) {
                return internalGetUserInfo.get(str);
            }
            throw new IllegalArgumentException();
        }

        public boolean hasContext() {
            return this.context_ != null;
        }

        public boolean hasGroupInfo() {
            return this.groupInfo_ != null;
        }

        public boolean hasGroupInfoExt() {
            return this.groupInfoExt_ != null;
        }

        public boolean hasPermissions() {
            return this.permissions_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ParticipantsRemoved */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved.class */
    public static final class ParticipantsRemoved extends GeneratedMessageLite<ParticipantsRemoved, C3150a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 2;
        public static final int DATE_FIELD_NUMBER = 4;
        private static final ParticipantsRemoved DEFAULT_INSTANCE;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<ParticipantsRemoved> PARSER;
        public static final int PARTICIPANTS_FIELD_NUMBER = 5;
        public static final int SENDER_FIELD_NUMBER = 1;
        private Peer context_;
        private int date_;
        private String messageId_ = "";
        private Internal.ProtobufList<Peer> participants_ = GeneratedMessageLite.emptyProtobufList();
        private Peer sender_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ParticipantsRemoved$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ParticipantsRemoved$a.class */
        public static final class C3150a extends GeneratedMessageLite.Builder<ParticipantsRemoved, C3150a> implements Object {
            public C3150a() {
                super(ParticipantsRemoved.DEFAULT_INSTANCE);
            }

            public C3150a(C3156a c3156a) {
                super(ParticipantsRemoved.DEFAULT_INSTANCE);
            }
        }

        static {
            ParticipantsRemoved participantsRemoved = new ParticipantsRemoved();
            DEFAULT_INSTANCE = participantsRemoved;
            GeneratedMessageLite.registerDefaultInstance(ParticipantsRemoved.class, participantsRemoved);
        }

        private ParticipantsRemoved() {
        }

        public void addAllParticipants(Iterable<? extends Peer> iterable) {
            ensureParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.participants_);
        }

        public void addParticipants(int i, Peer peer) {
            peer.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(i, peer);
        }

        public void addParticipants(Peer peer) {
            peer.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(peer);
        }

        public void clearContext() {
            this.context_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearParticipants() {
            this.participants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearSender() {
            this.sender_ = null;
        }

        private void ensureParticipantsIsMutable() {
            Internal.ProtobufList<Peer> protobufList = this.participants_;
            if (!protobufList.isModifiable()) {
                this.participants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static ParticipantsRemoved getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContext(Peer peer) {
            peer.getClass();
            Peer peer2 = this.context_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.context_ = peer;
            } else {
                this.context_ = Peer.newBuilder(this.context_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3150a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3150a newBuilder(ParticipantsRemoved participantsRemoved) {
            return DEFAULT_INSTANCE.createBuilder(participantsRemoved);
        }

        public static ParticipantsRemoved parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ParticipantsRemoved parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ParticipantsRemoved parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ParticipantsRemoved parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ParticipantsRemoved parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ParticipantsRemoved parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static ParticipantsRemoved parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ParticipantsRemoved parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ParticipantsRemoved parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static ParticipantsRemoved parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ParticipantsRemoved parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ParticipantsRemoved parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<ParticipantsRemoved> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeParticipants(int i) {
            ensureParticipantsIsMutable();
            this.participants_.remove(i);
        }

        public void setContext(Peer peer) {
            peer.getClass();
            this.context_ = peer;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setParticipants(int i, Peer peer) {
            peer.getClass();
            ensureParticipantsIsMutable();
            this.participants_.set(i, peer);
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0001��\u0001\t\u0002\t\u0003Ȉ\u0004\u0004\u0005\u001b", new Object[]{"sender_", "context_", "messageId_", "date_", "participants_", Peer.class});
                case 3:
                    return new ParticipantsRemoved();
                case 4:
                    return new C3150a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (ParticipantsRemoved.class) {
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

        public Peer getContext() {
            Peer peer = this.context_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public int getDate() {
            return this.date_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getParticipants(int i) {
            return this.participants_.get(i);
        }

        public int getParticipantsCount() {
            return this.participants_.size();
        }

        public List<Peer> getParticipantsList() {
            return this.participants_;
        }

        public AbstractC20467f getParticipantsOrBuilder(int i) {
            return this.participants_.get(i);
        }

        public List<? extends AbstractC20467f> getParticipantsOrBuilderList() {
            return this.participants_;
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasContext() {
            return this.context_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$PayloadCase */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$PayloadCase.class */
    public enum PayloadCase {
        MESSAGE_SENT(2),
        REPORT_SENT(3),
        REACTION_SENT(4),
        GROUP_CREATED(5),
        PARTICIPANT_ADDED(6),
        PARTICIPANT_REMOVED(7),
        ROLES_UPDATED(8),
        GROUP_INFO_UPDATED(9),
        GROUP_DELETED(10),
        USER_TYPING(11),
        GROUP_INVITE_KEY_UPDATED(12),
        MESSAGE_EDITED(13),
        MESSAGES_DELETED(14),
        PING(Event.PING_FIELD_NUMBER),
        INCOMPATIBLE_EVENT(998),
        PAYLOAD_NOT_SET(0);
        
        private final int value;

        PayloadCase(int i) {
            this.value = i;
        }

        public static PayloadCase forNumber(int i) {
            if (i != 0) {
                if (i == 997) {
                    return PING;
                }
                if (i == 998) {
                    return INCOMPATIBLE_EVENT;
                }
                switch (i) {
                    case 2:
                        return MESSAGE_SENT;
                    case 3:
                        return REPORT_SENT;
                    case 4:
                        return REACTION_SENT;
                    case 5:
                        return GROUP_CREATED;
                    case 6:
                        return PARTICIPANT_ADDED;
                    case 7:
                        return PARTICIPANT_REMOVED;
                    case 8:
                        return ROLES_UPDATED;
                    case 9:
                        return GROUP_INFO_UPDATED;
                    case 10:
                        return GROUP_DELETED;
                    case 11:
                        return USER_TYPING;
                    case 12:
                        return GROUP_INVITE_KEY_UPDATED;
                    case 13:
                        return MESSAGE_EDITED;
                    case 14:
                        return MESSAGES_DELETED;
                    default:
                        return null;
                }
            }
            return PAYLOAD_NOT_SET;
        }

        @Deprecated
        public static PayloadCase valueOf(int i) {
            return forNumber(i);
        }

        public int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$Ping */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$Ping.class */
    public static final class Ping extends GeneratedMessageLite<Ping, C3151a> implements Object {
        private static final Ping DEFAULT_INSTANCE;
        private static volatile Parser<Ping> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$Ping$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$Ping$a.class */
        public static final class C3151a extends GeneratedMessageLite.Builder<Ping, C3151a> implements Object {
            public C3151a() {
                super(Ping.DEFAULT_INSTANCE);
            }

            public C3151a(C3156a c3156a) {
                super(Ping.DEFAULT_INSTANCE);
            }
        }

        static {
            Ping ping = new Ping();
            DEFAULT_INSTANCE = ping;
            GeneratedMessageLite.registerDefaultInstance(Ping.class, ping);
        }

        private Ping() {
        }

        public static Ping getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3151a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3151a newBuilder(Ping ping) {
            return DEFAULT_INSTANCE.createBuilder(ping);
        }

        public static Ping parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Ping parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Ping parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Ping parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Ping parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Ping parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Ping parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Ping parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Ping parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Ping parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Ping parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Ping parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Ping> parser() {
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
                    return new Ping();
                case 4:
                    return new C3151a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Ping.class) {
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

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ReactionSent */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ReactionSent.class */
    public static final class ReactionSent extends GeneratedMessageLite<ReactionSent, C3152a> implements Object {
        public static final int CONTENT_FIELD_NUMBER = 4;
        public static final int DATE_FIELD_NUMBER = 3;
        private static final ReactionSent DEFAULT_INSTANCE;
        public static final int KNOWN_PHONE_NUMBERS_FIELD_NUMBER = 5;
        private static volatile Parser<ReactionSent> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int SENDER_FIELD_NUMBER = 1;
        private ReactionContent content_;
        private int date_;
        private Internal.ProtobufList<Int64Value> knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        private Peer recipient_;
        private Peer sender_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ReactionSent$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ReactionSent$a.class */
        public static final class C3152a extends GeneratedMessageLite.Builder<ReactionSent, C3152a> implements Object {
            public C3152a() {
                super(ReactionSent.DEFAULT_INSTANCE);
            }

            public C3152a(C3156a c3156a) {
                super(ReactionSent.DEFAULT_INSTANCE);
            }
        }

        static {
            ReactionSent reactionSent = new ReactionSent();
            DEFAULT_INSTANCE = reactionSent;
            GeneratedMessageLite.registerDefaultInstance(ReactionSent.class, reactionSent);
        }

        private ReactionSent() {
        }

        public void addAllKnownPhoneNumbers(Iterable<? extends Int64Value> iterable) {
            ensureKnownPhoneNumbersIsMutable();
            AbstractMessageLite.addAll(iterable, this.knownPhoneNumbers_);
        }

        public void addKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(i, int64Value);
        }

        public void addKnownPhoneNumbers(Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(int64Value);
        }

        public void clearContent() {
            this.content_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearKnownPhoneNumbers() {
            this.knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        private void ensureKnownPhoneNumbersIsMutable() {
            Internal.ProtobufList<Int64Value> protobufList = this.knownPhoneNumbers_;
            if (!protobufList.isModifiable()) {
                this.knownPhoneNumbers_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static ReactionSent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContent(ReactionContent reactionContent) {
            reactionContent.getClass();
            ReactionContent reactionContent2 = this.content_;
            if (reactionContent2 == null || reactionContent2 == ReactionContent.getDefaultInstance()) {
                this.content_ = reactionContent;
            } else {
                this.content_ = ReactionContent.newBuilder(this.content_).mergeFrom(reactionContent).buildPartial();
            }
        }

        public void mergeRecipient(Peer peer) {
            peer.getClass();
            Peer peer2 = this.recipient_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.recipient_ = peer;
            } else {
                this.recipient_ = Peer.newBuilder(this.recipient_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3152a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3152a newBuilder(ReactionSent reactionSent) {
            return DEFAULT_INSTANCE.createBuilder(reactionSent);
        }

        public static ReactionSent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ReactionSent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ReactionSent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ReactionSent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ReactionSent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ReactionSent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static ReactionSent parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ReactionSent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ReactionSent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static ReactionSent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ReactionSent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ReactionSent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<ReactionSent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeKnownPhoneNumbers(int i) {
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.remove(i);
        }

        public void setContent(ReactionContent reactionContent) {
            reactionContent.getClass();
            this.content_ = reactionContent;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.set(i, int64Value);
        }

        public void setRecipient(Peer peer) {
            peer.getClass();
            this.recipient_ = peer;
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0001��\u0001\t\u0002\t\u0003\u0004\u0004\t\u0005\u001b", new Object[]{"sender_", "recipient_", "date_", "content_", "knownPhoneNumbers_", Int64Value.class});
                case 3:
                    return new ReactionSent();
                case 4:
                    return new C3152a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (ReactionSent.class) {
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

        public ReactionContent getContent() {
            ReactionContent reactionContent = this.content_;
            ReactionContent reactionContent2 = reactionContent;
            if (reactionContent == null) {
                reactionContent2 = ReactionContent.getDefaultInstance();
            }
            return reactionContent2;
        }

        public int getDate() {
            return this.date_;
        }

        public Int64Value getKnownPhoneNumbers(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public int getKnownPhoneNumbersCount() {
            return this.knownPhoneNumbers_.size();
        }

        public List<Int64Value> getKnownPhoneNumbersList() {
            return this.knownPhoneNumbers_;
        }

        public Int64ValueOrBuilder getKnownPhoneNumbersOrBuilder(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public List<? extends Int64ValueOrBuilder> getKnownPhoneNumbersOrBuilderList() {
            return this.knownPhoneNumbers_;
        }

        public Peer getRecipient() {
            Peer peer = this.recipient_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasContent() {
            return this.content_ != null;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ReportSent */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ReportSent.class */
    public static final class ReportSent extends GeneratedMessageLite<ReportSent, C3153a> implements Object {
        public static final int DATE_FIELD_NUMBER = 4;
        private static final ReportSent DEFAULT_INSTANCE;
        public static final int KNOWN_PHONE_NUMBERS_FIELD_NUMBER = 7;
        private static volatile Parser<ReportSent> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int REF_MESSAGE_ID_FIELD_NUMBER = 3;
        public static final int REF_SEQ_FIELD_NUMBER = 6;
        public static final int REPORT_TYPE_FIELD_NUMBER = 5;
        public static final int SENDER_ID_FIELD_NUMBER = 1;
        private int date_;
        private Peer recipient_;
        private long refSeq_;
        private int reportType_;
        private String senderId_ = "";
        private String refMessageId_ = "";
        private Internal.ProtobufList<Int64Value> knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$ReportSent$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$ReportSent$a.class */
        public static final class C3153a extends GeneratedMessageLite.Builder<ReportSent, C3153a> implements Object {
            public C3153a() {
                super(ReportSent.DEFAULT_INSTANCE);
            }

            public C3153a(C3156a c3156a) {
                super(ReportSent.DEFAULT_INSTANCE);
            }
        }

        static {
            ReportSent reportSent = new ReportSent();
            DEFAULT_INSTANCE = reportSent;
            GeneratedMessageLite.registerDefaultInstance(ReportSent.class, reportSent);
        }

        private ReportSent() {
        }

        public void addAllKnownPhoneNumbers(Iterable<? extends Int64Value> iterable) {
            ensureKnownPhoneNumbersIsMutable();
            AbstractMessageLite.addAll(iterable, this.knownPhoneNumbers_);
        }

        public void addKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(i, int64Value);
        }

        public void addKnownPhoneNumbers(Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(int64Value);
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearKnownPhoneNumbers() {
            this.knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearRefMessageId() {
            this.refMessageId_ = getDefaultInstance().getRefMessageId();
        }

        public void clearRefSeq() {
            this.refSeq_ = 0L;
        }

        public void clearReportType() {
            this.reportType_ = 0;
        }

        public void clearSenderId() {
            this.senderId_ = getDefaultInstance().getSenderId();
        }

        private void ensureKnownPhoneNumbersIsMutable() {
            Internal.ProtobufList<Int64Value> protobufList = this.knownPhoneNumbers_;
            if (!protobufList.isModifiable()) {
                this.knownPhoneNumbers_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static ReportSent getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeRecipient(Peer peer) {
            peer.getClass();
            Peer peer2 = this.recipient_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.recipient_ = peer;
            } else {
                this.recipient_ = Peer.newBuilder(this.recipient_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3153a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3153a newBuilder(ReportSent reportSent) {
            return DEFAULT_INSTANCE.createBuilder(reportSent);
        }

        public static ReportSent parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ReportSent parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ReportSent parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static ReportSent parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static ReportSent parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static ReportSent parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static ReportSent parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static ReportSent parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static ReportSent parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static ReportSent parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static ReportSent parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static ReportSent parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<ReportSent> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeKnownPhoneNumbers(int i) {
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.remove(i);
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.set(i, int64Value);
        }

        public void setRecipient(Peer peer) {
            peer.getClass();
            this.recipient_ = peer;
        }

        public void setRefMessageId(String str) {
            str.getClass();
            this.refMessageId_ = str;
        }

        public void setRefMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.refMessageId_ = byteString.toStringUtf8();
        }

        public void setRefSeq(long j) {
            this.refSeq_ = j;
        }

        public void setReportType(ReportType reportType) {
            this.reportType_ = reportType.getNumber();
        }

        public void setReportTypeValue(int i) {
            this.reportType_ = i;
        }

        public void setSenderId(String str) {
            str.getClass();
            this.senderId_ = str;
        }

        public void setSenderIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.senderId_ = byteString.toStringUtf8();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0007����\u0001\u0007\u0007��\u0001��\u0001Ȉ\u0002\t\u0003Ȉ\u0004\u0004\u0005\f\u0006\u0002\u0007\u001b", new Object[]{"senderId_", "recipient_", "refMessageId_", "date_", "reportType_", "refSeq_", "knownPhoneNumbers_", Int64Value.class});
                case 3:
                    return new ReportSent();
                case 4:
                    return new C3153a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (ReportSent.class) {
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

        public int getDate() {
            return this.date_;
        }

        public Int64Value getKnownPhoneNumbers(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public int getKnownPhoneNumbersCount() {
            return this.knownPhoneNumbers_.size();
        }

        public List<Int64Value> getKnownPhoneNumbersList() {
            return this.knownPhoneNumbers_;
        }

        public Int64ValueOrBuilder getKnownPhoneNumbersOrBuilder(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public List<? extends Int64ValueOrBuilder> getKnownPhoneNumbersOrBuilderList() {
            return this.knownPhoneNumbers_;
        }

        public Peer getRecipient() {
            Peer peer = this.recipient_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public String getRefMessageId() {
            return this.refMessageId_;
        }

        public ByteString getRefMessageIdBytes() {
            return ByteString.copyFromUtf8(this.refMessageId_);
        }

        public long getRefSeq() {
            return this.refSeq_;
        }

        public ReportType getReportType() {
            ReportType forNumber = ReportType.forNumber(this.reportType_);
            ReportType reportType = forNumber;
            if (forNumber == null) {
                reportType = ReportType.UNRECOGNIZED;
            }
            return reportType;
        }

        public int getReportTypeValue() {
            return this.reportType_;
        }

        public String getSenderId() {
            return this.senderId_;
        }

        public ByteString getSenderIdBytes() {
            return ByteString.copyFromUtf8(this.senderId_);
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$RolesUpdated */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$RolesUpdated.class */
    public static final class RolesUpdated extends GeneratedMessageLite<RolesUpdated, C3154a> implements Object {
        public static final int CONTEXT_FIELD_NUMBER = 2;
        public static final int DATE_FIELD_NUMBER = 4;
        private static final RolesUpdated DEFAULT_INSTANCE;
        public static final int GROUP_INVITE_KEY_FIELD_NUMBER = 8;
        public static final int MESSAGE_ID_FIELD_NUMBER = 3;
        private static volatile Parser<RolesUpdated> PARSER;
        public static final int PARTICIPANT_FIELD_NUMBER = 5;
        public static final int PERMISSIONS_FIELD_NUMBER = 7;
        public static final int ROLES_FIELD_NUMBER = 6;
        public static final int SENDER_FIELD_NUMBER = 1;
        private Peer context_;
        private int date_;
        private Peer participant_;
        private ContextPermissions permissions_;
        private int roles_;
        private Peer sender_;
        private String messageId_ = "";
        private String groupInviteKey_ = "";

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$RolesUpdated$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$RolesUpdated$a.class */
        public static final class C3154a extends GeneratedMessageLite.Builder<RolesUpdated, C3154a> implements Object {
            public C3154a() {
                super(RolesUpdated.DEFAULT_INSTANCE);
            }

            public C3154a(C3156a c3156a) {
                super(RolesUpdated.DEFAULT_INSTANCE);
            }
        }

        static {
            RolesUpdated rolesUpdated = new RolesUpdated();
            DEFAULT_INSTANCE = rolesUpdated;
            GeneratedMessageLite.registerDefaultInstance(RolesUpdated.class, rolesUpdated);
        }

        private RolesUpdated() {
        }

        public void clearContext() {
            this.context_ = null;
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearGroupInviteKey() {
            this.groupInviteKey_ = getDefaultInstance().getGroupInviteKey();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearParticipant() {
            this.participant_ = null;
        }

        public void clearPermissions() {
            this.permissions_ = null;
        }

        public void clearRoles() {
            this.roles_ = 0;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        public static RolesUpdated getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeContext(Peer peer) {
            peer.getClass();
            Peer peer2 = this.context_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.context_ = peer;
            } else {
                this.context_ = Peer.newBuilder(this.context_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeParticipant(Peer peer) {
            peer.getClass();
            Peer peer2 = this.participant_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.participant_ = peer;
            } else {
                this.participant_ = Peer.newBuilder(this.participant_).mergeFrom(peer).buildPartial();
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

        public void mergeSender(Peer peer) {
            peer.getClass();
            Peer peer2 = this.sender_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.sender_ = peer;
            } else {
                this.sender_ = Peer.newBuilder(this.sender_).mergeFrom(peer).buildPartial();
            }
        }

        public static C3154a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3154a newBuilder(RolesUpdated rolesUpdated) {
            return DEFAULT_INSTANCE.createBuilder(rolesUpdated);
        }

        public static RolesUpdated parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static RolesUpdated parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static RolesUpdated parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static RolesUpdated parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static RolesUpdated parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static RolesUpdated parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static RolesUpdated parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static RolesUpdated parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static RolesUpdated parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static RolesUpdated parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static RolesUpdated parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static RolesUpdated parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<RolesUpdated> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setContext(Peer peer) {
            peer.getClass();
            this.context_ = peer;
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setGroupInviteKey(String str) {
            str.getClass();
            this.groupInviteKey_ = str;
        }

        public void setGroupInviteKeyBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.groupInviteKey_ = byteString.toStringUtf8();
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setParticipant(Peer peer) {
            peer.getClass();
            this.participant_ = peer;
        }

        public void setPermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            this.permissions_ = contextPermissions;
        }

        public void setRoles(int i) {
            this.roles_ = i;
        }

        public void setSender(Peer peer) {
            peer.getClass();
            this.sender_ = peer;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\b����\u0001\b\b������\u0001\t\u0002\t\u0003Ȉ\u0004\u0004\u0005\t\u0006\u0004\u0007\t\bȈ", new Object[]{"sender_", "context_", "messageId_", "date_", "participant_", "roles_", "permissions_", "groupInviteKey_"});
                case 3:
                    return new RolesUpdated();
                case 4:
                    return new C3154a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (RolesUpdated.class) {
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

        public Peer getContext() {
            Peer peer = this.context_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public int getDate() {
            return this.date_;
        }

        public String getGroupInviteKey() {
            return this.groupInviteKey_;
        }

        public ByteString getGroupInviteKeyBytes() {
            return ByteString.copyFromUtf8(this.groupInviteKey_);
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public Peer getParticipant() {
            Peer peer = this.participant_;
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

        public Peer getSender() {
            Peer peer = this.sender_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public boolean hasContext() {
            return this.context_ != null;
        }

        public boolean hasParticipant() {
            return this.participant_ != null;
        }

        public boolean hasPermissions() {
            return this.permissions_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$UserTyping */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$UserTyping.class */
    public static final class UserTyping extends GeneratedMessageLite<UserTyping, C3155a> implements Object {
        public static final int DATE_FIELD_NUMBER = 3;
        private static final UserTyping DEFAULT_INSTANCE;
        public static final int KIND_FIELD_NUMBER = 4;
        public static final int KNOWN_PHONE_NUMBERS_FIELD_NUMBER = 5;
        private static volatile Parser<UserTyping> PARSER;
        public static final int RECIPIENT_FIELD_NUMBER = 2;
        public static final int SENDER_FIELD_NUMBER = 1;
        private int date_;
        private int kind_;
        private Internal.ProtobufList<Int64Value> knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        private Peer recipient_;
        private Peer.User sender_;

        /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$UserTyping$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$UserTyping$a.class */
        public static final class C3155a extends GeneratedMessageLite.Builder<UserTyping, C3155a> implements Object {
            public C3155a() {
                super(UserTyping.DEFAULT_INSTANCE);
            }

            public C3155a(C3156a c3156a) {
                super(UserTyping.DEFAULT_INSTANCE);
            }
        }

        static {
            UserTyping userTyping = new UserTyping();
            DEFAULT_INSTANCE = userTyping;
            GeneratedMessageLite.registerDefaultInstance(UserTyping.class, userTyping);
        }

        private UserTyping() {
        }

        public void addAllKnownPhoneNumbers(Iterable<? extends Int64Value> iterable) {
            ensureKnownPhoneNumbersIsMutable();
            AbstractMessageLite.addAll(iterable, this.knownPhoneNumbers_);
        }

        public void addKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(i, int64Value);
        }

        public void addKnownPhoneNumbers(Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.add(int64Value);
        }

        public void clearDate() {
            this.date_ = 0;
        }

        public void clearKind() {
            this.kind_ = 0;
        }

        public void clearKnownPhoneNumbers() {
            this.knownPhoneNumbers_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearRecipient() {
            this.recipient_ = null;
        }

        public void clearSender() {
            this.sender_ = null;
        }

        private void ensureKnownPhoneNumbersIsMutable() {
            Internal.ProtobufList<Int64Value> protobufList = this.knownPhoneNumbers_;
            if (!protobufList.isModifiable()) {
                this.knownPhoneNumbers_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static UserTyping getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeRecipient(Peer peer) {
            peer.getClass();
            Peer peer2 = this.recipient_;
            if (peer2 == null || peer2 == Peer.getDefaultInstance()) {
                this.recipient_ = peer;
            } else {
                this.recipient_ = Peer.newBuilder(this.recipient_).mergeFrom(peer).buildPartial();
            }
        }

        public void mergeSender(Peer.User user) {
            user.getClass();
            Peer.User user2 = this.sender_;
            if (user2 == null || user2 == Peer.User.getDefaultInstance()) {
                this.sender_ = user;
            } else {
                this.sender_ = Peer.User.newBuilder(this.sender_).mergeFrom(user).buildPartial();
            }
        }

        public static C3155a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3155a newBuilder(UserTyping userTyping) {
            return DEFAULT_INSTANCE.createBuilder(userTyping);
        }

        public static UserTyping parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static UserTyping parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static UserTyping parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static UserTyping parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static UserTyping parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static UserTyping parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static UserTyping parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static UserTyping parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static UserTyping parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static UserTyping parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static UserTyping parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static UserTyping parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<UserTyping> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeKnownPhoneNumbers(int i) {
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.remove(i);
        }

        public void setDate(int i) {
            this.date_ = i;
        }

        public void setKind(UserTypingKind userTypingKind) {
            this.kind_ = userTypingKind.getNumber();
        }

        public void setKindValue(int i) {
            this.kind_ = i;
        }

        public void setKnownPhoneNumbers(int i, Int64Value int64Value) {
            int64Value.getClass();
            ensureKnownPhoneNumbersIsMutable();
            this.knownPhoneNumbers_.set(i, int64Value);
        }

        public void setRecipient(Peer peer) {
            peer.getClass();
            this.recipient_ = peer;
        }

        public void setSender(Peer.User user) {
            user.getClass();
            this.sender_ = user;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0001��\u0001\t\u0002\t\u0003\u0004\u0004\f\u0005\u001b", new Object[]{"sender_", "recipient_", "date_", "kind_", "knownPhoneNumbers_", Int64Value.class});
                case 3:
                    return new UserTyping();
                case 4:
                    return new C3155a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (UserTyping.class) {
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

        public int getDate() {
            return this.date_;
        }

        public UserTypingKind getKind() {
            UserTypingKind forNumber = UserTypingKind.forNumber(this.kind_);
            UserTypingKind userTypingKind = forNumber;
            if (forNumber == null) {
                userTypingKind = UserTypingKind.UNRECOGNIZED;
            }
            return userTypingKind;
        }

        public int getKindValue() {
            return this.kind_;
        }

        public Int64Value getKnownPhoneNumbers(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public int getKnownPhoneNumbersCount() {
            return this.knownPhoneNumbers_.size();
        }

        public List<Int64Value> getKnownPhoneNumbersList() {
            return this.knownPhoneNumbers_;
        }

        public Int64ValueOrBuilder getKnownPhoneNumbersOrBuilder(int i) {
            return this.knownPhoneNumbers_.get(i);
        }

        public List<? extends Int64ValueOrBuilder> getKnownPhoneNumbersOrBuilderList() {
            return this.knownPhoneNumbers_;
        }

        public Peer getRecipient() {
            Peer peer = this.recipient_;
            Peer peer2 = peer;
            if (peer == null) {
                peer2 = Peer.getDefaultInstance();
            }
            return peer2;
        }

        public Peer.User getSender() {
            Peer.User user = this.sender_;
            Peer.User user2 = user;
            if (user == null) {
                user2 = Peer.User.getDefaultInstance();
            }
            return user2;
        }

        public boolean hasRecipient() {
            return this.recipient_ != null;
        }

        public boolean hasSender() {
            return this.sender_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.events.Event$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/events/Event$b.class */
    public static final class C3157b extends GeneratedMessageLite.Builder<Event, C3157b> implements AbstractC20461a {
        public C3157b() {
            super(Event.DEFAULT_INSTANCE);
        }

        public C3157b(C3156a c3156a) {
            super(Event.DEFAULT_INSTANCE);
        }
    }

    static {
        Event event = new Event();
        DEFAULT_INSTANCE = event;
        GeneratedMessageLite.registerDefaultInstance(Event.class, event);
    }

    private Event() {
    }

    public void clearContextSeq() {
        this.contextSeq_ = 0L;
    }

    public void clearGroupCreated() {
        if (this.payloadCase_ == 5) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearGroupDeleted() {
        if (this.payloadCase_ == 10) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearGroupInfoUpdated() {
        if (this.payloadCase_ == 9) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearGroupInviteKeyUpdated() {
        if (this.payloadCase_ == 12) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearId() {
        this.id_ = 0L;
    }

    public void clearIncompatibleEvent() {
        if (this.payloadCase_ == 998) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearMessageEdited() {
        if (this.payloadCase_ == 13) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearMessageSent() {
        if (this.payloadCase_ == 2) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearMessagesDeleted() {
        if (this.payloadCase_ == 14) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearOriginal() {
        this.original_ = null;
    }

    public void clearParticipantAdded() {
        if (this.payloadCase_ == 6) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearParticipantRemoved() {
        if (this.payloadCase_ == 7) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearPayload() {
        this.payloadCase_ = 0;
        this.payload_ = null;
    }

    public void clearPing() {
        if (this.payloadCase_ == 997) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearReactionSent() {
        if (this.payloadCase_ == 4) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearReportSent() {
        if (this.payloadCase_ == 3) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearRolesUpdated() {
        if (this.payloadCase_ == 8) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public void clearUserTyping() {
        if (this.payloadCase_ == 11) {
            this.payloadCase_ = 0;
            this.payload_ = null;
        }
    }

    public static Event getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeGroupCreated(GroupCreated groupCreated) {
        groupCreated.getClass();
        if (this.payloadCase_ != 5 || this.payload_ == GroupCreated.getDefaultInstance()) {
            this.payload_ = groupCreated;
        } else {
            this.payload_ = GroupCreated.newBuilder((GroupCreated) this.payload_).mergeFrom(groupCreated).buildPartial();
        }
        this.payloadCase_ = 5;
    }

    public void mergeGroupDeleted(GroupDeleted groupDeleted) {
        groupDeleted.getClass();
        if (this.payloadCase_ != 10 || this.payload_ == GroupDeleted.getDefaultInstance()) {
            this.payload_ = groupDeleted;
        } else {
            this.payload_ = GroupDeleted.newBuilder((GroupDeleted) this.payload_).mergeFrom(groupDeleted).buildPartial();
        }
        this.payloadCase_ = 10;
    }

    public void mergeGroupInfoUpdated(GroupInfoUpdated groupInfoUpdated) {
        groupInfoUpdated.getClass();
        if (this.payloadCase_ != 9 || this.payload_ == GroupInfoUpdated.getDefaultInstance()) {
            this.payload_ = groupInfoUpdated;
        } else {
            this.payload_ = GroupInfoUpdated.newBuilder((GroupInfoUpdated) this.payload_).mergeFrom(groupInfoUpdated).buildPartial();
        }
        this.payloadCase_ = 9;
    }

    public void mergeGroupInviteKeyUpdated(GroupInviteKeyUpdated groupInviteKeyUpdated) {
        groupInviteKeyUpdated.getClass();
        if (this.payloadCase_ != 12 || this.payload_ == GroupInviteKeyUpdated.getDefaultInstance()) {
            this.payload_ = groupInviteKeyUpdated;
        } else {
            this.payload_ = GroupInviteKeyUpdated.newBuilder((GroupInviteKeyUpdated) this.payload_).mergeFrom(groupInviteKeyUpdated).buildPartial();
        }
        this.payloadCase_ = 12;
    }

    public void mergeIncompatibleEvent(IncompatibleEvent incompatibleEvent) {
        incompatibleEvent.getClass();
        if (this.payloadCase_ != 998 || this.payload_ == IncompatibleEvent.getDefaultInstance()) {
            this.payload_ = incompatibleEvent;
        } else {
            this.payload_ = IncompatibleEvent.newBuilder((IncompatibleEvent) this.payload_).mergeFrom(incompatibleEvent).buildPartial();
        }
        this.payloadCase_ = 998;
    }

    public void mergeMessageEdited(MessageEdited messageEdited) {
        messageEdited.getClass();
        if (this.payloadCase_ != 13 || this.payload_ == MessageEdited.getDefaultInstance()) {
            this.payload_ = messageEdited;
        } else {
            this.payload_ = MessageEdited.newBuilder((MessageEdited) this.payload_).mergeFrom(messageEdited).buildPartial();
        }
        this.payloadCase_ = 13;
    }

    public void mergeMessageSent(MessageSent messageSent) {
        messageSent.getClass();
        if (this.payloadCase_ != 2 || this.payload_ == MessageSent.getDefaultInstance()) {
            this.payload_ = messageSent;
        } else {
            this.payload_ = MessageSent.newBuilder((MessageSent) this.payload_).mergeFrom(messageSent).buildPartial();
        }
        this.payloadCase_ = 2;
    }

    public void mergeMessagesDeleted(MessagesDeleted messagesDeleted) {
        messagesDeleted.getClass();
        if (this.payloadCase_ != 14 || this.payload_ == MessagesDeleted.getDefaultInstance()) {
            this.payload_ = messagesDeleted;
        } else {
            this.payload_ = MessagesDeleted.newBuilder((MessagesDeleted) this.payload_).mergeFrom(messagesDeleted).buildPartial();
        }
        this.payloadCase_ = 14;
    }

    public void mergeOriginal(OriginalEvent originalEvent) {
        originalEvent.getClass();
        OriginalEvent originalEvent2 = this.original_;
        if (originalEvent2 == null || originalEvent2 == OriginalEvent.getDefaultInstance()) {
            this.original_ = originalEvent;
        } else {
            this.original_ = OriginalEvent.newBuilder(this.original_).mergeFrom(originalEvent).buildPartial();
        }
    }

    public void mergeParticipantAdded(ParticipantsAdded participantsAdded) {
        participantsAdded.getClass();
        if (this.payloadCase_ != 6 || this.payload_ == ParticipantsAdded.getDefaultInstance()) {
            this.payload_ = participantsAdded;
        } else {
            this.payload_ = ParticipantsAdded.newBuilder((ParticipantsAdded) this.payload_).mergeFrom(participantsAdded).buildPartial();
        }
        this.payloadCase_ = 6;
    }

    public void mergeParticipantRemoved(ParticipantsRemoved participantsRemoved) {
        participantsRemoved.getClass();
        if (this.payloadCase_ != 7 || this.payload_ == ParticipantsRemoved.getDefaultInstance()) {
            this.payload_ = participantsRemoved;
        } else {
            this.payload_ = ParticipantsRemoved.newBuilder((ParticipantsRemoved) this.payload_).mergeFrom(participantsRemoved).buildPartial();
        }
        this.payloadCase_ = 7;
    }

    public void mergePing(Ping ping) {
        ping.getClass();
        if (this.payloadCase_ != 997 || this.payload_ == Ping.getDefaultInstance()) {
            this.payload_ = ping;
        } else {
            this.payload_ = Ping.newBuilder((Ping) this.payload_).mergeFrom(ping).buildPartial();
        }
        this.payloadCase_ = PING_FIELD_NUMBER;
    }

    public void mergeReactionSent(ReactionSent reactionSent) {
        reactionSent.getClass();
        if (this.payloadCase_ != 4 || this.payload_ == ReactionSent.getDefaultInstance()) {
            this.payload_ = reactionSent;
        } else {
            this.payload_ = ReactionSent.newBuilder((ReactionSent) this.payload_).mergeFrom(reactionSent).buildPartial();
        }
        this.payloadCase_ = 4;
    }

    public void mergeReportSent(ReportSent reportSent) {
        reportSent.getClass();
        if (this.payloadCase_ != 3 || this.payload_ == ReportSent.getDefaultInstance()) {
            this.payload_ = reportSent;
        } else {
            this.payload_ = ReportSent.newBuilder((ReportSent) this.payload_).mergeFrom(reportSent).buildPartial();
        }
        this.payloadCase_ = 3;
    }

    public void mergeRolesUpdated(RolesUpdated rolesUpdated) {
        rolesUpdated.getClass();
        if (this.payloadCase_ != 8 || this.payload_ == RolesUpdated.getDefaultInstance()) {
            this.payload_ = rolesUpdated;
        } else {
            this.payload_ = RolesUpdated.newBuilder((RolesUpdated) this.payload_).mergeFrom(rolesUpdated).buildPartial();
        }
        this.payloadCase_ = 8;
    }

    public void mergeUserTyping(UserTyping userTyping) {
        userTyping.getClass();
        if (this.payloadCase_ != 11 || this.payload_ == UserTyping.getDefaultInstance()) {
            this.payload_ = userTyping;
        } else {
            this.payload_ = UserTyping.newBuilder((UserTyping) this.payload_).mergeFrom(userTyping).buildPartial();
        }
        this.payloadCase_ = 11;
    }

    public static C3157b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3157b newBuilder(Event event) {
        return DEFAULT_INSTANCE.createBuilder(event);
    }

    public static Event parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Event parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Event parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static Event parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static Event parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static Event parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static Event parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static Event parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static Event parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static Event parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static Event parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static Event parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<Event> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setContextSeq(long j) {
        this.contextSeq_ = j;
    }

    public void setGroupCreated(GroupCreated groupCreated) {
        groupCreated.getClass();
        this.payload_ = groupCreated;
        this.payloadCase_ = 5;
    }

    public void setGroupDeleted(GroupDeleted groupDeleted) {
        groupDeleted.getClass();
        this.payload_ = groupDeleted;
        this.payloadCase_ = 10;
    }

    public void setGroupInfoUpdated(GroupInfoUpdated groupInfoUpdated) {
        groupInfoUpdated.getClass();
        this.payload_ = groupInfoUpdated;
        this.payloadCase_ = 9;
    }

    public void setGroupInviteKeyUpdated(GroupInviteKeyUpdated groupInviteKeyUpdated) {
        groupInviteKeyUpdated.getClass();
        this.payload_ = groupInviteKeyUpdated;
        this.payloadCase_ = 12;
    }

    public void setId(long j) {
        this.id_ = j;
    }

    public void setIncompatibleEvent(IncompatibleEvent incompatibleEvent) {
        incompatibleEvent.getClass();
        this.payload_ = incompatibleEvent;
        this.payloadCase_ = 998;
    }

    public void setMessageEdited(MessageEdited messageEdited) {
        messageEdited.getClass();
        this.payload_ = messageEdited;
        this.payloadCase_ = 13;
    }

    public void setMessageSent(MessageSent messageSent) {
        messageSent.getClass();
        this.payload_ = messageSent;
        this.payloadCase_ = 2;
    }

    public void setMessagesDeleted(MessagesDeleted messagesDeleted) {
        messagesDeleted.getClass();
        this.payload_ = messagesDeleted;
        this.payloadCase_ = 14;
    }

    public void setOriginal(OriginalEvent originalEvent) {
        originalEvent.getClass();
        this.original_ = originalEvent;
    }

    public void setParticipantAdded(ParticipantsAdded participantsAdded) {
        participantsAdded.getClass();
        this.payload_ = participantsAdded;
        this.payloadCase_ = 6;
    }

    public void setParticipantRemoved(ParticipantsRemoved participantsRemoved) {
        participantsRemoved.getClass();
        this.payload_ = participantsRemoved;
        this.payloadCase_ = 7;
    }

    public void setPing(Ping ping) {
        ping.getClass();
        this.payload_ = ping;
        this.payloadCase_ = PING_FIELD_NUMBER;
    }

    public void setReactionSent(ReactionSent reactionSent) {
        reactionSent.getClass();
        this.payload_ = reactionSent;
        this.payloadCase_ = 4;
    }

    public void setReportSent(ReportSent reportSent) {
        reportSent.getClass();
        this.payload_ = reportSent;
        this.payloadCase_ = 3;
    }

    public void setRolesUpdated(RolesUpdated rolesUpdated) {
        rolesUpdated.getClass();
        this.payload_ = rolesUpdated;
        this.payloadCase_ = 8;
    }

    public void setUserTyping(UserTyping userTyping) {
        userTyping.getClass();
        this.payload_ = userTyping;
        this.payloadCase_ = 11;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0012\u0001��\u0001ϧ\u0012������\u0001\u0002\u0002<��\u0003<��\u0004<��\u0005<��\u0006<��\u0007<��\b<��\t<��\n<��\u000b<��\f<��\r<��\u000e<��Ϥ\u0002ϥ<��Ϧ<��ϧ\t", new Object[]{"payload_", "payloadCase_", "id_", MessageSent.class, ReportSent.class, ReactionSent.class, GroupCreated.class, ParticipantsAdded.class, ParticipantsRemoved.class, RolesUpdated.class, GroupInfoUpdated.class, GroupDeleted.class, UserTyping.class, GroupInviteKeyUpdated.class, MessageEdited.class, MessagesDeleted.class, "contextSeq_", Ping.class, IncompatibleEvent.class, "original_"});
            case 3:
                return new Event();
            case 4:
                return new C3157b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (Event.class) {
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

    public long getContextSeq() {
        return this.contextSeq_;
    }

    public GroupCreated getGroupCreated() {
        return this.payloadCase_ == 5 ? (GroupCreated) this.payload_ : GroupCreated.getDefaultInstance();
    }

    public GroupDeleted getGroupDeleted() {
        return this.payloadCase_ == 10 ? (GroupDeleted) this.payload_ : GroupDeleted.getDefaultInstance();
    }

    public GroupInfoUpdated getGroupInfoUpdated() {
        return this.payloadCase_ == 9 ? (GroupInfoUpdated) this.payload_ : GroupInfoUpdated.getDefaultInstance();
    }

    public GroupInviteKeyUpdated getGroupInviteKeyUpdated() {
        return this.payloadCase_ == 12 ? (GroupInviteKeyUpdated) this.payload_ : GroupInviteKeyUpdated.getDefaultInstance();
    }

    public long getId() {
        return this.id_;
    }

    public IncompatibleEvent getIncompatibleEvent() {
        return this.payloadCase_ == 998 ? (IncompatibleEvent) this.payload_ : IncompatibleEvent.getDefaultInstance();
    }

    public MessageEdited getMessageEdited() {
        return this.payloadCase_ == 13 ? (MessageEdited) this.payload_ : MessageEdited.getDefaultInstance();
    }

    public MessageSent getMessageSent() {
        return this.payloadCase_ == 2 ? (MessageSent) this.payload_ : MessageSent.getDefaultInstance();
    }

    public MessagesDeleted getMessagesDeleted() {
        return this.payloadCase_ == 14 ? (MessagesDeleted) this.payload_ : MessagesDeleted.getDefaultInstance();
    }

    public OriginalEvent getOriginal() {
        OriginalEvent originalEvent = this.original_;
        OriginalEvent originalEvent2 = originalEvent;
        if (originalEvent == null) {
            originalEvent2 = OriginalEvent.getDefaultInstance();
        }
        return originalEvent2;
    }

    public ParticipantsAdded getParticipantAdded() {
        return this.payloadCase_ == 6 ? (ParticipantsAdded) this.payload_ : ParticipantsAdded.getDefaultInstance();
    }

    public ParticipantsRemoved getParticipantRemoved() {
        return this.payloadCase_ == 7 ? (ParticipantsRemoved) this.payload_ : ParticipantsRemoved.getDefaultInstance();
    }

    public PayloadCase getPayloadCase() {
        return PayloadCase.forNumber(this.payloadCase_);
    }

    public Ping getPing() {
        return this.payloadCase_ == 997 ? (Ping) this.payload_ : Ping.getDefaultInstance();
    }

    public ReactionSent getReactionSent() {
        return this.payloadCase_ == 4 ? (ReactionSent) this.payload_ : ReactionSent.getDefaultInstance();
    }

    public ReportSent getReportSent() {
        return this.payloadCase_ == 3 ? (ReportSent) this.payload_ : ReportSent.getDefaultInstance();
    }

    public RolesUpdated getRolesUpdated() {
        return this.payloadCase_ == 8 ? (RolesUpdated) this.payload_ : RolesUpdated.getDefaultInstance();
    }

    public UserTyping getUserTyping() {
        return this.payloadCase_ == 11 ? (UserTyping) this.payload_ : UserTyping.getDefaultInstance();
    }

    public boolean hasGroupCreated() {
        return this.payloadCase_ == 5;
    }

    public boolean hasGroupDeleted() {
        return this.payloadCase_ == 10;
    }

    public boolean hasGroupInfoUpdated() {
        return this.payloadCase_ == 9;
    }

    public boolean hasGroupInviteKeyUpdated() {
        return this.payloadCase_ == 12;
    }

    public boolean hasIncompatibleEvent() {
        return this.payloadCase_ == 998;
    }

    public boolean hasMessageEdited() {
        return this.payloadCase_ == 13;
    }

    public boolean hasMessageSent() {
        return this.payloadCase_ == 2;
    }

    public boolean hasMessagesDeleted() {
        return this.payloadCase_ == 14;
    }

    public boolean hasOriginal() {
        return this.original_ != null;
    }

    public boolean hasParticipantAdded() {
        return this.payloadCase_ == 6;
    }

    public boolean hasParticipantRemoved() {
        return this.payloadCase_ == 7;
    }

    public boolean hasPing() {
        return this.payloadCase_ == 997;
    }

    public boolean hasReactionSent() {
        return this.payloadCase_ == 4;
    }

    public boolean hasReportSent() {
        return this.payloadCase_ == 3;
    }

    public boolean hasRolesUpdated() {
        return this.payloadCase_ == 8;
    }

    public boolean hasUserTyping() {
        return this.payloadCase_ == 11;
    }
}

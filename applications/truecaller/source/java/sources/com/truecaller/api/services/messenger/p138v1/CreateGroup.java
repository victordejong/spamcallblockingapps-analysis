package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.AbstractMessageLite;
import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.models.ContextPermissions;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfo;
import com.truecaller.api.services.messenger.p138v1.models.GroupInfoExt;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.input.InputGroupInfo;
import com.truecaller.api.services.messenger.p138v1.models.input.InputGroupManagementSettings;
import com.truecaller.api.services.messenger.p138v1.models.input.InputGroupPrivacySettings;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20467f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.p1252h.AbstractC20470b;
/* renamed from: com.truecaller.api.services.messenger.v1.CreateGroup */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/CreateGroup.class */
public final class CreateGroup extends GeneratedMessageLite<CreateGroup, C3029b> implements Object {
    private static final CreateGroup DEFAULT_INSTANCE;
    private static volatile Parser<CreateGroup> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.CreateGroup$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/CreateGroup$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3026a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        public static final int GROUP_INFO_FIELD_NUMBER = 5;
        public static final int MANAGEMENT_SETTINGS_FIELD_NUMBER = 3;
        private static volatile Parser<Request> PARSER;
        public static final int PARTICIPANTS_FIELD_NUMBER = 4;
        public static final int PRIVACY_SETTINGS_FIELD_NUMBER = 2;
        public static final int RANDOM_ID_FIELD_NUMBER = 1;
        private InputGroupInfo groupInfo_;
        private InputGroupManagementSettings managementSettings_;
        private Internal.ProtobufList<InputPeer> participants_ = GeneratedMessageLite.emptyProtobufList();
        private InputGroupPrivacySettings privacySettings_;
        private long randomId_;

        /* renamed from: com.truecaller.api.services.messenger.v1.CreateGroup$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/CreateGroup$Request$a.class */
        public static final class C3026a extends GeneratedMessageLite.Builder<Request, C3026a> implements Object {
            public C3026a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3026a(C3028a c3028a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void addAllParticipants(Iterable<? extends InputPeer> iterable) {
            ensureParticipantsIsMutable();
            AbstractMessageLite.addAll(iterable, this.participants_);
        }

        public void addParticipants(int i, InputPeer inputPeer) {
            inputPeer.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(i, inputPeer);
        }

        public void addParticipants(InputPeer inputPeer) {
            inputPeer.getClass();
            ensureParticipantsIsMutable();
            this.participants_.add(inputPeer);
        }

        public void clearGroupInfo() {
            this.groupInfo_ = null;
        }

        public void clearManagementSettings() {
            this.managementSettings_ = null;
        }

        public void clearParticipants() {
            this.participants_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearPrivacySettings() {
            this.privacySettings_ = null;
        }

        public void clearRandomId() {
            this.randomId_ = 0L;
        }

        private void ensureParticipantsIsMutable() {
            Internal.ProtobufList<InputPeer> protobufList = this.participants_;
            if (!protobufList.isModifiable()) {
                this.participants_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeGroupInfo(InputGroupInfo inputGroupInfo) {
            inputGroupInfo.getClass();
            InputGroupInfo inputGroupInfo2 = this.groupInfo_;
            if (inputGroupInfo2 == null || inputGroupInfo2 == InputGroupInfo.getDefaultInstance()) {
                this.groupInfo_ = inputGroupInfo;
            } else {
                this.groupInfo_ = InputGroupInfo.newBuilder(this.groupInfo_).mergeFrom(inputGroupInfo).buildPartial();
            }
        }

        public void mergeManagementSettings(InputGroupManagementSettings inputGroupManagementSettings) {
            inputGroupManagementSettings.getClass();
            InputGroupManagementSettings inputGroupManagementSettings2 = this.managementSettings_;
            if (inputGroupManagementSettings2 == null || inputGroupManagementSettings2 == InputGroupManagementSettings.getDefaultInstance()) {
                this.managementSettings_ = inputGroupManagementSettings;
            } else {
                this.managementSettings_ = InputGroupManagementSettings.newBuilder(this.managementSettings_).mergeFrom(inputGroupManagementSettings).buildPartial();
            }
        }

        public void mergePrivacySettings(InputGroupPrivacySettings inputGroupPrivacySettings) {
            inputGroupPrivacySettings.getClass();
            InputGroupPrivacySettings inputGroupPrivacySettings2 = this.privacySettings_;
            if (inputGroupPrivacySettings2 == null || inputGroupPrivacySettings2 == InputGroupPrivacySettings.getDefaultInstance()) {
                this.privacySettings_ = inputGroupPrivacySettings;
            } else {
                this.privacySettings_ = InputGroupPrivacySettings.newBuilder(this.privacySettings_).mergeFrom(inputGroupPrivacySettings).buildPartial();
            }
        }

        public static C3026a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3026a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeParticipants(int i) {
            ensureParticipantsIsMutable();
            this.participants_.remove(i);
        }

        public void setGroupInfo(InputGroupInfo inputGroupInfo) {
            inputGroupInfo.getClass();
            this.groupInfo_ = inputGroupInfo;
        }

        public void setManagementSettings(InputGroupManagementSettings inputGroupManagementSettings) {
            inputGroupManagementSettings.getClass();
            this.managementSettings_ = inputGroupManagementSettings;
        }

        public void setParticipants(int i, InputPeer inputPeer) {
            inputPeer.getClass();
            ensureParticipantsIsMutable();
            this.participants_.set(i, inputPeer);
        }

        public void setPrivacySettings(InputGroupPrivacySettings inputGroupPrivacySettings) {
            inputGroupPrivacySettings.getClass();
            this.privacySettings_ = inputGroupPrivacySettings;
        }

        public void setRandomId(long j) {
            this.randomId_ = j;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0005����\u0001\u0005\u0005��\u0001��\u0001\u0002\u0002\t\u0003\t\u0004\u001b\u0005\t", new Object[]{"randomId_", "privacySettings_", "managementSettings_", "participants_", InputPeer.class, "groupInfo_"});
                case 3:
                    return new Request();
                case 4:
                    return new C3026a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
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

        public InputGroupInfo getGroupInfo() {
            InputGroupInfo inputGroupInfo = this.groupInfo_;
            InputGroupInfo inputGroupInfo2 = inputGroupInfo;
            if (inputGroupInfo == null) {
                inputGroupInfo2 = InputGroupInfo.getDefaultInstance();
            }
            return inputGroupInfo2;
        }

        public InputGroupManagementSettings getManagementSettings() {
            InputGroupManagementSettings inputGroupManagementSettings = this.managementSettings_;
            InputGroupManagementSettings inputGroupManagementSettings2 = inputGroupManagementSettings;
            if (inputGroupManagementSettings == null) {
                inputGroupManagementSettings2 = InputGroupManagementSettings.getDefaultInstance();
            }
            return inputGroupManagementSettings2;
        }

        public InputPeer getParticipants(int i) {
            return this.participants_.get(i);
        }

        public int getParticipantsCount() {
            return this.participants_.size();
        }

        public List<InputPeer> getParticipantsList() {
            return this.participants_;
        }

        public AbstractC20470b getParticipantsOrBuilder(int i) {
            return this.participants_.get(i);
        }

        public List<? extends AbstractC20470b> getParticipantsOrBuilderList() {
            return this.participants_;
        }

        public InputGroupPrivacySettings getPrivacySettings() {
            InputGroupPrivacySettings inputGroupPrivacySettings = this.privacySettings_;
            InputGroupPrivacySettings inputGroupPrivacySettings2 = inputGroupPrivacySettings;
            if (inputGroupPrivacySettings == null) {
                inputGroupPrivacySettings2 = InputGroupPrivacySettings.getDefaultInstance();
            }
            return inputGroupPrivacySettings2;
        }

        public long getRandomId() {
            return this.randomId_;
        }

        public boolean hasGroupInfo() {
            return this.groupInfo_ != null;
        }

        public boolean hasManagementSettings() {
            return this.managementSettings_ != null;
        }

        public boolean hasPrivacySettings() {
            return this.privacySettings_ != null;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.CreateGroup$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/CreateGroup$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3027a> implements Object {
        public static final int CREATOR_ROLES_FIELD_NUMBER = 5;
        public static final int DATE_FIELD_NUMBER = 3;
        private static final Response DEFAULT_INSTANCE;
        public static final int GROUP_ID_FIELD_NUMBER = 1;
        public static final int GROUP_INFO_EXT_FIELD_NUMBER = 9;
        public static final int GROUP_INFO_FIELD_NUMBER = 8;
        public static final int INVALID_PEERS_FIELD_NUMBER = 4;
        public static final int MESSAGE_ID_FIELD_NUMBER = 2;
        private static volatile Parser<Response> PARSER;
        public static final int PARTICIPANT_ROLES_FIELD_NUMBER = 6;
        public static final int PERMISSIONS_FIELD_NUMBER = 7;
        private int creatorRoles_;
        private int date_;
        private GroupInfoExt groupInfoExt_;
        private GroupInfo groupInfo_;
        private int participantRoles_;
        private ContextPermissions permissions_;
        private String groupId_ = "";
        private String messageId_ = "";
        private Internal.ProtobufList<Peer> invalidPeers_ = GeneratedMessageLite.emptyProtobufList();

        /* renamed from: com.truecaller.api.services.messenger.v1.CreateGroup$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/CreateGroup$Response$a.class */
        public static final class C3027a extends GeneratedMessageLite.Builder<Response, C3027a> implements Object {
            public C3027a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3027a(C3028a c3028a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public void addAllInvalidPeers(Iterable<? extends Peer> iterable) {
            ensureInvalidPeersIsMutable();
            AbstractMessageLite.addAll(iterable, this.invalidPeers_);
        }

        public void addInvalidPeers(int i, Peer peer) {
            peer.getClass();
            ensureInvalidPeersIsMutable();
            this.invalidPeers_.add(i, peer);
        }

        public void addInvalidPeers(Peer peer) {
            peer.getClass();
            ensureInvalidPeersIsMutable();
            this.invalidPeers_.add(peer);
        }

        public void clearCreatorRoles() {
            this.creatorRoles_ = 0;
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

        public void clearInvalidPeers() {
            this.invalidPeers_ = GeneratedMessageLite.emptyProtobufList();
        }

        public void clearMessageId() {
            this.messageId_ = getDefaultInstance().getMessageId();
        }

        public void clearParticipantRoles() {
            this.participantRoles_ = 0;
        }

        public void clearPermissions() {
            this.permissions_ = null;
        }

        private void ensureInvalidPeersIsMutable() {
            Internal.ProtobufList<Peer> protobufList = this.invalidPeers_;
            if (!protobufList.isModifiable()) {
                this.invalidPeers_ = GeneratedMessageLite.mutableCopy(protobufList);
            }
        }

        public static Response getDefaultInstance() {
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

        public void mergePermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            ContextPermissions contextPermissions2 = this.permissions_;
            if (contextPermissions2 == null || contextPermissions2 == ContextPermissions.getDefaultInstance()) {
                this.permissions_ = contextPermissions;
            } else {
                this.permissions_ = ContextPermissions.newBuilder(this.permissions_).mergeFrom(contextPermissions).buildPartial();
            }
        }

        public static C3027a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3027a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void removeInvalidPeers(int i) {
            ensureInvalidPeersIsMutable();
            this.invalidPeers_.remove(i);
        }

        public void setCreatorRoles(int i) {
            this.creatorRoles_ = i;
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

        public void setInvalidPeers(int i, Peer peer) {
            peer.getClass();
            ensureInvalidPeersIsMutable();
            this.invalidPeers_.set(i, peer);
        }

        public void setMessageId(String str) {
            str.getClass();
            this.messageId_ = str;
        }

        public void setMessageIdBytes(ByteString byteString) {
            AbstractMessageLite.checkByteStringIsUtf8(byteString);
            this.messageId_ = byteString.toStringUtf8();
        }

        public void setParticipantRoles(int i) {
            this.participantRoles_ = i;
        }

        public void setPermissions(ContextPermissions contextPermissions) {
            contextPermissions.getClass();
            this.permissions_ = contextPermissions;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\t����\u0001\t\t��\u0001��\u0001Ȉ\u0002Ȉ\u0003\u0004\u0004\u001b\u0005\u0004\u0006\u0004\u0007\t\b\t\t\t", new Object[]{"groupId_", "messageId_", "date_", "invalidPeers_", Peer.class, "creatorRoles_", "participantRoles_", "permissions_", "groupInfo_", "groupInfoExt_"});
                case 3:
                    return new Response();
                case 4:
                    return new C3027a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
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

        public int getCreatorRoles() {
            return this.creatorRoles_;
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

        public Peer getInvalidPeers(int i) {
            return this.invalidPeers_.get(i);
        }

        public int getInvalidPeersCount() {
            return this.invalidPeers_.size();
        }

        public List<Peer> getInvalidPeersList() {
            return this.invalidPeers_;
        }

        public AbstractC20467f getInvalidPeersOrBuilder(int i) {
            return this.invalidPeers_.get(i);
        }

        public List<? extends AbstractC20467f> getInvalidPeersOrBuilderList() {
            return this.invalidPeers_;
        }

        public String getMessageId() {
            return this.messageId_;
        }

        public ByteString getMessageIdBytes() {
            return ByteString.copyFromUtf8(this.messageId_);
        }

        public int getParticipantRoles() {
            return this.participantRoles_;
        }

        public ContextPermissions getPermissions() {
            ContextPermissions contextPermissions = this.permissions_;
            ContextPermissions contextPermissions2 = contextPermissions;
            if (contextPermissions == null) {
                contextPermissions2 = ContextPermissions.getDefaultInstance();
            }
            return contextPermissions2;
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
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.CreateGroup$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/CreateGroup$b.class */
    public static final class C3029b extends GeneratedMessageLite.Builder<CreateGroup, C3029b> implements Object {
        public C3029b() {
            super(CreateGroup.DEFAULT_INSTANCE);
        }

        public C3029b(C3028a c3028a) {
            super(CreateGroup.DEFAULT_INSTANCE);
        }
    }

    static {
        CreateGroup createGroup = new CreateGroup();
        DEFAULT_INSTANCE = createGroup;
        GeneratedMessageLite.registerDefaultInstance(CreateGroup.class, createGroup);
    }

    private CreateGroup() {
    }

    public static CreateGroup getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3029b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3029b newBuilder(CreateGroup createGroup) {
        return DEFAULT_INSTANCE.createBuilder(createGroup);
    }

    public static CreateGroup parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CreateGroup parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CreateGroup parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static CreateGroup parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static CreateGroup parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static CreateGroup parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static CreateGroup parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static CreateGroup parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static CreateGroup parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static CreateGroup parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static CreateGroup parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static CreateGroup parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<CreateGroup> parser() {
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
                return new CreateGroup();
            case 4:
                return new C3029b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (CreateGroup.class) {
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

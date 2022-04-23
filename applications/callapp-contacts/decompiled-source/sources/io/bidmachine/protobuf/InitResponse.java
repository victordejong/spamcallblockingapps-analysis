package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.protobuf.AdNetwork;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/InitResponse.class */
public final class InitResponse extends GeneratedMessageV3 implements InitResponseOrBuilder {
    public static final int AD_NETWORKS_FIELD_NUMBER = 4;
    public static final int ENDPOINT_FIELD_NUMBER = 1;
    public static final int EVENT_FIELD_NUMBER = 2;
    public static final int SESSION_RESET_AFTER_FIELD_NUMBER = 3;
    private static final long serialVersionUID = 0;
    private List<AdNetwork> adNetworks_;
    private volatile Object endpoint_;
    private List<Ad.Event> event_;
    private byte memoizedIsInitialized;
    private int sessionResetAfter_;
    private static final InitResponse DEFAULT_INSTANCE = new InitResponse();
    private static final Parser<InitResponse> PARSER = new AbstractParser<InitResponse>() { // from class: io.bidmachine.protobuf.InitResponse.1
        @Override // com.explorestack.protobuf.Parser
        public final InitResponse parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new InitResponse(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/InitResponse$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements InitResponseOrBuilder {
        private RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> adNetworksBuilder_;
        private List<AdNetwork> adNetworks_;
        private int bitField0_;
        private Object endpoint_;
        private RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> eventBuilder_;
        private List<Ad.Event> event_;
        private int sessionResetAfter_;

        private Builder() {
            this.endpoint_ = "";
            this.event_ = Collections.emptyList();
            this.adNetworks_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.endpoint_ = "";
            this.event_ = Collections.emptyList();
            this.adNetworks_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureAdNetworksIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.adNetworks_ = new ArrayList(this.adNetworks_);
                this.bitField0_ |= 2;
            }
        }

        private void ensureEventIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.event_ = new ArrayList(this.event_);
                this.bitField0_ |= 1;
            }
        }

        private RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> getAdNetworksFieldBuilder() {
            if (this.adNetworksBuilder_ == null) {
                this.adNetworksBuilder_ = new RepeatedFieldBuilderV3<>(this.adNetworks_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.adNetworks_ = null;
            }
            return this.adNetworksBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return InitProto.internal_static_bidmachine_protobuf_InitResponse_descriptor;
        }

        private RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> getEventFieldBuilder() {
            if (this.eventBuilder_ == null) {
                List<Ad.Event> list = this.event_;
                boolean z = true;
                if ((this.bitField0_ & 1) == 0) {
                    z = false;
                }
                this.eventBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                this.event_ = null;
            }
            return this.eventBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (InitResponse.alwaysUseFieldBuilders) {
                getEventFieldBuilder();
                getAdNetworksFieldBuilder();
            }
        }

        public final Builder addAdNetworks(int i, AdNetwork.Builder builder) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addAdNetworks(int i, AdNetwork adNetwork) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(adNetwork);
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(i, adNetwork);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, adNetwork);
            }
            return this;
        }

        public final Builder addAdNetworks(AdNetwork.Builder builder) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addAdNetworks(AdNetwork adNetwork) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(adNetwork);
                ensureAdNetworksIsMutable();
                this.adNetworks_.add(adNetwork);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(adNetwork);
            }
            return this;
        }

        public final AdNetwork.Builder addAdNetworksBuilder() {
            return getAdNetworksFieldBuilder().addBuilder(AdNetwork.getDefaultInstance());
        }

        public final AdNetwork.Builder addAdNetworksBuilder(int i) {
            return getAdNetworksFieldBuilder().addBuilder(i, AdNetwork.getDefaultInstance());
        }

        public final Builder addAllAdNetworks(Iterable<? extends AdNetwork> iterable) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.adNetworks_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addAllEvent(Iterable<? extends Ad.Event> iterable) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.event_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addEvent(int i, Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addEvent(int i, Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(event);
                ensureEventIsMutable();
                this.event_.add(i, event);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, event);
            }
            return this;
        }

        public final Builder addEvent(Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addEvent(Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(event);
                ensureEventIsMutable();
                this.event_.add(event);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(event);
            }
            return this;
        }

        public final Ad.Event.Builder addEventBuilder() {
            return getEventFieldBuilder().addBuilder(Ad.Event.getDefaultInstance());
        }

        public final Ad.Event.Builder addEventBuilder(int i) {
            return getEventFieldBuilder().addBuilder(i, Ad.Event.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final InitResponse build() {
            InitResponse buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final InitResponse buildPartial() {
            InitResponse initResponse = new InitResponse(this);
            initResponse.endpoint_ = this.endpoint_;
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 1) != 0) {
                    this.event_ = Collections.unmodifiableList(this.event_);
                    this.bitField0_ &= -2;
                }
                initResponse.event_ = this.event_;
            } else {
                initResponse.event_ = repeatedFieldBuilderV3.build();
            }
            initResponse.sessionResetAfter_ = this.sessionResetAfter_;
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV32 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                if ((this.bitField0_ & 2) != 0) {
                    this.adNetworks_ = Collections.unmodifiableList(this.adNetworks_);
                    this.bitField0_ &= -3;
                }
                initResponse.adNetworks_ = this.adNetworks_;
            } else {
                initResponse.adNetworks_ = repeatedFieldBuilderV32.build();
            }
            onBuilt();
            return initResponse;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.endpoint_ = "";
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.event_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.sessionResetAfter_ = 0;
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV32 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                this.adNetworks_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            return this;
        }

        public final Builder clearAdNetworks() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.adNetworks_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearEndpoint() {
            this.endpoint_ = InitResponse.getDefaultInstance().getEndpoint();
            onChanged();
            return this;
        }

        public final Builder clearEvent() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.event_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearSessionResetAfter() {
            this.sessionResetAfter_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final AdNetwork getAdNetworks(int i) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            return repeatedFieldBuilderV3 == null ? this.adNetworks_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final AdNetwork.Builder getAdNetworksBuilder(int i) {
            return getAdNetworksFieldBuilder().getBuilder(i);
        }

        public final List<AdNetwork.Builder> getAdNetworksBuilderList() {
            return getAdNetworksFieldBuilder().getBuilderList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final int getAdNetworksCount() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            return repeatedFieldBuilderV3 == null ? this.adNetworks_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final List<AdNetwork> getAdNetworksList() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.adNetworks_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final AdNetworkOrBuilder getAdNetworksOrBuilder(int i) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            return repeatedFieldBuilderV3 == null ? this.adNetworks_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final List<? extends AdNetworkOrBuilder> getAdNetworksOrBuilderList() {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.adNetworks_);
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final InitResponse getDefaultInstanceForType() {
            return InitResponse.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return InitProto.internal_static_bidmachine_protobuf_InitResponse_descriptor;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final String getEndpoint() {
            Object obj = this.endpoint_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.endpoint_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final ByteString getEndpointBytes() {
            Object obj = this.endpoint_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.endpoint_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final Ad.Event getEvent(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Ad.Event.Builder getEventBuilder(int i) {
            return getEventFieldBuilder().getBuilder(i);
        }

        public final List<Ad.Event.Builder> getEventBuilderList() {
            return getEventFieldBuilder().getBuilderList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final int getEventCount() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? this.event_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final List<Ad.Event> getEventList() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.event_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final Ad.EventOrBuilder getEventOrBuilder(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final List<? extends Ad.EventOrBuilder> getEventOrBuilderList() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.event_);
        }

        @Override // io.bidmachine.protobuf.InitResponseOrBuilder
        public final int getSessionResetAfter() {
            return this.sessionResetAfter_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return InitProto.internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(InitResponse.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.protobuf.InitResponse.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.InitResponse.access$1100()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                io.bidmachine.protobuf.InitResponse r0 = (io.bidmachine.protobuf.InitResponse) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.InitResponse$Builder r0 = r0.mergeFrom(r1)
            L_0x001a:
                r0 = r4
                return r0
            L_0x001c:
                r5 = move-exception
                r0 = r7
                r6 = r0
                goto L_0x0031
            L_0x0022:
                r5 = move-exception
                r0 = r5
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                io.bidmachine.protobuf.InitResponse r0 = (io.bidmachine.protobuf.InitResponse) r0     // Catch: all -> 0x001c
                r6 = r0
                r0 = r5
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                throw r0     // Catch: all -> 0x0030
            L_0x0030:
                r5 = move-exception
            L_0x0031:
                r0 = r6
                if (r0 == 0) goto L_0x003b
                r0 = r4
                r1 = r6
                io.bidmachine.protobuf.InitResponse$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.InitResponse.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.InitResponse$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof InitResponse) {
                return mergeFrom((InitResponse) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(InitResponse initResponse) {
            if (initResponse == InitResponse.getDefaultInstance()) {
                return this;
            }
            if (!initResponse.getEndpoint().isEmpty()) {
                this.endpoint_ = initResponse.endpoint_;
                onChanged();
            }
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = null;
            if (this.eventBuilder_ == null) {
                if (!initResponse.event_.isEmpty()) {
                    if (this.event_.isEmpty()) {
                        this.event_ = initResponse.event_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureEventIsMutable();
                        this.event_.addAll(initResponse.event_);
                    }
                    onChanged();
                }
            } else if (!initResponse.event_.isEmpty()) {
                if (this.eventBuilder_.isEmpty()) {
                    this.eventBuilder_.dispose();
                    this.eventBuilder_ = null;
                    this.event_ = initResponse.event_;
                    this.bitField0_ &= -2;
                    this.eventBuilder_ = InitResponse.alwaysUseFieldBuilders ? getEventFieldBuilder() : null;
                } else {
                    this.eventBuilder_.addAllMessages(initResponse.event_);
                }
            }
            if (initResponse.getSessionResetAfter() != 0) {
                setSessionResetAfter(initResponse.getSessionResetAfter());
            }
            if (this.adNetworksBuilder_ == null) {
                if (!initResponse.adNetworks_.isEmpty()) {
                    if (this.adNetworks_.isEmpty()) {
                        this.adNetworks_ = initResponse.adNetworks_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureAdNetworksIsMutable();
                        this.adNetworks_.addAll(initResponse.adNetworks_);
                    }
                    onChanged();
                }
            } else if (!initResponse.adNetworks_.isEmpty()) {
                if (this.adNetworksBuilder_.isEmpty()) {
                    this.adNetworksBuilder_.dispose();
                    this.adNetworksBuilder_ = null;
                    this.adNetworks_ = initResponse.adNetworks_;
                    this.bitField0_ &= -3;
                    if (InitResponse.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getAdNetworksFieldBuilder();
                    }
                    this.adNetworksBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.adNetworksBuilder_.addAllMessages(initResponse.adNetworks_);
                }
            }
            mergeUnknownFields(initResponse.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder removeAdNetworks(int i) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder removeEvent(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder setAdNetworks(int i, AdNetwork.Builder builder) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureAdNetworksIsMutable();
                this.adNetworks_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setAdNetworks(int i, AdNetwork adNetwork) {
            RepeatedFieldBuilderV3<AdNetwork, AdNetwork.Builder, AdNetworkOrBuilder> repeatedFieldBuilderV3 = this.adNetworksBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(adNetwork);
                ensureAdNetworksIsMutable();
                this.adNetworks_.set(i, adNetwork);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, adNetwork);
            }
            return this;
        }

        public final Builder setEndpoint(String str) {
            Objects.requireNonNull(str);
            this.endpoint_ = str;
            onChanged();
            return this;
        }

        public final Builder setEndpointBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            InitResponse.checkByteStringIsUtf8(byteString);
            this.endpoint_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setEvent(int i, Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setEvent(int i, Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(event);
                ensureEventIsMutable();
                this.event_.set(i, event);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, event);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSessionResetAfter(int i) {
            this.sessionResetAfter_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }
    }

    private InitResponse() {
        this.memoizedIsInitialized = (byte) (-1);
        this.endpoint_ = "";
        this.event_ = Collections.emptyList();
        this.adNetworks_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private InitResponse(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    if (readTag != 0) {
                        if (readTag == 10) {
                            this.endpoint_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            i = i;
                            if ((i & 1) == 0) {
                                this.event_ = new ArrayList();
                                i |= 1;
                            }
                            this.event_.add(codedInputStream.readMessage(Ad.Event.parser(), extensionRegistryLite));
                        } else if (readTag == 24) {
                            this.sessionResetAfter_ = codedInputStream.readUInt32();
                        } else if (readTag == 34) {
                            i = i;
                            if ((i & 2) == 0) {
                                this.adNetworks_ = new ArrayList();
                                i |= 2;
                            }
                            this.adNetworks_.add(codedInputStream.readMessage(AdNetwork.parser(), extensionRegistryLite));
                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } finally {
                if ((i & 1) != 0) {
                    this.event_ = Collections.unmodifiableList(this.event_);
                }
                if ((i & 2) != 0) {
                    this.adNetworks_ = Collections.unmodifiableList(this.adNetworks_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private InitResponse(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static InitResponse getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return InitProto.internal_static_bidmachine_protobuf_InitResponse_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(InitResponse initResponse) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(initResponse);
    }

    public static InitResponse parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static InitResponse parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static InitResponse parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static InitResponse parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static InitResponse parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static InitResponse parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static InitResponse parseFrom(InputStream inputStream) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static InitResponse parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (InitResponse) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static InitResponse parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static InitResponse parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static InitResponse parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static InitResponse parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<InitResponse> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InitResponse)) {
            return super.equals(obj);
        }
        InitResponse initResponse = (InitResponse) obj;
        return getEndpoint().equals(initResponse.getEndpoint()) && getEventList().equals(initResponse.getEventList()) && getSessionResetAfter() == initResponse.getSessionResetAfter() && getAdNetworksList().equals(initResponse.getAdNetworksList()) && this.unknownFields.equals(initResponse.unknownFields);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final AdNetwork getAdNetworks(int i) {
        return this.adNetworks_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final int getAdNetworksCount() {
        return this.adNetworks_.size();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final List<AdNetwork> getAdNetworksList() {
        return this.adNetworks_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final AdNetworkOrBuilder getAdNetworksOrBuilder(int i) {
        return this.adNetworks_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final List<? extends AdNetworkOrBuilder> getAdNetworksOrBuilderList() {
        return this.adNetworks_;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final InitResponse getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final String getEndpoint() {
        Object obj = this.endpoint_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.endpoint_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final ByteString getEndpointBytes() {
        Object obj = this.endpoint_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.endpoint_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final Ad.Event getEvent(int i) {
        return this.event_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final int getEventCount() {
        return this.event_.size();
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final List<Ad.Event> getEventList() {
        return this.event_;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final Ad.EventOrBuilder getEventOrBuilder(int i) {
        return this.event_.get(i);
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final List<? extends Ad.EventOrBuilder> getEventOrBuilderList() {
        return this.event_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<InitResponse> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getEndpointBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.endpoint_) + 0 : 0;
        for (int i2 = 0; i2 < this.event_.size(); i2++) {
            computeStringSize += CodedOutputStream.computeMessageSize(2, this.event_.get(i2));
        }
        int i3 = this.sessionResetAfter_;
        int i4 = computeStringSize;
        int i5 = 0;
        if (i3 != 0) {
            i4 = computeStringSize + CodedOutputStream.computeUInt32Size(3, i3);
            i5 = 0;
        }
        while (i5 < this.adNetworks_.size()) {
            i4 += CodedOutputStream.computeMessageSize(4, this.adNetworks_.get(i5));
            i5++;
        }
        int serializedSize = i4 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.InitResponseOrBuilder
    public final int getSessionResetAfter() {
        return this.sessionResetAfter_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getEndpoint().hashCode();
        int i = hashCode;
        if (getEventCount() > 0) {
            i = (((hashCode * 37) + 2) * 53) + getEventList().hashCode();
        }
        int sessionResetAfter = (((i * 37) + 3) * 53) + getSessionResetAfter();
        int i2 = sessionResetAfter;
        if (getAdNetworksCount() > 0) {
            i2 = (((sessionResetAfter * 37) + 4) * 53) + getAdNetworksList().hashCode();
        }
        int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return InitProto.internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable.ensureFieldAccessorsInitialized(InitResponse.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder newBuilderForType() {
        return newBuilder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new InitResponse();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getEndpointBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.endpoint_);
        }
        for (int i = 0; i < this.event_.size(); i++) {
            codedOutputStream.writeMessage(2, this.event_.get(i));
        }
        int i2 = this.sessionResetAfter_;
        int i3 = 0;
        if (i2 != 0) {
            codedOutputStream.writeUInt32(3, i2);
            i3 = 0;
        }
        while (i3 < this.adNetworks_.size()) {
            codedOutputStream.writeMessage(4, this.adNetworks_.get(i3));
            i3++;
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

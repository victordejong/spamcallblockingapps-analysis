package com.explorestack.protobuf.openrtb;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.AnyOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.UnknownFieldSet;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response.class */
public final class Response extends GeneratedMessageV3 implements ResponseOrBuilder {
    public static final int BIDID_FIELD_NUMBER = 2;
    public static final int CDATA_FIELD_NUMBER = 5;
    public static final int CUR_FIELD_NUMBER = 4;
    public static final int EXT_FIELD_NUMBER = 8;
    public static final int EXT_PROTO_FIELD_NUMBER = 7;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int NBR_FIELD_NUMBER = 3;
    public static final int SEATBID_FIELD_NUMBER = 6;
    private static final long serialVersionUID = 0;
    private volatile Object bidid_;
    private volatile Object cdata_;
    private volatile Object cur_;
    private List<Any> extProto_;
    private Struct ext_;
    private volatile Object id_;
    private byte memoizedIsInitialized;
    private int nbr_;
    private List<Seatbid> seatbid_;
    private static final Response DEFAULT_INSTANCE = new Response();
    private static final Parser<Response> PARSER = new AbstractParser<Response>() { // from class: com.explorestack.protobuf.openrtb.Response.1
        @Override // com.explorestack.protobuf.Parser
        public final Response parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Response(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ResponseOrBuilder {
        private Object bidid_;
        private int bitField0_;
        private Object cdata_;
        private Object cur_;
        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private Object id_;
        private int nbr_;
        private RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> seatbidBuilder_;
        private List<Seatbid> seatbid_;

        private Builder() {
            this.id_ = "";
            this.bidid_ = "";
            this.nbr_ = 0;
            this.cur_ = "";
            this.cdata_ = "";
            this.seatbid_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.id_ = "";
            this.bidid_ = "";
            this.nbr_ = 0;
            this.cur_ = "";
            this.cdata_ = "";
            this.seatbid_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 2;
            }
        }

        private void ensureSeatbidIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.seatbid_ = new ArrayList(this.seatbid_);
                this.bitField0_ |= 1;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_descriptor;
        }

        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> getExtFieldBuilder() {
            if (this.extBuilder_ == null) {
                this.extBuilder_ = new SingleFieldBuilderV3<>(getExt(), getParentForChildren(), isClean());
                this.ext_ = null;
            }
            return this.extBuilder_;
        }

        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getExtProtoFieldBuilder() {
            if (this.extProtoBuilder_ == null) {
                this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                this.extProto_ = null;
            }
            return this.extProtoBuilder_;
        }

        private RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> getSeatbidFieldBuilder() {
            if (this.seatbidBuilder_ == null) {
                List<Seatbid> list = this.seatbid_;
                boolean z = true;
                if ((this.bitField0_ & 1) == 0) {
                    z = false;
                }
                this.seatbidBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                this.seatbid_ = null;
            }
            return this.seatbidBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (Response.alwaysUseFieldBuilders) {
                getSeatbidFieldBuilder();
                getExtProtoFieldBuilder();
            }
        }

        public final Builder addAllExtProto(Iterable<? extends Any> iterable) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureExtProtoIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.extProto_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addAllSeatbid(Iterable<? extends Seatbid> iterable) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSeatbidIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.seatbid_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addExtProto(int i, Any.Builder builder) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureExtProtoIsMutable();
                this.extProto_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addExtProto(int i, Any any) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(any);
                ensureExtProtoIsMutable();
                this.extProto_.add(i, any);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, any);
            }
            return this;
        }

        public final Builder addExtProto(Any.Builder builder) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureExtProtoIsMutable();
                this.extProto_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addExtProto(Any any) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(any);
                ensureExtProtoIsMutable();
                this.extProto_.add(any);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(any);
            }
            return this;
        }

        public final Any.Builder addExtProtoBuilder() {
            return getExtProtoFieldBuilder().addBuilder(Any.getDefaultInstance());
        }

        public final Any.Builder addExtProtoBuilder(int i) {
            return getExtProtoFieldBuilder().addBuilder(i, Any.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        public final Builder addSeatbid(int i, Seatbid.Builder builder) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSeatbidIsMutable();
                this.seatbid_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addSeatbid(int i, Seatbid seatbid) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(seatbid);
                ensureSeatbidIsMutable();
                this.seatbid_.add(i, seatbid);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, seatbid);
            }
            return this;
        }

        public final Builder addSeatbid(Seatbid.Builder builder) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSeatbidIsMutable();
                this.seatbid_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addSeatbid(Seatbid seatbid) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(seatbid);
                ensureSeatbidIsMutable();
                this.seatbid_.add(seatbid);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(seatbid);
            }
            return this;
        }

        public final Seatbid.Builder addSeatbidBuilder() {
            return getSeatbidFieldBuilder().addBuilder(Seatbid.getDefaultInstance());
        }

        public final Seatbid.Builder addSeatbidBuilder(int i) {
            return getSeatbidFieldBuilder().addBuilder(i, Seatbid.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Response build() {
            Response buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Response buildPartial() {
            Response response = new Response(this);
            response.id_ = this.id_;
            response.bidid_ = this.bidid_;
            response.nbr_ = this.nbr_;
            response.cur_ = this.cur_;
            response.cdata_ = this.cdata_;
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 1) != 0) {
                    this.seatbid_ = Collections.unmodifiableList(this.seatbid_);
                    this.bitField0_ &= -2;
                }
                response.seatbid_ = this.seatbid_;
            } else {
                response.seatbid_ = repeatedFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                response.ext_ = this.ext_;
            } else {
                response.ext_ = singleFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                if ((this.bitField0_ & 2) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -3;
                }
                response.extProto_ = this.extProto_;
            } else {
                response.extProto_ = repeatedFieldBuilderV32.build();
            }
            onBuilt();
            return response;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.id_ = "";
            this.bidid_ = "";
            this.nbr_ = 0;
            this.cur_ = "";
            this.cdata_ = "";
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.seatbid_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                this.extProto_ = Collections.emptyList();
                this.bitField0_ &= -3;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            return this;
        }

        public final Builder clearBidid() {
            this.bidid_ = Response.getDefaultInstance().getBidid();
            onChanged();
            return this;
        }

        public final Builder clearCdata() {
            this.cdata_ = Response.getDefaultInstance().getCdata();
            onChanged();
            return this;
        }

        public final Builder clearCur() {
            this.cur_ = Response.getDefaultInstance().getCur();
            onChanged();
            return this;
        }

        public final Builder clearExt() {
            if (this.extBuilder_ == null) {
                this.ext_ = null;
                onChanged();
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            return this;
        }

        public final Builder clearExtProto() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.extProto_ = Collections.emptyList();
                this.bitField0_ &= -3;
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

        public final Builder clearId() {
            this.id_ = Response.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public final Builder clearNbr() {
            this.nbr_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearSeatbid() {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.seatbid_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final String getBidid() {
            Object obj = this.bidid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.bidid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final ByteString getBididBytes() {
            Object obj = this.bidid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.bidid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final String getCdata() {
            Object obj = this.cdata_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cdata_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final ByteString getCdataBytes() {
            Object obj = this.cdata_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cdata_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final String getCur() {
            Object obj = this.cur_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cur_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final ByteString getCurBytes() {
            Object obj = this.cur_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cur_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Response getDefaultInstanceForType() {
            return Response.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_descriptor;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final Struct getExt() {
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        public final Struct.Builder getExtBuilder() {
            onChanged();
            return getExtFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final Any getExtProto(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Any.Builder getExtProtoBuilder(int i) {
            return getExtProtoFieldBuilder().getBuilder(i);
        }

        public final List<Any.Builder> getExtProtoBuilderList() {
            return getExtProtoFieldBuilder().getBuilderList();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final int getExtProtoCount() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final List<Any> getExtProtoList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final NoBidReason getNbr() {
            NoBidReason valueOf = NoBidReason.valueOf(this.nbr_);
            NoBidReason noBidReason = valueOf;
            if (valueOf == null) {
                noBidReason = NoBidReason.UNRECOGNIZED;
            }
            return noBidReason;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final int getNbrValue() {
            return this.nbr_;
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final Seatbid getSeatbid(int i) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            return repeatedFieldBuilderV3 == null ? this.seatbid_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Seatbid.Builder getSeatbidBuilder(int i) {
            return getSeatbidFieldBuilder().getBuilder(i);
        }

        public final List<Seatbid.Builder> getSeatbidBuilderList() {
            return getSeatbidFieldBuilder().getBuilderList();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final int getSeatbidCount() {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            return repeatedFieldBuilderV3 == null ? this.seatbid_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final List<Seatbid> getSeatbidList() {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.seatbid_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final SeatbidOrBuilder getSeatbidOrBuilder(int i) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            return repeatedFieldBuilderV3 == null ? this.seatbid_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final List<? extends SeatbidOrBuilder> getSeatbidOrBuilderList() {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.seatbid_);
        }

        @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
        public final boolean hasExt() {
            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(Response.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeExt(Struct struct) {
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                Struct struct2 = this.ext_;
                if (struct2 != null) {
                    this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                } else {
                    this.ext_ = struct;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(struct);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.explorestack.protobuf.openrtb.Response.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Response.access$7700()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                com.explorestack.protobuf.openrtb.Response r0 = (com.explorestack.protobuf.openrtb.Response) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.openrtb.Response$Builder r0 = r0.mergeFrom(r1)
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
                com.explorestack.protobuf.openrtb.Response r0 = (com.explorestack.protobuf.openrtb.Response) r0     // Catch: all -> 0x001c
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
                com.explorestack.protobuf.openrtb.Response$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Response.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Response$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Response) {
                return mergeFrom((Response) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Response response) {
            if (response == Response.getDefaultInstance()) {
                return this;
            }
            if (!response.getId().isEmpty()) {
                this.id_ = response.id_;
                onChanged();
            }
            if (!response.getBidid().isEmpty()) {
                this.bidid_ = response.bidid_;
                onChanged();
            }
            if (response.nbr_ != 0) {
                setNbrValue(response.getNbrValue());
            }
            if (!response.getCur().isEmpty()) {
                this.cur_ = response.cur_;
                onChanged();
            }
            if (!response.getCdata().isEmpty()) {
                this.cdata_ = response.cdata_;
                onChanged();
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
            if (this.seatbidBuilder_ == null) {
                if (!response.seatbid_.isEmpty()) {
                    if (this.seatbid_.isEmpty()) {
                        this.seatbid_ = response.seatbid_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureSeatbidIsMutable();
                        this.seatbid_.addAll(response.seatbid_);
                    }
                    onChanged();
                }
            } else if (!response.seatbid_.isEmpty()) {
                if (this.seatbidBuilder_.isEmpty()) {
                    this.seatbidBuilder_.dispose();
                    this.seatbidBuilder_ = null;
                    this.seatbid_ = response.seatbid_;
                    this.bitField0_ &= -2;
                    this.seatbidBuilder_ = Response.alwaysUseFieldBuilders ? getSeatbidFieldBuilder() : null;
                } else {
                    this.seatbidBuilder_.addAllMessages(response.seatbid_);
                }
            }
            if (response.hasExt()) {
                mergeExt(response.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!response.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = response.extProto_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(response.extProto_);
                    }
                    onChanged();
                }
            } else if (!response.extProto_.isEmpty()) {
                if (this.extProtoBuilder_.isEmpty()) {
                    this.extProtoBuilder_.dispose();
                    this.extProtoBuilder_ = null;
                    this.extProto_ = response.extProto_;
                    this.bitField0_ &= -3;
                    if (Response.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                    }
                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.extProtoBuilder_.addAllMessages(response.extProto_);
                }
            }
            mergeUnknownFields(response.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder removeExtProto(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureExtProtoIsMutable();
                this.extProto_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder removeSeatbid(int i) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSeatbidIsMutable();
                this.seatbid_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder setBidid(String str) {
            Objects.requireNonNull(str);
            this.bidid_ = str;
            onChanged();
            return this;
        }

        public final Builder setBididBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Response.checkByteStringIsUtf8(byteString);
            this.bidid_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setCdata(String str) {
            Objects.requireNonNull(str);
            this.cdata_ = str;
            onChanged();
            return this;
        }

        public final Builder setCdataBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Response.checkByteStringIsUtf8(byteString);
            this.cdata_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setCur(String str) {
            Objects.requireNonNull(str);
            this.cur_ = str;
            onChanged();
            return this;
        }

        public final Builder setCurBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Response.checkByteStringIsUtf8(byteString);
            this.cur_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setExt(Struct.Builder builder) {
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.ext_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setExt(Struct struct) {
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(struct);
                this.ext_ = struct;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(struct);
            }
            return this;
        }

        public final Builder setExtProto(int i, Any.Builder builder) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureExtProtoIsMutable();
                this.extProto_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setExtProto(int i, Any any) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(any);
                ensureExtProtoIsMutable();
                this.extProto_.set(i, any);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, any);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public final Builder setId(String str) {
            Objects.requireNonNull(str);
            this.id_ = str;
            onChanged();
            return this;
        }

        public final Builder setIdBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Response.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setNbr(NoBidReason noBidReason) {
            Objects.requireNonNull(noBidReason);
            this.nbr_ = noBidReason.getNumber();
            onChanged();
            return this;
        }

        public final Builder setNbrValue(int i) {
            this.nbr_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSeatbid(int i, Seatbid.Builder builder) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureSeatbidIsMutable();
                this.seatbid_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setSeatbid(int i, Seatbid seatbid) {
            RepeatedFieldBuilderV3<Seatbid, Seatbid.Builder, SeatbidOrBuilder> repeatedFieldBuilderV3 = this.seatbidBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(seatbid);
                ensureSeatbidIsMutable();
                this.seatbid_.set(i, seatbid);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, seatbid);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid.class */
    public static final class Seatbid extends GeneratedMessageV3 implements SeatbidOrBuilder {
        public static final int BID_FIELD_NUMBER = 3;
        public static final int EXT_FIELD_NUMBER = 5;
        public static final int EXT_PROTO_FIELD_NUMBER = 4;
        public static final int PACKAGE_FIELD_NUMBER = 2;
        public static final int SEAT_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private List<Bid> bid_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private boolean package_;
        private volatile Object seat_;
        private static final Seatbid DEFAULT_INSTANCE = new Seatbid();
        private static final Parser<Seatbid> PARSER = new AbstractParser<Seatbid>() { // from class: com.explorestack.protobuf.openrtb.Response.Seatbid.1
            @Override // com.explorestack.protobuf.Parser
            public final Seatbid parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Seatbid(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$Bid.class */
        public static final class Bid extends GeneratedMessageV3 implements BidOrBuilder {
            public static final int BURL_FIELD_NUMBER = 8;
            public static final int CID_FIELD_NUMBER = 5;
            public static final int DEAL_FIELD_NUMBER = 4;
            public static final int EXP_FIELD_NUMBER = 10;
            public static final int EXT_FIELD_NUMBER = 15;
            public static final int EXT_PROTO_FIELD_NUMBER = 14;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int ITEM_FIELD_NUMBER = 2;
            public static final int LURL_FIELD_NUMBER = 9;
            public static final int MACRO_FIELD_NUMBER = 12;
            public static final int MEDIA_FIELD_NUMBER = 13;
            public static final int MID_FIELD_NUMBER = 11;
            public static final int PRICE_FIELD_NUMBER = 3;
            public static final int PURL_FIELD_NUMBER = 7;
            public static final int TACTIC_FIELD_NUMBER = 6;
            private static final long serialVersionUID = 0;
            private volatile Object burl_;
            private volatile Object cid_;
            private volatile Object deal_;
            private int exp_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private volatile Object item_;
            private volatile Object lurl_;
            private List<Macro> macro_;
            private Any media_;
            private byte memoizedIsInitialized;
            private volatile Object mid_;
            private double price_;
            private volatile Object purl_;
            private volatile Object tactic_;
            private static final Bid DEFAULT_INSTANCE = new Bid();
            private static final Parser<Bid> PARSER = new AbstractParser<Bid>() { // from class: com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.1
                @Override // com.explorestack.protobuf.Parser
                public final Bid parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Bid(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BidOrBuilder {
                private int bitField0_;
                private Object burl_;
                private Object cid_;
                private Object deal_;
                private int exp_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private Object item_;
                private Object lurl_;
                private RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> macroBuilder_;
                private List<Macro> macro_;
                private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> mediaBuilder_;
                private Any media_;
                private Object mid_;
                private double price_;
                private Object purl_;
                private Object tactic_;

                private Builder() {
                    this.id_ = "";
                    this.item_ = "";
                    this.deal_ = "";
                    this.cid_ = "";
                    this.tactic_ = "";
                    this.purl_ = "";
                    this.burl_ = "";
                    this.lurl_ = "";
                    this.mid_ = "";
                    this.macro_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.id_ = "";
                    this.item_ = "";
                    this.deal_ = "";
                    this.cid_ = "";
                    this.tactic_ = "";
                    this.purl_ = "";
                    this.burl_ = "";
                    this.lurl_ = "";
                    this.mid_ = "";
                    this.macro_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureMacroIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.macro_ = new ArrayList(this.macro_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor;
                }

                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> getExtFieldBuilder() {
                    if (this.extBuilder_ == null) {
                        this.extBuilder_ = new SingleFieldBuilderV3<>(getExt(), getParentForChildren(), isClean());
                        this.ext_ = null;
                    }
                    return this.extBuilder_;
                }

                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getExtProtoFieldBuilder() {
                    if (this.extProtoBuilder_ == null) {
                        this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                        this.extProto_ = null;
                    }
                    return this.extProtoBuilder_;
                }

                private RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> getMacroFieldBuilder() {
                    if (this.macroBuilder_ == null) {
                        List<Macro> list = this.macro_;
                        boolean z = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z = false;
                        }
                        this.macroBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                        this.macro_ = null;
                    }
                    return this.macroBuilder_;
                }

                private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getMediaFieldBuilder() {
                    if (this.mediaBuilder_ == null) {
                        this.mediaBuilder_ = new SingleFieldBuilderV3<>(getMedia(), getParentForChildren(), isClean());
                        this.media_ = null;
                    }
                    return this.mediaBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (Bid.alwaysUseFieldBuilders) {
                        getMacroFieldBuilder();
                        getExtProtoFieldBuilder();
                    }
                }

                public final Builder addAllExtProto(Iterable<? extends Any> iterable) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureExtProtoIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.extProto_);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addAllMessages(iterable);
                    }
                    return this;
                }

                public final Builder addAllMacro(Iterable<? extends Macro> iterable) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureMacroIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.macro_);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addAllMessages(iterable);
                    }
                    return this;
                }

                public final Builder addExtProto(int i, Any.Builder builder) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder addExtProto(int i, Any any) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(any);
                        ensureExtProtoIsMutable();
                        this.extProto_.add(i, any);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, any);
                    }
                    return this;
                }

                public final Builder addExtProto(Any.Builder builder) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(builder.build());
                    }
                    return this;
                }

                public final Builder addExtProto(Any any) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(any);
                        ensureExtProtoIsMutable();
                        this.extProto_.add(any);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(any);
                    }
                    return this;
                }

                public final Any.Builder addExtProtoBuilder() {
                    return getExtProtoFieldBuilder().addBuilder(Any.getDefaultInstance());
                }

                public final Any.Builder addExtProtoBuilder(int i) {
                    return getExtProtoFieldBuilder().addBuilder(i, Any.getDefaultInstance());
                }

                public final Builder addMacro(int i, Macro.Builder builder) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureMacroIsMutable();
                        this.macro_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder addMacro(int i, Macro macro) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(macro);
                        ensureMacroIsMutable();
                        this.macro_.add(i, macro);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, macro);
                    }
                    return this;
                }

                public final Builder addMacro(Macro.Builder builder) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureMacroIsMutable();
                        this.macro_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(builder.build());
                    }
                    return this;
                }

                public final Builder addMacro(Macro macro) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(macro);
                        ensureMacroIsMutable();
                        this.macro_.add(macro);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(macro);
                    }
                    return this;
                }

                public final Macro.Builder addMacroBuilder() {
                    return getMacroFieldBuilder().addBuilder(Macro.getDefaultInstance());
                }

                public final Macro.Builder addMacroBuilder(int i) {
                    return getMacroFieldBuilder().addBuilder(i, Macro.getDefaultInstance());
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Bid build() {
                    Bid buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Bid buildPartial() {
                    Bid bid = new Bid(this);
                    bid.id_ = this.id_;
                    bid.item_ = this.item_;
                    bid.price_ = this.price_;
                    bid.deal_ = this.deal_;
                    bid.cid_ = this.cid_;
                    bid.tactic_ = this.tactic_;
                    bid.purl_ = this.purl_;
                    bid.burl_ = this.burl_;
                    bid.lurl_ = this.lurl_;
                    bid.exp_ = this.exp_;
                    bid.mid_ = this.mid_;
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.macro_ = Collections.unmodifiableList(this.macro_);
                            this.bitField0_ &= -2;
                        }
                        bid.macro_ = this.macro_;
                    } else {
                        bid.macro_ = repeatedFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.mediaBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        bid.media_ = this.media_;
                    } else {
                        bid.media_ = singleFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        bid.ext_ = this.ext_;
                    } else {
                        bid.ext_ = singleFieldBuilderV32.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV32 == null) {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        bid.extProto_ = this.extProto_;
                    } else {
                        bid.extProto_ = repeatedFieldBuilderV32.build();
                    }
                    onBuilt();
                    return bid;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.id_ = "";
                    this.item_ = "";
                    this.price_ = 0.0d;
                    this.deal_ = "";
                    this.cid_ = "";
                    this.tactic_ = "";
                    this.purl_ = "";
                    this.burl_ = "";
                    this.lurl_ = "";
                    this.exp_ = 0;
                    this.mid_ = "";
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.macro_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    if (this.mediaBuilder_ == null) {
                        this.media_ = null;
                    } else {
                        this.media_ = null;
                        this.mediaBuilder_ = null;
                    }
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV32 == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                    } else {
                        repeatedFieldBuilderV32.clear();
                    }
                    return this;
                }

                public final Builder clearBurl() {
                    this.burl_ = Bid.getDefaultInstance().getBurl();
                    onChanged();
                    return this;
                }

                public final Builder clearCid() {
                    this.cid_ = Bid.getDefaultInstance().getCid();
                    onChanged();
                    return this;
                }

                public final Builder clearDeal() {
                    this.deal_ = Bid.getDefaultInstance().getDeal();
                    onChanged();
                    return this;
                }

                public final Builder clearExp() {
                    this.exp_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearExt() {
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                        onChanged();
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    return this;
                }

                public final Builder clearExtProto() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -3;
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

                public final Builder clearId() {
                    this.id_ = Bid.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                public final Builder clearItem() {
                    this.item_ = Bid.getDefaultInstance().getItem();
                    onChanged();
                    return this;
                }

                public final Builder clearLurl() {
                    this.lurl_ = Bid.getDefaultInstance().getLurl();
                    onChanged();
                    return this;
                }

                public final Builder clearMacro() {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.macro_ = Collections.emptyList();
                        this.bitField0_ &= -2;
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                public final Builder clearMedia() {
                    if (this.mediaBuilder_ == null) {
                        this.media_ = null;
                        onChanged();
                    } else {
                        this.media_ = null;
                        this.mediaBuilder_ = null;
                    }
                    return this;
                }

                public final Builder clearMid() {
                    this.mid_ = Bid.getDefaultInstance().getMid();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearPrice() {
                    this.price_ = 0.0d;
                    onChanged();
                    return this;
                }

                public final Builder clearPurl() {
                    this.purl_ = Bid.getDefaultInstance().getPurl();
                    onChanged();
                    return this;
                }

                public final Builder clearTactic() {
                    this.tactic_ = Bid.getDefaultInstance().getTactic();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getBurl() {
                    Object obj = this.burl_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.burl_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getBurlBytes() {
                    Object obj = this.burl_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.burl_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getCid() {
                    Object obj = this.cid_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.cid_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getCidBytes() {
                    Object obj = this.cid_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.cid_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getDeal() {
                    Object obj = this.deal_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.deal_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getDealBytes() {
                    Object obj = this.deal_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.deal_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Bid getDefaultInstanceForType() {
                    return Bid.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final int getExp() {
                    return this.exp_;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final Struct getExt() {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessage();
                    }
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                public final Struct.Builder getExtBuilder() {
                    onChanged();
                    return getExtFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final StructOrBuilder getExtOrBuilder() {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final Any getExtProto(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessage(i);
                }

                public final Any.Builder getExtProtoBuilder(int i) {
                    return getExtProtoFieldBuilder().getBuilder(i);
                }

                public final List<Any.Builder> getExtProtoBuilderList() {
                    return getExtProtoFieldBuilder().getBuilderList();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getItem() {
                    Object obj = this.item_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.item_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getItemBytes() {
                    Object obj = this.item_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.item_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getLurl() {
                    Object obj = this.lurl_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.lurl_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getLurlBytes() {
                    Object obj = this.lurl_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.lurl_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final Macro getMacro(int i) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.macro_.get(i) : repeatedFieldBuilderV3.getMessage(i);
                }

                public final Macro.Builder getMacroBuilder(int i) {
                    return getMacroFieldBuilder().getBuilder(i);
                }

                public final List<Macro.Builder> getMacroBuilderList() {
                    return getMacroFieldBuilder().getBuilderList();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final int getMacroCount() {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.macro_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final List<Macro> getMacroList() {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.macro_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final MacroOrBuilder getMacroOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.macro_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final List<? extends MacroOrBuilder> getMacroOrBuilderList() {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.macro_);
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final Any getMedia() {
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.mediaBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessage();
                    }
                    Any any = this.media_;
                    Any any2 = any;
                    if (any == null) {
                        any2 = Any.getDefaultInstance();
                    }
                    return any2;
                }

                public final Any.Builder getMediaBuilder() {
                    onChanged();
                    return getMediaFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final AnyOrBuilder getMediaOrBuilder() {
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.mediaBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    Any any = this.media_;
                    Any any2 = any;
                    if (any == null) {
                        any2 = Any.getDefaultInstance();
                    }
                    return any2;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getMid() {
                    Object obj = this.mid_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.mid_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getMidBytes() {
                    Object obj = this.mid_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.mid_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final double getPrice() {
                    return this.price_;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getPurl() {
                    Object obj = this.purl_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.purl_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getPurlBytes() {
                    Object obj = this.purl_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.purl_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final String getTactic() {
                    Object obj = this.tactic_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.tactic_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final ByteString getTacticBytes() {
                    Object obj = this.tactic_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.tactic_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
                public final boolean hasMedia() {
                    return (this.mediaBuilder_ == null && this.media_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_fieldAccessorTable.ensureFieldAccessorsInitialized(Bid.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public final Builder mergeExt(Struct struct) {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Struct struct2 = this.ext_;
                        if (struct2 != null) {
                            this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                        } else {
                            this.ext_ = struct;
                        }
                        onChanged();
                    } else {
                        singleFieldBuilderV3.mergeFrom(struct);
                    }
                    return this;
                }

                /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.access$3600()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                        com.explorestack.protobuf.openrtb.Response$Seatbid$Bid r0 = (com.explorestack.protobuf.openrtb.Response.Seatbid.Bid) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Builder r0 = r0.mergeFrom(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r6 = move-exception
                        r0 = r7
                        r5 = r0
                        r0 = r6
                        r7 = r0
                        goto L_0x0037
                    L_0x0024:
                        r5 = move-exception
                        r0 = r5
                        com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                        com.explorestack.protobuf.openrtb.Response$Seatbid$Bid r0 = (com.explorestack.protobuf.openrtb.Response.Seatbid.Bid) r0     // Catch: all -> 0x001c
                        r6 = r0
                        r0 = r5
                        java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                        throw r0     // Catch: all -> 0x0032
                    L_0x0032:
                        r5 = move-exception
                        r0 = r5
                        r7 = r0
                        r0 = r6
                        r5 = r0
                    L_0x0037:
                        r0 = r5
                        if (r0 == 0) goto L_0x0041
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Builder r0 = r0.mergeFrom(r1)
                    L_0x0041:
                        r0 = r7
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Bid) {
                        return mergeFrom((Bid) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Bid bid) {
                    if (bid == Bid.getDefaultInstance()) {
                        return this;
                    }
                    if (!bid.getId().isEmpty()) {
                        this.id_ = bid.id_;
                        onChanged();
                    }
                    if (!bid.getItem().isEmpty()) {
                        this.item_ = bid.item_;
                        onChanged();
                    }
                    if (bid.getPrice() != 0.0d) {
                        setPrice(bid.getPrice());
                    }
                    if (!bid.getDeal().isEmpty()) {
                        this.deal_ = bid.deal_;
                        onChanged();
                    }
                    if (!bid.getCid().isEmpty()) {
                        this.cid_ = bid.cid_;
                        onChanged();
                    }
                    if (!bid.getTactic().isEmpty()) {
                        this.tactic_ = bid.tactic_;
                        onChanged();
                    }
                    if (!bid.getPurl().isEmpty()) {
                        this.purl_ = bid.purl_;
                        onChanged();
                    }
                    if (!bid.getBurl().isEmpty()) {
                        this.burl_ = bid.burl_;
                        onChanged();
                    }
                    if (!bid.getLurl().isEmpty()) {
                        this.lurl_ = bid.lurl_;
                        onChanged();
                    }
                    if (bid.getExp() != 0) {
                        setExp(bid.getExp());
                    }
                    if (!bid.getMid().isEmpty()) {
                        this.mid_ = bid.mid_;
                        onChanged();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                    if (this.macroBuilder_ == null) {
                        if (!bid.macro_.isEmpty()) {
                            if (this.macro_.isEmpty()) {
                                this.macro_ = bid.macro_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureMacroIsMutable();
                                this.macro_.addAll(bid.macro_);
                            }
                            onChanged();
                        }
                    } else if (!bid.macro_.isEmpty()) {
                        if (this.macroBuilder_.isEmpty()) {
                            this.macroBuilder_.dispose();
                            this.macroBuilder_ = null;
                            this.macro_ = bid.macro_;
                            this.bitField0_ &= -2;
                            this.macroBuilder_ = Bid.alwaysUseFieldBuilders ? getMacroFieldBuilder() : null;
                        } else {
                            this.macroBuilder_.addAllMessages(bid.macro_);
                        }
                    }
                    if (bid.hasMedia()) {
                        mergeMedia(bid.getMedia());
                    }
                    if (bid.hasExt()) {
                        mergeExt(bid.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!bid.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = bid.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(bid.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!bid.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = bid.extProto_;
                            this.bitField0_ &= -3;
                            if (Bid.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(bid.extProto_);
                        }
                    }
                    mergeUnknownFields(bid.unknownFields);
                    onChanged();
                    return this;
                }

                public final Builder mergeMedia(Any any) {
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.mediaBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Any any2 = this.media_;
                        if (any2 != null) {
                            this.media_ = Any.newBuilder(any2).mergeFrom(any).buildPartial();
                        } else {
                            this.media_ = any;
                        }
                        onChanged();
                    } else {
                        singleFieldBuilderV3.mergeFrom(any);
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.mergeUnknownFields(unknownFieldSet);
                }

                public final Builder removeExtProto(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.remove(i);
                    }
                    return this;
                }

                public final Builder removeMacro(int i) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureMacroIsMutable();
                        this.macro_.remove(i);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.remove(i);
                    }
                    return this;
                }

                public final Builder setBurl(String str) {
                    Objects.requireNonNull(str);
                    this.burl_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setBurlBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.burl_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setCid(String str) {
                    Objects.requireNonNull(str);
                    this.cid_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setCidBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.cid_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setDeal(String str) {
                    Objects.requireNonNull(str);
                    this.deal_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setDealBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.deal_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setExp(int i) {
                    this.exp_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setExt(Struct.Builder builder) {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.ext_ = builder.build();
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(builder.build());
                    }
                    return this;
                }

                public final Builder setExt(Struct struct) {
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Objects.requireNonNull(struct);
                        this.ext_ = struct;
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(struct);
                    }
                    return this;
                }

                public final Builder setExtProto(int i, Any.Builder builder) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureExtProtoIsMutable();
                        this.extProto_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder setExtProto(int i, Any any) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(any);
                        ensureExtProtoIsMutable();
                        this.extProto_.set(i, any);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, any);
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.setField(fieldDescriptor, obj);
                }

                public final Builder setId(String str) {
                    Objects.requireNonNull(str);
                    this.id_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setIdBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.id_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setItem(String str) {
                    Objects.requireNonNull(str);
                    this.item_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setItemBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.item_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setLurl(String str) {
                    Objects.requireNonNull(str);
                    this.lurl_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setLurlBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.lurl_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setMacro(int i, Macro.Builder builder) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureMacroIsMutable();
                        this.macro_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder setMacro(int i, Macro macro) {
                    RepeatedFieldBuilderV3<Macro, Macro.Builder, MacroOrBuilder> repeatedFieldBuilderV3 = this.macroBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(macro);
                        ensureMacroIsMutable();
                        this.macro_.set(i, macro);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, macro);
                    }
                    return this;
                }

                public final Builder setMedia(Any.Builder builder) {
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.mediaBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.media_ = builder.build();
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(builder.build());
                    }
                    return this;
                }

                public final Builder setMedia(Any any) {
                    SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.mediaBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Objects.requireNonNull(any);
                        this.media_ = any;
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(any);
                    }
                    return this;
                }

                public final Builder setMid(String str) {
                    Objects.requireNonNull(str);
                    this.mid_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setMidBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.mid_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setPrice(double d2) {
                    this.price_ = d2;
                    onChanged();
                    return this;
                }

                public final Builder setPurl(String str) {
                    Objects.requireNonNull(str);
                    this.purl_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setPurlBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.purl_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                }

                public final Builder setTactic(String str) {
                    Objects.requireNonNull(str);
                    this.tactic_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setTacticBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Bid.checkByteStringIsUtf8(byteString);
                    this.tactic_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.setUnknownFields(unknownFieldSet);
                }
            }

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro.class */
            public static final class Macro extends GeneratedMessageV3 implements MacroOrBuilder {
                public static final int EXT_FIELD_NUMBER = 4;
                public static final int EXT_PROTO_FIELD_NUMBER = 3;
                public static final int KEY_FIELD_NUMBER = 1;
                public static final int VALUE_FIELD_NUMBER = 2;
                private static final long serialVersionUID = 0;
                private List<Any> extProto_;
                private Struct ext_;
                private volatile Object key_;
                private byte memoizedIsInitialized;
                private volatile Object value_;
                private static final Macro DEFAULT_INSTANCE = new Macro();
                private static final Parser<Macro> PARSER = new AbstractParser<Macro>() { // from class: com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Macro.1
                    @Override // com.explorestack.protobuf.Parser
                    public final Macro parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return new Macro(codedInputStream, extensionRegistryLite);
                    }
                };

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Macro$Builder.class */
                public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MacroOrBuilder {
                    private int bitField0_;
                    private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                    private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private Object key_;
                    private Object value_;

                    private Builder() {
                        this.key_ = "";
                        this.value_ = "";
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                        super(builderParent);
                        this.key_ = "";
                        this.value_ = "";
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private void ensureExtProtoIsMutable() {
                        if ((this.bitField0_ & 1) == 0) {
                            this.extProto_ = new ArrayList(this.extProto_);
                            this.bitField0_ |= 1;
                        }
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_descriptor;
                    }

                    private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> getExtFieldBuilder() {
                        if (this.extBuilder_ == null) {
                            this.extBuilder_ = new SingleFieldBuilderV3<>(getExt(), getParentForChildren(), isClean());
                            this.ext_ = null;
                        }
                        return this.extBuilder_;
                    }

                    private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getExtProtoFieldBuilder() {
                        if (this.extProtoBuilder_ == null) {
                            List<Any> list = this.extProto_;
                            boolean z = true;
                            if ((this.bitField0_ & 1) == 0) {
                                z = false;
                            }
                            this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                            this.extProto_ = null;
                        }
                        return this.extProtoBuilder_;
                    }

                    private void maybeForceBuilderInitialization() {
                        if (Macro.alwaysUseFieldBuilders) {
                            getExtProtoFieldBuilder();
                        }
                    }

                    public final Builder addAllExtProto(Iterable<? extends Any> iterable) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            ensureExtProtoIsMutable();
                            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.extProto_);
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.addAllMessages(iterable);
                        }
                        return this;
                    }

                    public final Builder addExtProto(int i, Any.Builder builder) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            ensureExtProtoIsMutable();
                            this.extProto_.add(i, builder.build());
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.addMessage(i, builder.build());
                        }
                        return this;
                    }

                    public final Builder addExtProto(int i, Any any) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            Objects.requireNonNull(any);
                            ensureExtProtoIsMutable();
                            this.extProto_.add(i, any);
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.addMessage(i, any);
                        }
                        return this;
                    }

                    public final Builder addExtProto(Any.Builder builder) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            ensureExtProtoIsMutable();
                            this.extProto_.add(builder.build());
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.addMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder addExtProto(Any any) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            Objects.requireNonNull(any);
                            ensureExtProtoIsMutable();
                            this.extProto_.add(any);
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.addMessage(any);
                        }
                        return this;
                    }

                    public final Any.Builder addExtProtoBuilder() {
                        return getExtProtoFieldBuilder().addBuilder(Any.getDefaultInstance());
                    }

                    public final Any.Builder addExtProtoBuilder(int i) {
                        return getExtProtoFieldBuilder().addBuilder(i, Any.getDefaultInstance());
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Macro build() {
                        Macro buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Macro buildPartial() {
                        Macro macro = new Macro(this);
                        macro.key_ = this.key_;
                        macro.value_ = this.value_;
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            macro.ext_ = this.ext_;
                        } else {
                            macro.ext_ = singleFieldBuilderV3.build();
                        }
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            if ((this.bitField0_ & 1) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -2;
                            }
                            macro.extProto_ = this.extProto_;
                        } else {
                            macro.extProto_ = repeatedFieldBuilderV3.build();
                        }
                        onBuilt();
                        return macro;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clear() {
                        super.clear();
                        this.key_ = "";
                        this.value_ = "";
                        if (this.extBuilder_ == null) {
                            this.ext_ = null;
                        } else {
                            this.ext_ = null;
                            this.extBuilder_ = null;
                        }
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            this.extProto_ = Collections.emptyList();
                            this.bitField0_ &= -2;
                        } else {
                            repeatedFieldBuilderV3.clear();
                        }
                        return this;
                    }

                    public final Builder clearExt() {
                        if (this.extBuilder_ == null) {
                            this.ext_ = null;
                            onChanged();
                        } else {
                            this.ext_ = null;
                            this.extBuilder_ = null;
                        }
                        return this;
                    }

                    public final Builder clearExtProto() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            this.extProto_ = Collections.emptyList();
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

                    public final Builder clearKey() {
                        this.key_ = Macro.getDefaultInstance().getKey();
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                        return (Builder) super.clearOneof(oneofDescriptor);
                    }

                    public final Builder clearValue() {
                        this.value_ = Macro.getDefaultInstance().getValue();
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clone() {
                        return (Builder) super.clone();
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final Macro getDefaultInstanceForType() {
                        return Macro.getDefaultInstance();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final Descriptors.Descriptor getDescriptorForType() {
                        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_descriptor;
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final Struct getExt() {
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    public final Struct.Builder getExtBuilder() {
                        onChanged();
                        return getExtFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final Any getExtProto(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessage(i);
                    }

                    public final Any.Builder getExtProtoBuilder(int i) {
                        return getExtProtoFieldBuilder().getBuilder(i);
                    }

                    public final List<Any.Builder> getExtProtoBuilderList() {
                        return getExtProtoFieldBuilder().getBuilderList();
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final int getExtProtoCount() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final List<Any> getExtProtoList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final String getKey() {
                        Object obj = this.key_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.key_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final ByteString getKeyBytes() {
                        Object obj = this.key_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.key_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final String getValue() {
                        Object obj = this.value_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.value_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final ByteString getValueBytes() {
                        Object obj = this.value_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                    public final boolean hasExt() {
                        return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_fieldAccessorTable.ensureFieldAccessorsInitialized(Macro.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public final Builder mergeExt(Struct struct) {
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Struct struct2 = this.ext_;
                            if (struct2 != null) {
                                this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                            } else {
                                this.ext_ = struct;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(struct);
                        }
                        return this;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Macro.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Macro.access$1000()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Macro r0 = (com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Macro) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x001a
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Macro$Builder r0 = r0.mergeFrom(r1)
                        L_0x001a:
                            r0 = r4
                            return r0
                        L_0x001c:
                            r6 = move-exception
                            r0 = r7
                            r5 = r0
                            goto L_0x0031
                        L_0x0022:
                            r6 = move-exception
                            r0 = r6
                            com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                            com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Macro r0 = (com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Macro) r0     // Catch: all -> 0x001c
                            r5 = r0
                            r0 = r6
                            java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                            throw r0     // Catch: all -> 0x0030
                        L_0x0030:
                            r6 = move-exception
                        L_0x0031:
                            r0 = r5
                            if (r0 == 0) goto L_0x003b
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Macro$Builder r0 = r0.mergeFrom(r1)
                        L_0x003b:
                            r0 = r6
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.Macro.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Response$Seatbid$Bid$Macro$Builder");
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeFrom(Message message) {
                        if (message instanceof Macro) {
                            return mergeFrom((Macro) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public final Builder mergeFrom(Macro macro) {
                        if (macro == Macro.getDefaultInstance()) {
                            return this;
                        }
                        if (!macro.getKey().isEmpty()) {
                            this.key_ = macro.key_;
                            onChanged();
                        }
                        if (!macro.getValue().isEmpty()) {
                            this.value_ = macro.value_;
                            onChanged();
                        }
                        if (macro.hasExt()) {
                            mergeExt(macro.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!macro.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = macro.extProto_;
                                    this.bitField0_ &= -2;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(macro.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!macro.extProto_.isEmpty()) {
                            if (this.extProtoBuilder_.isEmpty()) {
                                this.extProtoBuilder_.dispose();
                                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                this.extProtoBuilder_ = null;
                                this.extProto_ = macro.extProto_;
                                this.bitField0_ &= -2;
                                if (Macro.alwaysUseFieldBuilders) {
                                    repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                }
                                this.extProtoBuilder_ = repeatedFieldBuilderV3;
                            } else {
                                this.extProtoBuilder_.addAllMessages(macro.extProto_);
                            }
                        }
                        mergeUnknownFields(macro.unknownFields);
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.mergeUnknownFields(unknownFieldSet);
                    }

                    public final Builder removeExtProto(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            ensureExtProtoIsMutable();
                            this.extProto_.remove(i);
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.remove(i);
                        }
                        return this;
                    }

                    public final Builder setExt(Struct.Builder builder) {
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.ext_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setExt(Struct struct) {
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(struct);
                            this.ext_ = struct;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(struct);
                        }
                        return this;
                    }

                    public final Builder setExtProto(int i, Any.Builder builder) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            ensureExtProtoIsMutable();
                            this.extProto_.set(i, builder.build());
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.setMessage(i, builder.build());
                        }
                        return this;
                    }

                    public final Builder setExtProto(int i, Any any) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            Objects.requireNonNull(any);
                            ensureExtProtoIsMutable();
                            this.extProto_.set(i, any);
                            onChanged();
                        } else {
                            repeatedFieldBuilderV3.setMessage(i, any);
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                        return (Builder) super.setField(fieldDescriptor, obj);
                    }

                    public final Builder setKey(String str) {
                        Objects.requireNonNull(str);
                        this.key_ = str;
                        onChanged();
                        return this;
                    }

                    public final Builder setKeyBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        Macro.checkByteStringIsUtf8(byteString);
                        this.key_ = byteString;
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                        return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.setUnknownFields(unknownFieldSet);
                    }

                    public final Builder setValue(String str) {
                        Objects.requireNonNull(str);
                        this.value_ = str;
                        onChanged();
                        return this;
                    }

                    public final Builder setValueBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        Macro.checkByteStringIsUtf8(byteString);
                        this.value_ = byteString;
                        onChanged();
                        return this;
                    }
                }

                private Macro() {
                    this.memoizedIsInitialized = (byte) (-1);
                    this.key_ = "";
                    this.value_ = "";
                    this.extProto_ = Collections.emptyList();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private Macro(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    this();
                    Objects.requireNonNull(extensionRegistryLite);
                    UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                    boolean z = false;
                    boolean z2 = false;
                    while (!z) {
                        try {
                            try {
                                int readTag = codedInputStream.readTag();
                                if (readTag != 0) {
                                    if (readTag == 10) {
                                        this.key_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 18) {
                                        this.value_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 26) {
                                        z2 = z2;
                                        if (!z2 || !true) {
                                            this.extProto_ = new ArrayList();
                                            z2 |= true;
                                        }
                                        this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    } else if (readTag == 34) {
                                        Struct.Builder builder = null;
                                        Struct struct = this.ext_;
                                        builder = struct != null ? struct.toBuilder() : builder;
                                        Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                        this.ext_ = struct2;
                                        if (builder != null) {
                                            builder.mergeFrom(struct2);
                                            this.ext_ = builder.buildPartial();
                                        }
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
                            if (z2 && true) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            }
                            this.unknownFields = newBuilder.build();
                            makeExtensionsImmutable();
                        }
                    }
                }

                private Macro(GeneratedMessageV3.Builder<?> builder) {
                    super(builder);
                    this.memoizedIsInitialized = (byte) (-1);
                }

                public static Macro getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(Macro macro) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(macro);
                }

                public static Macro parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Macro) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Macro parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Macro) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static Macro parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static Macro parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static Macro parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (Macro) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                }

                public static Macro parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Macro) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                public static Macro parseFrom(InputStream inputStream) throws IOException {
                    return (Macro) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static Macro parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Macro) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static Macro parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static Macro parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static Macro parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static Macro parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static Parser<Macro> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Macro)) {
                        return super.equals(obj);
                    }
                    Macro macro = (Macro) obj;
                    if (getKey().equals(macro.getKey()) && getValue().equals(macro.getValue()) && hasExt() == macro.hasExt()) {
                        return (!hasExt() || getExt().equals(macro.getExt())) && getExtProtoList().equals(macro.getExtProtoList()) && this.unknownFields.equals(macro.unknownFields);
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Macro getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final Struct getExt() {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final StructOrBuilder getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final Any getExtProto(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final String getKey() {
                    Object obj = this.key_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.key_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final ByteString getKeyBytes() {
                    Object obj = this.key_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.key_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Parser<Macro> getParserForType() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int computeStringSize = !getKeyBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.key_) + 0 : 0;
                    int i2 = computeStringSize;
                    int i3 = 0;
                    if (!getValueBytes().isEmpty()) {
                        i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.value_);
                        i3 = 0;
                    }
                    while (i3 < this.extProto_.size()) {
                        i2 += CodedOutputStream.computeMessageSize(3, this.extProto_.get(i3));
                        i3++;
                    }
                    int i4 = i2;
                    if (this.ext_ != null) {
                        i4 = i2 + CodedOutputStream.computeMessageSize(4, getExt());
                    }
                    int serializedSize = i4 + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final UnknownFieldSet getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final String getValue() {
                    Object obj = this.value_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.value_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final ByteString getValueBytes() {
                    Object obj = this.value_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.value_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.Bid.MacroOrBuilder
                public final boolean hasExt() {
                    return this.ext_ != null;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final int hashCode() {
                    if (this.memoizedHashCode != 0) {
                        return this.memoizedHashCode;
                    }
                    int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getKey().hashCode()) * 37) + 2) * 53) + getValue().hashCode();
                    int i = hashCode;
                    if (hasExt()) {
                        i = (((hashCode * 37) + 4) * 53) + getExt().hashCode();
                    }
                    int i2 = i;
                    if (getExtProtoCount() > 0) {
                        i2 = (((i * 37) + 3) * 53) + getExtProtoList().hashCode();
                    }
                    int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_fieldAccessorTable.ensureFieldAccessorsInitialized(Macro.class, Builder.class);
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
                    return new Macro();
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!getKeyBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.key_);
                    }
                    if (!getValueBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.value_);
                    }
                    for (int i = 0; i < this.extProto_.size(); i++) {
                        codedOutputStream.writeMessage(3, this.extProto_.get(i));
                    }
                    if (this.ext_ != null) {
                        codedOutputStream.writeMessage(4, getExt());
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }
            }

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$Bid$MacroOrBuilder.class */
            public interface MacroOrBuilder extends MessageOrBuilder {
                Struct getExt();

                StructOrBuilder getExtOrBuilder();

                Any getExtProto(int i);

                int getExtProtoCount();

                List<Any> getExtProtoList();

                AnyOrBuilder getExtProtoOrBuilder(int i);

                List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                String getKey();

                ByteString getKeyBytes();

                String getValue();

                ByteString getValueBytes();

                boolean hasExt();
            }

            private Bid() {
                this.memoizedIsInitialized = (byte) (-1);
                this.id_ = "";
                this.item_ = "";
                this.deal_ = "";
                this.cid_ = "";
                this.tactic_ = "";
                this.purl_ = "";
                this.burl_ = "";
                this.lurl_ = "";
                this.mid_ = "";
                this.macro_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Bid(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            int readTag = codedInputStream.readTag();
                            Any.Builder builder = null;
                            Struct.Builder builder2 = null;
                            switch (readTag) {
                                case 0:
                                    break;
                                case 10:
                                    this.id_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 18:
                                    this.item_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 25:
                                    this.price_ = codedInputStream.readDouble();
                                    continue;
                                case 34:
                                    this.deal_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 42:
                                    this.cid_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 50:
                                    this.tactic_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 58:
                                    this.purl_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 66:
                                    this.burl_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 74:
                                    this.lurl_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 80:
                                    this.exp_ = codedInputStream.readUInt32();
                                    continue;
                                case 90:
                                    this.mid_ = codedInputStream.readStringRequireUtf8();
                                    continue;
                                case 98:
                                    i = i;
                                    if ((i & 1) == 0) {
                                        this.macro_ = new ArrayList();
                                        i |= 1;
                                    }
                                    this.macro_.add(codedInputStream.readMessage(Macro.parser(), extensionRegistryLite));
                                    continue;
                                case 106:
                                    Any any = this.media_;
                                    builder = any != null ? any.toBuilder() : builder;
                                    Any any2 = (Any) codedInputStream.readMessage(Any.parser(), extensionRegistryLite);
                                    this.media_ = any2;
                                    if (builder != null) {
                                        builder.mergeFrom(any2);
                                        this.media_ = builder.buildPartial();
                                    } else {
                                        continue;
                                    }
                                case 114:
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.extProto_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    continue;
                                case 122:
                                    Struct struct = this.ext_;
                                    builder2 = struct != null ? struct.toBuilder() : builder2;
                                    Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                    this.ext_ = struct2;
                                    if (builder2 != null) {
                                        builder2.mergeFrom(struct2);
                                        this.ext_ = builder2.buildPartial();
                                    } else {
                                        continue;
                                    }
                                default:
                                    if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        break;
                                    } else {
                                        continue;
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
                            this.macro_ = Collections.unmodifiableList(this.macro_);
                        }
                        if ((i & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private Bid(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Bid getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Bid bid) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(bid);
            }

            public static Bid parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Bid) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Bid parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Bid) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Bid parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Bid parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Bid parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Bid) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Bid parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Bid) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Bid parseFrom(InputStream inputStream) throws IOException {
                return (Bid) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Bid parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Bid) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Bid parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Bid parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Bid parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Bid parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Bid> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Bid)) {
                    return super.equals(obj);
                }
                Bid bid = (Bid) obj;
                if (!getId().equals(bid.getId()) || !getItem().equals(bid.getItem()) || Double.doubleToLongBits(getPrice()) != Double.doubleToLongBits(bid.getPrice()) || !getDeal().equals(bid.getDeal()) || !getCid().equals(bid.getCid()) || !getTactic().equals(bid.getTactic()) || !getPurl().equals(bid.getPurl()) || !getBurl().equals(bid.getBurl()) || !getLurl().equals(bid.getLurl()) || getExp() != bid.getExp() || !getMid().equals(bid.getMid()) || !getMacroList().equals(bid.getMacroList()) || hasMedia() != bid.hasMedia()) {
                    return false;
                }
                if ((!hasMedia() || getMedia().equals(bid.getMedia())) && hasExt() == bid.hasExt()) {
                    return (!hasExt() || getExt().equals(bid.getExt())) && getExtProtoList().equals(bid.getExtProtoList()) && this.unknownFields.equals(bid.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getBurl() {
                Object obj = this.burl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.burl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getBurlBytes() {
                Object obj = this.burl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.burl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getCid() {
                Object obj = this.cid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cid_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getCidBytes() {
                Object obj = this.cid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getDeal() {
                Object obj = this.deal_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.deal_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getDealBytes() {
                Object obj = this.deal_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.deal_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Bid getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final int getExp() {
                return this.exp_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getItem() {
                Object obj = this.item_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.item_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getItemBytes() {
                Object obj = this.item_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.item_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getLurl() {
                Object obj = this.lurl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lurl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getLurlBytes() {
                Object obj = this.lurl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lurl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final Macro getMacro(int i) {
                return this.macro_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final int getMacroCount() {
                return this.macro_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final List<Macro> getMacroList() {
                return this.macro_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final MacroOrBuilder getMacroOrBuilder(int i) {
                return this.macro_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final List<? extends MacroOrBuilder> getMacroOrBuilderList() {
                return this.macro_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final Any getMedia() {
                Any any = this.media_;
                Any any2 = any;
                if (any == null) {
                    any2 = Any.getDefaultInstance();
                }
                return any2;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final AnyOrBuilder getMediaOrBuilder() {
                return getMedia();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getMid() {
                Object obj = this.mid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.mid_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getMidBytes() {
                Object obj = this.mid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.mid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Bid> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final double getPrice() {
                return this.price_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getPurl() {
                Object obj = this.purl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.purl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getPurlBytes() {
                Object obj = this.purl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.purl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                int i2 = computeStringSize;
                if (!getItemBytes().isEmpty()) {
                    i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.item_);
                }
                double d2 = this.price_;
                int i3 = i2;
                if (d2 != 0.0d) {
                    i3 = i2 + CodedOutputStream.computeDoubleSize(3, d2);
                }
                int i4 = i3;
                if (!getDealBytes().isEmpty()) {
                    i4 = i3 + GeneratedMessageV3.computeStringSize(4, this.deal_);
                }
                int i5 = i4;
                if (!getCidBytes().isEmpty()) {
                    i5 = i4 + GeneratedMessageV3.computeStringSize(5, this.cid_);
                }
                int i6 = i5;
                if (!getTacticBytes().isEmpty()) {
                    i6 = i5 + GeneratedMessageV3.computeStringSize(6, this.tactic_);
                }
                int i7 = i6;
                if (!getPurlBytes().isEmpty()) {
                    i7 = i6 + GeneratedMessageV3.computeStringSize(7, this.purl_);
                }
                int i8 = i7;
                if (!getBurlBytes().isEmpty()) {
                    i8 = i7 + GeneratedMessageV3.computeStringSize(8, this.burl_);
                }
                int i9 = i8;
                if (!getLurlBytes().isEmpty()) {
                    i9 = i8 + GeneratedMessageV3.computeStringSize(9, this.lurl_);
                }
                int i10 = this.exp_;
                int i11 = i9;
                if (i10 != 0) {
                    i11 = i9 + CodedOutputStream.computeUInt32Size(10, i10);
                }
                int i12 = i11;
                if (!getMidBytes().isEmpty()) {
                    i12 = i11 + GeneratedMessageV3.computeStringSize(11, this.mid_);
                }
                for (int i13 = 0; i13 < this.macro_.size(); i13++) {
                    i12 += CodedOutputStream.computeMessageSize(12, this.macro_.get(i13));
                }
                int i14 = i12;
                int i15 = 0;
                if (this.media_ != null) {
                    i14 = i12 + CodedOutputStream.computeMessageSize(13, getMedia());
                    i15 = 0;
                }
                while (i15 < this.extProto_.size()) {
                    i14 += CodedOutputStream.computeMessageSize(14, this.extProto_.get(i15));
                    i15++;
                }
                int i16 = i14;
                if (this.ext_ != null) {
                    i16 = i14 + CodedOutputStream.computeMessageSize(15, getExt());
                }
                int serializedSize = i16 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final String getTactic() {
                Object obj = this.tactic_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.tactic_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final ByteString getTacticBytes() {
                Object obj = this.tactic_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tactic_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.Seatbid.BidOrBuilder
            public final boolean hasMedia() {
                return this.media_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getItem().hashCode()) * 37) + 3) * 53) + Internal.hashLong(Double.doubleToLongBits(getPrice()))) * 37) + 4) * 53) + getDeal().hashCode()) * 37) + 5) * 53) + getCid().hashCode()) * 37) + 6) * 53) + getTactic().hashCode()) * 37) + 7) * 53) + getPurl().hashCode()) * 37) + 8) * 53) + getBurl().hashCode()) * 37) + 9) * 53) + getLurl().hashCode()) * 37) + 10) * 53) + getExp()) * 37) + 11) * 53) + getMid().hashCode();
                int i = hashCode;
                if (getMacroCount() > 0) {
                    i = (((hashCode * 37) + 12) * 53) + getMacroList().hashCode();
                }
                int i2 = i;
                if (hasMedia()) {
                    i2 = (((i * 37) + 13) * 53) + getMedia().hashCode();
                }
                int i3 = i2;
                if (hasExt()) {
                    i3 = (((i2 * 37) + 15) * 53) + getExt().hashCode();
                }
                int i4 = i3;
                if (getExtProtoCount() > 0) {
                    i4 = (((i3 * 37) + 14) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_fieldAccessorTable.ensureFieldAccessorsInitialized(Bid.class, Builder.class);
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
                return new Bid();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getIdBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
                }
                if (!getItemBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.item_);
                }
                double d2 = this.price_;
                if (d2 != 0.0d) {
                    codedOutputStream.writeDouble(3, d2);
                }
                if (!getDealBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.deal_);
                }
                if (!getCidBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 5, this.cid_);
                }
                if (!getTacticBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.tactic_);
                }
                if (!getPurlBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 7, this.purl_);
                }
                if (!getBurlBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 8, this.burl_);
                }
                if (!getLurlBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 9, this.lurl_);
                }
                int i = this.exp_;
                if (i != 0) {
                    codedOutputStream.writeUInt32(10, i);
                }
                if (!getMidBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 11, this.mid_);
                }
                for (int i2 = 0; i2 < this.macro_.size(); i2++) {
                    codedOutputStream.writeMessage(12, this.macro_.get(i2));
                }
                int i3 = 0;
                if (this.media_ != null) {
                    codedOutputStream.writeMessage(13, getMedia());
                    i3 = 0;
                }
                while (i3 < this.extProto_.size()) {
                    codedOutputStream.writeMessage(14, this.extProto_.get(i3));
                    i3++;
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(15, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder.class */
        public interface BidOrBuilder extends MessageOrBuilder {
            String getBurl();

            ByteString getBurlBytes();

            String getCid();

            ByteString getCidBytes();

            String getDeal();

            ByteString getDealBytes();

            int getExp();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getId();

            ByteString getIdBytes();

            String getItem();

            ByteString getItemBytes();

            String getLurl();

            ByteString getLurlBytes();

            Bid.Macro getMacro(int i);

            int getMacroCount();

            List<Bid.Macro> getMacroList();

            Bid.MacroOrBuilder getMacroOrBuilder(int i);

            List<? extends Bid.MacroOrBuilder> getMacroOrBuilderList();

            Any getMedia();

            AnyOrBuilder getMediaOrBuilder();

            String getMid();

            ByteString getMidBytes();

            double getPrice();

            String getPurl();

            ByteString getPurlBytes();

            String getTactic();

            ByteString getTacticBytes();

            boolean hasExt();

            boolean hasMedia();
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$Seatbid$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SeatbidOrBuilder {
            private RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> bidBuilder_;
            private List<Bid> bid_;
            private int bitField0_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private boolean package_;
            private Object seat_;

            private Builder() {
                this.seat_ = "";
                this.bid_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.seat_ = "";
                this.bid_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureBidIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.bid_ = new ArrayList(this.bid_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> getBidFieldBuilder() {
                if (this.bidBuilder_ == null) {
                    List<Bid> list = this.bid_;
                    boolean z = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z = false;
                    }
                    this.bidBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                    this.bid_ = null;
                }
                return this.bidBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor;
            }

            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> getExtFieldBuilder() {
                if (this.extBuilder_ == null) {
                    this.extBuilder_ = new SingleFieldBuilderV3<>(getExt(), getParentForChildren(), isClean());
                    this.ext_ = null;
                }
                return this.extBuilder_;
            }

            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getExtProtoFieldBuilder() {
                if (this.extProtoBuilder_ == null) {
                    this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (Seatbid.alwaysUseFieldBuilders) {
                    getBidFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public final Builder addAllBid(Iterable<? extends Bid> iterable) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBidIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.bid_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addAllExtProto(Iterable<? extends Any> iterable) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureExtProtoIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.extProto_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addBid(int i, Bid.Builder builder) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBidIsMutable();
                    this.bid_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addBid(int i, Bid bid) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(bid);
                    ensureBidIsMutable();
                    this.bid_.add(i, bid);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, bid);
                }
                return this;
            }

            public final Builder addBid(Bid.Builder builder) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBidIsMutable();
                    this.bid_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addBid(Bid bid) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(bid);
                    ensureBidIsMutable();
                    this.bid_.add(bid);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(bid);
                }
                return this;
            }

            public final Bid.Builder addBidBuilder() {
                return getBidFieldBuilder().addBuilder(Bid.getDefaultInstance());
            }

            public final Bid.Builder addBidBuilder(int i) {
                return getBidFieldBuilder().addBuilder(i, Bid.getDefaultInstance());
            }

            public final Builder addExtProto(int i, Any.Builder builder) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addExtProto(int i, Any any) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(any);
                    ensureExtProtoIsMutable();
                    this.extProto_.add(i, any);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, any);
                }
                return this;
            }

            public final Builder addExtProto(Any.Builder builder) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addExtProto(Any any) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(any);
                    ensureExtProtoIsMutable();
                    this.extProto_.add(any);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(any);
                }
                return this;
            }

            public final Any.Builder addExtProtoBuilder() {
                return getExtProtoFieldBuilder().addBuilder(Any.getDefaultInstance());
            }

            public final Any.Builder addExtProtoBuilder(int i) {
                return getExtProtoFieldBuilder().addBuilder(i, Any.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Seatbid build() {
                Seatbid buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Seatbid buildPartial() {
                Seatbid seatbid = new Seatbid(this);
                seatbid.seat_ = this.seat_;
                seatbid.package_ = this.package_;
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.bid_ = Collections.unmodifiableList(this.bid_);
                        this.bitField0_ &= -2;
                    }
                    seatbid.bid_ = this.bid_;
                } else {
                    seatbid.bid_ = repeatedFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    seatbid.ext_ = this.ext_;
                } else {
                    seatbid.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    seatbid.extProto_ = this.extProto_;
                } else {
                    seatbid.extProto_ = repeatedFieldBuilderV32.build();
                }
                onBuilt();
                return seatbid;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.seat_ = "";
                this.package_ = false;
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.bid_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV32.clear();
                }
                return this;
            }

            public final Builder clearBid() {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.bid_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearExt() {
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                    onChanged();
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                return this;
            }

            public final Builder clearExtProto() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -3;
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

            public final Builder clearPackage() {
                this.package_ = false;
                onChanged();
                return this;
            }

            public final Builder clearSeat() {
                this.seat_ = Seatbid.getDefaultInstance().getSeat();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final Bid getBid(int i) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                return repeatedFieldBuilderV3 == null ? this.bid_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Bid.Builder getBidBuilder(int i) {
                return getBidFieldBuilder().getBuilder(i);
            }

            public final List<Bid.Builder> getBidBuilderList() {
                return getBidFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final int getBidCount() {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                return repeatedFieldBuilderV3 == null ? this.bid_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final List<Bid> getBidList() {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.bid_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final BidOrBuilder getBidOrBuilder(int i) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                return repeatedFieldBuilderV3 == null ? this.bid_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final List<? extends BidOrBuilder> getBidOrBuilderList() {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.bid_);
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Seatbid getDefaultInstanceForType() {
                return Seatbid.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final Struct getExt() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            public final Struct.Builder getExtBuilder() {
                onChanged();
                return getExtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final Any getExtProto(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Any.Builder getExtProtoBuilder(int i) {
                return getExtProtoFieldBuilder().getBuilder(i);
            }

            public final List<Any.Builder> getExtProtoBuilderList() {
                return getExtProtoFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final boolean getPackage() {
                return this.package_;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final String getSeat() {
                Object obj = this.seat_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.seat_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final ByteString getSeatBytes() {
                Object obj = this.seat_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.seat_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_fieldAccessorTable.ensureFieldAccessorsInitialized(Seatbid.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public final Builder mergeExt(Struct struct) {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Struct struct2 = this.ext_;
                    if (struct2 != null) {
                        this.ext_ = Struct.newBuilder(struct2).mergeFrom(struct).buildPartial();
                    } else {
                        this.ext_ = struct;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(struct);
                }
                return this;
            }

            /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final com.explorestack.protobuf.openrtb.Response.Seatbid.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Response.Seatbid.access$5900()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.openrtb.Response$Seatbid r0 = (com.explorestack.protobuf.openrtb.Response.Seatbid) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.openrtb.Response$Seatbid$Builder r0 = r0.mergeFrom(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r6 = move-exception
                    r0 = r7
                    r5 = r0
                    goto L_0x0031
                L_0x0022:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                    com.explorestack.protobuf.openrtb.Response$Seatbid r0 = (com.explorestack.protobuf.openrtb.Response.Seatbid) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r6 = move-exception
                L_0x0031:
                    r0 = r5
                    if (r0 == 0) goto L_0x003b
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.openrtb.Response$Seatbid$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Response.Seatbid.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Response$Seatbid$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Seatbid) {
                    return mergeFrom((Seatbid) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Seatbid seatbid) {
                if (seatbid == Seatbid.getDefaultInstance()) {
                    return this;
                }
                if (!seatbid.getSeat().isEmpty()) {
                    this.seat_ = seatbid.seat_;
                    onChanged();
                }
                if (seatbid.getPackage()) {
                    setPackage(seatbid.getPackage());
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                if (this.bidBuilder_ == null) {
                    if (!seatbid.bid_.isEmpty()) {
                        if (this.bid_.isEmpty()) {
                            this.bid_ = seatbid.bid_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureBidIsMutable();
                            this.bid_.addAll(seatbid.bid_);
                        }
                        onChanged();
                    }
                } else if (!seatbid.bid_.isEmpty()) {
                    if (this.bidBuilder_.isEmpty()) {
                        this.bidBuilder_.dispose();
                        this.bidBuilder_ = null;
                        this.bid_ = seatbid.bid_;
                        this.bitField0_ &= -2;
                        this.bidBuilder_ = Seatbid.alwaysUseFieldBuilders ? getBidFieldBuilder() : null;
                    } else {
                        this.bidBuilder_.addAllMessages(seatbid.bid_);
                    }
                }
                if (seatbid.hasExt()) {
                    mergeExt(seatbid.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!seatbid.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = seatbid.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(seatbid.extProto_);
                        }
                        onChanged();
                    }
                } else if (!seatbid.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = seatbid.extProto_;
                        this.bitField0_ &= -3;
                        if (Seatbid.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(seatbid.extProto_);
                    }
                }
                mergeUnknownFields(seatbid.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeBid(int i) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBidIsMutable();
                    this.bid_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public final Builder removeExtProto(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public final Builder setBid(int i, Bid.Builder builder) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureBidIsMutable();
                    this.bid_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setBid(int i, Bid bid) {
                RepeatedFieldBuilderV3<Bid, Bid.Builder, BidOrBuilder> repeatedFieldBuilderV3 = this.bidBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(bid);
                    ensureBidIsMutable();
                    this.bid_.set(i, bid);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, bid);
                }
                return this;
            }

            public final Builder setExt(Struct.Builder builder) {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.ext_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setExt(Struct struct) {
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(struct);
                    this.ext_ = struct;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(struct);
                }
                return this;
            }

            public final Builder setExtProto(int i, Any.Builder builder) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureExtProtoIsMutable();
                    this.extProto_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setExtProto(int i, Any any) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(any);
                    ensureExtProtoIsMutable();
                    this.extProto_.set(i, any);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, any);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            public final Builder setPackage(boolean z) {
                this.package_ = z;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setSeat(String str) {
                Objects.requireNonNull(str);
                this.seat_ = str;
                onChanged();
                return this;
            }

            public final Builder setSeatBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Seatbid.checkByteStringIsUtf8(byteString);
                this.seat_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        private Seatbid() {
            this.memoizedIsInitialized = (byte) (-1);
            this.seat_ = "";
            this.bid_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Seatbid(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.seat_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 16) {
                                this.package_ = codedInputStream.readBool();
                            } else if (readTag == 26) {
                                i = i;
                                if ((i & 1) == 0) {
                                    this.bid_ = new ArrayList();
                                    i |= 1;
                                }
                                this.bid_.add(codedInputStream.readMessage(Bid.parser(), extensionRegistryLite));
                            } else if (readTag == 34) {
                                i = i;
                                if ((i & 2) == 0) {
                                    this.extProto_ = new ArrayList();
                                    i |= 2;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                            } else if (readTag == 42) {
                                Struct.Builder builder = null;
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    this.ext_ = builder.buildPartial();
                                }
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
                        this.bid_ = Collections.unmodifiableList(this.bid_);
                    }
                    if ((i & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Seatbid(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Seatbid getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Seatbid seatbid) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(seatbid);
        }

        public static Seatbid parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Seatbid) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Seatbid parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Seatbid) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Seatbid parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Seatbid parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Seatbid parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Seatbid) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Seatbid parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Seatbid) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Seatbid parseFrom(InputStream inputStream) throws IOException {
            return (Seatbid) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Seatbid parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Seatbid) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Seatbid parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Seatbid parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Seatbid parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Seatbid parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Seatbid> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Seatbid)) {
                return super.equals(obj);
            }
            Seatbid seatbid = (Seatbid) obj;
            if (getSeat().equals(seatbid.getSeat()) && getPackage() == seatbid.getPackage() && getBidList().equals(seatbid.getBidList()) && hasExt() == seatbid.hasExt()) {
                return (!hasExt() || getExt().equals(seatbid.getExt())) && getExtProtoList().equals(seatbid.getExtProtoList()) && this.unknownFields.equals(seatbid.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final Bid getBid(int i) {
            return this.bid_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final int getBidCount() {
            return this.bid_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final List<Bid> getBidList() {
            return this.bid_;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final BidOrBuilder getBidOrBuilder(int i) {
            return this.bid_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final List<? extends BidOrBuilder> getBidOrBuilderList() {
            return this.bid_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Seatbid getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final boolean getPackage() {
            return this.package_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Seatbid> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final String getSeat() {
            Object obj = this.seat_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.seat_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final ByteString getSeatBytes() {
            Object obj = this.seat_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.seat_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i;
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int computeStringSize = !getSeatBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.seat_) + 0 : 0;
            boolean z = this.package_;
            int i3 = computeStringSize;
            if (z) {
                i3 = computeStringSize + CodedOutputStream.computeBoolSize(2, z);
            }
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 < this.bid_.size()) {
                    i3 += CodedOutputStream.computeMessageSize(3, this.bid_.get(i4));
                    i4++;
                }
            }
            for (int i5 = 0; i5 < this.extProto_.size(); i5++) {
                i += CodedOutputStream.computeMessageSize(4, this.extProto_.get(i5));
            }
            int i6 = i;
            if (this.ext_ != null) {
                i6 = i + CodedOutputStream.computeMessageSize(5, getExt());
            }
            int serializedSize = i6 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.openrtb.Response.SeatbidOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getSeat().hashCode()) * 37) + 2) * 53) + Internal.hashBoolean(getPackage());
            int i = hashCode;
            if (getBidCount() > 0) {
                i = (((hashCode * 37) + 3) * 53) + getBidList().hashCode();
            }
            int i2 = i;
            if (hasExt()) {
                i2 = (((i * 37) + 5) * 53) + getExt().hashCode();
            }
            int i3 = i2;
            if (getExtProtoCount() > 0) {
                i3 = (((i2 * 37) + 4) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_fieldAccessorTable.ensureFieldAccessorsInitialized(Seatbid.class, Builder.class);
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
            return new Seatbid();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getSeatBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.seat_);
            }
            boolean z = this.package_;
            if (z) {
                codedOutputStream.writeBool(2, z);
            }
            for (int i = 0; i < this.bid_.size(); i++) {
                codedOutputStream.writeMessage(3, this.bid_.get(i));
            }
            for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
                codedOutputStream.writeMessage(4, this.extProto_.get(i2));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(5, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder.class */
    public interface SeatbidOrBuilder extends MessageOrBuilder {
        Seatbid.Bid getBid(int i);

        int getBidCount();

        List<Seatbid.Bid> getBidList();

        Seatbid.BidOrBuilder getBidOrBuilder(int i);

        List<? extends Seatbid.BidOrBuilder> getBidOrBuilderList();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        boolean getPackage();

        String getSeat();

        ByteString getSeatBytes();

        boolean hasExt();
    }

    private Response() {
        this.memoizedIsInitialized = (byte) (-1);
        this.id_ = "";
        this.bidid_ = "";
        this.nbr_ = 0;
        this.cur_ = "";
        this.cdata_ = "";
        this.seatbid_ = Collections.emptyList();
        this.extProto_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Response(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            this.id_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 18) {
                            this.bidid_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 24) {
                            this.nbr_ = codedInputStream.readEnum();
                        } else if (readTag == 34) {
                            this.cur_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 42) {
                            this.cdata_ = codedInputStream.readStringRequireUtf8();
                        } else if (readTag == 50) {
                            i = i;
                            if ((i & 1) == 0) {
                                this.seatbid_ = new ArrayList();
                                i |= 1;
                            }
                            this.seatbid_.add(codedInputStream.readMessage(Seatbid.parser(), extensionRegistryLite));
                        } else if (readTag == 58) {
                            i = i;
                            if ((i & 2) == 0) {
                                this.extProto_ = new ArrayList();
                                i |= 2;
                            }
                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                        } else if (readTag == 66) {
                            Struct.Builder builder = null;
                            Struct struct = this.ext_;
                            builder = struct != null ? struct.toBuilder() : builder;
                            Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                            this.ext_ = struct2;
                            if (builder != null) {
                                builder.mergeFrom(struct2);
                                this.ext_ = builder.buildPartial();
                            }
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
                    this.seatbid_ = Collections.unmodifiableList(this.seatbid_);
                }
                if ((i & 2) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private Response(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Response getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Response response) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(response);
    }

    public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Response parseFrom(InputStream inputStream) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Response) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Response> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Response)) {
            return super.equals(obj);
        }
        Response response = (Response) obj;
        if (getId().equals(response.getId()) && getBidid().equals(response.getBidid()) && this.nbr_ == response.nbr_ && getCur().equals(response.getCur()) && getCdata().equals(response.getCdata()) && getSeatbidList().equals(response.getSeatbidList()) && hasExt() == response.hasExt()) {
            return (!hasExt() || getExt().equals(response.getExt())) && getExtProtoList().equals(response.getExtProtoList()) && this.unknownFields.equals(response.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final String getBidid() {
        Object obj = this.bidid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.bidid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final ByteString getBididBytes() {
        Object obj = this.bidid_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.bidid_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final String getCdata() {
        Object obj = this.cdata_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cdata_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final ByteString getCdataBytes() {
        Object obj = this.cdata_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.cdata_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final String getCur() {
        Object obj = this.cur_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cur_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final ByteString getCurBytes() {
        Object obj = this.cur_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.cur_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Response getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final Struct getExt() {
        Struct struct = this.ext_;
        Struct struct2 = struct;
        if (struct == null) {
            struct2 = Struct.getDefaultInstance();
        }
        return struct2;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final StructOrBuilder getExtOrBuilder() {
        return getExt();
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final Any getExtProto(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final int getExtProtoCount() {
        return this.extProto_.size();
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final List<Any> getExtProtoList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final ByteString getIdBytes() {
        Object obj = this.id_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.id_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final NoBidReason getNbr() {
        NoBidReason valueOf = NoBidReason.valueOf(this.nbr_);
        NoBidReason noBidReason = valueOf;
        if (valueOf == null) {
            noBidReason = NoBidReason.UNRECOGNIZED;
        }
        return noBidReason;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final int getNbrValue() {
        return this.nbr_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Response> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final Seatbid getSeatbid(int i) {
        return this.seatbid_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final int getSeatbidCount() {
        return this.seatbid_.size();
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final List<Seatbid> getSeatbidList() {
        return this.seatbid_;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final SeatbidOrBuilder getSeatbidOrBuilder(int i) {
        return this.seatbid_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final List<? extends SeatbidOrBuilder> getSeatbidOrBuilderList() {
        return this.seatbid_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i;
        int i2 = this.memoizedSize;
        if (i2 != -1) {
            return i2;
        }
        int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
        int i3 = computeStringSize;
        if (!getBididBytes().isEmpty()) {
            i3 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.bidid_);
        }
        int i4 = i3;
        if (this.nbr_ != NoBidReason.NO_BID_REASON_INVALID.getNumber()) {
            i4 = i3 + CodedOutputStream.computeEnumSize(3, this.nbr_);
        }
        int i5 = i4;
        if (!getCurBytes().isEmpty()) {
            i5 = i4 + GeneratedMessageV3.computeStringSize(4, this.cur_);
        }
        int i6 = i5;
        if (!getCdataBytes().isEmpty()) {
            i6 = i5 + GeneratedMessageV3.computeStringSize(5, this.cdata_);
        }
        int i7 = 0;
        while (true) {
            i = i6;
            if (i7 < this.seatbid_.size()) {
                i6 += CodedOutputStream.computeMessageSize(6, this.seatbid_.get(i7));
                i7++;
            }
        }
        for (int i8 = 0; i8 < this.extProto_.size(); i8++) {
            i += CodedOutputStream.computeMessageSize(7, this.extProto_.get(i8));
        }
        int i9 = i;
        if (this.ext_ != null) {
            i9 = i + CodedOutputStream.computeMessageSize(8, getExt());
        }
        int serializedSize = i9 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.openrtb.ResponseOrBuilder
    public final boolean hasExt() {
        return this.ext_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getBidid().hashCode()) * 37) + 3) * 53) + this.nbr_) * 37) + 4) * 53) + getCur().hashCode()) * 37) + 5) * 53) + getCdata().hashCode();
        int i = hashCode;
        if (getSeatbidCount() > 0) {
            i = (((hashCode * 37) + 6) * 53) + getSeatbidList().hashCode();
        }
        int i2 = i;
        if (hasExt()) {
            i2 = (((i * 37) + 8) * 53) + getExt().hashCode();
        }
        int i3 = i2;
        if (getExtProtoCount() > 0) {
            i3 = (((i2 * 37) + 7) * 53) + getExtProtoList().hashCode();
        }
        int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Response_fieldAccessorTable.ensureFieldAccessorsInitialized(Response.class, Builder.class);
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
        return new Response();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getIdBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.id_);
        }
        if (!getBididBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.bidid_);
        }
        if (this.nbr_ != NoBidReason.NO_BID_REASON_INVALID.getNumber()) {
            codedOutputStream.writeEnum(3, this.nbr_);
        }
        if (!getCurBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.cur_);
        }
        if (!getCdataBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.cdata_);
        }
        for (int i = 0; i < this.seatbid_.size(); i++) {
            codedOutputStream.writeMessage(6, this.seatbid_.get(i));
        }
        for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
            codedOutputStream.writeMessage(7, this.extProto_.get(i2));
        }
        if (this.ext_ != null) {
            codedOutputStream.writeMessage(8, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

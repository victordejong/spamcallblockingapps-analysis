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
import com.explorestack.protobuf.LazyStringArrayList;
import com.explorestack.protobuf.LazyStringList;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.UnknownFieldSet;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request.class */
public final class Request extends GeneratedMessageV3 implements RequestOrBuilder {
    public static final int AT_FIELD_NUMBER = 4;
    public static final int CDATA_FIELD_NUMBER = 8;
    public static final int CONTEXT_FIELD_NUMBER = 12;
    public static final int CUR_FIELD_NUMBER = 5;
    public static final int EXT_FIELD_NUMBER = 14;
    public static final int EXT_PROTO_FIELD_NUMBER = 13;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int ITEM_FIELD_NUMBER = 10;
    public static final int PACKAGE_FIELD_NUMBER = 11;
    public static final int SEAT_FIELD_NUMBER = 6;
    public static final int SOURCE_FIELD_NUMBER = 9;
    public static final int TEST_FIELD_NUMBER = 2;
    public static final int TMAX_FIELD_NUMBER = 3;
    public static final int WSEAT_FIELD_NUMBER = 7;
    private static final long serialVersionUID = 0;
    private int at_;
    private volatile Object cdata_;
    private Any context_;
    private LazyStringList cur_;
    private List<Any> extProto_;
    private Struct ext_;
    private volatile Object id_;
    private List<Item> item_;
    private byte memoizedIsInitialized;
    private int package_;
    private LazyStringList seat_;
    private Source source_;
    private boolean test_;
    private int tmax_;
    private boolean wseat_;
    private static final Request DEFAULT_INSTANCE = new Request();
    private static final Parser<Request> PARSER = new AbstractParser<Request>() { // from class: com.explorestack.protobuf.openrtb.Request.1
        @Override // com.explorestack.protobuf.Parser
        public final Request parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Request(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements RequestOrBuilder {
        private int at_;
        private int bitField0_;
        private Object cdata_;
        private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> contextBuilder_;
        private Any context_;
        private LazyStringList cur_;
        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private Object id_;
        private RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> itemBuilder_;
        private List<Item> item_;
        private int package_;
        private LazyStringList seat_;
        private SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> sourceBuilder_;
        private Source source_;
        private boolean test_;
        private int tmax_;
        private boolean wseat_;

        private Builder() {
            this.id_ = "";
            this.cur_ = LazyStringArrayList.EMPTY;
            this.seat_ = LazyStringArrayList.EMPTY;
            this.cdata_ = "";
            this.item_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.id_ = "";
            this.cur_ = LazyStringArrayList.EMPTY;
            this.seat_ = LazyStringArrayList.EMPTY;
            this.cdata_ = "";
            this.item_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureCurIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.cur_ = new LazyStringArrayList(this.cur_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 8) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 8;
            }
        }

        private void ensureItemIsMutable() {
            if ((this.bitField0_ & 4) == 0) {
                this.item_ = new ArrayList(this.item_);
                this.bitField0_ |= 4;
            }
        }

        private void ensureSeatIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.seat_ = new LazyStringArrayList(this.seat_);
                this.bitField0_ |= 2;
            }
        }

        private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getContextFieldBuilder() {
            if (this.contextBuilder_ == null) {
                this.contextBuilder_ = new SingleFieldBuilderV3<>(getContext(), getParentForChildren(), isClean());
                this.context_ = null;
            }
            return this.contextBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_descriptor;
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
                this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                this.extProto_ = null;
            }
            return this.extProtoBuilder_;
        }

        private RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> getItemFieldBuilder() {
            if (this.itemBuilder_ == null) {
                this.itemBuilder_ = new RepeatedFieldBuilderV3<>(this.item_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                this.item_ = null;
            }
            return this.itemBuilder_;
        }

        private SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> getSourceFieldBuilder() {
            if (this.sourceBuilder_ == null) {
                this.sourceBuilder_ = new SingleFieldBuilderV3<>(getSource(), getParentForChildren(), isClean());
                this.source_ = null;
            }
            return this.sourceBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (Request.alwaysUseFieldBuilders) {
                getItemFieldBuilder();
                getExtProtoFieldBuilder();
            }
        }

        public final Builder addAllCur(Iterable<String> iterable) {
            ensureCurIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.cur_);
            onChanged();
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

        public final Builder addAllItem(Iterable<? extends Item> iterable) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureItemIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.item_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addAllSeat(Iterable<String> iterable) {
            ensureSeatIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.seat_);
            onChanged();
            return this;
        }

        public final Builder addCur(String str) {
            Objects.requireNonNull(str);
            ensureCurIsMutable();
            this.cur_.add(str);
            onChanged();
            return this;
        }

        public final Builder addCurBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Request.checkByteStringIsUtf8(byteString);
            ensureCurIsMutable();
            this.cur_.add(byteString);
            onChanged();
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

        public final Builder addItem(int i, Item.Builder builder) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureItemIsMutable();
                this.item_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addItem(int i, Item item) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(item);
                ensureItemIsMutable();
                this.item_.add(i, item);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, item);
            }
            return this;
        }

        public final Builder addItem(Item.Builder builder) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureItemIsMutable();
                this.item_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addItem(Item item) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(item);
                ensureItemIsMutable();
                this.item_.add(item);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(item);
            }
            return this;
        }

        public final Item.Builder addItemBuilder() {
            return getItemFieldBuilder().addBuilder(Item.getDefaultInstance());
        }

        public final Item.Builder addItemBuilder(int i) {
            return getItemFieldBuilder().addBuilder(i, Item.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        public final Builder addSeat(String str) {
            Objects.requireNonNull(str);
            ensureSeatIsMutable();
            this.seat_.add(str);
            onChanged();
            return this;
        }

        public final Builder addSeatBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Request.checkByteStringIsUtf8(byteString);
            ensureSeatIsMutable();
            this.seat_.add(byteString);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Request build() {
            Request buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Request buildPartial() {
            Request request = new Request(this);
            request.id_ = this.id_;
            request.test_ = this.test_;
            request.tmax_ = this.tmax_;
            request.at_ = this.at_;
            if ((this.bitField0_ & 1) != 0) {
                this.cur_ = this.cur_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            request.cur_ = this.cur_;
            if ((this.bitField0_ & 2) != 0) {
                this.seat_ = this.seat_.getUnmodifiableView();
                this.bitField0_ &= -3;
            }
            request.seat_ = this.seat_;
            request.wseat_ = this.wseat_;
            request.cdata_ = this.cdata_;
            SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> singleFieldBuilderV3 = this.sourceBuilder_;
            if (singleFieldBuilderV3 == null) {
                request.source_ = this.source_;
            } else {
                request.source_ = singleFieldBuilderV3.build();
            }
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 4) != 0) {
                    this.item_ = Collections.unmodifiableList(this.item_);
                    this.bitField0_ &= -5;
                }
                request.item_ = this.item_;
            } else {
                request.item_ = repeatedFieldBuilderV3.build();
            }
            request.package_ = this.package_;
            SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV32 = this.contextBuilder_;
            if (singleFieldBuilderV32 == null) {
                request.context_ = this.context_;
            } else {
                request.context_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV33 = this.extBuilder_;
            if (singleFieldBuilderV33 == null) {
                request.ext_ = this.ext_;
            } else {
                request.ext_ = singleFieldBuilderV33.build();
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV32 == null) {
                if ((this.bitField0_ & 8) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -9;
                }
                request.extProto_ = this.extProto_;
            } else {
                request.extProto_ = repeatedFieldBuilderV32.build();
            }
            onBuilt();
            return request;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.id_ = "";
            this.test_ = false;
            this.tmax_ = 0;
            this.at_ = 0;
            this.cur_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            this.seat_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            this.wseat_ = false;
            this.cdata_ = "";
            if (this.sourceBuilder_ == null) {
                this.source_ = null;
            } else {
                this.source_ = null;
                this.sourceBuilder_ = null;
            }
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.item_ = Collections.emptyList();
                this.bitField0_ &= -5;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            this.package_ = 0;
            if (this.contextBuilder_ == null) {
                this.context_ = null;
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
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
                this.bitField0_ &= -9;
            } else {
                repeatedFieldBuilderV32.clear();
            }
            return this;
        }

        public final Builder clearAt() {
            this.at_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearCdata() {
            this.cdata_ = Request.getDefaultInstance().getCdata();
            onChanged();
            return this;
        }

        public final Builder clearContext() {
            if (this.contextBuilder_ == null) {
                this.context_ = null;
                onChanged();
            } else {
                this.context_ = null;
                this.contextBuilder_ = null;
            }
            return this;
        }

        public final Builder clearCur() {
            this.cur_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
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
                this.bitField0_ &= -9;
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
            this.id_ = Request.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public final Builder clearItem() {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.item_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearPackage() {
            this.package_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearSeat() {
            this.seat_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public final Builder clearSource() {
            if (this.sourceBuilder_ == null) {
                this.source_ = null;
                onChanged();
            } else {
                this.source_ = null;
                this.sourceBuilder_ = null;
            }
            return this;
        }

        public final Builder clearTest() {
            this.test_ = false;
            onChanged();
            return this;
        }

        public final Builder clearTmax() {
            this.tmax_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearWseat() {
            this.wseat_ = false;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getAt() {
            return this.at_;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final String getCdata() {
            Object obj = this.cdata_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cdata_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ByteString getCdataBytes() {
            Object obj = this.cdata_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cdata_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final Any getContext() {
            SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Any any = this.context_;
            Any any2 = any;
            if (any == null) {
                any2 = Any.getDefaultInstance();
            }
            return any2;
        }

        public final Any.Builder getContextBuilder() {
            onChanged();
            return getContextFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final AnyOrBuilder getContextOrBuilder() {
            SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Any any = this.context_;
            Any any2 = any;
            if (any == null) {
                any2 = Any.getDefaultInstance();
            }
            return any2;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final String getCur(int i) {
            return (String) this.cur_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ByteString getCurBytes(int i) {
            return this.cur_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getCurCount() {
            return this.cur_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ProtocolStringList getCurList() {
            return this.cur_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Request getDefaultInstanceForType() {
            return Request.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_descriptor;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
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

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
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

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
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

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getExtProtoCount() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final List<Any> getExtProtoList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final Item getItem(int i) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            return repeatedFieldBuilderV3 == null ? this.item_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Item.Builder getItemBuilder(int i) {
            return getItemFieldBuilder().getBuilder(i);
        }

        public final List<Item.Builder> getItemBuilderList() {
            return getItemFieldBuilder().getBuilderList();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getItemCount() {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            return repeatedFieldBuilderV3 == null ? this.item_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final List<Item> getItemList() {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.item_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ItemOrBuilder getItemOrBuilder(int i) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            return repeatedFieldBuilderV3 == null ? this.item_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final List<? extends ItemOrBuilder> getItemOrBuilderList() {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.item_);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getPackage() {
            return this.package_;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final String getSeat(int i) {
            return (String) this.seat_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ByteString getSeatBytes(int i) {
            return this.seat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getSeatCount() {
            return this.seat_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final ProtocolStringList getSeatList() {
            return this.seat_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final Source getSource() {
            SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> singleFieldBuilderV3 = this.sourceBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Source source = this.source_;
            Source source2 = source;
            if (source == null) {
                source2 = Source.getDefaultInstance();
            }
            return source2;
        }

        public final Source.Builder getSourceBuilder() {
            onChanged();
            return getSourceFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final SourceOrBuilder getSourceOrBuilder() {
            SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> singleFieldBuilderV3 = this.sourceBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Source source = this.source_;
            Source source2 = source;
            if (source == null) {
                source2 = Source.getDefaultInstance();
            }
            return source2;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final boolean getTest() {
            return this.test_;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final int getTmax() {
            return this.tmax_;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final boolean getWseat() {
            return this.wseat_;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final boolean hasContext() {
            return (this.contextBuilder_ == null && this.context_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final boolean hasExt() {
            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
        public final boolean hasSource() {
            return (this.sourceBuilder_ == null && this.source_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeContext(Any any) {
            SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Any any2 = this.context_;
                if (any2 != null) {
                    this.context_ = Any.newBuilder(any2).mergeFrom(any).buildPartial();
                } else {
                    this.context_ = any;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(any);
            }
            return this;
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
        public final com.explorestack.protobuf.openrtb.Request.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Request.access$10400()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                com.explorestack.protobuf.openrtb.Request r0 = (com.explorestack.protobuf.openrtb.Request) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.openrtb.Request$Builder r0 = r0.mergeFrom(r1)
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
                com.explorestack.protobuf.openrtb.Request r0 = (com.explorestack.protobuf.openrtb.Request) r0     // Catch: all -> 0x001c
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
                com.explorestack.protobuf.openrtb.Request$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Request$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Request) {
                return mergeFrom((Request) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Request request) {
            if (request == Request.getDefaultInstance()) {
                return this;
            }
            if (!request.getId().isEmpty()) {
                this.id_ = request.id_;
                onChanged();
            }
            if (request.getTest()) {
                setTest(request.getTest());
            }
            if (request.getTmax() != 0) {
                setTmax(request.getTmax());
            }
            if (request.getAt() != 0) {
                setAt(request.getAt());
            }
            if (!request.cur_.isEmpty()) {
                if (this.cur_.isEmpty()) {
                    this.cur_ = request.cur_;
                    this.bitField0_ &= -2;
                } else {
                    ensureCurIsMutable();
                    this.cur_.addAll(request.cur_);
                }
                onChanged();
            }
            if (!request.seat_.isEmpty()) {
                if (this.seat_.isEmpty()) {
                    this.seat_ = request.seat_;
                    this.bitField0_ &= -3;
                } else {
                    ensureSeatIsMutable();
                    this.seat_.addAll(request.seat_);
                }
                onChanged();
            }
            if (request.getWseat()) {
                setWseat(request.getWseat());
            }
            if (!request.getCdata().isEmpty()) {
                this.cdata_ = request.cdata_;
                onChanged();
            }
            if (request.hasSource()) {
                mergeSource(request.getSource());
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
            if (this.itemBuilder_ == null) {
                if (!request.item_.isEmpty()) {
                    if (this.item_.isEmpty()) {
                        this.item_ = request.item_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureItemIsMutable();
                        this.item_.addAll(request.item_);
                    }
                    onChanged();
                }
            } else if (!request.item_.isEmpty()) {
                if (this.itemBuilder_.isEmpty()) {
                    this.itemBuilder_.dispose();
                    this.itemBuilder_ = null;
                    this.item_ = request.item_;
                    this.bitField0_ &= -5;
                    this.itemBuilder_ = Request.alwaysUseFieldBuilders ? getItemFieldBuilder() : null;
                } else {
                    this.itemBuilder_.addAllMessages(request.item_);
                }
            }
            if (request.getPackage() != 0) {
                setPackage(request.getPackage());
            }
            if (request.hasContext()) {
                mergeContext(request.getContext());
            }
            if (request.hasExt()) {
                mergeExt(request.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!request.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = request.extProto_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(request.extProto_);
                    }
                    onChanged();
                }
            } else if (!request.extProto_.isEmpty()) {
                if (this.extProtoBuilder_.isEmpty()) {
                    this.extProtoBuilder_.dispose();
                    this.extProtoBuilder_ = null;
                    this.extProto_ = request.extProto_;
                    this.bitField0_ &= -9;
                    if (Request.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                    }
                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.extProtoBuilder_.addAllMessages(request.extProto_);
                }
            }
            mergeUnknownFields(request.unknownFields);
            onChanged();
            return this;
        }

        public final Builder mergeSource(Source source) {
            SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> singleFieldBuilderV3 = this.sourceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Source source2 = this.source_;
                if (source2 != null) {
                    this.source_ = Source.newBuilder(source2).mergeFrom(source).buildPartial();
                } else {
                    this.source_ = source;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(source);
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

        public final Builder removeItem(int i) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureItemIsMutable();
                this.item_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder setAt(int i) {
            this.at_ = i;
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
            Request.checkByteStringIsUtf8(byteString);
            this.cdata_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setContext(Any.Builder builder) {
            SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.context_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setContext(Any any) {
            SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.contextBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(any);
                this.context_ = any;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(any);
            }
            return this;
        }

        public final Builder setCur(int i, String str) {
            Objects.requireNonNull(str);
            ensureCurIsMutable();
            this.cur_.set(i, str);
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
            Request.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setItem(int i, Item.Builder builder) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureItemIsMutable();
                this.item_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setItem(int i, Item item) {
            RepeatedFieldBuilderV3<Item, Item.Builder, ItemOrBuilder> repeatedFieldBuilderV3 = this.itemBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(item);
                ensureItemIsMutable();
                this.item_.set(i, item);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, item);
            }
            return this;
        }

        public final Builder setPackage(int i) {
            this.package_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSeat(int i, String str) {
            Objects.requireNonNull(str);
            ensureSeatIsMutable();
            this.seat_.set(i, str);
            onChanged();
            return this;
        }

        public final Builder setSource(Source.Builder builder) {
            SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> singleFieldBuilderV3 = this.sourceBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.source_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setSource(Source source) {
            SingleFieldBuilderV3<Source, Source.Builder, SourceOrBuilder> singleFieldBuilderV3 = this.sourceBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(source);
                this.source_ = source;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(source);
            }
            return this;
        }

        public final Builder setTest(boolean z) {
            this.test_ = z;
            onChanged();
            return this;
        }

        public final Builder setTmax(int i) {
            this.tmax_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setWseat(boolean z) {
            this.wseat_ = z;
            onChanged();
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item.class */
    public static final class Item extends GeneratedMessageV3 implements ItemOrBuilder {
        public static final int DEAL_FIELD_NUMBER = 11;
        public static final int DLVY_FIELD_NUMBER = 9;
        public static final int DT_FIELD_NUMBER = 8;
        public static final int EXP_FIELD_NUMBER = 7;
        public static final int EXT_FIELD_NUMBER = 15;
        public static final int EXT_PROTO_FIELD_NUMBER = 14;
        public static final int FLRCUR_FIELD_NUMBER = 6;
        public static final int FLR_FIELD_NUMBER = 4;
        public static final int ID_FIELD_NUMBER = 1;
        public static final int METRIC_FIELD_NUMBER = 10;
        public static final int PRIVATE_FIELD_NUMBER = 12;
        public static final int QTY_FIELD_NUMBER = 2;
        public static final int SEQ_FIELD_NUMBER = 3;
        public static final int SPEC_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private List<Deal> deal_;
        private int dlvy_;
        private volatile Object dt_;
        private int exp_;
        private List<Any> extProto_;
        private Struct ext_;
        private double flr_;
        private volatile Object flrcur_;
        private volatile Object id_;
        private byte memoizedIsInitialized;
        private List<Metric> metric_;
        private boolean private_;
        private int qty_;
        private int seq_;
        private Any spec_;
        private static final Item DEFAULT_INSTANCE = new Item();
        private static final Parser<Item> PARSER = new AbstractParser<Item>() { // from class: com.explorestack.protobuf.openrtb.Request.Item.1
            @Override // com.explorestack.protobuf.Parser
            public final Item parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Item(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ItemOrBuilder {
            private int bitField0_;
            private RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> dealBuilder_;
            private List<Deal> deal_;
            private int dlvy_;
            private Object dt_;
            private int exp_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private double flr_;
            private Object flrcur_;
            private Object id_;
            private RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> metricBuilder_;
            private List<Metric> metric_;
            private boolean private_;
            private int qty_;
            private int seq_;
            private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> specBuilder_;
            private Any spec_;

            private Builder() {
                this.id_ = "";
                this.flrcur_ = "";
                this.dt_ = "";
                this.metric_ = Collections.emptyList();
                this.deal_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.id_ = "";
                this.flrcur_ = "";
                this.dt_ = "";
                this.metric_ = Collections.emptyList();
                this.deal_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureDealIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.deal_ = new ArrayList(this.deal_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureMetricIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.metric_ = new ArrayList(this.metric_);
                    this.bitField0_ |= 1;
                }
            }

            private RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> getDealFieldBuilder() {
                if (this.dealBuilder_ == null) {
                    this.dealBuilder_ = new RepeatedFieldBuilderV3<>(this.deal_, (this.bitField0_ & 2) != 0, getParentForChildren(), isClean());
                    this.deal_ = null;
                }
                return this.dealBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor;
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
                    this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> getMetricFieldBuilder() {
                if (this.metricBuilder_ == null) {
                    List<Metric> list = this.metric_;
                    boolean z = true;
                    if ((this.bitField0_ & 1) == 0) {
                        z = false;
                    }
                    this.metricBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                    this.metric_ = null;
                }
                return this.metricBuilder_;
            }

            private SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> getSpecFieldBuilder() {
                if (this.specBuilder_ == null) {
                    this.specBuilder_ = new SingleFieldBuilderV3<>(getSpec(), getParentForChildren(), isClean());
                    this.spec_ = null;
                }
                return this.specBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (Item.alwaysUseFieldBuilders) {
                    getMetricFieldBuilder();
                    getDealFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public final Builder addAllDeal(Iterable<? extends Deal> iterable) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDealIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.deal_);
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

            public final Builder addAllMetric(Iterable<? extends Metric> iterable) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMetricIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.metric_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addDeal(int i, Deal.Builder builder) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDealIsMutable();
                    this.deal_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addDeal(int i, Deal deal) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(deal);
                    ensureDealIsMutable();
                    this.deal_.add(i, deal);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, deal);
                }
                return this;
            }

            public final Builder addDeal(Deal.Builder builder) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDealIsMutable();
                    this.deal_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addDeal(Deal deal) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(deal);
                    ensureDealIsMutable();
                    this.deal_.add(deal);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(deal);
                }
                return this;
            }

            public final Deal.Builder addDealBuilder() {
                return getDealFieldBuilder().addBuilder(Deal.getDefaultInstance());
            }

            public final Deal.Builder addDealBuilder(int i) {
                return getDealFieldBuilder().addBuilder(i, Deal.getDefaultInstance());
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

            public final Builder addMetric(int i, Metric.Builder builder) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMetricIsMutable();
                    this.metric_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addMetric(int i, Metric metric) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(metric);
                    ensureMetricIsMutable();
                    this.metric_.add(i, metric);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, metric);
                }
                return this;
            }

            public final Builder addMetric(Metric.Builder builder) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMetricIsMutable();
                    this.metric_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addMetric(Metric metric) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(metric);
                    ensureMetricIsMutable();
                    this.metric_.add(metric);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(metric);
                }
                return this;
            }

            public final Metric.Builder addMetricBuilder() {
                return getMetricFieldBuilder().addBuilder(Metric.getDefaultInstance());
            }

            public final Metric.Builder addMetricBuilder(int i) {
                return getMetricFieldBuilder().addBuilder(i, Metric.getDefaultInstance());
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Item build() {
                Item buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Item buildPartial() {
                Item item = new Item(this);
                item.id_ = this.id_;
                item.qty_ = this.qty_;
                item.seq_ = this.seq_;
                item.flr_ = this.flr_;
                item.flrcur_ = this.flrcur_;
                item.exp_ = this.exp_;
                item.dt_ = this.dt_;
                item.dlvy_ = this.dlvy_;
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.metric_ = Collections.unmodifiableList(this.metric_);
                        this.bitField0_ &= -2;
                    }
                    item.metric_ = this.metric_;
                } else {
                    item.metric_ = repeatedFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV32 = this.dealBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.deal_ = Collections.unmodifiableList(this.deal_);
                        this.bitField0_ &= -3;
                    }
                    item.deal_ = this.deal_;
                } else {
                    item.deal_ = repeatedFieldBuilderV32.build();
                }
                item.private_ = this.private_;
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.specBuilder_;
                if (singleFieldBuilderV3 == null) {
                    item.spec_ = this.spec_;
                } else {
                    item.spec_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                if (singleFieldBuilderV32 == null) {
                    item.ext_ = this.ext_;
                } else {
                    item.ext_ = singleFieldBuilderV32.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV33 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV33 == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -5;
                    }
                    item.extProto_ = this.extProto_;
                } else {
                    item.extProto_ = repeatedFieldBuilderV33.build();
                }
                onBuilt();
                return item;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.id_ = "";
                this.qty_ = 0;
                this.seq_ = 0;
                this.flr_ = 0.0d;
                this.flrcur_ = "";
                this.exp_ = 0;
                this.dt_ = "";
                this.dlvy_ = 0;
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.metric_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV32 = this.dealBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    this.deal_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV32.clear();
                }
                this.private_ = false;
                if (this.specBuilder_ == null) {
                    this.spec_ = null;
                } else {
                    this.spec_ = null;
                    this.specBuilder_ = null;
                }
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV33 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV33 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -5;
                } else {
                    repeatedFieldBuilderV33.clear();
                }
                return this;
            }

            public final Builder clearDeal() {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.deal_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearDlvy() {
                this.dlvy_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearDt() {
                this.dt_ = Item.getDefaultInstance().getDt();
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
                    this.bitField0_ &= -5;
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

            public final Builder clearFlr() {
                this.flr_ = 0.0d;
                onChanged();
                return this;
            }

            public final Builder clearFlrcur() {
                this.flrcur_ = Item.getDefaultInstance().getFlrcur();
                onChanged();
                return this;
            }

            public final Builder clearId() {
                this.id_ = Item.getDefaultInstance().getId();
                onChanged();
                return this;
            }

            public final Builder clearMetric() {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.metric_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearPrivate() {
                this.private_ = false;
                onChanged();
                return this;
            }

            public final Builder clearQty() {
                this.qty_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearSeq() {
                this.seq_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearSpec() {
                if (this.specBuilder_ == null) {
                    this.spec_ = null;
                    onChanged();
                } else {
                    this.spec_ = null;
                    this.specBuilder_ = null;
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final Deal getDeal(int i) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                return repeatedFieldBuilderV3 == null ? this.deal_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Deal.Builder getDealBuilder(int i) {
                return getDealFieldBuilder().getBuilder(i);
            }

            public final List<Deal.Builder> getDealBuilderList() {
                return getDealFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getDealCount() {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                return repeatedFieldBuilderV3 == null ? this.deal_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final List<Deal> getDealList() {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.deal_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final DealOrBuilder getDealOrBuilder(int i) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                return repeatedFieldBuilderV3 == null ? this.deal_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final List<? extends DealOrBuilder> getDealOrBuilderList() {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.deal_);
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Item getDefaultInstanceForType() {
                return Item.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getDlvy() {
                return this.dlvy_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final String getDt() {
                Object obj = this.dt_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.dt_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final ByteString getDtBytes() {
                Object obj = this.dt_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.dt_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getExp() {
                return this.exp_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
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

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
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

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
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

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final double getFlr() {
                return this.flr_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final String getFlrcur() {
                Object obj = this.flrcur_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.flrcur_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final ByteString getFlrcurBytes() {
                Object obj = this.flrcur_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.flrcur_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final Metric getMetric(int i) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                return repeatedFieldBuilderV3 == null ? this.metric_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Metric.Builder getMetricBuilder(int i) {
                return getMetricFieldBuilder().getBuilder(i);
            }

            public final List<Metric.Builder> getMetricBuilderList() {
                return getMetricFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getMetricCount() {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                return repeatedFieldBuilderV3 == null ? this.metric_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final List<Metric> getMetricList() {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.metric_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final MetricOrBuilder getMetricOrBuilder(int i) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                return repeatedFieldBuilderV3 == null ? this.metric_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final List<? extends MetricOrBuilder> getMetricOrBuilderList() {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.metric_);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final boolean getPrivate() {
                return this.private_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getQty() {
                return this.qty_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final int getSeq() {
                return this.seq_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final Any getSpec() {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.specBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                Any any = this.spec_;
                Any any2 = any;
                if (any == null) {
                    any2 = Any.getDefaultInstance();
                }
                return any2;
            }

            public final Any.Builder getSpecBuilder() {
                onChanged();
                return getSpecFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final AnyOrBuilder getSpecOrBuilder() {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.specBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Any any = this.spec_;
                Any any2 = any;
                if (any == null) {
                    any2 = Any.getDefaultInstance();
                }
                return any2;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
            public final boolean hasSpec() {
                return (this.specBuilder_ == null && this.spec_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable.ensureFieldAccessorsInitialized(Item.class, Builder.class);
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
            public final com.explorestack.protobuf.openrtb.Request.Item.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Request.Item.access$7800()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.openrtb.Request$Item r0 = (com.explorestack.protobuf.openrtb.Request.Item) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.openrtb.Request$Item$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.openrtb.Request$Item r0 = (com.explorestack.protobuf.openrtb.Request.Item) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.openrtb.Request$Item$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Item.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Request$Item$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Item) {
                    return mergeFrom((Item) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Item item) {
                if (item == Item.getDefaultInstance()) {
                    return this;
                }
                if (!item.getId().isEmpty()) {
                    this.id_ = item.id_;
                    onChanged();
                }
                if (item.getQty() != 0) {
                    setQty(item.getQty());
                }
                if (item.getSeq() != 0) {
                    setSeq(item.getSeq());
                }
                if (item.getFlr() != 0.0d) {
                    setFlr(item.getFlr());
                }
                if (!item.getFlrcur().isEmpty()) {
                    this.flrcur_ = item.flrcur_;
                    onChanged();
                }
                if (item.getExp() != 0) {
                    setExp(item.getExp());
                }
                if (!item.getDt().isEmpty()) {
                    this.dt_ = item.dt_;
                    onChanged();
                }
                if (item.getDlvy() != 0) {
                    setDlvy(item.getDlvy());
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                if (this.metricBuilder_ == null) {
                    if (!item.metric_.isEmpty()) {
                        if (this.metric_.isEmpty()) {
                            this.metric_ = item.metric_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMetricIsMutable();
                            this.metric_.addAll(item.metric_);
                        }
                        onChanged();
                    }
                } else if (!item.metric_.isEmpty()) {
                    if (this.metricBuilder_.isEmpty()) {
                        this.metricBuilder_.dispose();
                        this.metricBuilder_ = null;
                        this.metric_ = item.metric_;
                        this.bitField0_ &= -2;
                        this.metricBuilder_ = Item.alwaysUseFieldBuilders ? getMetricFieldBuilder() : null;
                    } else {
                        this.metricBuilder_.addAllMessages(item.metric_);
                    }
                }
                if (this.dealBuilder_ == null) {
                    if (!item.deal_.isEmpty()) {
                        if (this.deal_.isEmpty()) {
                            this.deal_ = item.deal_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureDealIsMutable();
                            this.deal_.addAll(item.deal_);
                        }
                        onChanged();
                    }
                } else if (!item.deal_.isEmpty()) {
                    if (this.dealBuilder_.isEmpty()) {
                        this.dealBuilder_.dispose();
                        this.dealBuilder_ = null;
                        this.deal_ = item.deal_;
                        this.bitField0_ &= -3;
                        this.dealBuilder_ = Item.alwaysUseFieldBuilders ? getDealFieldBuilder() : null;
                    } else {
                        this.dealBuilder_.addAllMessages(item.deal_);
                    }
                }
                if (item.getPrivate()) {
                    setPrivate(item.getPrivate());
                }
                if (item.hasSpec()) {
                    mergeSpec(item.getSpec());
                }
                if (item.hasExt()) {
                    mergeExt(item.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!item.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = item.extProto_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(item.extProto_);
                        }
                        onChanged();
                    }
                } else if (!item.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = item.extProto_;
                        this.bitField0_ &= -5;
                        if (Item.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(item.extProto_);
                    }
                }
                mergeUnknownFields(item.unknownFields);
                onChanged();
                return this;
            }

            public final Builder mergeSpec(Any any) {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.specBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Any any2 = this.spec_;
                    if (any2 != null) {
                        this.spec_ = Any.newBuilder(any2).mergeFrom(any).buildPartial();
                    } else {
                        this.spec_ = any;
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

            public final Builder removeDeal(int i) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDealIsMutable();
                    this.deal_.remove(i);
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

            public final Builder removeMetric(int i) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMetricIsMutable();
                    this.metric_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public final Builder setDeal(int i, Deal.Builder builder) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDealIsMutable();
                    this.deal_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setDeal(int i, Deal deal) {
                RepeatedFieldBuilderV3<Deal, Deal.Builder, DealOrBuilder> repeatedFieldBuilderV3 = this.dealBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(deal);
                    ensureDealIsMutable();
                    this.deal_.set(i, deal);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, deal);
                }
                return this;
            }

            public final Builder setDlvy(int i) {
                this.dlvy_ = i;
                onChanged();
                return this;
            }

            public final Builder setDt(String str) {
                Objects.requireNonNull(str);
                this.dt_ = str;
                onChanged();
                return this;
            }

            public final Builder setDtBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Item.checkByteStringIsUtf8(byteString);
                this.dt_ = byteString;
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

            public final Builder setFlr(double d2) {
                this.flr_ = d2;
                onChanged();
                return this;
            }

            public final Builder setFlrcur(String str) {
                Objects.requireNonNull(str);
                this.flrcur_ = str;
                onChanged();
                return this;
            }

            public final Builder setFlrcurBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Item.checkByteStringIsUtf8(byteString);
                this.flrcur_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setId(String str) {
                Objects.requireNonNull(str);
                this.id_ = str;
                onChanged();
                return this;
            }

            public final Builder setIdBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Item.checkByteStringIsUtf8(byteString);
                this.id_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setMetric(int i, Metric.Builder builder) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureMetricIsMutable();
                    this.metric_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setMetric(int i, Metric metric) {
                RepeatedFieldBuilderV3<Metric, Metric.Builder, MetricOrBuilder> repeatedFieldBuilderV3 = this.metricBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(metric);
                    ensureMetricIsMutable();
                    this.metric_.set(i, metric);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, metric);
                }
                return this;
            }

            public final Builder setPrivate(boolean z) {
                this.private_ = z;
                onChanged();
                return this;
            }

            public final Builder setQty(int i) {
                this.qty_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setSeq(int i) {
                this.seq_ = i;
                onChanged();
                return this;
            }

            public final Builder setSpec(Any.Builder builder) {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.specBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.spec_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setSpec(Any any) {
                SingleFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> singleFieldBuilderV3 = this.specBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(any);
                    this.spec_ = any;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(any);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$Deal.class */
        public static final class Deal extends GeneratedMessageV3 implements DealOrBuilder {
            public static final int AT_FIELD_NUMBER = 4;
            public static final int EXT_FIELD_NUMBER = 8;
            public static final int EXT_PROTO_FIELD_NUMBER = 7;
            public static final int FLRCUR_FIELD_NUMBER = 3;
            public static final int FLR_FIELD_NUMBER = 2;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int WADOMAIN_FIELD_NUMBER = 6;
            public static final int WSEAT_FIELD_NUMBER = 5;
            private static final long serialVersionUID = 0;
            private int at_;
            private List<Any> extProto_;
            private Struct ext_;
            private double flr_;
            private volatile Object flrcur_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private LazyStringList wadomain_;
            private LazyStringList wseat_;
            private static final Deal DEFAULT_INSTANCE = new Deal();
            private static final Parser<Deal> PARSER = new AbstractParser<Deal>() { // from class: com.explorestack.protobuf.openrtb.Request.Item.Deal.1
                @Override // com.explorestack.protobuf.Parser
                public final Deal parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Deal(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$Deal$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DealOrBuilder {
                private int at_;
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private double flr_;
                private Object flrcur_;
                private Object id_;
                private LazyStringList wadomain_;
                private LazyStringList wseat_;

                private Builder() {
                    this.id_ = "";
                    this.flrcur_ = "";
                    this.wseat_ = LazyStringArrayList.EMPTY;
                    this.wadomain_ = LazyStringArrayList.EMPTY;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.id_ = "";
                    this.flrcur_ = "";
                    this.wseat_ = LazyStringArrayList.EMPTY;
                    this.wadomain_ = LazyStringArrayList.EMPTY;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 4) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 4;
                    }
                }

                private void ensureWadomainIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.wadomain_ = new LazyStringArrayList(this.wadomain_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureWseatIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.wseat_ = new LazyStringArrayList(this.wseat_);
                        this.bitField0_ |= 1;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor;
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
                        this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 4) != 0, getParentForChildren(), isClean());
                        this.extProto_ = null;
                    }
                    return this.extProtoBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (Deal.alwaysUseFieldBuilders) {
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

                public final Builder addAllWadomain(Iterable<String> iterable) {
                    ensureWadomainIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.wadomain_);
                    onChanged();
                    return this;
                }

                public final Builder addAllWseat(Iterable<String> iterable) {
                    ensureWseatIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.wseat_);
                    onChanged();
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

                public final Builder addWadomain(String str) {
                    Objects.requireNonNull(str);
                    ensureWadomainIsMutable();
                    this.wadomain_.add(str);
                    onChanged();
                    return this;
                }

                public final Builder addWadomainBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Deal.checkByteStringIsUtf8(byteString);
                    ensureWadomainIsMutable();
                    this.wadomain_.add(byteString);
                    onChanged();
                    return this;
                }

                public final Builder addWseat(String str) {
                    Objects.requireNonNull(str);
                    ensureWseatIsMutable();
                    this.wseat_.add(str);
                    onChanged();
                    return this;
                }

                public final Builder addWseatBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Deal.checkByteStringIsUtf8(byteString);
                    ensureWseatIsMutable();
                    this.wseat_.add(byteString);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Deal build() {
                    Deal buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Deal buildPartial() {
                    Deal deal = new Deal(this);
                    deal.id_ = this.id_;
                    deal.flr_ = this.flr_;
                    deal.flrcur_ = this.flrcur_;
                    deal.at_ = this.at_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.wseat_ = this.wseat_.getUnmodifiableView();
                        this.bitField0_ &= -2;
                    }
                    deal.wseat_ = this.wseat_;
                    if ((this.bitField0_ & 2) != 0) {
                        this.wadomain_ = this.wadomain_.getUnmodifiableView();
                        this.bitField0_ &= -3;
                    }
                    deal.wadomain_ = this.wadomain_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        deal.ext_ = this.ext_;
                    } else {
                        deal.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 4) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -5;
                        }
                        deal.extProto_ = this.extProto_;
                    } else {
                        deal.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return deal;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.id_ = "";
                    this.flr_ = 0.0d;
                    this.flrcur_ = "";
                    this.at_ = 0;
                    this.wseat_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -2;
                    this.wadomain_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -3;
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -5;
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                public final Builder clearAt() {
                    this.at_ = 0;
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
                        this.bitField0_ &= -5;
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

                public final Builder clearFlr() {
                    this.flr_ = 0.0d;
                    onChanged();
                    return this;
                }

                public final Builder clearFlrcur() {
                    this.flrcur_ = Deal.getDefaultInstance().getFlrcur();
                    onChanged();
                    return this;
                }

                public final Builder clearId() {
                    this.id_ = Deal.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearWadomain() {
                    this.wadomain_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -3;
                    onChanged();
                    return this;
                }

                public final Builder clearWseat() {
                    this.wseat_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final int getAt() {
                    return this.at_;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Deal getDefaultInstanceForType() {
                    return Deal.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
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

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
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

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
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

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final double getFlr() {
                    return this.flr_;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final String getFlrcur() {
                    Object obj = this.flrcur_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.flrcur_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final ByteString getFlrcurBytes() {
                    Object obj = this.flrcur_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.flrcur_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final String getWadomain(int i) {
                    return (String) this.wadomain_.get(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final ByteString getWadomainBytes(int i) {
                    return this.wadomain_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final int getWadomainCount() {
                    return this.wadomain_.size();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final ProtocolStringList getWadomainList() {
                    return this.wadomain_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final String getWseat(int i) {
                    return (String) this.wseat_.get(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final ByteString getWseatBytes(int i) {
                    return this.wseat_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final int getWseatCount() {
                    return this.wseat_.size();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final ProtocolStringList getWseatList() {
                    return this.wseat_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_fieldAccessorTable.ensureFieldAccessorsInitialized(Deal.class, Builder.class);
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
                public final com.explorestack.protobuf.openrtb.Request.Item.Deal.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Request.Item.Deal.access$5000()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.openrtb.Request$Item$Deal r0 = (com.explorestack.protobuf.openrtb.Request.Item.Deal) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.openrtb.Request$Item$Deal$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.openrtb.Request$Item$Deal r0 = (com.explorestack.protobuf.openrtb.Request.Item.Deal) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.openrtb.Request$Item$Deal$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Item.Deal.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Request$Item$Deal$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Deal) {
                        return mergeFrom((Deal) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Deal deal) {
                    if (deal == Deal.getDefaultInstance()) {
                        return this;
                    }
                    if (!deal.getId().isEmpty()) {
                        this.id_ = deal.id_;
                        onChanged();
                    }
                    if (deal.getFlr() != 0.0d) {
                        setFlr(deal.getFlr());
                    }
                    if (!deal.getFlrcur().isEmpty()) {
                        this.flrcur_ = deal.flrcur_;
                        onChanged();
                    }
                    if (deal.getAt() != 0) {
                        setAt(deal.getAt());
                    }
                    if (!deal.wseat_.isEmpty()) {
                        if (this.wseat_.isEmpty()) {
                            this.wseat_ = deal.wseat_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureWseatIsMutable();
                            this.wseat_.addAll(deal.wseat_);
                        }
                        onChanged();
                    }
                    if (!deal.wadomain_.isEmpty()) {
                        if (this.wadomain_.isEmpty()) {
                            this.wadomain_ = deal.wadomain_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureWadomainIsMutable();
                            this.wadomain_.addAll(deal.wadomain_);
                        }
                        onChanged();
                    }
                    if (deal.hasExt()) {
                        mergeExt(deal.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!deal.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = deal.extProto_;
                                this.bitField0_ &= -5;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(deal.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!deal.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = deal.extProto_;
                            this.bitField0_ &= -5;
                            if (Deal.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(deal.extProto_);
                        }
                    }
                    mergeUnknownFields(deal.unknownFields);
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

                public final Builder setAt(int i) {
                    this.at_ = i;
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

                public final Builder setFlr(double d2) {
                    this.flr_ = d2;
                    onChanged();
                    return this;
                }

                public final Builder setFlrcur(String str) {
                    Objects.requireNonNull(str);
                    this.flrcur_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setFlrcurBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Deal.checkByteStringIsUtf8(byteString);
                    this.flrcur_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setId(String str) {
                    Objects.requireNonNull(str);
                    this.id_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setIdBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Deal.checkByteStringIsUtf8(byteString);
                    this.id_ = byteString;
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

                public final Builder setWadomain(int i, String str) {
                    Objects.requireNonNull(str);
                    ensureWadomainIsMutable();
                    this.wadomain_.set(i, str);
                    onChanged();
                    return this;
                }

                public final Builder setWseat(int i, String str) {
                    Objects.requireNonNull(str);
                    ensureWseatIsMutable();
                    this.wseat_.set(i, str);
                    onChanged();
                    return this;
                }
            }

            private Deal() {
                this.memoizedIsInitialized = (byte) (-1);
                this.id_ = "";
                this.flrcur_ = "";
                this.wseat_ = LazyStringArrayList.EMPTY;
                this.wadomain_ = LazyStringArrayList.EMPTY;
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Deal(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                } else if (readTag == 17) {
                                    this.flr_ = codedInputStream.readDouble();
                                } else if (readTag == 26) {
                                    this.flrcur_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 32) {
                                    this.at_ = codedInputStream.readUInt32();
                                } else if (readTag == 42) {
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    i = i;
                                    if ((i & 1) == 0) {
                                        this.wseat_ = new LazyStringArrayList();
                                        i |= 1;
                                    }
                                    this.wseat_.add(readStringRequireUtf8);
                                } else if (readTag == 50) {
                                    String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.wadomain_ = new LazyStringArrayList();
                                        i |= 2;
                                    }
                                    this.wadomain_.add(readStringRequireUtf82);
                                } else if (readTag == 58) {
                                    i = i;
                                    if ((i & 4) == 0) {
                                        this.extProto_ = new ArrayList();
                                        i |= 4;
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
                            this.wseat_ = this.wseat_.getUnmodifiableView();
                        }
                        if ((i & 2) != 0) {
                            this.wadomain_ = this.wadomain_.getUnmodifiableView();
                        }
                        if ((i & 4) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private Deal(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Deal getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Deal deal) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(deal);
            }

            public static Deal parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Deal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Deal parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Deal) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Deal parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Deal parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Deal parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Deal parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Deal parseFrom(InputStream inputStream) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Deal parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Deal) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Deal parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Deal parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Deal parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Deal parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Deal> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Deal)) {
                    return super.equals(obj);
                }
                Deal deal = (Deal) obj;
                if (getId().equals(deal.getId()) && Double.doubleToLongBits(getFlr()) == Double.doubleToLongBits(deal.getFlr()) && getFlrcur().equals(deal.getFlrcur()) && getAt() == deal.getAt() && getWseatList().equals(deal.getWseatList()) && getWadomainList().equals(deal.getWadomainList()) && hasExt() == deal.hasExt()) {
                    return (!hasExt() || getExt().equals(deal.getExt())) && getExtProtoList().equals(deal.getExtProtoList()) && this.unknownFields.equals(deal.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final int getAt() {
                return this.at_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Deal getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final double getFlr() {
                return this.flr_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final String getFlrcur() {
                Object obj = this.flrcur_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.flrcur_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final ByteString getFlrcurBytes() {
                Object obj = this.flrcur_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.flrcur_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final ByteString getIdBytes() {
                Object obj = this.id_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.id_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Deal> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                double d2 = this.flr_;
                int i2 = computeStringSize;
                if (d2 != 0.0d) {
                    i2 = computeStringSize + CodedOutputStream.computeDoubleSize(2, d2);
                }
                int i3 = i2;
                if (!getFlrcurBytes().isEmpty()) {
                    i3 = i2 + GeneratedMessageV3.computeStringSize(3, this.flrcur_);
                }
                int i4 = this.at_;
                int i5 = i3;
                if (i4 != 0) {
                    i5 = i3 + CodedOutputStream.computeUInt32Size(4, i4);
                }
                int i6 = 0;
                for (int i7 = 0; i7 < this.wseat_.size(); i7++) {
                    i6 += computeStringSizeNoTag(this.wseat_.getRaw(i7));
                }
                int size = getWseatList().size();
                int i8 = 0;
                for (int i9 = 0; i9 < this.wadomain_.size(); i9++) {
                    i8 += computeStringSizeNoTag(this.wadomain_.getRaw(i9));
                }
                int size2 = i5 + i6 + (size * 1) + i8 + (getWadomainList().size() * 1);
                for (int i10 = 0; i10 < this.extProto_.size(); i10++) {
                    size2 += CodedOutputStream.computeMessageSize(7, this.extProto_.get(i10));
                }
                int i11 = size2;
                if (this.ext_ != null) {
                    i11 = size2 + CodedOutputStream.computeMessageSize(8, getExt());
                }
                int serializedSize = i11 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final String getWadomain(int i) {
                return (String) this.wadomain_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final ByteString getWadomainBytes(int i) {
                return this.wadomain_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final int getWadomainCount() {
                return this.wadomain_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final ProtocolStringList getWadomainList() {
                return this.wadomain_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final String getWseat(int i) {
                return (String) this.wseat_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final ByteString getWseatBytes(int i) {
                return this.wseat_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final int getWseatCount() {
                return this.wseat_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final ProtocolStringList getWseatList() {
                return this.wseat_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.DealOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + Internal.hashLong(Double.doubleToLongBits(getFlr()))) * 37) + 3) * 53) + getFlrcur().hashCode()) * 37) + 4) * 53) + getAt();
                int i = hashCode;
                if (getWseatCount() > 0) {
                    i = (((hashCode * 37) + 5) * 53) + getWseatList().hashCode();
                }
                int i2 = i;
                if (getWadomainCount() > 0) {
                    i2 = (((i * 37) + 6) * 53) + getWadomainList().hashCode();
                }
                int i3 = i2;
                if (hasExt()) {
                    i3 = (((i2 * 37) + 8) * 53) + getExt().hashCode();
                }
                int i4 = i3;
                if (getExtProtoCount() > 0) {
                    i4 = (((i3 * 37) + 7) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_fieldAccessorTable.ensureFieldAccessorsInitialized(Deal.class, Builder.class);
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
                return new Deal();
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
                double d2 = this.flr_;
                if (d2 != 0.0d) {
                    codedOutputStream.writeDouble(2, d2);
                }
                if (!getFlrcurBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.flrcur_);
                }
                int i = this.at_;
                if (i != 0) {
                    codedOutputStream.writeUInt32(4, i);
                }
                for (int i2 = 0; i2 < this.wseat_.size(); i2++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 5, this.wseat_.getRaw(i2));
                }
                for (int i3 = 0; i3 < this.wadomain_.size(); i3++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.wadomain_.getRaw(i3));
                }
                for (int i4 = 0; i4 < this.extProto_.size(); i4++) {
                    codedOutputStream.writeMessage(7, this.extProto_.get(i4));
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(8, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder.class */
        public interface DealOrBuilder extends MessageOrBuilder {
            int getAt();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            double getFlr();

            String getFlrcur();

            ByteString getFlrcurBytes();

            String getId();

            ByteString getIdBytes();

            String getWadomain(int i);

            ByteString getWadomainBytes(int i);

            int getWadomainCount();

            List<String> getWadomainList();

            String getWseat(int i);

            ByteString getWseatBytes(int i);

            int getWseatCount();

            List<String> getWseatList();

            boolean hasExt();
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$Metric.class */
        public static final class Metric extends GeneratedMessageV3 implements MetricOrBuilder {
            public static final int EXT_FIELD_NUMBER = 5;
            public static final int EXT_PROTO_FIELD_NUMBER = 4;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int VALUE_FIELD_NUMBER = 2;
            public static final int VENDOR_FIELD_NUMBER = 3;
            private static final long serialVersionUID = 0;
            private List<Any> extProto_;
            private Struct ext_;
            private byte memoizedIsInitialized;
            private volatile Object type_;
            private float value_;
            private volatile Object vendor_;
            private static final Metric DEFAULT_INSTANCE = new Metric();
            private static final Parser<Metric> PARSER = new AbstractParser<Metric>() { // from class: com.explorestack.protobuf.openrtb.Request.Item.Metric.1
                @Override // com.explorestack.protobuf.Parser
                public final Metric parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Metric(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$Metric$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements MetricOrBuilder {
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object type_;
                private float value_;
                private Object vendor_;

                private Builder() {
                    this.type_ = "";
                    this.vendor_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.type_ = "";
                    this.vendor_ = "";
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
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor;
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
                    if (Metric.alwaysUseFieldBuilders) {
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
                public final Metric build() {
                    Metric buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Metric buildPartial() {
                    Metric metric = new Metric(this);
                    metric.type_ = this.type_;
                    metric.value_ = this.value_;
                    metric.vendor_ = this.vendor_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        metric.ext_ = this.ext_;
                    } else {
                        metric.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        metric.extProto_ = this.extProto_;
                    } else {
                        metric.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return metric;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.type_ = "";
                    this.value_ = BitmapDescriptorFactory.HUE_RED;
                    this.vendor_ = "";
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

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearType() {
                    this.type_ = Metric.getDefaultInstance().getType();
                    onChanged();
                    return this;
                }

                public final Builder clearValue() {
                    this.value_ = BitmapDescriptorFactory.HUE_RED;
                    onChanged();
                    return this;
                }

                public final Builder clearVendor() {
                    this.vendor_ = Metric.getDefaultInstance().getVendor();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Metric getDefaultInstanceForType() {
                    return Metric.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
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

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
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

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
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

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final String getType() {
                    Object obj = this.type_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.type_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final ByteString getTypeBytes() {
                    Object obj = this.type_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.type_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final float getValue() {
                    return this.value_;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final String getVendor() {
                    Object obj = this.vendor_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.vendor_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final ByteString getVendorBytes() {
                    Object obj = this.vendor_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.vendor_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_fieldAccessorTable.ensureFieldAccessorsInitialized(Metric.class, Builder.class);
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
                public final com.explorestack.protobuf.openrtb.Request.Item.Metric.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Request.Item.Metric.access$3200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.openrtb.Request$Item$Metric r0 = (com.explorestack.protobuf.openrtb.Request.Item.Metric) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.openrtb.Request$Item$Metric$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.openrtb.Request$Item$Metric r0 = (com.explorestack.protobuf.openrtb.Request.Item.Metric) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.openrtb.Request$Item$Metric$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Item.Metric.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Request$Item$Metric$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Metric) {
                        return mergeFrom((Metric) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Metric metric) {
                    if (metric == Metric.getDefaultInstance()) {
                        return this;
                    }
                    if (!metric.getType().isEmpty()) {
                        this.type_ = metric.type_;
                        onChanged();
                    }
                    if (metric.getValue() != BitmapDescriptorFactory.HUE_RED) {
                        setValue(metric.getValue());
                    }
                    if (!metric.getVendor().isEmpty()) {
                        this.vendor_ = metric.vendor_;
                        onChanged();
                    }
                    if (metric.hasExt()) {
                        mergeExt(metric.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!metric.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = metric.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(metric.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!metric.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = metric.extProto_;
                            this.bitField0_ &= -2;
                            if (Metric.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(metric.extProto_);
                        }
                    }
                    mergeUnknownFields(metric.unknownFields);
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

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                }

                public final Builder setType(String str) {
                    Objects.requireNonNull(str);
                    this.type_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setTypeBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Metric.checkByteStringIsUtf8(byteString);
                    this.type_ = byteString;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.setUnknownFields(unknownFieldSet);
                }

                public final Builder setValue(float f) {
                    this.value_ = f;
                    onChanged();
                    return this;
                }

                public final Builder setVendor(String str) {
                    Objects.requireNonNull(str);
                    this.vendor_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setVendorBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Metric.checkByteStringIsUtf8(byteString);
                    this.vendor_ = byteString;
                    onChanged();
                    return this;
                }
            }

            private Metric() {
                this.memoizedIsInitialized = (byte) (-1);
                this.type_ = "";
                this.vendor_ = "";
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Metric(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.type_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 21) {
                                    this.value_ = codedInputStream.readFloat();
                                } else if (readTag == 26) {
                                    this.vendor_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 34) {
                                    z2 = z2;
                                    if (!z2 || !true) {
                                        this.extProto_ = new ArrayList();
                                        z2 |= true;
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
                        if (z2 && true) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private Metric(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Metric getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Metric metric) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(metric);
            }

            public static Metric parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Metric parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Metric) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Metric parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Metric parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Metric parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Metric parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Metric parseFrom(InputStream inputStream) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Metric parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Metric) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Metric parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Metric parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Metric parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Metric parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Metric> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Metric)) {
                    return super.equals(obj);
                }
                Metric metric = (Metric) obj;
                if (getType().equals(metric.getType()) && Float.floatToIntBits(getValue()) == Float.floatToIntBits(metric.getValue()) && getVendor().equals(metric.getVendor()) && hasExt() == metric.hasExt()) {
                    return (!hasExt() || getExt().equals(metric.getExt())) && getExtProtoList().equals(metric.getExtProtoList()) && this.unknownFields.equals(metric.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Metric getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Metric> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getTypeBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.type_) + 0 : 0;
                float f = this.value_;
                int i2 = computeStringSize;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    i2 = computeStringSize + CodedOutputStream.computeFloatSize(2, f);
                }
                int i3 = i2;
                int i4 = 0;
                if (!getVendorBytes().isEmpty()) {
                    i3 = i2 + GeneratedMessageV3.computeStringSize(3, this.vendor_);
                    i4 = 0;
                }
                while (i4 < this.extProto_.size()) {
                    i3 += CodedOutputStream.computeMessageSize(4, this.extProto_.get(i4));
                    i4++;
                }
                int i5 = i3;
                if (this.ext_ != null) {
                    i5 = i3 + CodedOutputStream.computeMessageSize(5, getExt());
                }
                int serializedSize = i5 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final String getType() {
                Object obj = this.type_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.type_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final ByteString getTypeBytes() {
                Object obj = this.type_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.type_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final float getValue() {
                return this.value_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final String getVendor() {
                Object obj = this.vendor_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.vendor_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final ByteString getVendorBytes() {
                Object obj = this.vendor_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.vendor_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.Item.MetricOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getType().hashCode()) * 37) + 2) * 53) + Float.floatToIntBits(getValue())) * 37) + 3) * 53) + getVendor().hashCode();
                int i = hashCode;
                if (hasExt()) {
                    i = (((hashCode * 37) + 5) * 53) + getExt().hashCode();
                }
                int i2 = i;
                if (getExtProtoCount() > 0) {
                    i2 = (((i * 37) + 4) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_fieldAccessorTable.ensureFieldAccessorsInitialized(Metric.class, Builder.class);
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
                return new Metric();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getTypeBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.type_);
                }
                float f = this.value_;
                if (f != BitmapDescriptorFactory.HUE_RED) {
                    codedOutputStream.writeFloat(2, f);
                }
                if (!getVendorBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 3, this.vendor_);
                }
                for (int i = 0; i < this.extProto_.size(); i++) {
                    codedOutputStream.writeMessage(4, this.extProto_.get(i));
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(5, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Item$MetricOrBuilder.class */
        public interface MetricOrBuilder extends MessageOrBuilder {
            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getType();

            ByteString getTypeBytes();

            float getValue();

            String getVendor();

            ByteString getVendorBytes();

            boolean hasExt();
        }

        private Item() {
            this.memoizedIsInitialized = (byte) (-1);
            this.id_ = "";
            this.flrcur_ = "";
            this.dt_ = "";
            this.metric_ = Collections.emptyList();
            this.deal_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Item(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                            case 16:
                                this.qty_ = codedInputStream.readUInt32();
                                continue;
                            case 24:
                                this.seq_ = codedInputStream.readUInt32();
                                continue;
                            case 33:
                                this.flr_ = codedInputStream.readDouble();
                                continue;
                            case 50:
                                this.flrcur_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 56:
                                this.exp_ = codedInputStream.readUInt32();
                                continue;
                            case 66:
                                this.dt_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 72:
                                this.dlvy_ = codedInputStream.readUInt32();
                                continue;
                            case 82:
                                i = i;
                                if ((i & 1) == 0) {
                                    this.metric_ = new ArrayList();
                                    i |= 1;
                                }
                                this.metric_.add(codedInputStream.readMessage(Metric.parser(), extensionRegistryLite));
                                continue;
                            case 90:
                                i = i;
                                if ((i & 2) == 0) {
                                    this.deal_ = new ArrayList();
                                    i |= 2;
                                }
                                this.deal_.add(codedInputStream.readMessage(Deal.parser(), extensionRegistryLite));
                                continue;
                            case 96:
                                this.private_ = codedInputStream.readBool();
                                continue;
                            case 106:
                                Any any = this.spec_;
                                builder = any != null ? any.toBuilder() : builder;
                                Any any2 = (Any) codedInputStream.readMessage(Any.parser(), extensionRegistryLite);
                                this.spec_ = any2;
                                if (builder != null) {
                                    builder.mergeFrom(any2);
                                    this.spec_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 114:
                                i = i;
                                if ((i & 4) == 0) {
                                    this.extProto_ = new ArrayList();
                                    i |= 4;
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
                        this.metric_ = Collections.unmodifiableList(this.metric_);
                    }
                    if ((i & 2) != 0) {
                        this.deal_ = Collections.unmodifiableList(this.deal_);
                    }
                    if ((i & 4) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Item(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Item getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Item item) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(item);
        }

        public static Item parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Item) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Item parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Item) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Item parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Item parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Item parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Item parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Item parseFrom(InputStream inputStream) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Item parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Item) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Item parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Item parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Item parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Item parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Item> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Item)) {
                return super.equals(obj);
            }
            Item item = (Item) obj;
            if (!getId().equals(item.getId()) || getQty() != item.getQty() || getSeq() != item.getSeq() || Double.doubleToLongBits(getFlr()) != Double.doubleToLongBits(item.getFlr()) || !getFlrcur().equals(item.getFlrcur()) || getExp() != item.getExp() || !getDt().equals(item.getDt()) || getDlvy() != item.getDlvy() || !getMetricList().equals(item.getMetricList()) || !getDealList().equals(item.getDealList()) || getPrivate() != item.getPrivate() || hasSpec() != item.hasSpec()) {
                return false;
            }
            if ((!hasSpec() || getSpec().equals(item.getSpec())) && hasExt() == item.hasExt()) {
                return (!hasExt() || getExt().equals(item.getExt())) && getExtProtoList().equals(item.getExtProtoList()) && this.unknownFields.equals(item.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final Deal getDeal(int i) {
            return this.deal_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getDealCount() {
            return this.deal_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final List<Deal> getDealList() {
            return this.deal_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final DealOrBuilder getDealOrBuilder(int i) {
            return this.deal_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final List<? extends DealOrBuilder> getDealOrBuilderList() {
            return this.deal_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Item getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getDlvy() {
            return this.dlvy_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final String getDt() {
            Object obj = this.dt_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.dt_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final ByteString getDtBytes() {
            Object obj = this.dt_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.dt_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getExp() {
            return this.exp_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final double getFlr() {
            return this.flr_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final String getFlrcur() {
            Object obj = this.flrcur_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.flrcur_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final ByteString getFlrcurBytes() {
            Object obj = this.flrcur_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.flrcur_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final Metric getMetric(int i) {
            return this.metric_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getMetricCount() {
            return this.metric_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final List<Metric> getMetricList() {
            return this.metric_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final MetricOrBuilder getMetricOrBuilder(int i) {
            return this.metric_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final List<? extends MetricOrBuilder> getMetricOrBuilderList() {
            return this.metric_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Item> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final boolean getPrivate() {
            return this.private_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getQty() {
            return this.qty_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final int getSeq() {
            return this.seq_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
            int i2 = this.qty_;
            int i3 = computeStringSize;
            if (i2 != 0) {
                i3 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i2);
            }
            int i4 = this.seq_;
            int i5 = i3;
            if (i4 != 0) {
                i5 = i3 + CodedOutputStream.computeUInt32Size(3, i4);
            }
            double d2 = this.flr_;
            int i6 = i5;
            if (d2 != 0.0d) {
                i6 = i5 + CodedOutputStream.computeDoubleSize(4, d2);
            }
            int i7 = i6;
            if (!getFlrcurBytes().isEmpty()) {
                i7 = i6 + GeneratedMessageV3.computeStringSize(6, this.flrcur_);
            }
            int i8 = this.exp_;
            int i9 = i7;
            if (i8 != 0) {
                i9 = i7 + CodedOutputStream.computeUInt32Size(7, i8);
            }
            int i10 = i9;
            if (!getDtBytes().isEmpty()) {
                i10 = i9 + GeneratedMessageV3.computeStringSize(8, this.dt_);
            }
            int i11 = this.dlvy_;
            int i12 = i10;
            if (i11 != 0) {
                i12 = i10 + CodedOutputStream.computeUInt32Size(9, i11);
            }
            for (int i13 = 0; i13 < this.metric_.size(); i13++) {
                i12 += CodedOutputStream.computeMessageSize(10, this.metric_.get(i13));
            }
            for (int i14 = 0; i14 < this.deal_.size(); i14++) {
                i12 += CodedOutputStream.computeMessageSize(11, this.deal_.get(i14));
            }
            boolean z = this.private_;
            int i15 = i12;
            if (z) {
                i15 = i12 + CodedOutputStream.computeBoolSize(12, z);
            }
            int i16 = i15;
            int i17 = 0;
            if (this.spec_ != null) {
                i16 = i15 + CodedOutputStream.computeMessageSize(13, getSpec());
                i17 = 0;
            }
            while (i17 < this.extProto_.size()) {
                i16 += CodedOutputStream.computeMessageSize(14, this.extProto_.get(i17));
                i17++;
            }
            int i18 = i16;
            if (this.ext_ != null) {
                i18 = i16 + CodedOutputStream.computeMessageSize(15, getExt());
            }
            int serializedSize = i18 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final Any getSpec() {
            Any any = this.spec_;
            Any any2 = any;
            if (any == null) {
                any2 = Any.getDefaultInstance();
            }
            return any2;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final AnyOrBuilder getSpecOrBuilder() {
            return getSpec();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.ItemOrBuilder
        public final boolean hasSpec() {
            return this.spec_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getQty()) * 37) + 3) * 53) + getSeq()) * 37) + 4) * 53) + Internal.hashLong(Double.doubleToLongBits(getFlr()))) * 37) + 6) * 53) + getFlrcur().hashCode()) * 37) + 7) * 53) + getExp()) * 37) + 8) * 53) + getDt().hashCode()) * 37) + 9) * 53) + getDlvy();
            int i = hashCode;
            if (getMetricCount() > 0) {
                i = (((hashCode * 37) + 10) * 53) + getMetricList().hashCode();
            }
            int i2 = i;
            if (getDealCount() > 0) {
                i2 = (((i * 37) + 11) * 53) + getDealList().hashCode();
            }
            int hashBoolean = (((i2 * 37) + 12) * 53) + Internal.hashBoolean(getPrivate());
            int i3 = hashBoolean;
            if (hasSpec()) {
                i3 = (((hashBoolean * 37) + 13) * 53) + getSpec().hashCode();
            }
            int i4 = i3;
            if (hasExt()) {
                i4 = (((i3 * 37) + 15) * 53) + getExt().hashCode();
            }
            int i5 = i4;
            if (getExtProtoCount() > 0) {
                i5 = (((i4 * 37) + 14) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i5 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable.ensureFieldAccessorsInitialized(Item.class, Builder.class);
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
            return new Item();
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
            int i = this.qty_;
            if (i != 0) {
                codedOutputStream.writeUInt32(2, i);
            }
            int i2 = this.seq_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(3, i2);
            }
            double d2 = this.flr_;
            if (d2 != 0.0d) {
                codedOutputStream.writeDouble(4, d2);
            }
            if (!getFlrcurBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.flrcur_);
            }
            int i3 = this.exp_;
            if (i3 != 0) {
                codedOutputStream.writeUInt32(7, i3);
            }
            if (!getDtBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.dt_);
            }
            int i4 = this.dlvy_;
            if (i4 != 0) {
                codedOutputStream.writeUInt32(9, i4);
            }
            for (int i5 = 0; i5 < this.metric_.size(); i5++) {
                codedOutputStream.writeMessage(10, this.metric_.get(i5));
            }
            for (int i6 = 0; i6 < this.deal_.size(); i6++) {
                codedOutputStream.writeMessage(11, this.deal_.get(i6));
            }
            boolean z = this.private_;
            if (z) {
                codedOutputStream.writeBool(12, z);
            }
            int i7 = 0;
            if (this.spec_ != null) {
                codedOutputStream.writeMessage(13, getSpec());
                i7 = 0;
            }
            while (i7 < this.extProto_.size()) {
                codedOutputStream.writeMessage(14, this.extProto_.get(i7));
                i7++;
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(15, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$ItemOrBuilder.class */
    public interface ItemOrBuilder extends MessageOrBuilder {
        Item.Deal getDeal(int i);

        int getDealCount();

        List<Item.Deal> getDealList();

        Item.DealOrBuilder getDealOrBuilder(int i);

        List<? extends Item.DealOrBuilder> getDealOrBuilderList();

        int getDlvy();

        String getDt();

        ByteString getDtBytes();

        int getExp();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        double getFlr();

        String getFlrcur();

        ByteString getFlrcurBytes();

        String getId();

        ByteString getIdBytes();

        Item.Metric getMetric(int i);

        int getMetricCount();

        List<Item.Metric> getMetricList();

        Item.MetricOrBuilder getMetricOrBuilder(int i);

        List<? extends Item.MetricOrBuilder> getMetricOrBuilderList();

        boolean getPrivate();

        int getQty();

        int getSeq();

        Any getSpec();

        AnyOrBuilder getSpecOrBuilder();

        boolean hasExt();

        boolean hasSpec();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Source.class */
    public static final class Source extends GeneratedMessageV3 implements SourceOrBuilder {
        public static final int CERT_FIELD_NUMBER = 5;
        public static final int DIGEST_FIELD_NUMBER = 4;
        public static final int DSGVER_FIELD_NUMBER = 3;
        public static final int DS_FIELD_NUMBER = 2;
        public static final int EXT_FIELD_NUMBER = 8;
        public static final int EXT_PROTO_FIELD_NUMBER = 7;
        public static final int PCHAIN_FIELD_NUMBER = 6;
        public static final int TID_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private volatile Object cert_;
        private volatile Object digest_;
        private volatile Object ds_;
        private int dsgver_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private volatile Object pchain_;
        private volatile Object tid_;
        private static final Source DEFAULT_INSTANCE = new Source();
        private static final Parser<Source> PARSER = new AbstractParser<Source>() { // from class: com.explorestack.protobuf.openrtb.Request.Source.1
            @Override // com.explorestack.protobuf.Parser
            public final Source parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Source(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$Source$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SourceOrBuilder {
            private int bitField0_;
            private Object cert_;
            private Object digest_;
            private Object ds_;
            private int dsgver_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private Object pchain_;
            private Object tid_;

            private Builder() {
                this.tid_ = "";
                this.ds_ = "";
                this.digest_ = "";
                this.cert_ = "";
                this.pchain_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.tid_ = "";
                this.ds_ = "";
                this.digest_ = "";
                this.cert_ = "";
                this.pchain_ = "";
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
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor;
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
                if (Source.alwaysUseFieldBuilders) {
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
            public final Source build() {
                Source buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Source buildPartial() {
                Source source = new Source(this);
                source.tid_ = this.tid_;
                source.ds_ = this.ds_;
                source.dsgver_ = this.dsgver_;
                source.digest_ = this.digest_;
                source.cert_ = this.cert_;
                source.pchain_ = this.pchain_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    source.ext_ = this.ext_;
                } else {
                    source.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 1) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -2;
                    }
                    source.extProto_ = this.extProto_;
                } else {
                    source.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return source;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.tid_ = "";
                this.ds_ = "";
                this.dsgver_ = 0;
                this.digest_ = "";
                this.cert_ = "";
                this.pchain_ = "";
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

            public final Builder clearCert() {
                this.cert_ = Source.getDefaultInstance().getCert();
                onChanged();
                return this;
            }

            public final Builder clearDigest() {
                this.digest_ = Source.getDefaultInstance().getDigest();
                onChanged();
                return this;
            }

            public final Builder clearDs() {
                this.ds_ = Source.getDefaultInstance().getDs();
                onChanged();
                return this;
            }

            public final Builder clearDsgver() {
                this.dsgver_ = 0;
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

            public final Builder clearPchain() {
                this.pchain_ = Source.getDefaultInstance().getPchain();
                onChanged();
                return this;
            }

            public final Builder clearTid() {
                this.tid_ = Source.getDefaultInstance().getTid();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final String getCert() {
                Object obj = this.cert_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.cert_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final ByteString getCertBytes() {
                Object obj = this.cert_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.cert_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Source getDefaultInstanceForType() {
                return Source.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final String getDigest() {
                Object obj = this.digest_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.digest_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final ByteString getDigestBytes() {
                Object obj = this.digest_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.digest_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final String getDs() {
                Object obj = this.ds_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.ds_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final ByteString getDsBytes() {
                Object obj = this.ds_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.ds_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final int getDsgver() {
                return this.dsgver_;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
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

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
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

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
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

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final String getPchain() {
                Object obj = this.pchain_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.pchain_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final ByteString getPchainBytes() {
                Object obj = this.pchain_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.pchain_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final String getTid() {
                Object obj = this.tid_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.tid_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final ByteString getTidBytes() {
                Object obj = this.tid_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.tid_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable.ensureFieldAccessorsInitialized(Source.class, Builder.class);
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
            public final com.explorestack.protobuf.openrtb.Request.Source.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.openrtb.Request.Source.access$1400()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.openrtb.Request$Source r0 = (com.explorestack.protobuf.openrtb.Request.Source) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.openrtb.Request$Source$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.openrtb.Request$Source r0 = (com.explorestack.protobuf.openrtb.Request.Source) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.openrtb.Request$Source$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.openrtb.Request.Source.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.openrtb.Request$Source$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Source) {
                    return mergeFrom((Source) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Source source) {
                if (source == Source.getDefaultInstance()) {
                    return this;
                }
                if (!source.getTid().isEmpty()) {
                    this.tid_ = source.tid_;
                    onChanged();
                }
                if (!source.getDs().isEmpty()) {
                    this.ds_ = source.ds_;
                    onChanged();
                }
                if (source.getDsgver() != 0) {
                    setDsgver(source.getDsgver());
                }
                if (!source.getDigest().isEmpty()) {
                    this.digest_ = source.digest_;
                    onChanged();
                }
                if (!source.getCert().isEmpty()) {
                    this.cert_ = source.cert_;
                    onChanged();
                }
                if (!source.getPchain().isEmpty()) {
                    this.pchain_ = source.pchain_;
                    onChanged();
                }
                if (source.hasExt()) {
                    mergeExt(source.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!source.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = source.extProto_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(source.extProto_);
                        }
                        onChanged();
                    }
                } else if (!source.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = source.extProto_;
                        this.bitField0_ &= -2;
                        if (Source.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(source.extProto_);
                    }
                }
                mergeUnknownFields(source.unknownFields);
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

            public final Builder setCert(String str) {
                Objects.requireNonNull(str);
                this.cert_ = str;
                onChanged();
                return this;
            }

            public final Builder setCertBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Source.checkByteStringIsUtf8(byteString);
                this.cert_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setDigest(String str) {
                Objects.requireNonNull(str);
                this.digest_ = str;
                onChanged();
                return this;
            }

            public final Builder setDigestBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Source.checkByteStringIsUtf8(byteString);
                this.digest_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setDs(String str) {
                Objects.requireNonNull(str);
                this.ds_ = str;
                onChanged();
                return this;
            }

            public final Builder setDsBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Source.checkByteStringIsUtf8(byteString);
                this.ds_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setDsgver(int i) {
                this.dsgver_ = i;
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

            public final Builder setPchain(String str) {
                Objects.requireNonNull(str);
                this.pchain_ = str;
                onChanged();
                return this;
            }

            public final Builder setPchainBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Source.checkByteStringIsUtf8(byteString);
                this.pchain_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setTid(String str) {
                Objects.requireNonNull(str);
                this.tid_ = str;
                onChanged();
                return this;
            }

            public final Builder setTidBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Source.checkByteStringIsUtf8(byteString);
                this.tid_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        private Source() {
            this.memoizedIsInitialized = (byte) (-1);
            this.tid_ = "";
            this.ds_ = "";
            this.digest_ = "";
            this.cert_ = "";
            this.pchain_ = "";
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Source(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.tid_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 18) {
                                this.ds_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 24) {
                                this.dsgver_ = codedInputStream.readUInt32();
                            } else if (readTag == 34) {
                                this.digest_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                this.cert_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 50) {
                                this.pchain_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 58) {
                                z2 = z2;
                                if (!z2 || !true) {
                                    this.extProto_ = new ArrayList();
                                    z2 |= true;
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
                    if (z2 && true) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Source(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Source getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Source source) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(source);
        }

        public static Source parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Source) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Source parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Source) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Source parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Source parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Source parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Source parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Source parseFrom(InputStream inputStream) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Source parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Source) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Source parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Source parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Source parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Source parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Source> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Source)) {
                return super.equals(obj);
            }
            Source source = (Source) obj;
            if (getTid().equals(source.getTid()) && getDs().equals(source.getDs()) && getDsgver() == source.getDsgver() && getDigest().equals(source.getDigest()) && getCert().equals(source.getCert()) && getPchain().equals(source.getPchain()) && hasExt() == source.hasExt()) {
                return (!hasExt() || getExt().equals(source.getExt())) && getExtProtoList().equals(source.getExtProtoList()) && this.unknownFields.equals(source.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final String getCert() {
            Object obj = this.cert_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.cert_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final ByteString getCertBytes() {
            Object obj = this.cert_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.cert_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Source getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final String getDigest() {
            Object obj = this.digest_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.digest_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final ByteString getDigestBytes() {
            Object obj = this.digest_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.digest_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final String getDs() {
            Object obj = this.ds_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.ds_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final ByteString getDsBytes() {
            Object obj = this.ds_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.ds_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final int getDsgver() {
            return this.dsgver_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Source> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final String getPchain() {
            Object obj = this.pchain_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.pchain_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final ByteString getPchainBytes() {
            Object obj = this.pchain_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.pchain_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeStringSize = !getTidBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.tid_) + 0 : 0;
            int i2 = computeStringSize;
            if (!getDsBytes().isEmpty()) {
                i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.ds_);
            }
            int i3 = this.dsgver_;
            int i4 = i2;
            if (i3 != 0) {
                i4 = i2 + CodedOutputStream.computeUInt32Size(3, i3);
            }
            int i5 = i4;
            if (!getDigestBytes().isEmpty()) {
                i5 = i4 + GeneratedMessageV3.computeStringSize(4, this.digest_);
            }
            int i6 = i5;
            if (!getCertBytes().isEmpty()) {
                i6 = i5 + GeneratedMessageV3.computeStringSize(5, this.cert_);
            }
            int i7 = i6;
            int i8 = 0;
            if (!getPchainBytes().isEmpty()) {
                i7 = i6 + GeneratedMessageV3.computeStringSize(6, this.pchain_);
                i8 = 0;
            }
            while (i8 < this.extProto_.size()) {
                i7 += CodedOutputStream.computeMessageSize(7, this.extProto_.get(i8));
                i8++;
            }
            int i9 = i7;
            if (this.ext_ != null) {
                i9 = i7 + CodedOutputStream.computeMessageSize(8, getExt());
            }
            int serializedSize = i9 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final String getTid() {
            Object obj = this.tid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final ByteString getTidBytes() {
            Object obj = this.tid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.openrtb.Request.SourceOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getTid().hashCode()) * 37) + 2) * 53) + getDs().hashCode()) * 37) + 3) * 53) + getDsgver()) * 37) + 4) * 53) + getDigest().hashCode()) * 37) + 5) * 53) + getCert().hashCode()) * 37) + 6) * 53) + getPchain().hashCode();
            int i = hashCode;
            if (hasExt()) {
                i = (((hashCode * 37) + 8) * 53) + getExt().hashCode();
            }
            int i2 = i;
            if (getExtProtoCount() > 0) {
                i2 = (((i * 37) + 7) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable.ensureFieldAccessorsInitialized(Source.class, Builder.class);
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
            return new Source();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getTidBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.tid_);
            }
            if (!getDsBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.ds_);
            }
            int i = this.dsgver_;
            if (i != 0) {
                codedOutputStream.writeUInt32(3, i);
            }
            if (!getDigestBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.digest_);
            }
            if (!getCertBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.cert_);
            }
            if (!getPchainBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.pchain_);
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

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/Request$SourceOrBuilder.class */
    public interface SourceOrBuilder extends MessageOrBuilder {
        String getCert();

        ByteString getCertBytes();

        String getDigest();

        ByteString getDigestBytes();

        String getDs();

        ByteString getDsBytes();

        int getDsgver();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        String getPchain();

        ByteString getPchainBytes();

        String getTid();

        ByteString getTidBytes();

        boolean hasExt();
    }

    private Request() {
        this.memoizedIsInitialized = (byte) (-1);
        this.id_ = "";
        this.cur_ = LazyStringArrayList.EMPTY;
        this.seat_ = LazyStringArrayList.EMPTY;
        this.cdata_ = "";
        this.item_ = Collections.emptyList();
        this.extProto_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Request(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                    Source.Builder builder2 = null;
                    Struct.Builder builder3 = null;
                    switch (readTag) {
                        case 0:
                            break;
                        case 10:
                            this.id_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 16:
                            this.test_ = codedInputStream.readBool();
                            continue;
                        case 24:
                            this.tmax_ = codedInputStream.readUInt32();
                            continue;
                        case 32:
                            this.at_ = codedInputStream.readUInt32();
                            continue;
                        case 42:
                            String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 1) == 0) {
                                this.cur_ = new LazyStringArrayList();
                                i |= 1;
                            }
                            this.cur_.add(readStringRequireUtf8);
                            continue;
                        case 50:
                            String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 2) == 0) {
                                this.seat_ = new LazyStringArrayList();
                                i |= 2;
                            }
                            this.seat_.add(readStringRequireUtf82);
                            continue;
                        case 56:
                            this.wseat_ = codedInputStream.readBool();
                            continue;
                        case 66:
                            this.cdata_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 74:
                            Source source = this.source_;
                            builder2 = source != null ? source.toBuilder() : builder2;
                            Source source2 = (Source) codedInputStream.readMessage(Source.parser(), extensionRegistryLite);
                            this.source_ = source2;
                            if (builder2 != null) {
                                builder2.mergeFrom(source2);
                                this.source_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 82:
                            i = i;
                            if ((i & 4) == 0) {
                                this.item_ = new ArrayList();
                                i |= 4;
                            }
                            this.item_.add(codedInputStream.readMessage(Item.parser(), extensionRegistryLite));
                            continue;
                        case 88:
                            this.package_ = codedInputStream.readUInt32();
                            continue;
                        case 98:
                            Any any = this.context_;
                            builder = any != null ? any.toBuilder() : builder;
                            Any any2 = (Any) codedInputStream.readMessage(Any.parser(), extensionRegistryLite);
                            this.context_ = any2;
                            if (builder != null) {
                                builder.mergeFrom(any2);
                                this.context_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 106:
                            i = i;
                            if ((i & 8) == 0) {
                                this.extProto_ = new ArrayList();
                                i |= 8;
                            }
                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                            continue;
                        case 114:
                            Struct struct = this.ext_;
                            builder3 = struct != null ? struct.toBuilder() : builder3;
                            Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                            this.ext_ = struct2;
                            if (builder3 != null) {
                                builder3.mergeFrom(struct2);
                                this.ext_ = builder3.buildPartial();
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
                    this.cur_ = this.cur_.getUnmodifiableView();
                }
                if ((i & 2) != 0) {
                    this.seat_ = this.seat_.getUnmodifiableView();
                }
                if ((i & 4) != 0) {
                    this.item_ = Collections.unmodifiableList(this.item_);
                }
                if ((i & 8) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private Request(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Request getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Request request) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(request);
    }

    public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Request parseFrom(InputStream inputStream) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Request) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Request> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Request)) {
            return super.equals(obj);
        }
        Request request = (Request) obj;
        if (!getId().equals(request.getId()) || getTest() != request.getTest() || getTmax() != request.getTmax() || getAt() != request.getAt() || !getCurList().equals(request.getCurList()) || !getSeatList().equals(request.getSeatList()) || getWseat() != request.getWseat() || !getCdata().equals(request.getCdata()) || hasSource() != request.hasSource()) {
            return false;
        }
        if ((hasSource() && !getSource().equals(request.getSource())) || !getItemList().equals(request.getItemList()) || getPackage() != request.getPackage() || hasContext() != request.hasContext()) {
            return false;
        }
        if ((!hasContext() || getContext().equals(request.getContext())) && hasExt() == request.hasExt()) {
            return (!hasExt() || getExt().equals(request.getExt())) && getExtProtoList().equals(request.getExtProtoList()) && this.unknownFields.equals(request.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getAt() {
        return this.at_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final String getCdata() {
        Object obj = this.cdata_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.cdata_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ByteString getCdataBytes() {
        Object obj = this.cdata_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.cdata_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final Any getContext() {
        Any any = this.context_;
        Any any2 = any;
        if (any == null) {
            any2 = Any.getDefaultInstance();
        }
        return any2;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final AnyOrBuilder getContextOrBuilder() {
        return getContext();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final String getCur(int i) {
        return (String) this.cur_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ByteString getCurBytes(int i) {
        return this.cur_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getCurCount() {
        return this.cur_.size();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ProtocolStringList getCurList() {
        return this.cur_;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Request getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final Struct getExt() {
        Struct struct = this.ext_;
        Struct struct2 = struct;
        if (struct == null) {
            struct2 = Struct.getDefaultInstance();
        }
        return struct2;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final StructOrBuilder getExtOrBuilder() {
        return getExt();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final Any getExtProto(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getExtProtoCount() {
        return this.extProto_.size();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final List<Any> getExtProtoList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ByteString getIdBytes() {
        Object obj = this.id_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.id_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final Item getItem(int i) {
        return this.item_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getItemCount() {
        return this.item_.size();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final List<Item> getItemList() {
        return this.item_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ItemOrBuilder getItemOrBuilder(int i) {
        return this.item_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final List<? extends ItemOrBuilder> getItemOrBuilderList() {
        return this.item_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getPackage() {
        return this.package_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Request> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final String getSeat(int i) {
        return (String) this.seat_.get(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ByteString getSeatBytes(int i) {
        return this.seat_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getSeatCount() {
        return this.seat_.size();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final ProtocolStringList getSeatList() {
        return this.seat_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
        boolean z = this.test_;
        int i2 = computeStringSize;
        if (z) {
            i2 = computeStringSize + CodedOutputStream.computeBoolSize(2, z);
        }
        int i3 = this.tmax_;
        int i4 = i2;
        if (i3 != 0) {
            i4 = i2 + CodedOutputStream.computeUInt32Size(3, i3);
        }
        int i5 = this.at_;
        int i6 = i4;
        if (i5 != 0) {
            i6 = i4 + CodedOutputStream.computeUInt32Size(4, i5);
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.cur_.size(); i8++) {
            i7 += computeStringSizeNoTag(this.cur_.getRaw(i8));
        }
        int size = getCurList().size();
        int i9 = 0;
        for (int i10 = 0; i10 < this.seat_.size(); i10++) {
            i9 += computeStringSizeNoTag(this.seat_.getRaw(i10));
        }
        int size2 = i6 + i7 + (size * 1) + i9 + (getSeatList().size() * 1);
        boolean z2 = this.wseat_;
        int i11 = size2;
        if (z2) {
            i11 = size2 + CodedOutputStream.computeBoolSize(7, z2);
        }
        int i12 = i11;
        if (!getCdataBytes().isEmpty()) {
            i12 = i11 + GeneratedMessageV3.computeStringSize(8, this.cdata_);
        }
        int i13 = i12;
        if (this.source_ != null) {
            i13 = i12 + CodedOutputStream.computeMessageSize(9, getSource());
        }
        for (int i14 = 0; i14 < this.item_.size(); i14++) {
            i13 += CodedOutputStream.computeMessageSize(10, this.item_.get(i14));
        }
        int i15 = this.package_;
        int i16 = i13;
        if (i15 != 0) {
            i16 = i13 + CodedOutputStream.computeUInt32Size(11, i15);
        }
        int i17 = i16;
        int i18 = 0;
        if (this.context_ != null) {
            i17 = i16 + CodedOutputStream.computeMessageSize(12, getContext());
            i18 = 0;
        }
        while (i18 < this.extProto_.size()) {
            i17 += CodedOutputStream.computeMessageSize(13, this.extProto_.get(i18));
            i18++;
        }
        int i19 = i17;
        if (this.ext_ != null) {
            i19 = i17 + CodedOutputStream.computeMessageSize(14, getExt());
        }
        int serializedSize = i19 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final Source getSource() {
        Source source = this.source_;
        Source source2 = source;
        if (source == null) {
            source2 = Source.getDefaultInstance();
        }
        return source2;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final SourceOrBuilder getSourceOrBuilder() {
        return getSource();
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final boolean getTest() {
        return this.test_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final int getTmax() {
        return this.tmax_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final boolean getWseat() {
        return this.wseat_;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final boolean hasContext() {
        return this.context_ != null;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final boolean hasExt() {
        return this.ext_ != null;
    }

    @Override // com.explorestack.protobuf.openrtb.RequestOrBuilder
    public final boolean hasSource() {
        return this.source_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + Internal.hashBoolean(getTest())) * 37) + 3) * 53) + getTmax()) * 37) + 4) * 53) + getAt();
        int i = hashCode;
        if (getCurCount() > 0) {
            i = (((hashCode * 37) + 5) * 53) + getCurList().hashCode();
        }
        int i2 = i;
        if (getSeatCount() > 0) {
            i2 = (((i * 37) + 6) * 53) + getSeatList().hashCode();
        }
        int hashBoolean = (((((((i2 * 37) + 7) * 53) + Internal.hashBoolean(getWseat())) * 37) + 8) * 53) + getCdata().hashCode();
        int i3 = hashBoolean;
        if (hasSource()) {
            i3 = (((hashBoolean * 37) + 9) * 53) + getSource().hashCode();
        }
        int i4 = i3;
        if (getItemCount() > 0) {
            i4 = (((i3 * 37) + 10) * 53) + getItemList().hashCode();
        }
        int i5 = (((i4 * 37) + 11) * 53) + getPackage();
        int i6 = i5;
        if (hasContext()) {
            i6 = (((i5 * 37) + 12) * 53) + getContext().hashCode();
        }
        int i7 = i6;
        if (hasExt()) {
            i7 = (((i6 * 37) + 14) * 53) + getExt().hashCode();
        }
        int i8 = i7;
        if (getExtProtoCount() > 0) {
            i8 = (((i7 * 37) + 13) * 53) + getExtProtoList().hashCode();
        }
        int hashCode2 = (i8 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return OpenrtbProto.internal_static_bidmachine_protobuf_openrtb_Request_fieldAccessorTable.ensureFieldAccessorsInitialized(Request.class, Builder.class);
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
        return new Request();
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
        boolean z = this.test_;
        if (z) {
            codedOutputStream.writeBool(2, z);
        }
        int i = this.tmax_;
        if (i != 0) {
            codedOutputStream.writeUInt32(3, i);
        }
        int i2 = this.at_;
        if (i2 != 0) {
            codedOutputStream.writeUInt32(4, i2);
        }
        for (int i3 = 0; i3 < this.cur_.size(); i3++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.cur_.getRaw(i3));
        }
        for (int i4 = 0; i4 < this.seat_.size(); i4++) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.seat_.getRaw(i4));
        }
        boolean z2 = this.wseat_;
        if (z2) {
            codedOutputStream.writeBool(7, z2);
        }
        if (!getCdataBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 8, this.cdata_);
        }
        if (this.source_ != null) {
            codedOutputStream.writeMessage(9, getSource());
        }
        for (int i5 = 0; i5 < this.item_.size(); i5++) {
            codedOutputStream.writeMessage(10, this.item_.get(i5));
        }
        int i6 = this.package_;
        if (i6 != 0) {
            codedOutputStream.writeUInt32(11, i6);
        }
        int i7 = 0;
        if (this.context_ != null) {
            codedOutputStream.writeMessage(12, getContext());
            i7 = 0;
        }
        while (i7 < this.extProto_.size()) {
            codedOutputStream.writeMessage(13, this.extProto_.get(i7));
            i7++;
        }
        if (this.ext_ != null) {
            codedOutputStream.writeMessage(14, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

package com.explorestack.protobuf.adcom;

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
import com.explorestack.protobuf.openrtb.LossReason;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement.class */
public final class Placement extends GeneratedMessageV3 implements PlacementOrBuilder {
    public static final int ADMX_FIELD_NUMBER = 14;
    public static final int BADV_FIELD_NUMBER = 9;
    public static final int BAPP_FIELD_NUMBER = 10;
    public static final int BATTR_FIELD_NUMBER = 11;
    public static final int BCAT_FIELD_NUMBER = 6;
    public static final int CATTAX_FIELD_NUMBER = 7;
    public static final int CURLX_FIELD_NUMBER = 15;
    public static final int DISPLAY_FIELD_NUMBER = 16;
    public static final int EXT_FIELD_NUMBER = 20;
    public static final int EXT_PROTO_FIELD_NUMBER = 19;
    public static final int REWARD_FIELD_NUMBER = 5;
    public static final int SDKVER_FIELD_NUMBER = 4;
    public static final int SDK_FIELD_NUMBER = 3;
    public static final int SECURE_FIELD_NUMBER = 13;
    public static final int SSAI_FIELD_NUMBER = 2;
    public static final int TAGID_FIELD_NUMBER = 1;
    public static final int VIDEO_FIELD_NUMBER = 17;
    public static final int WLANG_FIELD_NUMBER = 12;
    private static final long serialVersionUID = 0;
    private boolean admx_;
    private LazyStringList badv_;
    private LazyStringList bapp_;
    private int battrMemoizedSerializedSize;
    private List<Integer> battr_;
    private LazyStringList bcat_;
    private int cattax_;
    private boolean curlx_;
    private DisplayPlacement display_;
    private List<Any> extProto_;
    private Struct ext_;
    private byte memoizedIsInitialized;
    private boolean reward_;
    private volatile Object sdk_;
    private volatile Object sdkver_;
    private boolean secure_;
    private int ssai_;
    private volatile Object tagid_;
    private VideoPlacement video_;
    private LazyStringList wlang_;
    private static final Internal.ListAdapter.Converter<Integer, CreativeAttribute> battr_converter_ = new Internal.ListAdapter.Converter<Integer, CreativeAttribute>() { // from class: com.explorestack.protobuf.adcom.Placement.1
        public final CreativeAttribute convert(Integer num) {
            CreativeAttribute valueOf = CreativeAttribute.valueOf(num.intValue());
            CreativeAttribute creativeAttribute = valueOf;
            if (valueOf == null) {
                creativeAttribute = CreativeAttribute.UNRECOGNIZED;
            }
            return creativeAttribute;
        }
    };
    private static final Placement DEFAULT_INSTANCE = new Placement();
    private static final Parser<Placement> PARSER = new AbstractParser<Placement>() { // from class: com.explorestack.protobuf.adcom.Placement.2
        @Override // com.explorestack.protobuf.Parser
        public final Placement parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Placement(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements PlacementOrBuilder {
        private boolean admx_;
        private LazyStringList badv_;
        private LazyStringList bapp_;
        private List<Integer> battr_;
        private LazyStringList bcat_;
        private int bitField0_;
        private int cattax_;
        private boolean curlx_;
        private SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> displayBuilder_;
        private DisplayPlacement display_;
        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private boolean reward_;
        private Object sdk_;
        private Object sdkver_;
        private boolean secure_;
        private int ssai_;
        private Object tagid_;
        private SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> videoBuilder_;
        private VideoPlacement video_;
        private LazyStringList wlang_;

        private Builder() {
            this.tagid_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            this.bcat_ = LazyStringArrayList.EMPTY;
            this.cattax_ = 0;
            this.badv_ = LazyStringArrayList.EMPTY;
            this.bapp_ = LazyStringArrayList.EMPTY;
            this.battr_ = Collections.emptyList();
            this.wlang_ = LazyStringArrayList.EMPTY;
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.tagid_ = "";
            this.sdk_ = "";
            this.sdkver_ = "";
            this.bcat_ = LazyStringArrayList.EMPTY;
            this.cattax_ = 0;
            this.badv_ = LazyStringArrayList.EMPTY;
            this.bapp_ = LazyStringArrayList.EMPTY;
            this.battr_ = Collections.emptyList();
            this.wlang_ = LazyStringArrayList.EMPTY;
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureBadvIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.badv_ = new LazyStringArrayList(this.badv_);
                this.bitField0_ |= 2;
            }
        }

        private void ensureBappIsMutable() {
            if ((this.bitField0_ & 4) == 0) {
                this.bapp_ = new LazyStringArrayList(this.bapp_);
                this.bitField0_ |= 4;
            }
        }

        private void ensureBattrIsMutable() {
            if ((this.bitField0_ & 8) == 0) {
                this.battr_ = new ArrayList(this.battr_);
                this.bitField0_ |= 8;
            }
        }

        private void ensureBcatIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.bcat_ = new LazyStringArrayList(this.bcat_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 32) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 32;
            }
        }

        private void ensureWlangIsMutable() {
            if ((this.bitField0_ & 16) == 0) {
                this.wlang_ = new LazyStringArrayList(this.wlang_);
                this.bitField0_ |= 16;
            }
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_descriptor;
        }

        private SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> getDisplayFieldBuilder() {
            if (this.displayBuilder_ == null) {
                this.displayBuilder_ = new SingleFieldBuilderV3<>(getDisplay(), getParentForChildren(), isClean());
                this.display_ = null;
            }
            return this.displayBuilder_;
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
                this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                this.extProto_ = null;
            }
            return this.extProtoBuilder_;
        }

        private SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> getVideoFieldBuilder() {
            if (this.videoBuilder_ == null) {
                this.videoBuilder_ = new SingleFieldBuilderV3<>(getVideo(), getParentForChildren(), isClean());
                this.video_ = null;
            }
            return this.videoBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (Placement.alwaysUseFieldBuilders) {
                getExtProtoFieldBuilder();
            }
        }

        public final Builder addAllBadv(Iterable<String> iterable) {
            ensureBadvIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.badv_);
            onChanged();
            return this;
        }

        public final Builder addAllBapp(Iterable<String> iterable) {
            ensureBappIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.bapp_);
            onChanged();
            return this;
        }

        public final Builder addAllBattr(Iterable<? extends CreativeAttribute> iterable) {
            ensureBattrIsMutable();
            for (CreativeAttribute creativeAttribute : iterable) {
                this.battr_.add(Integer.valueOf(creativeAttribute.getNumber()));
            }
            onChanged();
            return this;
        }

        public final Builder addAllBattrValue(Iterable<Integer> iterable) {
            ensureBattrIsMutable();
            for (Integer num : iterable) {
                this.battr_.add(Integer.valueOf(num.intValue()));
            }
            onChanged();
            return this;
        }

        public final Builder addAllBcat(Iterable<String> iterable) {
            ensureBcatIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.bcat_);
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

        public final Builder addAllWlang(Iterable<String> iterable) {
            ensureWlangIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.wlang_);
            onChanged();
            return this;
        }

        public final Builder addBadv(String str) {
            Objects.requireNonNull(str);
            ensureBadvIsMutable();
            this.badv_.add(str);
            onChanged();
            return this;
        }

        public final Builder addBadvBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            ensureBadvIsMutable();
            this.badv_.add(byteString);
            onChanged();
            return this;
        }

        public final Builder addBapp(String str) {
            Objects.requireNonNull(str);
            ensureBappIsMutable();
            this.bapp_.add(str);
            onChanged();
            return this;
        }

        public final Builder addBappBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            ensureBappIsMutable();
            this.bapp_.add(byteString);
            onChanged();
            return this;
        }

        public final Builder addBattr(CreativeAttribute creativeAttribute) {
            Objects.requireNonNull(creativeAttribute);
            ensureBattrIsMutable();
            this.battr_.add(Integer.valueOf(creativeAttribute.getNumber()));
            onChanged();
            return this;
        }

        public final Builder addBattrValue(int i) {
            ensureBattrIsMutable();
            this.battr_.add(Integer.valueOf(i));
            onChanged();
            return this;
        }

        public final Builder addBcat(String str) {
            Objects.requireNonNull(str);
            ensureBcatIsMutable();
            this.bcat_.add(str);
            onChanged();
            return this;
        }

        public final Builder addBcatBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            ensureBcatIsMutable();
            this.bcat_.add(byteString);
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

        public final Builder addWlang(String str) {
            Objects.requireNonNull(str);
            ensureWlangIsMutable();
            this.wlang_.add(str);
            onChanged();
            return this;
        }

        public final Builder addWlangBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            ensureWlangIsMutable();
            this.wlang_.add(byteString);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Placement build() {
            Placement buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Placement buildPartial() {
            Placement placement = new Placement(this);
            placement.tagid_ = this.tagid_;
            placement.ssai_ = this.ssai_;
            placement.sdk_ = this.sdk_;
            placement.sdkver_ = this.sdkver_;
            placement.reward_ = this.reward_;
            if ((this.bitField0_ & 1) != 0) {
                this.bcat_ = this.bcat_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            placement.bcat_ = this.bcat_;
            placement.cattax_ = this.cattax_;
            if ((this.bitField0_ & 2) != 0) {
                this.badv_ = this.badv_.getUnmodifiableView();
                this.bitField0_ &= -3;
            }
            placement.badv_ = this.badv_;
            if ((this.bitField0_ & 4) != 0) {
                this.bapp_ = this.bapp_.getUnmodifiableView();
                this.bitField0_ &= -5;
            }
            placement.bapp_ = this.bapp_;
            if ((this.bitField0_ & 8) != 0) {
                this.battr_ = Collections.unmodifiableList(this.battr_);
                this.bitField0_ &= -9;
            }
            placement.battr_ = this.battr_;
            if ((this.bitField0_ & 16) != 0) {
                this.wlang_ = this.wlang_.getUnmodifiableView();
                this.bitField0_ &= -17;
            }
            placement.wlang_ = this.wlang_;
            placement.secure_ = this.secure_;
            placement.admx_ = this.admx_;
            placement.curlx_ = this.curlx_;
            SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                placement.display_ = this.display_;
            } else {
                placement.display_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV32 = this.videoBuilder_;
            if (singleFieldBuilderV32 == null) {
                placement.video_ = this.video_;
            } else {
                placement.video_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV33 = this.extBuilder_;
            if (singleFieldBuilderV33 == null) {
                placement.ext_ = this.ext_;
            } else {
                placement.ext_ = singleFieldBuilderV33.build();
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 32) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -33;
                }
                placement.extProto_ = this.extProto_;
            } else {
                placement.extProto_ = repeatedFieldBuilderV3.build();
            }
            onBuilt();
            return placement;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.tagid_ = "";
            this.ssai_ = 0;
            this.sdk_ = "";
            this.sdkver_ = "";
            this.reward_ = false;
            this.bcat_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            this.cattax_ = 0;
            this.badv_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            this.bapp_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -5;
            this.battr_ = Collections.emptyList();
            this.bitField0_ &= -9;
            this.wlang_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -17;
            this.secure_ = false;
            this.admx_ = false;
            this.curlx_ = false;
            if (this.displayBuilder_ == null) {
                this.display_ = null;
            } else {
                this.display_ = null;
                this.displayBuilder_ = null;
            }
            if (this.videoBuilder_ == null) {
                this.video_ = null;
            } else {
                this.video_ = null;
                this.videoBuilder_ = null;
            }
            if (this.extBuilder_ == null) {
                this.ext_ = null;
            } else {
                this.ext_ = null;
                this.extBuilder_ = null;
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.extProto_ = Collections.emptyList();
                this.bitField0_ &= -33;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearAdmx() {
            this.admx_ = false;
            onChanged();
            return this;
        }

        public final Builder clearBadv() {
            this.badv_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public final Builder clearBapp() {
            this.bapp_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -5;
            onChanged();
            return this;
        }

        public final Builder clearBattr() {
            this.battr_ = Collections.emptyList();
            this.bitField0_ &= -9;
            onChanged();
            return this;
        }

        public final Builder clearBcat() {
            this.bcat_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public final Builder clearCattax() {
            this.cattax_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearCurlx() {
            this.curlx_ = false;
            onChanged();
            return this;
        }

        public final Builder clearDisplay() {
            if (this.displayBuilder_ == null) {
                this.display_ = null;
                onChanged();
            } else {
                this.display_ = null;
                this.displayBuilder_ = null;
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
                this.bitField0_ &= -33;
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

        public final Builder clearReward() {
            this.reward_ = false;
            onChanged();
            return this;
        }

        public final Builder clearSdk() {
            this.sdk_ = Placement.getDefaultInstance().getSdk();
            onChanged();
            return this;
        }

        public final Builder clearSdkver() {
            this.sdkver_ = Placement.getDefaultInstance().getSdkver();
            onChanged();
            return this;
        }

        public final Builder clearSecure() {
            this.secure_ = false;
            onChanged();
            return this;
        }

        public final Builder clearSsai() {
            this.ssai_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearTagid() {
            this.tagid_ = Placement.getDefaultInstance().getTagid();
            onChanged();
            return this;
        }

        public final Builder clearVideo() {
            if (this.videoBuilder_ == null) {
                this.video_ = null;
                onChanged();
            } else {
                this.video_ = null;
                this.videoBuilder_ = null;
            }
            return this;
        }

        public final Builder clearWlang() {
            this.wlang_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -17;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean getAdmx() {
            return this.admx_;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getBadv(int i) {
            return (String) this.badv_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getBadvBytes(int i) {
            return this.badv_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getBadvCount() {
            return this.badv_.size();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ProtocolStringList getBadvList() {
            return this.badv_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getBapp(int i) {
            return (String) this.bapp_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getBappBytes(int i) {
            return this.bapp_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getBappCount() {
            return this.bapp_.size();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ProtocolStringList getBappList() {
            return this.bapp_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final CreativeAttribute getBattr(int i) {
            return (CreativeAttribute) Placement.battr_converter_.convert(this.battr_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getBattrCount() {
            return this.battr_.size();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final List<CreativeAttribute> getBattrList() {
            return new Internal.ListAdapter(this.battr_, Placement.battr_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getBattrValue(int i) {
            return this.battr_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final List<Integer> getBattrValueList() {
            return Collections.unmodifiableList(this.battr_);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getBcat(int i) {
            return (String) this.bcat_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getBcatBytes(int i) {
            return this.bcat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getBcatCount() {
            return this.bcat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ProtocolStringList getBcatList() {
            return this.bcat_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            CategoryTaxonomy categoryTaxonomy = valueOf;
            if (valueOf == null) {
                categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
            }
            return categoryTaxonomy;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getCattaxValue() {
            return this.cattax_;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean getCurlx() {
            return this.curlx_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Placement getDefaultInstanceForType() {
            return Placement.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_descriptor;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final DisplayPlacement getDisplay() {
            SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            DisplayPlacement displayPlacement = this.display_;
            DisplayPlacement displayPlacement2 = displayPlacement;
            if (displayPlacement == null) {
                displayPlacement2 = DisplayPlacement.getDefaultInstance();
            }
            return displayPlacement2;
        }

        public final DisplayPlacement.Builder getDisplayBuilder() {
            onChanged();
            return getDisplayFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final DisplayPlacementOrBuilder getDisplayOrBuilder() {
            SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            DisplayPlacement displayPlacement = this.display_;
            DisplayPlacement displayPlacement2 = displayPlacement;
            if (displayPlacement == null) {
                displayPlacement2 = DisplayPlacement.getDefaultInstance();
            }
            return displayPlacement2;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getExtProtoCount() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final List<Any> getExtProtoList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean getReward() {
            return this.reward_;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getSdk() {
            Object obj = this.sdk_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sdk_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getSdkBytes() {
            Object obj = this.sdk_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdk_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getSdkver() {
            Object obj = this.sdkver_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.sdkver_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getSdkverBytes() {
            Object obj = this.sdkver_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.sdkver_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean getSecure() {
            return this.secure_;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getSsai() {
            return this.ssai_;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getTagid() {
            Object obj = this.tagid_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.tagid_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getTagidBytes() {
            Object obj = this.tagid_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.tagid_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final VideoPlacement getVideo() {
            SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            VideoPlacement videoPlacement = this.video_;
            VideoPlacement videoPlacement2 = videoPlacement;
            if (videoPlacement == null) {
                videoPlacement2 = VideoPlacement.getDefaultInstance();
            }
            return videoPlacement2;
        }

        public final VideoPlacement.Builder getVideoBuilder() {
            onChanged();
            return getVideoFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final VideoPlacementOrBuilder getVideoOrBuilder() {
            SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            VideoPlacement videoPlacement = this.video_;
            VideoPlacement videoPlacement2 = videoPlacement;
            if (videoPlacement == null) {
                videoPlacement2 = VideoPlacement.getDefaultInstance();
            }
            return videoPlacement2;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final String getWlang(int i) {
            return (String) this.wlang_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ByteString getWlangBytes(int i) {
            return this.wlang_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final int getWlangCount() {
            return this.wlang_.size();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final ProtocolStringList getWlangList() {
            return this.wlang_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean hasDisplay() {
            return (this.displayBuilder_ == null && this.display_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean hasExt() {
            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
        public final boolean hasVideo() {
            return (this.videoBuilder_ == null && this.video_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_fieldAccessorTable.ensureFieldAccessorsInitialized(Placement.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeDisplay(DisplayPlacement displayPlacement) {
            SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                DisplayPlacement displayPlacement2 = this.display_;
                if (displayPlacement2 != null) {
                    this.display_ = DisplayPlacement.newBuilder(displayPlacement2).mergeFrom(displayPlacement).buildPartial();
                } else {
                    this.display_ = displayPlacement;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(displayPlacement);
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
        public final com.explorestack.protobuf.adcom.Placement.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.access$22100()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                com.explorestack.protobuf.adcom.Placement r0 = (com.explorestack.protobuf.adcom.Placement) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.adcom.Placement$Builder r0 = r0.mergeFrom(r1)
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
                com.explorestack.protobuf.adcom.Placement r0 = (com.explorestack.protobuf.adcom.Placement) r0     // Catch: all -> 0x001c
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
                com.explorestack.protobuf.adcom.Placement$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Placement) {
                return mergeFrom((Placement) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Placement placement) {
            if (placement == Placement.getDefaultInstance()) {
                return this;
            }
            if (!placement.getTagid().isEmpty()) {
                this.tagid_ = placement.tagid_;
                onChanged();
            }
            if (placement.getSsai() != 0) {
                setSsai(placement.getSsai());
            }
            if (!placement.getSdk().isEmpty()) {
                this.sdk_ = placement.sdk_;
                onChanged();
            }
            if (!placement.getSdkver().isEmpty()) {
                this.sdkver_ = placement.sdkver_;
                onChanged();
            }
            if (placement.getReward()) {
                setReward(placement.getReward());
            }
            if (!placement.bcat_.isEmpty()) {
                if (this.bcat_.isEmpty()) {
                    this.bcat_ = placement.bcat_;
                    this.bitField0_ &= -2;
                } else {
                    ensureBcatIsMutable();
                    this.bcat_.addAll(placement.bcat_);
                }
                onChanged();
            }
            if (placement.cattax_ != 0) {
                setCattaxValue(placement.getCattaxValue());
            }
            if (!placement.badv_.isEmpty()) {
                if (this.badv_.isEmpty()) {
                    this.badv_ = placement.badv_;
                    this.bitField0_ &= -3;
                } else {
                    ensureBadvIsMutable();
                    this.badv_.addAll(placement.badv_);
                }
                onChanged();
            }
            if (!placement.bapp_.isEmpty()) {
                if (this.bapp_.isEmpty()) {
                    this.bapp_ = placement.bapp_;
                    this.bitField0_ &= -5;
                } else {
                    ensureBappIsMutable();
                    this.bapp_.addAll(placement.bapp_);
                }
                onChanged();
            }
            if (!placement.battr_.isEmpty()) {
                if (this.battr_.isEmpty()) {
                    this.battr_ = placement.battr_;
                    this.bitField0_ &= -9;
                } else {
                    ensureBattrIsMutable();
                    this.battr_.addAll(placement.battr_);
                }
                onChanged();
            }
            if (!placement.wlang_.isEmpty()) {
                if (this.wlang_.isEmpty()) {
                    this.wlang_ = placement.wlang_;
                    this.bitField0_ &= -17;
                } else {
                    ensureWlangIsMutable();
                    this.wlang_.addAll(placement.wlang_);
                }
                onChanged();
            }
            if (placement.getSecure()) {
                setSecure(placement.getSecure());
            }
            if (placement.getAdmx()) {
                setAdmx(placement.getAdmx());
            }
            if (placement.getCurlx()) {
                setCurlx(placement.getCurlx());
            }
            if (placement.hasDisplay()) {
                mergeDisplay(placement.getDisplay());
            }
            if (placement.hasVideo()) {
                mergeVideo(placement.getVideo());
            }
            if (placement.hasExt()) {
                mergeExt(placement.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!placement.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = placement.extProto_;
                        this.bitField0_ &= -33;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(placement.extProto_);
                    }
                    onChanged();
                }
            } else if (!placement.extProto_.isEmpty()) {
                if (this.extProtoBuilder_.isEmpty()) {
                    this.extProtoBuilder_.dispose();
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                    this.extProtoBuilder_ = null;
                    this.extProto_ = placement.extProto_;
                    this.bitField0_ &= -33;
                    if (Placement.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                    }
                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.extProtoBuilder_.addAllMessages(placement.extProto_);
                }
            }
            mergeUnknownFields(placement.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder mergeVideo(VideoPlacement videoPlacement) {
            SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 == null) {
                VideoPlacement videoPlacement2 = this.video_;
                if (videoPlacement2 != null) {
                    this.video_ = VideoPlacement.newBuilder(videoPlacement2).mergeFrom(videoPlacement).buildPartial();
                } else {
                    this.video_ = videoPlacement;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(videoPlacement);
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

        public final Builder setAdmx(boolean z) {
            this.admx_ = z;
            onChanged();
            return this;
        }

        public final Builder setBadv(int i, String str) {
            Objects.requireNonNull(str);
            ensureBadvIsMutable();
            this.badv_.set(i, str);
            onChanged();
            return this;
        }

        public final Builder setBapp(int i, String str) {
            Objects.requireNonNull(str);
            ensureBappIsMutable();
            this.bapp_.set(i, str);
            onChanged();
            return this;
        }

        public final Builder setBattr(int i, CreativeAttribute creativeAttribute) {
            Objects.requireNonNull(creativeAttribute);
            ensureBattrIsMutable();
            this.battr_.set(i, Integer.valueOf(creativeAttribute.getNumber()));
            onChanged();
            return this;
        }

        public final Builder setBattrValue(int i, int i2) {
            ensureBattrIsMutable();
            this.battr_.set(i, Integer.valueOf(i2));
            onChanged();
            return this;
        }

        public final Builder setBcat(int i, String str) {
            Objects.requireNonNull(str);
            ensureBcatIsMutable();
            this.bcat_.set(i, str);
            onChanged();
            return this;
        }

        public final Builder setCattax(CategoryTaxonomy categoryTaxonomy) {
            Objects.requireNonNull(categoryTaxonomy);
            this.cattax_ = categoryTaxonomy.getNumber();
            onChanged();
            return this;
        }

        public final Builder setCattaxValue(int i) {
            this.cattax_ = i;
            onChanged();
            return this;
        }

        public final Builder setCurlx(boolean z) {
            this.curlx_ = z;
            onChanged();
            return this;
        }

        public final Builder setDisplay(DisplayPlacement.Builder builder) {
            SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.display_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setDisplay(DisplayPlacement displayPlacement) {
            SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(displayPlacement);
                this.display_ = displayPlacement;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(displayPlacement);
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

        public final Builder setReward(boolean z) {
            this.reward_ = z;
            onChanged();
            return this;
        }

        public final Builder setSdk(String str) {
            Objects.requireNonNull(str);
            this.sdk_ = str;
            onChanged();
            return this;
        }

        public final Builder setSdkBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            this.sdk_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setSdkver(String str) {
            Objects.requireNonNull(str);
            this.sdkver_ = str;
            onChanged();
            return this;
        }

        public final Builder setSdkverBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            this.sdkver_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setSecure(boolean z) {
            this.secure_ = z;
            onChanged();
            return this;
        }

        public final Builder setSsai(int i) {
            this.ssai_ = i;
            onChanged();
            return this;
        }

        public final Builder setTagid(String str) {
            Objects.requireNonNull(str);
            this.tagid_ = str;
            onChanged();
            return this;
        }

        public final Builder setTagidBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Placement.checkByteStringIsUtf8(byteString);
            this.tagid_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setVideo(VideoPlacement.Builder builder) {
            SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.video_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setVideo(VideoPlacement videoPlacement) {
            SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(videoPlacement);
                this.video_ = videoPlacement;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(videoPlacement);
            }
            return this;
        }

        public final Builder setWlang(int i, String str) {
            Objects.requireNonNull(str);
            ensureWlangIsMutable();
            this.wlang_.set(i, str);
            onChanged();
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement.class */
    public static final class DisplayPlacement extends GeneratedMessageV3 implements DisplayPlacementOrBuilder {
        public static final int AMPREN_FIELD_NUMBER = 6;
        public static final int API_FIELD_NUMBER = 10;
        public static final int CLKTYPE_FIELD_NUMBER = 5;
        public static final int CONTEXT_FIELD_NUMBER = 8;
        public static final int CTYPE_FIELD_NUMBER = 11;
        public static final int DISPLAYFMT_FIELD_NUMBER = 16;
        public static final int EVENT_FIELD_NUMBER = 18;
        public static final int EXT_FIELD_NUMBER = 20;
        public static final int EXT_PROTO_FIELD_NUMBER = 19;
        public static final int H_FIELD_NUMBER = 13;
        public static final int IFRBUST_FIELD_NUMBER = 4;
        public static final int INSTL_FIELD_NUMBER = 2;
        public static final int MIME_FIELD_NUMBER = 9;
        public static final int NATIVEFMT_FIELD_NUMBER = 17;
        public static final int POS_FIELD_NUMBER = 1;
        public static final int PRIV_FIELD_NUMBER = 15;
        public static final int PTYPE_FIELD_NUMBER = 7;
        public static final int TOPFRAME_FIELD_NUMBER = 3;
        public static final int UNIT_FIELD_NUMBER = 14;
        public static final int W_FIELD_NUMBER = 12;
        private static final long serialVersionUID = 0;
        private int ampren_;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private int clktype_;
        private int context_;
        private int ctypeMemoizedSerializedSize;
        private List<Integer> ctype_;
        private List<DisplayFormat> displayfmt_;
        private List<EventSpec> event_;
        private List<Any> extProto_;
        private Struct ext_;
        private int h_;
        private LazyStringList ifrbust_;
        private boolean instl_;
        private byte memoizedIsInitialized;
        private LazyStringList mime_;
        private NativeFormat nativefmt_;
        private int pos_;
        private boolean priv_;
        private int ptype_;
        private boolean topframe_;
        private int unit_;
        private int w_;
        private static final Internal.ListAdapter.Converter<Integer, ApiFramework> api_converter_ = new Internal.ListAdapter.Converter<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.1
            public final ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                ApiFramework apiFramework = valueOf;
                if (valueOf == null) {
                    apiFramework = ApiFramework.UNRECOGNIZED;
                }
                return apiFramework;
            }
        };
        private static final Internal.ListAdapter.Converter<Integer, DisplayCreativeType> ctype_converter_ = new Internal.ListAdapter.Converter<Integer, DisplayCreativeType>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.2
            public final DisplayCreativeType convert(Integer num) {
                DisplayCreativeType valueOf = DisplayCreativeType.valueOf(num.intValue());
                DisplayCreativeType displayCreativeType = valueOf;
                if (valueOf == null) {
                    displayCreativeType = DisplayCreativeType.UNRECOGNIZED;
                }
                return displayCreativeType;
            }
        };
        private static final DisplayPlacement DEFAULT_INSTANCE = new DisplayPlacement();
        private static final Parser<DisplayPlacement> PARSER = new AbstractParser<DisplayPlacement>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.3
            @Override // com.explorestack.protobuf.Parser
            public final DisplayPlacement parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new DisplayPlacement(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DisplayPlacementOrBuilder {
            private int ampren_;
            private List<Integer> api_;
            private int bitField0_;
            private int clktype_;
            private int context_;
            private List<Integer> ctype_;
            private RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> displayfmtBuilder_;
            private List<DisplayFormat> displayfmt_;
            private RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> eventBuilder_;
            private List<EventSpec> event_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private LazyStringList ifrbust_;
            private boolean instl_;
            private LazyStringList mime_;
            private SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> nativefmtBuilder_;
            private NativeFormat nativefmt_;
            private int pos_;
            private boolean priv_;
            private int ptype_;
            private boolean topframe_;
            private int unit_;
            private int w_;

            private Builder() {
                this.pos_ = 0;
                this.ifrbust_ = LazyStringArrayList.EMPTY;
                this.clktype_ = 0;
                this.ptype_ = 0;
                this.context_ = 0;
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.displayfmt_ = Collections.emptyList();
                this.event_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.pos_ = 0;
                this.ifrbust_ = LazyStringArrayList.EMPTY;
                this.clktype_ = 0;
                this.ptype_ = 0;
                this.context_ = 0;
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.displayfmt_ = Collections.emptyList();
                this.event_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureApiIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.api_ = new ArrayList(this.api_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureCtypeIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.ctype_ = new ArrayList(this.ctype_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureDisplayfmtIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.displayfmt_ = new ArrayList(this.displayfmt_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureEventIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.event_ = new ArrayList(this.event_);
                    this.bitField0_ |= 32;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 64;
                }
            }

            private void ensureIfrbustIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.ifrbust_ = new LazyStringArrayList(this.ifrbust_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureMimeIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.mime_ = new LazyStringArrayList(this.mime_);
                    this.bitField0_ |= 2;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_descriptor;
            }

            private RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> getDisplayfmtFieldBuilder() {
                if (this.displayfmtBuilder_ == null) {
                    this.displayfmtBuilder_ = new RepeatedFieldBuilderV3<>(this.displayfmt_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.displayfmt_ = null;
                }
                return this.displayfmtBuilder_;
            }

            private RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> getEventFieldBuilder() {
                if (this.eventBuilder_ == null) {
                    this.eventBuilder_ = new RepeatedFieldBuilderV3<>(this.event_, (this.bitField0_ & 32) != 0, getParentForChildren(), isClean());
                    this.event_ = null;
                }
                return this.eventBuilder_;
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
                    this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 64) != 0, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> getNativefmtFieldBuilder() {
                if (this.nativefmtBuilder_ == null) {
                    this.nativefmtBuilder_ = new SingleFieldBuilderV3<>(getNativefmt(), getParentForChildren(), isClean());
                    this.nativefmt_ = null;
                }
                return this.nativefmtBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (DisplayPlacement.alwaysUseFieldBuilders) {
                    getDisplayfmtFieldBuilder();
                    getEventFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public final Builder addAllApi(Iterable<? extends ApiFramework> iterable) {
                ensureApiIsMutable();
                for (ApiFramework apiFramework : iterable) {
                    this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllApiValue(Iterable<Integer> iterable) {
                ensureApiIsMutable();
                for (Integer num : iterable) {
                    this.api_.add(Integer.valueOf(num.intValue()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllCtype(Iterable<? extends DisplayCreativeType> iterable) {
                ensureCtypeIsMutable();
                for (DisplayCreativeType displayCreativeType : iterable) {
                    this.ctype_.add(Integer.valueOf(displayCreativeType.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllCtypeValue(Iterable<Integer> iterable) {
                ensureCtypeIsMutable();
                for (Integer num : iterable) {
                    this.ctype_.add(Integer.valueOf(num.intValue()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllDisplayfmt(Iterable<? extends DisplayFormat> iterable) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDisplayfmtIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.displayfmt_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addAllEvent(Iterable<? extends EventSpec> iterable) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.event_);
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

            public final Builder addAllIfrbust(Iterable<String> iterable) {
                ensureIfrbustIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.ifrbust_);
                onChanged();
                return this;
            }

            public final Builder addAllMime(Iterable<String> iterable) {
                ensureMimeIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mime_);
                onChanged();
                return this;
            }

            public final Builder addApi(ApiFramework apiFramework) {
                Objects.requireNonNull(apiFramework);
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addApiValue(int i) {
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public final Builder addCtype(DisplayCreativeType displayCreativeType) {
                Objects.requireNonNull(displayCreativeType);
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(displayCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addCtypeValue(int i) {
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public final Builder addDisplayfmt(int i, DisplayFormat.Builder builder) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addDisplayfmt(int i, DisplayFormat displayFormat) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(displayFormat);
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(i, displayFormat);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, displayFormat);
                }
                return this;
            }

            public final Builder addDisplayfmt(DisplayFormat.Builder builder) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addDisplayfmt(DisplayFormat displayFormat) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(displayFormat);
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.add(displayFormat);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(displayFormat);
                }
                return this;
            }

            public final DisplayFormat.Builder addDisplayfmtBuilder() {
                return getDisplayfmtFieldBuilder().addBuilder(DisplayFormat.getDefaultInstance());
            }

            public final DisplayFormat.Builder addDisplayfmtBuilder(int i) {
                return getDisplayfmtFieldBuilder().addBuilder(i, DisplayFormat.getDefaultInstance());
            }

            public final Builder addEvent(int i, EventSpec.Builder builder) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addEvent(int i, EventSpec eventSpec) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(eventSpec);
                    ensureEventIsMutable();
                    this.event_.add(i, eventSpec);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, eventSpec);
                }
                return this;
            }

            public final Builder addEvent(EventSpec.Builder builder) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addEvent(EventSpec eventSpec) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(eventSpec);
                    ensureEventIsMutable();
                    this.event_.add(eventSpec);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(eventSpec);
                }
                return this;
            }

            public final EventSpec.Builder addEventBuilder() {
                return getEventFieldBuilder().addBuilder(EventSpec.getDefaultInstance());
            }

            public final EventSpec.Builder addEventBuilder(int i) {
                return getEventFieldBuilder().addBuilder(i, EventSpec.getDefaultInstance());
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

            public final Builder addIfrbust(String str) {
                Objects.requireNonNull(str);
                ensureIfrbustIsMutable();
                this.ifrbust_.add(str);
                onChanged();
                return this;
            }

            public final Builder addIfrbustBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                DisplayPlacement.checkByteStringIsUtf8(byteString);
                ensureIfrbustIsMutable();
                this.ifrbust_.add(byteString);
                onChanged();
                return this;
            }

            public final Builder addMime(String str) {
                Objects.requireNonNull(str);
                ensureMimeIsMutable();
                this.mime_.add(str);
                onChanged();
                return this;
            }

            public final Builder addMimeBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                DisplayPlacement.checkByteStringIsUtf8(byteString);
                ensureMimeIsMutable();
                this.mime_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final DisplayPlacement build() {
                DisplayPlacement buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final DisplayPlacement buildPartial() {
                DisplayPlacement displayPlacement = new DisplayPlacement(this);
                displayPlacement.pos_ = this.pos_;
                displayPlacement.instl_ = this.instl_;
                displayPlacement.topframe_ = this.topframe_;
                if ((this.bitField0_ & 1) != 0) {
                    this.ifrbust_ = this.ifrbust_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                displayPlacement.ifrbust_ = this.ifrbust_;
                displayPlacement.clktype_ = this.clktype_;
                displayPlacement.ampren_ = this.ampren_;
                displayPlacement.ptype_ = this.ptype_;
                displayPlacement.context_ = this.context_;
                if ((this.bitField0_ & 2) != 0) {
                    this.mime_ = this.mime_.getUnmodifiableView();
                    this.bitField0_ &= -3;
                }
                displayPlacement.mime_ = this.mime_;
                if ((this.bitField0_ & 4) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -5;
                }
                displayPlacement.api_ = this.api_;
                if ((this.bitField0_ & 8) != 0) {
                    this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    this.bitField0_ &= -9;
                }
                displayPlacement.ctype_ = this.ctype_;
                displayPlacement.w_ = this.w_;
                displayPlacement.h_ = this.h_;
                displayPlacement.unit_ = this.unit_;
                displayPlacement.priv_ = this.priv_;
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.displayfmt_ = Collections.unmodifiableList(this.displayfmt_);
                        this.bitField0_ &= -17;
                    }
                    displayPlacement.displayfmt_ = this.displayfmt_;
                } else {
                    displayPlacement.displayfmt_ = repeatedFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> singleFieldBuilderV3 = this.nativefmtBuilder_;
                if (singleFieldBuilderV3 == null) {
                    displayPlacement.nativefmt_ = this.nativefmt_;
                } else {
                    displayPlacement.nativefmt_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV32 = this.eventBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 32) != 0) {
                        this.event_ = Collections.unmodifiableList(this.event_);
                        this.bitField0_ &= -33;
                    }
                    displayPlacement.event_ = this.event_;
                } else {
                    displayPlacement.event_ = repeatedFieldBuilderV32.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                if (singleFieldBuilderV32 == null) {
                    displayPlacement.ext_ = this.ext_;
                } else {
                    displayPlacement.ext_ = singleFieldBuilderV32.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV33 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV33 == null) {
                    if ((this.bitField0_ & 64) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -65;
                    }
                    displayPlacement.extProto_ = this.extProto_;
                } else {
                    displayPlacement.extProto_ = repeatedFieldBuilderV33.build();
                }
                onBuilt();
                return displayPlacement;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.pos_ = 0;
                this.instl_ = false;
                this.topframe_ = false;
                this.ifrbust_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.clktype_ = 0;
                this.ampren_ = 0;
                this.ptype_ = 0;
                this.context_ = 0;
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.w_ = 0;
                this.h_ = 0;
                this.unit_ = 0;
                this.priv_ = false;
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.displayfmt_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                if (this.nativefmtBuilder_ == null) {
                    this.nativefmt_ = null;
                } else {
                    this.nativefmt_ = null;
                    this.nativefmtBuilder_ = null;
                }
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV32 = this.eventBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    this.event_ = Collections.emptyList();
                    this.bitField0_ &= -33;
                } else {
                    repeatedFieldBuilderV32.clear();
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
                    this.bitField0_ &= -65;
                } else {
                    repeatedFieldBuilderV33.clear();
                }
                return this;
            }

            public final Builder clearAmpren() {
                this.ampren_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public final Builder clearClktype() {
                this.clktype_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearContext() {
                this.context_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearCtype() {
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -9;
                onChanged();
                return this;
            }

            public final Builder clearDisplayfmt() {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.displayfmt_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearEvent() {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.event_ = Collections.emptyList();
                    this.bitField0_ &= -33;
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
                    this.bitField0_ &= -65;
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

            public final Builder clearH() {
                this.h_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearIfrbust() {
                this.ifrbust_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public final Builder clearInstl() {
                this.instl_ = false;
                onChanged();
                return this;
            }

            public final Builder clearMime() {
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearNativefmt() {
                if (this.nativefmtBuilder_ == null) {
                    this.nativefmt_ = null;
                    onChanged();
                } else {
                    this.nativefmt_ = null;
                    this.nativefmtBuilder_ = null;
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearPos() {
                this.pos_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearPriv() {
                this.priv_ = false;
                onChanged();
                return this;
            }

            public final Builder clearPtype() {
                this.ptype_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearTopframe() {
                this.topframe_ = false;
                onChanged();
                return this;
            }

            public final Builder clearUnit() {
                this.unit_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearW() {
                this.w_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getAmpren() {
                return this.ampren_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final ApiFramework getApi(int i) {
                return (ApiFramework) DisplayPlacement.api_converter_.convert(this.api_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<ApiFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, DisplayPlacement.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getApiValue(int i) {
                return this.api_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final ClickType getClktype() {
                ClickType valueOf = ClickType.valueOf(this.clktype_);
                ClickType clickType = valueOf;
                if (valueOf == null) {
                    clickType = ClickType.UNRECOGNIZED;
                }
                return clickType;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getClktypeValue() {
                return this.clktype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final DisplayContextType getContext() {
                DisplayContextType valueOf = DisplayContextType.valueOf(this.context_);
                DisplayContextType displayContextType = valueOf;
                if (valueOf == null) {
                    displayContextType = DisplayContextType.UNRECOGNIZED;
                }
                return displayContextType;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getContextValue() {
                return this.context_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final DisplayCreativeType getCtype(int i) {
                return (DisplayCreativeType) DisplayPlacement.ctype_converter_.convert(this.ctype_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getCtypeCount() {
                return this.ctype_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<DisplayCreativeType> getCtypeList() {
                return new Internal.ListAdapter(this.ctype_, DisplayPlacement.ctype_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getCtypeValue(int i) {
                return this.ctype_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<Integer> getCtypeValueList() {
                return Collections.unmodifiableList(this.ctype_);
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final DisplayPlacement getDefaultInstanceForType() {
                return DisplayPlacement.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final DisplayFormat getDisplayfmt(int i) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                return repeatedFieldBuilderV3 == null ? this.displayfmt_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final DisplayFormat.Builder getDisplayfmtBuilder(int i) {
                return getDisplayfmtFieldBuilder().getBuilder(i);
            }

            public final List<DisplayFormat.Builder> getDisplayfmtBuilderList() {
                return getDisplayfmtFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getDisplayfmtCount() {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                return repeatedFieldBuilderV3 == null ? this.displayfmt_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<DisplayFormat> getDisplayfmtList() {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.displayfmt_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final DisplayFormatOrBuilder getDisplayfmtOrBuilder(int i) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                return repeatedFieldBuilderV3 == null ? this.displayfmt_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<? extends DisplayFormatOrBuilder> getDisplayfmtOrBuilderList() {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.displayfmt_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final EventSpec getEvent(int i) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final EventSpec.Builder getEventBuilder(int i) {
                return getEventFieldBuilder().getBuilder(i);
            }

            public final List<EventSpec.Builder> getEventBuilderList() {
                return getEventFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getEventCount() {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? this.event_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<EventSpec> getEventList() {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.event_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final EventSpecOrBuilder getEventOrBuilder(int i) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<? extends EventSpecOrBuilder> getEventOrBuilderList() {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.event_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final String getIfrbust(int i) {
                return (String) this.ifrbust_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final ByteString getIfrbustBytes(int i) {
                return this.ifrbust_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getIfrbustCount() {
                return this.ifrbust_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final ProtocolStringList getIfrbustList() {
                return this.ifrbust_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final boolean getInstl() {
                return this.instl_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final String getMime(int i) {
                return (String) this.mime_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final ByteString getMimeBytes(int i) {
                return this.mime_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getMimeCount() {
                return this.mime_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final ProtocolStringList getMimeList() {
                return this.mime_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final NativeFormat getNativefmt() {
                SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> singleFieldBuilderV3 = this.nativefmtBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                NativeFormat nativeFormat = this.nativefmt_;
                NativeFormat nativeFormat2 = nativeFormat;
                if (nativeFormat == null) {
                    nativeFormat2 = NativeFormat.getDefaultInstance();
                }
                return nativeFormat2;
            }

            public final NativeFormat.Builder getNativefmtBuilder() {
                onChanged();
                return getNativefmtFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final NativeFormatOrBuilder getNativefmtOrBuilder() {
                SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> singleFieldBuilderV3 = this.nativefmtBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                NativeFormat nativeFormat = this.nativefmt_;
                NativeFormat nativeFormat2 = nativeFormat;
                if (nativeFormat == null) {
                    nativeFormat2 = NativeFormat.getDefaultInstance();
                }
                return nativeFormat2;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final PlacementPosition getPos() {
                PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
                PlacementPosition placementPosition = valueOf;
                if (valueOf == null) {
                    placementPosition = PlacementPosition.UNRECOGNIZED;
                }
                return placementPosition;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getPosValue() {
                return this.pos_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final boolean getPriv() {
                return this.priv_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final DisplayPlacementType getPtype() {
                DisplayPlacementType valueOf = DisplayPlacementType.valueOf(this.ptype_);
                DisplayPlacementType displayPlacementType = valueOf;
                if (valueOf == null) {
                    displayPlacementType = DisplayPlacementType.UNRECOGNIZED;
                }
                return displayPlacementType;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getPtypeValue() {
                return this.ptype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final boolean getTopframe() {
                return this.topframe_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final SizeUnit getUnit() {
                SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
                SizeUnit sizeUnit = valueOf;
                if (valueOf == null) {
                    sizeUnit = SizeUnit.UNRECOGNIZED;
                }
                return sizeUnit;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getUnitValue() {
                return this.unit_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
            public final boolean hasNativefmt() {
                return (this.nativefmtBuilder_ == null && this.nativefmt_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_fieldAccessorTable.ensureFieldAccessorsInitialized(DisplayPlacement.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.access$13500()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.adcom.Placement$DisplayPlacement r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Placement$DisplayPlacement$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.adcom.Placement$DisplayPlacement r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.adcom.Placement$DisplayPlacement$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof DisplayPlacement) {
                    return mergeFrom((DisplayPlacement) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(DisplayPlacement displayPlacement) {
                if (displayPlacement == DisplayPlacement.getDefaultInstance()) {
                    return this;
                }
                if (displayPlacement.pos_ != 0) {
                    setPosValue(displayPlacement.getPosValue());
                }
                if (displayPlacement.getInstl()) {
                    setInstl(displayPlacement.getInstl());
                }
                if (displayPlacement.getTopframe()) {
                    setTopframe(displayPlacement.getTopframe());
                }
                if (!displayPlacement.ifrbust_.isEmpty()) {
                    if (this.ifrbust_.isEmpty()) {
                        this.ifrbust_ = displayPlacement.ifrbust_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureIfrbustIsMutable();
                        this.ifrbust_.addAll(displayPlacement.ifrbust_);
                    }
                    onChanged();
                }
                if (displayPlacement.clktype_ != 0) {
                    setClktypeValue(displayPlacement.getClktypeValue());
                }
                if (displayPlacement.getAmpren() != 0) {
                    setAmpren(displayPlacement.getAmpren());
                }
                if (displayPlacement.ptype_ != 0) {
                    setPtypeValue(displayPlacement.getPtypeValue());
                }
                if (displayPlacement.context_ != 0) {
                    setContextValue(displayPlacement.getContextValue());
                }
                if (!displayPlacement.mime_.isEmpty()) {
                    if (this.mime_.isEmpty()) {
                        this.mime_ = displayPlacement.mime_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureMimeIsMutable();
                        this.mime_.addAll(displayPlacement.mime_);
                    }
                    onChanged();
                }
                if (!displayPlacement.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = displayPlacement.api_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(displayPlacement.api_);
                    }
                    onChanged();
                }
                if (!displayPlacement.ctype_.isEmpty()) {
                    if (this.ctype_.isEmpty()) {
                        this.ctype_ = displayPlacement.ctype_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureCtypeIsMutable();
                        this.ctype_.addAll(displayPlacement.ctype_);
                    }
                    onChanged();
                }
                if (displayPlacement.getW() != 0) {
                    setW(displayPlacement.getW());
                }
                if (displayPlacement.getH() != 0) {
                    setH(displayPlacement.getH());
                }
                if (displayPlacement.unit_ != 0) {
                    setUnitValue(displayPlacement.getUnitValue());
                }
                if (displayPlacement.getPriv()) {
                    setPriv(displayPlacement.getPriv());
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                if (this.displayfmtBuilder_ == null) {
                    if (!displayPlacement.displayfmt_.isEmpty()) {
                        if (this.displayfmt_.isEmpty()) {
                            this.displayfmt_ = displayPlacement.displayfmt_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureDisplayfmtIsMutable();
                            this.displayfmt_.addAll(displayPlacement.displayfmt_);
                        }
                        onChanged();
                    }
                } else if (!displayPlacement.displayfmt_.isEmpty()) {
                    if (this.displayfmtBuilder_.isEmpty()) {
                        this.displayfmtBuilder_.dispose();
                        this.displayfmtBuilder_ = null;
                        this.displayfmt_ = displayPlacement.displayfmt_;
                        this.bitField0_ &= -17;
                        this.displayfmtBuilder_ = DisplayPlacement.alwaysUseFieldBuilders ? getDisplayfmtFieldBuilder() : null;
                    } else {
                        this.displayfmtBuilder_.addAllMessages(displayPlacement.displayfmt_);
                    }
                }
                if (displayPlacement.hasNativefmt()) {
                    mergeNativefmt(displayPlacement.getNativefmt());
                }
                if (this.eventBuilder_ == null) {
                    if (!displayPlacement.event_.isEmpty()) {
                        if (this.event_.isEmpty()) {
                            this.event_ = displayPlacement.event_;
                            this.bitField0_ &= -33;
                        } else {
                            ensureEventIsMutable();
                            this.event_.addAll(displayPlacement.event_);
                        }
                        onChanged();
                    }
                } else if (!displayPlacement.event_.isEmpty()) {
                    if (this.eventBuilder_.isEmpty()) {
                        this.eventBuilder_.dispose();
                        this.eventBuilder_ = null;
                        this.event_ = displayPlacement.event_;
                        this.bitField0_ &= -33;
                        this.eventBuilder_ = DisplayPlacement.alwaysUseFieldBuilders ? getEventFieldBuilder() : null;
                    } else {
                        this.eventBuilder_.addAllMessages(displayPlacement.event_);
                    }
                }
                if (displayPlacement.hasExt()) {
                    mergeExt(displayPlacement.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!displayPlacement.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = displayPlacement.extProto_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(displayPlacement.extProto_);
                        }
                        onChanged();
                    }
                } else if (!displayPlacement.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = displayPlacement.extProto_;
                        this.bitField0_ &= -65;
                        if (DisplayPlacement.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(displayPlacement.extProto_);
                    }
                }
                mergeUnknownFields(displayPlacement.unknownFields);
                onChanged();
                return this;
            }

            public final Builder mergeNativefmt(NativeFormat nativeFormat) {
                SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> singleFieldBuilderV3 = this.nativefmtBuilder_;
                if (singleFieldBuilderV3 == null) {
                    NativeFormat nativeFormat2 = this.nativefmt_;
                    if (nativeFormat2 != null) {
                        this.nativefmt_ = NativeFormat.newBuilder(nativeFormat2).mergeFrom(nativeFormat).buildPartial();
                    } else {
                        this.nativefmt_ = nativeFormat;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(nativeFormat);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeDisplayfmt(int i) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.remove(i);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.remove(i);
                }
                return this;
            }

            public final Builder removeEvent(int i) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.remove(i);
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

            public final Builder setAmpren(int i) {
                this.ampren_ = i;
                onChanged();
                return this;
            }

            public final Builder setApi(int i, ApiFramework apiFramework) {
                Objects.requireNonNull(apiFramework);
                ensureApiIsMutable();
                this.api_.set(i, Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setApiValue(int i, int i2) {
                ensureApiIsMutable();
                this.api_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public final Builder setClktype(ClickType clickType) {
                Objects.requireNonNull(clickType);
                this.clktype_ = clickType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setClktypeValue(int i) {
                this.clktype_ = i;
                onChanged();
                return this;
            }

            public final Builder setContext(DisplayContextType displayContextType) {
                Objects.requireNonNull(displayContextType);
                this.context_ = displayContextType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setContextValue(int i) {
                this.context_ = i;
                onChanged();
                return this;
            }

            public final Builder setCtype(int i, DisplayCreativeType displayCreativeType) {
                Objects.requireNonNull(displayCreativeType);
                ensureCtypeIsMutable();
                this.ctype_.set(i, Integer.valueOf(displayCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setCtypeValue(int i, int i2) {
                ensureCtypeIsMutable();
                this.ctype_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public final Builder setDisplayfmt(int i, DisplayFormat.Builder builder) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setDisplayfmt(int i, DisplayFormat displayFormat) {
                RepeatedFieldBuilderV3<DisplayFormat, DisplayFormat.Builder, DisplayFormatOrBuilder> repeatedFieldBuilderV3 = this.displayfmtBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(displayFormat);
                    ensureDisplayfmtIsMutable();
                    this.displayfmt_.set(i, displayFormat);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, displayFormat);
                }
                return this;
            }

            public final Builder setEvent(int i, EventSpec.Builder builder) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setEvent(int i, EventSpec eventSpec) {
                RepeatedFieldBuilderV3<EventSpec, EventSpec.Builder, EventSpecOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(eventSpec);
                    ensureEventIsMutable();
                    this.event_.set(i, eventSpec);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, eventSpec);
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

            public final Builder setH(int i) {
                this.h_ = i;
                onChanged();
                return this;
            }

            public final Builder setIfrbust(int i, String str) {
                Objects.requireNonNull(str);
                ensureIfrbustIsMutable();
                this.ifrbust_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setInstl(boolean z) {
                this.instl_ = z;
                onChanged();
                return this;
            }

            public final Builder setMime(int i, String str) {
                Objects.requireNonNull(str);
                ensureMimeIsMutable();
                this.mime_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setNativefmt(NativeFormat.Builder builder) {
                SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> singleFieldBuilderV3 = this.nativefmtBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.nativefmt_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setNativefmt(NativeFormat nativeFormat) {
                SingleFieldBuilderV3<NativeFormat, NativeFormat.Builder, NativeFormatOrBuilder> singleFieldBuilderV3 = this.nativefmtBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(nativeFormat);
                    this.nativefmt_ = nativeFormat;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(nativeFormat);
                }
                return this;
            }

            public final Builder setPos(PlacementPosition placementPosition) {
                Objects.requireNonNull(placementPosition);
                this.pos_ = placementPosition.getNumber();
                onChanged();
                return this;
            }

            public final Builder setPosValue(int i) {
                this.pos_ = i;
                onChanged();
                return this;
            }

            public final Builder setPriv(boolean z) {
                this.priv_ = z;
                onChanged();
                return this;
            }

            public final Builder setPtype(DisplayPlacementType displayPlacementType) {
                Objects.requireNonNull(displayPlacementType);
                this.ptype_ = displayPlacementType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setPtypeValue(int i) {
                this.ptype_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setTopframe(boolean z) {
                this.topframe_ = z;
                onChanged();
                return this;
            }

            public final Builder setUnit(SizeUnit sizeUnit) {
                Objects.requireNonNull(sizeUnit);
                this.unit_ = sizeUnit.getNumber();
                onChanged();
                return this;
            }

            public final Builder setUnitValue(int i) {
                this.unit_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public final Builder setW(int i) {
                this.w_ = i;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat.class */
        public static final class DisplayFormat extends GeneratedMessageV3 implements DisplayFormatOrBuilder {
            public static final int EXPDIR_FIELD_NUMBER = 5;
            public static final int EXT_FIELD_NUMBER = 7;
            public static final int EXT_PROTO_FIELD_NUMBER = 6;
            public static final int HRATIO_FIELD_NUMBER = 4;
            public static final int H_FIELD_NUMBER = 2;
            public static final int WRATIO_FIELD_NUMBER = 3;
            public static final int W_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private int expdirMemoizedSerializedSize;
            private List<Integer> expdir_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private int hratio_;
            private byte memoizedIsInitialized;
            private int w_;
            private int wratio_;
            private static final Internal.ListAdapter.Converter<Integer, ExpandableDirection> expdir_converter_ = new Internal.ListAdapter.Converter<Integer, ExpandableDirection>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.1
                public final ExpandableDirection convert(Integer num) {
                    ExpandableDirection valueOf = ExpandableDirection.valueOf(num.intValue());
                    ExpandableDirection expandableDirection = valueOf;
                    if (valueOf == null) {
                        expandableDirection = ExpandableDirection.UNRECOGNIZED;
                    }
                    return expandableDirection;
                }
            };
            private static final DisplayFormat DEFAULT_INSTANCE = new DisplayFormat();
            private static final Parser<DisplayFormat> PARSER = new AbstractParser<DisplayFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.2
                @Override // com.explorestack.protobuf.Parser
                public final DisplayFormat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new DisplayFormat(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormat$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DisplayFormatOrBuilder {
                private int bitField0_;
                private List<Integer> expdir_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private int h_;
                private int hratio_;
                private int w_;
                private int wratio_;

                private Builder() {
                    this.expdir_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.expdir_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureExpdirIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.expdir_ = new ArrayList(this.expdir_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 2;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_DisplayFormat_descriptor;
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
                    if (DisplayFormat.alwaysUseFieldBuilders) {
                        getExtProtoFieldBuilder();
                    }
                }

                public final Builder addAllExpdir(Iterable<? extends ExpandableDirection> iterable) {
                    ensureExpdirIsMutable();
                    for (ExpandableDirection expandableDirection : iterable) {
                        this.expdir_.add(Integer.valueOf(expandableDirection.getNumber()));
                    }
                    onChanged();
                    return this;
                }

                public final Builder addAllExpdirValue(Iterable<Integer> iterable) {
                    ensureExpdirIsMutable();
                    for (Integer num : iterable) {
                        this.expdir_.add(Integer.valueOf(num.intValue()));
                    }
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

                public final Builder addExpdir(ExpandableDirection expandableDirection) {
                    Objects.requireNonNull(expandableDirection);
                    ensureExpdirIsMutable();
                    this.expdir_.add(Integer.valueOf(expandableDirection.getNumber()));
                    onChanged();
                    return this;
                }

                public final Builder addExpdirValue(int i) {
                    ensureExpdirIsMutable();
                    this.expdir_.add(Integer.valueOf(i));
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

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final DisplayFormat build() {
                    DisplayFormat buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final DisplayFormat buildPartial() {
                    DisplayFormat displayFormat = new DisplayFormat(this);
                    displayFormat.w_ = this.w_;
                    displayFormat.h_ = this.h_;
                    displayFormat.wratio_ = this.wratio_;
                    displayFormat.hratio_ = this.hratio_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.expdir_ = Collections.unmodifiableList(this.expdir_);
                        this.bitField0_ &= -2;
                    }
                    displayFormat.expdir_ = this.expdir_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        displayFormat.ext_ = this.ext_;
                    } else {
                        displayFormat.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        displayFormat.extProto_ = this.extProto_;
                    } else {
                        displayFormat.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return displayFormat;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.w_ = 0;
                    this.h_ = 0;
                    this.wratio_ = 0;
                    this.hratio_ = 0;
                    this.expdir_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -3;
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                public final Builder clearExpdir() {
                    this.expdir_ = Collections.emptyList();
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

                public final Builder clearH() {
                    this.h_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearHratio() {
                    this.hratio_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearW() {
                    this.w_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearWratio() {
                    this.wratio_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final DisplayFormat getDefaultInstanceForType() {
                    return DisplayFormat.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_DisplayFormat_descriptor;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final ExpandableDirection getExpdir(int i) {
                    return (ExpandableDirection) DisplayFormat.expdir_converter_.convert(this.expdir_.get(i));
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getExpdirCount() {
                    return this.expdir_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final List<ExpandableDirection> getExpdirList() {
                    return new Internal.ListAdapter(this.expdir_, DisplayFormat.expdir_converter_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getExpdirValue(int i) {
                    return this.expdir_.get(i).intValue();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final List<Integer> getExpdirValueList() {
                    return Collections.unmodifiableList(this.expdir_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getH() {
                    return this.h_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getHratio() {
                    return this.hratio_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getW() {
                    return this.w_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final int getWratio() {
                    return this.wratio_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_DisplayFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(DisplayFormat.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.access$1300()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat$Builder r0 = r0.mergeFrom(r1)
                    L_0x001a:
                        r0 = r4
                        return r0
                    L_0x001c:
                        r5 = move-exception
                        r0 = r7
                        r6 = r0
                        r0 = r5
                        r7 = r0
                        goto L_0x0037
                    L_0x0024:
                        r6 = move-exception
                        r0 = r6
                        com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat) r0     // Catch: all -> 0x001c
                        r5 = r0
                        r0 = r6
                        java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                        throw r0     // Catch: all -> 0x0032
                    L_0x0032:
                        r6 = move-exception
                        r0 = r6
                        r7 = r0
                        r0 = r5
                        r6 = r0
                    L_0x0037:
                        r0 = r6
                        if (r0 == 0) goto L_0x0041
                        r0 = r4
                        r1 = r6
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat$Builder r0 = r0.mergeFrom(r1)
                    L_0x0041:
                        r0 = r7
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormat.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$DisplayFormat$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof DisplayFormat) {
                        return mergeFrom((DisplayFormat) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(DisplayFormat displayFormat) {
                    if (displayFormat == DisplayFormat.getDefaultInstance()) {
                        return this;
                    }
                    if (displayFormat.getW() != 0) {
                        setW(displayFormat.getW());
                    }
                    if (displayFormat.getH() != 0) {
                        setH(displayFormat.getH());
                    }
                    if (displayFormat.getWratio() != 0) {
                        setWratio(displayFormat.getWratio());
                    }
                    if (displayFormat.getHratio() != 0) {
                        setHratio(displayFormat.getHratio());
                    }
                    if (!displayFormat.expdir_.isEmpty()) {
                        if (this.expdir_.isEmpty()) {
                            this.expdir_ = displayFormat.expdir_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureExpdirIsMutable();
                            this.expdir_.addAll(displayFormat.expdir_);
                        }
                        onChanged();
                    }
                    if (displayFormat.hasExt()) {
                        mergeExt(displayFormat.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!displayFormat.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = displayFormat.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(displayFormat.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!displayFormat.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = displayFormat.extProto_;
                            this.bitField0_ &= -3;
                            if (DisplayFormat.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(displayFormat.extProto_);
                        }
                    }
                    mergeUnknownFields(displayFormat.unknownFields);
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

                public final Builder setExpdir(int i, ExpandableDirection expandableDirection) {
                    Objects.requireNonNull(expandableDirection);
                    ensureExpdirIsMutable();
                    this.expdir_.set(i, Integer.valueOf(expandableDirection.getNumber()));
                    onChanged();
                    return this;
                }

                public final Builder setExpdirValue(int i, int i2) {
                    ensureExpdirIsMutable();
                    this.expdir_.set(i, Integer.valueOf(i2));
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

                public final Builder setH(int i) {
                    this.h_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setHratio(int i) {
                    this.hratio_ = i;
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

                public final Builder setW(int i) {
                    this.w_ = i;
                    onChanged();
                    return this;
                }

                public final Builder setWratio(int i) {
                    this.wratio_ = i;
                    onChanged();
                    return this;
                }
            }

            private DisplayFormat() {
                this.memoizedIsInitialized = (byte) (-1);
                this.expdir_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private DisplayFormat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                if (readTag == 8) {
                                    this.w_ = codedInputStream.readUInt32();
                                } else if (readTag == 16) {
                                    this.h_ = codedInputStream.readUInt32();
                                } else if (readTag == 24) {
                                    this.wratio_ = codedInputStream.readUInt32();
                                } else if (readTag == 32) {
                                    this.hratio_ = codedInputStream.readUInt32();
                                } else if (readTag == 40) {
                                    int readEnum = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 1) == 0) {
                                        this.expdir_ = new ArrayList();
                                        i |= 1;
                                    }
                                    this.expdir_.add(Integer.valueOf(readEnum));
                                } else if (readTag == 42) {
                                    int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    int i2 = i;
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        int readEnum2 = codedInputStream.readEnum();
                                        i2 = i2;
                                        if ((i2 & 1) == 0) {
                                            this.expdir_ = new ArrayList();
                                            i2 |= 1;
                                        }
                                        this.expdir_.add(Integer.valueOf(readEnum2));
                                    }
                                    codedInputStream.popLimit(pushLimit);
                                    i = i2;
                                } else if (readTag == 50) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.extProto_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                } else if (readTag == 58) {
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
                            this.expdir_ = Collections.unmodifiableList(this.expdir_);
                        }
                        if ((i & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private DisplayFormat(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static DisplayFormat getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_DisplayFormat_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(DisplayFormat displayFormat) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(displayFormat);
            }

            public static DisplayFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static DisplayFormat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static DisplayFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static DisplayFormat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static DisplayFormat parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static DisplayFormat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static DisplayFormat parseFrom(InputStream inputStream) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static DisplayFormat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (DisplayFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static DisplayFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static DisplayFormat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static DisplayFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static DisplayFormat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<DisplayFormat> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof DisplayFormat)) {
                    return super.equals(obj);
                }
                DisplayFormat displayFormat = (DisplayFormat) obj;
                if (getW() == displayFormat.getW() && getH() == displayFormat.getH() && getWratio() == displayFormat.getWratio() && getHratio() == displayFormat.getHratio() && this.expdir_.equals(displayFormat.expdir_) && hasExt() == displayFormat.hasExt()) {
                    return (!hasExt() || getExt().equals(displayFormat.getExt())) && getExtProtoList().equals(displayFormat.getExtProtoList()) && this.unknownFields.equals(displayFormat.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final DisplayFormat getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final ExpandableDirection getExpdir(int i) {
                return expdir_converter_.convert(this.expdir_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getExpdirCount() {
                return this.expdir_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final List<ExpandableDirection> getExpdirList() {
                return new Internal.ListAdapter(this.expdir_, expdir_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getExpdirValue(int i) {
                return this.expdir_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final List<Integer> getExpdirValueList() {
                return this.expdir_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getHratio() {
                return this.hratio_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<DisplayFormat> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int i2 = this.w_;
                int computeUInt32Size = i2 != 0 ? CodedOutputStream.computeUInt32Size(1, i2) + 0 : 0;
                int i3 = this.h_;
                int i4 = computeUInt32Size;
                if (i3 != 0) {
                    i4 = computeUInt32Size + CodedOutputStream.computeUInt32Size(2, i3);
                }
                int i5 = this.wratio_;
                int i6 = i4;
                if (i5 != 0) {
                    i6 = i4 + CodedOutputStream.computeUInt32Size(3, i5);
                }
                int i7 = this.hratio_;
                int i8 = i6;
                if (i7 != 0) {
                    i8 = i6 + CodedOutputStream.computeUInt32Size(4, i7);
                }
                int i9 = 0;
                for (int i10 = 0; i10 < this.expdir_.size(); i10++) {
                    i9 += CodedOutputStream.computeEnumSizeNoTag(this.expdir_.get(i10).intValue());
                }
                int i11 = i8 + i9;
                int i12 = i11;
                if (!getExpdirList().isEmpty()) {
                    i12 = i11 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i9);
                }
                this.expdirMemoizedSerializedSize = i9;
                for (int i13 = 0; i13 < this.extProto_.size(); i13++) {
                    i12 += CodedOutputStream.computeMessageSize(6, this.extProto_.get(i13));
                }
                int i14 = i12;
                if (this.ext_ != null) {
                    i14 = i12 + CodedOutputStream.computeMessageSize(7, getExt());
                }
                int serializedSize = i14 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final int getWratio() {
                return this.wratio_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.DisplayFormatOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getW()) * 37) + 2) * 53) + getH()) * 37) + 3) * 53) + getWratio()) * 37) + 4) * 53) + getHratio();
                int i = hashCode;
                if (getExpdirCount() > 0) {
                    i = (((hashCode * 37) + 5) * 53) + this.expdir_.hashCode();
                }
                int i2 = i;
                if (hasExt()) {
                    i2 = (((i * 37) + 7) * 53) + getExt().hashCode();
                }
                int i3 = i2;
                if (getExtProtoCount() > 0) {
                    i3 = (((i2 * 37) + 6) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_DisplayFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(DisplayFormat.class, Builder.class);
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
                return new DisplayFormat();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                int i = this.w_;
                if (i != 0) {
                    codedOutputStream.writeUInt32(1, i);
                }
                int i2 = this.h_;
                if (i2 != 0) {
                    codedOutputStream.writeUInt32(2, i2);
                }
                int i3 = this.wratio_;
                if (i3 != 0) {
                    codedOutputStream.writeUInt32(3, i3);
                }
                int i4 = this.hratio_;
                if (i4 != 0) {
                    codedOutputStream.writeUInt32(4, i4);
                }
                if (getExpdirList().size() > 0) {
                    codedOutputStream.writeUInt32NoTag(42);
                    codedOutputStream.writeUInt32NoTag(this.expdirMemoizedSerializedSize);
                }
                for (int i5 = 0; i5 < this.expdir_.size(); i5++) {
                    codedOutputStream.writeEnumNoTag(this.expdir_.get(i5).intValue());
                }
                for (int i6 = 0; i6 < this.extProto_.size(); i6++) {
                    codedOutputStream.writeMessage(6, this.extProto_.get(i6));
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(7, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$DisplayFormatOrBuilder.class */
        public interface DisplayFormatOrBuilder extends MessageOrBuilder {
            ExpandableDirection getExpdir(int i);

            int getExpdirCount();

            List<ExpandableDirection> getExpdirList();

            int getExpdirValue(int i);

            List<Integer> getExpdirValueList();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            int getH();

            int getHratio();

            int getW();

            int getWratio();

            boolean hasExt();
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec.class */
        public static final class EventSpec extends GeneratedMessageV3 implements EventSpecOrBuilder {
            public static final int API_FIELD_NUMBER = 3;
            public static final int EXT_FIELD_NUMBER = 9;
            public static final int EXT_PROTO_FIELD_NUMBER = 8;
            public static final int JSTRK_FIELD_NUMBER = 4;
            public static final int METHOD_FIELD_NUMBER = 2;
            public static final int PXTRK_FIELD_NUMBER = 6;
            public static final int TYPE_FIELD_NUMBER = 1;
            public static final int WJS_FIELD_NUMBER = 5;
            public static final int WPX_FIELD_NUMBER = 7;
            private static final long serialVersionUID = 0;
            private int apiMemoizedSerializedSize;
            private List<Integer> api_;
            private List<Any> extProto_;
            private Struct ext_;
            private LazyStringList jstrk_;
            private byte memoizedIsInitialized;
            private int methodMemoizedSerializedSize;
            private List<Integer> method_;
            private LazyStringList pxtrk_;
            private int type_;
            private boolean wjs_;
            private boolean wpx_;
            private static final Internal.ListAdapter.Converter<Integer, EventTrackingMethod> method_converter_ = new Internal.ListAdapter.Converter<Integer, EventTrackingMethod>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.1
                public final EventTrackingMethod convert(Integer num) {
                    EventTrackingMethod valueOf = EventTrackingMethod.valueOf(num.intValue());
                    EventTrackingMethod eventTrackingMethod = valueOf;
                    if (valueOf == null) {
                        eventTrackingMethod = EventTrackingMethod.UNRECOGNIZED;
                    }
                    return eventTrackingMethod;
                }
            };
            private static final Internal.ListAdapter.Converter<Integer, ApiFramework> api_converter_ = new Internal.ListAdapter.Converter<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.2
                public final ApiFramework convert(Integer num) {
                    ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                    ApiFramework apiFramework = valueOf;
                    if (valueOf == null) {
                        apiFramework = ApiFramework.UNRECOGNIZED;
                    }
                    return apiFramework;
                }
            };
            private static final EventSpec DEFAULT_INSTANCE = new EventSpec();
            private static final Parser<EventSpec> PARSER = new AbstractParser<EventSpec>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.3
                @Override // com.explorestack.protobuf.Parser
                public final EventSpec parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new EventSpec(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpec$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements EventSpecOrBuilder {
                private List<Integer> api_;
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private LazyStringList jstrk_;
                private List<Integer> method_;
                private LazyStringList pxtrk_;
                private int type_;
                private boolean wjs_;
                private boolean wpx_;

                private Builder() {
                    this.type_ = 0;
                    this.method_ = Collections.emptyList();
                    this.api_ = Collections.emptyList();
                    this.jstrk_ = LazyStringArrayList.EMPTY;
                    this.pxtrk_ = LazyStringArrayList.EMPTY;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.type_ = 0;
                    this.method_ = Collections.emptyList();
                    this.api_ = Collections.emptyList();
                    this.jstrk_ = LazyStringArrayList.EMPTY;
                    this.pxtrk_ = LazyStringArrayList.EMPTY;
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureApiIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.api_ = new ArrayList(this.api_);
                        this.bitField0_ |= 2;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 16) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 16;
                    }
                }

                private void ensureJstrkIsMutable() {
                    if ((this.bitField0_ & 4) == 0) {
                        this.jstrk_ = new LazyStringArrayList(this.jstrk_);
                        this.bitField0_ |= 4;
                    }
                }

                private void ensureMethodIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.method_ = new ArrayList(this.method_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensurePxtrkIsMutable() {
                    if ((this.bitField0_ & 8) == 0) {
                        this.pxtrk_ = new LazyStringArrayList(this.pxtrk_);
                        this.bitField0_ |= 8;
                    }
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_descriptor;
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
                        this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                        this.extProto_ = null;
                    }
                    return this.extProtoBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (EventSpec.alwaysUseFieldBuilders) {
                        getExtProtoFieldBuilder();
                    }
                }

                public final Builder addAllApi(Iterable<? extends ApiFramework> iterable) {
                    ensureApiIsMutable();
                    for (ApiFramework apiFramework : iterable) {
                        this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                    }
                    onChanged();
                    return this;
                }

                public final Builder addAllApiValue(Iterable<Integer> iterable) {
                    ensureApiIsMutable();
                    for (Integer num : iterable) {
                        this.api_.add(Integer.valueOf(num.intValue()));
                    }
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

                public final Builder addAllJstrk(Iterable<String> iterable) {
                    ensureJstrkIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.jstrk_);
                    onChanged();
                    return this;
                }

                public final Builder addAllMethod(Iterable<? extends EventTrackingMethod> iterable) {
                    ensureMethodIsMutable();
                    for (EventTrackingMethod eventTrackingMethod : iterable) {
                        this.method_.add(Integer.valueOf(eventTrackingMethod.getNumber()));
                    }
                    onChanged();
                    return this;
                }

                public final Builder addAllMethodValue(Iterable<Integer> iterable) {
                    ensureMethodIsMutable();
                    for (Integer num : iterable) {
                        this.method_.add(Integer.valueOf(num.intValue()));
                    }
                    onChanged();
                    return this;
                }

                public final Builder addAllPxtrk(Iterable<String> iterable) {
                    ensurePxtrkIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.pxtrk_);
                    onChanged();
                    return this;
                }

                public final Builder addApi(ApiFramework apiFramework) {
                    Objects.requireNonNull(apiFramework);
                    ensureApiIsMutable();
                    this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                    onChanged();
                    return this;
                }

                public final Builder addApiValue(int i) {
                    ensureApiIsMutable();
                    this.api_.add(Integer.valueOf(i));
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

                public final Builder addJstrk(String str) {
                    Objects.requireNonNull(str);
                    ensureJstrkIsMutable();
                    this.jstrk_.add(str);
                    onChanged();
                    return this;
                }

                public final Builder addJstrkBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    EventSpec.checkByteStringIsUtf8(byteString);
                    ensureJstrkIsMutable();
                    this.jstrk_.add(byteString);
                    onChanged();
                    return this;
                }

                public final Builder addMethod(EventTrackingMethod eventTrackingMethod) {
                    Objects.requireNonNull(eventTrackingMethod);
                    ensureMethodIsMutable();
                    this.method_.add(Integer.valueOf(eventTrackingMethod.getNumber()));
                    onChanged();
                    return this;
                }

                public final Builder addMethodValue(int i) {
                    ensureMethodIsMutable();
                    this.method_.add(Integer.valueOf(i));
                    onChanged();
                    return this;
                }

                public final Builder addPxtrk(String str) {
                    Objects.requireNonNull(str);
                    ensurePxtrkIsMutable();
                    this.pxtrk_.add(str);
                    onChanged();
                    return this;
                }

                public final Builder addPxtrkBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    EventSpec.checkByteStringIsUtf8(byteString);
                    ensurePxtrkIsMutable();
                    this.pxtrk_.add(byteString);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                    return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final EventSpec build() {
                    EventSpec buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final EventSpec buildPartial() {
                    EventSpec eventSpec = new EventSpec(this);
                    eventSpec.type_ = this.type_;
                    if ((this.bitField0_ & 1) != 0) {
                        this.method_ = Collections.unmodifiableList(this.method_);
                        this.bitField0_ &= -2;
                    }
                    eventSpec.method_ = this.method_;
                    if ((this.bitField0_ & 2) != 0) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                        this.bitField0_ &= -3;
                    }
                    eventSpec.api_ = this.api_;
                    if ((this.bitField0_ & 4) != 0) {
                        this.jstrk_ = this.jstrk_.getUnmodifiableView();
                        this.bitField0_ &= -5;
                    }
                    eventSpec.jstrk_ = this.jstrk_;
                    eventSpec.wjs_ = this.wjs_;
                    if ((this.bitField0_ & 8) != 0) {
                        this.pxtrk_ = this.pxtrk_.getUnmodifiableView();
                        this.bitField0_ &= -9;
                    }
                    eventSpec.pxtrk_ = this.pxtrk_;
                    eventSpec.wpx_ = this.wpx_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        eventSpec.ext_ = this.ext_;
                    } else {
                        eventSpec.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 16) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -17;
                        }
                        eventSpec.extProto_ = this.extProto_;
                    } else {
                        eventSpec.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return eventSpec;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.type_ = 0;
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    this.api_ = Collections.emptyList();
                    this.bitField0_ &= -3;
                    this.jstrk_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -5;
                    this.wjs_ = false;
                    this.pxtrk_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -9;
                    this.wpx_ = false;
                    if (this.extBuilder_ == null) {
                        this.ext_ = null;
                    } else {
                        this.ext_ = null;
                        this.extBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.extProto_ = Collections.emptyList();
                        this.bitField0_ &= -17;
                    } else {
                        repeatedFieldBuilderV3.clear();
                    }
                    return this;
                }

                public final Builder clearApi() {
                    this.api_ = Collections.emptyList();
                    this.bitField0_ &= -3;
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
                        this.bitField0_ &= -17;
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

                public final Builder clearJstrk() {
                    this.jstrk_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -5;
                    onChanged();
                    return this;
                }

                public final Builder clearMethod() {
                    this.method_ = Collections.emptyList();
                    this.bitField0_ &= -2;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearPxtrk() {
                    this.pxtrk_ = LazyStringArrayList.EMPTY;
                    this.bitField0_ &= -9;
                    onChanged();
                    return this;
                }

                public final Builder clearType() {
                    this.type_ = 0;
                    onChanged();
                    return this;
                }

                public final Builder clearWjs() {
                    this.wjs_ = false;
                    onChanged();
                    return this;
                }

                public final Builder clearWpx() {
                    this.wpx_ = false;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final ApiFramework getApi(int i) {
                    return (ApiFramework) EventSpec.api_converter_.convert(this.api_.get(i));
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getApiCount() {
                    return this.api_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final List<ApiFramework> getApiList() {
                    return new Internal.ListAdapter(this.api_, EventSpec.api_converter_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getApiValue(int i) {
                    return this.api_.get(i).intValue();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final List<Integer> getApiValueList() {
                    return Collections.unmodifiableList(this.api_);
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final EventSpec getDefaultInstanceForType() {
                    return EventSpec.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_descriptor;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final String getJstrk(int i) {
                    return (String) this.jstrk_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final ByteString getJstrkBytes(int i) {
                    return this.jstrk_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getJstrkCount() {
                    return this.jstrk_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final ProtocolStringList getJstrkList() {
                    return this.jstrk_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final EventTrackingMethod getMethod(int i) {
                    return (EventTrackingMethod) EventSpec.method_converter_.convert(this.method_.get(i));
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getMethodCount() {
                    return this.method_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final List<EventTrackingMethod> getMethodList() {
                    return new Internal.ListAdapter(this.method_, EventSpec.method_converter_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getMethodValue(int i) {
                    return this.method_.get(i).intValue();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final List<Integer> getMethodValueList() {
                    return Collections.unmodifiableList(this.method_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final String getPxtrk(int i) {
                    return (String) this.pxtrk_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final ByteString getPxtrkBytes(int i) {
                    return this.pxtrk_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getPxtrkCount() {
                    return this.pxtrk_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final ProtocolStringList getPxtrkList() {
                    return this.pxtrk_.getUnmodifiableView();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final EventType getType() {
                    EventType valueOf = EventType.valueOf(this.type_);
                    EventType eventType = valueOf;
                    if (valueOf == null) {
                        eventType = EventType.UNRECOGNIZED;
                    }
                    return eventType;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final int getTypeValue() {
                    return this.type_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final boolean getWjs() {
                    return this.wjs_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final boolean getWpx() {
                    return this.wpx_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_fieldAccessorTable.ensureFieldAccessorsInitialized(EventSpec.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.access$10100()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpec.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$EventSpec$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof EventSpec) {
                        return mergeFrom((EventSpec) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(EventSpec eventSpec) {
                    if (eventSpec == EventSpec.getDefaultInstance()) {
                        return this;
                    }
                    if (eventSpec.type_ != 0) {
                        setTypeValue(eventSpec.getTypeValue());
                    }
                    if (!eventSpec.method_.isEmpty()) {
                        if (this.method_.isEmpty()) {
                            this.method_ = eventSpec.method_;
                            this.bitField0_ &= -2;
                        } else {
                            ensureMethodIsMutable();
                            this.method_.addAll(eventSpec.method_);
                        }
                        onChanged();
                    }
                    if (!eventSpec.api_.isEmpty()) {
                        if (this.api_.isEmpty()) {
                            this.api_ = eventSpec.api_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureApiIsMutable();
                            this.api_.addAll(eventSpec.api_);
                        }
                        onChanged();
                    }
                    if (!eventSpec.jstrk_.isEmpty()) {
                        if (this.jstrk_.isEmpty()) {
                            this.jstrk_ = eventSpec.jstrk_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureJstrkIsMutable();
                            this.jstrk_.addAll(eventSpec.jstrk_);
                        }
                        onChanged();
                    }
                    if (eventSpec.getWjs()) {
                        setWjs(eventSpec.getWjs());
                    }
                    if (!eventSpec.pxtrk_.isEmpty()) {
                        if (this.pxtrk_.isEmpty()) {
                            this.pxtrk_ = eventSpec.pxtrk_;
                            this.bitField0_ &= -9;
                        } else {
                            ensurePxtrkIsMutable();
                            this.pxtrk_.addAll(eventSpec.pxtrk_);
                        }
                        onChanged();
                    }
                    if (eventSpec.getWpx()) {
                        setWpx(eventSpec.getWpx());
                    }
                    if (eventSpec.hasExt()) {
                        mergeExt(eventSpec.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!eventSpec.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = eventSpec.extProto_;
                                this.bitField0_ &= -17;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(eventSpec.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!eventSpec.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = eventSpec.extProto_;
                            this.bitField0_ &= -17;
                            if (EventSpec.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(eventSpec.extProto_);
                        }
                    }
                    mergeUnknownFields(eventSpec.unknownFields);
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

                public final Builder setApi(int i, ApiFramework apiFramework) {
                    Objects.requireNonNull(apiFramework);
                    ensureApiIsMutable();
                    this.api_.set(i, Integer.valueOf(apiFramework.getNumber()));
                    onChanged();
                    return this;
                }

                public final Builder setApiValue(int i, int i2) {
                    ensureApiIsMutable();
                    this.api_.set(i, Integer.valueOf(i2));
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

                public final Builder setJstrk(int i, String str) {
                    Objects.requireNonNull(str);
                    ensureJstrkIsMutable();
                    this.jstrk_.set(i, str);
                    onChanged();
                    return this;
                }

                public final Builder setMethod(int i, EventTrackingMethod eventTrackingMethod) {
                    Objects.requireNonNull(eventTrackingMethod);
                    ensureMethodIsMutable();
                    this.method_.set(i, Integer.valueOf(eventTrackingMethod.getNumber()));
                    onChanged();
                    return this;
                }

                public final Builder setMethodValue(int i, int i2) {
                    ensureMethodIsMutable();
                    this.method_.set(i, Integer.valueOf(i2));
                    onChanged();
                    return this;
                }

                public final Builder setPxtrk(int i, String str) {
                    Objects.requireNonNull(str);
                    ensurePxtrkIsMutable();
                    this.pxtrk_.set(i, str);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                    return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                }

                public final Builder setType(EventType eventType) {
                    Objects.requireNonNull(eventType);
                    this.type_ = eventType.getNumber();
                    onChanged();
                    return this;
                }

                public final Builder setTypeValue(int i) {
                    this.type_ = i;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.setUnknownFields(unknownFieldSet);
                }

                public final Builder setWjs(boolean z) {
                    this.wjs_ = z;
                    onChanged();
                    return this;
                }

                public final Builder setWpx(boolean z) {
                    this.wpx_ = z;
                    onChanged();
                    return this;
                }
            }

            private EventSpec() {
                this.memoizedIsInitialized = (byte) (-1);
                this.type_ = 0;
                this.method_ = Collections.emptyList();
                this.api_ = Collections.emptyList();
                this.jstrk_ = LazyStringArrayList.EMPTY;
                this.pxtrk_ = LazyStringArrayList.EMPTY;
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private EventSpec(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            try {
                                int readTag = codedInputStream.readTag();
                                switch (readTag) {
                                    case 0:
                                        break;
                                    case 8:
                                        this.type_ = codedInputStream.readEnum();
                                        continue;
                                    case 16:
                                        int readEnum = codedInputStream.readEnum();
                                        i = i;
                                        if ((i & 1) == 0) {
                                            this.method_ = new ArrayList();
                                            i |= 1;
                                        }
                                        this.method_.add(Integer.valueOf(readEnum));
                                        continue;
                                    case 18:
                                        int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                        int i2 = i;
                                        while (codedInputStream.getBytesUntilLimit() > 0) {
                                            int readEnum2 = codedInputStream.readEnum();
                                            i2 = i2;
                                            if ((i2 & 1) == 0) {
                                                this.method_ = new ArrayList();
                                                i2 |= 1;
                                            }
                                            this.method_.add(Integer.valueOf(readEnum2));
                                        }
                                        codedInputStream.popLimit(pushLimit);
                                        i = i2;
                                        continue;
                                    case 24:
                                        int readEnum3 = codedInputStream.readEnum();
                                        i = i;
                                        if ((i & 2) == 0) {
                                            this.api_ = new ArrayList();
                                            i |= 2;
                                        }
                                        this.api_.add(Integer.valueOf(readEnum3));
                                        continue;
                                    case 26:
                                        int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                        while (codedInputStream.getBytesUntilLimit() > 0) {
                                            int readEnum4 = codedInputStream.readEnum();
                                            i = i;
                                            if ((i & 2) == 0) {
                                                this.api_ = new ArrayList();
                                                i |= 2;
                                            }
                                            this.api_.add(Integer.valueOf(readEnum4));
                                        }
                                        codedInputStream.popLimit(pushLimit2);
                                        continue;
                                    case 34:
                                        String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                        i = i;
                                        if ((i & 4) == 0) {
                                            this.jstrk_ = new LazyStringArrayList();
                                            i |= 4;
                                        }
                                        this.jstrk_.add(readStringRequireUtf8);
                                        continue;
                                    case 40:
                                        this.wjs_ = codedInputStream.readBool();
                                        continue;
                                    case 50:
                                        String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                                        i = i;
                                        if ((i & 8) == 0) {
                                            this.pxtrk_ = new LazyStringArrayList();
                                            i |= 8;
                                        }
                                        this.pxtrk_.add(readStringRequireUtf82);
                                        continue;
                                    case 56:
                                        this.wpx_ = codedInputStream.readBool();
                                        continue;
                                    case 66:
                                        i = i;
                                        if ((i & 16) == 0) {
                                            this.extProto_ = new ArrayList();
                                            i |= 16;
                                        }
                                        this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                        continue;
                                    case 74:
                                        Struct.Builder builder = null;
                                        Struct struct = this.ext_;
                                        builder = struct != null ? struct.toBuilder() : builder;
                                        Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                        this.ext_ = struct2;
                                        if (builder != null) {
                                            builder.mergeFrom(struct2);
                                            this.ext_ = builder.buildPartial();
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
                            } catch (IOException e) {
                                throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                            }
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        }
                    } finally {
                        if ((i & 1) != 0) {
                            this.method_ = Collections.unmodifiableList(this.method_);
                        }
                        if ((i & 2) != 0) {
                            this.api_ = Collections.unmodifiableList(this.api_);
                        }
                        if ((i & 4) != 0) {
                            this.jstrk_ = this.jstrk_.getUnmodifiableView();
                        }
                        if ((i & 8) != 0) {
                            this.pxtrk_ = this.pxtrk_.getUnmodifiableView();
                        }
                        if ((i & 16) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private EventSpec(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static EventSpec getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(EventSpec eventSpec) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(eventSpec);
            }

            public static EventSpec parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static EventSpec parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static EventSpec parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static EventSpec parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static EventSpec parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static EventSpec parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static EventSpec parseFrom(InputStream inputStream) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static EventSpec parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (EventSpec) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static EventSpec parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static EventSpec parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static EventSpec parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static EventSpec parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<EventSpec> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof EventSpec)) {
                    return super.equals(obj);
                }
                EventSpec eventSpec = (EventSpec) obj;
                if (this.type_ == eventSpec.type_ && this.method_.equals(eventSpec.method_) && this.api_.equals(eventSpec.api_) && getJstrkList().equals(eventSpec.getJstrkList()) && getWjs() == eventSpec.getWjs() && getPxtrkList().equals(eventSpec.getPxtrkList()) && getWpx() == eventSpec.getWpx() && hasExt() == eventSpec.hasExt()) {
                    return (!hasExt() || getExt().equals(eventSpec.getExt())) && getExtProtoList().equals(eventSpec.getExtProtoList()) && this.unknownFields.equals(eventSpec.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final ApiFramework getApi(int i) {
                return api_converter_.convert(this.api_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final List<ApiFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getApiValue(int i) {
                return this.api_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final List<Integer> getApiValueList() {
                return this.api_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final EventSpec getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final String getJstrk(int i) {
                return (String) this.jstrk_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final ByteString getJstrkBytes(int i) {
                return this.jstrk_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getJstrkCount() {
                return this.jstrk_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final ProtocolStringList getJstrkList() {
                return this.jstrk_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final EventTrackingMethod getMethod(int i) {
                return method_converter_.convert(this.method_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getMethodCount() {
                return this.method_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final List<EventTrackingMethod> getMethodList() {
                return new Internal.ListAdapter(this.method_, method_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getMethodValue(int i) {
                return this.method_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final List<Integer> getMethodValueList() {
                return this.method_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<EventSpec> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final String getPxtrk(int i) {
                return (String) this.pxtrk_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final ByteString getPxtrkBytes(int i) {
                return this.pxtrk_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getPxtrkCount() {
                return this.pxtrk_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final ProtocolStringList getPxtrkList() {
                return this.pxtrk_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeEnumSize = this.type_ != EventType.EVENT_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.type_) + 0 : 0;
                int i2 = 0;
                for (int i3 = 0; i3 < this.method_.size(); i3++) {
                    i2 += CodedOutputStream.computeEnumSizeNoTag(this.method_.get(i3).intValue());
                }
                int i4 = computeEnumSize + i2;
                int i5 = i4;
                if (!getMethodList().isEmpty()) {
                    i5 = i4 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i2);
                }
                this.methodMemoizedSerializedSize = i2;
                int i6 = 0;
                for (int i7 = 0; i7 < this.api_.size(); i7++) {
                    i6 += CodedOutputStream.computeEnumSizeNoTag(this.api_.get(i7).intValue());
                }
                int i8 = i5 + i6;
                int i9 = i8;
                if (!getApiList().isEmpty()) {
                    i9 = i8 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i6);
                }
                this.apiMemoizedSerializedSize = i6;
                int i10 = 0;
                for (int i11 = 0; i11 < this.jstrk_.size(); i11++) {
                    i10 += computeStringSizeNoTag(this.jstrk_.getRaw(i11));
                }
                int size = i9 + i10 + (getJstrkList().size() * 1);
                boolean z = this.wjs_;
                int i12 = size;
                if (z) {
                    i12 = size + CodedOutputStream.computeBoolSize(5, z);
                }
                int i13 = 0;
                for (int i14 = 0; i14 < this.pxtrk_.size(); i14++) {
                    i13 += computeStringSizeNoTag(this.pxtrk_.getRaw(i14));
                }
                int size2 = i12 + i13 + (getPxtrkList().size() * 1);
                boolean z2 = this.wpx_;
                int i15 = size2;
                int i16 = 0;
                if (z2) {
                    i15 = size2 + CodedOutputStream.computeBoolSize(7, z2);
                    i16 = 0;
                }
                while (i16 < this.extProto_.size()) {
                    i15 += CodedOutputStream.computeMessageSize(8, this.extProto_.get(i16));
                    i16++;
                }
                int i17 = i15;
                if (this.ext_ != null) {
                    i17 = i15 + CodedOutputStream.computeMessageSize(9, getExt());
                }
                int serializedSize = i17 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final EventType getType() {
                EventType valueOf = EventType.valueOf(this.type_);
                EventType eventType = valueOf;
                if (valueOf == null) {
                    eventType = EventType.UNRECOGNIZED;
                }
                return eventType;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final boolean getWjs() {
                return this.wjs_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final boolean getWpx() {
                return this.wpx_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.EventSpecOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.type_;
                int i = hashCode;
                if (getMethodCount() > 0) {
                    i = (((hashCode * 37) + 2) * 53) + this.method_.hashCode();
                }
                int i2 = i;
                if (getApiCount() > 0) {
                    i2 = (((i * 37) + 3) * 53) + this.api_.hashCode();
                }
                int i3 = i2;
                if (getJstrkCount() > 0) {
                    i3 = (((i2 * 37) + 4) * 53) + getJstrkList().hashCode();
                }
                int hashBoolean = (((i3 * 37) + 5) * 53) + Internal.hashBoolean(getWjs());
                int i4 = hashBoolean;
                if (getPxtrkCount() > 0) {
                    i4 = (((hashBoolean * 37) + 6) * 53) + getPxtrkList().hashCode();
                }
                int hashBoolean2 = (((i4 * 37) + 7) * 53) + Internal.hashBoolean(getWpx());
                int i5 = hashBoolean2;
                if (hasExt()) {
                    i5 = (((hashBoolean2 * 37) + 9) * 53) + getExt().hashCode();
                }
                int i6 = i5;
                if (getExtProtoCount() > 0) {
                    i6 = (((i5 * 37) + 8) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i6 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_EventSpec_fieldAccessorTable.ensureFieldAccessorsInitialized(EventSpec.class, Builder.class);
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
                return new EventSpec();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                getSerializedSize();
                if (this.type_ != EventType.EVENT_TYPE_INVALID.getNumber()) {
                    codedOutputStream.writeEnum(1, this.type_);
                }
                if (getMethodList().size() > 0) {
                    codedOutputStream.writeUInt32NoTag(18);
                    codedOutputStream.writeUInt32NoTag(this.methodMemoizedSerializedSize);
                }
                for (int i = 0; i < this.method_.size(); i++) {
                    codedOutputStream.writeEnumNoTag(this.method_.get(i).intValue());
                }
                if (getApiList().size() > 0) {
                    codedOutputStream.writeUInt32NoTag(26);
                    codedOutputStream.writeUInt32NoTag(this.apiMemoizedSerializedSize);
                }
                for (int i2 = 0; i2 < this.api_.size(); i2++) {
                    codedOutputStream.writeEnumNoTag(this.api_.get(i2).intValue());
                }
                for (int i3 = 0; i3 < this.jstrk_.size(); i3++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 4, this.jstrk_.getRaw(i3));
                }
                boolean z = this.wjs_;
                if (z) {
                    codedOutputStream.writeBool(5, z);
                }
                for (int i4 = 0; i4 < this.pxtrk_.size(); i4++) {
                    GeneratedMessageV3.writeString(codedOutputStream, 6, this.pxtrk_.getRaw(i4));
                }
                boolean z2 = this.wpx_;
                int i5 = 0;
                if (z2) {
                    codedOutputStream.writeBool(7, z2);
                    i5 = 0;
                }
                while (i5 < this.extProto_.size()) {
                    codedOutputStream.writeMessage(8, this.extProto_.get(i5));
                    i5++;
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(9, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$EventSpecOrBuilder.class */
        public interface EventSpecOrBuilder extends MessageOrBuilder {
            ApiFramework getApi(int i);

            int getApiCount();

            List<ApiFramework> getApiList();

            int getApiValue(int i);

            List<Integer> getApiValueList();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getJstrk(int i);

            ByteString getJstrkBytes(int i);

            int getJstrkCount();

            List<String> getJstrkList();

            EventTrackingMethod getMethod(int i);

            int getMethodCount();

            List<EventTrackingMethod> getMethodList();

            int getMethodValue(int i);

            List<Integer> getMethodValueList();

            String getPxtrk(int i);

            ByteString getPxtrkBytes(int i);

            int getPxtrkCount();

            List<String> getPxtrkList();

            EventType getType();

            int getTypeValue();

            boolean getWjs();

            boolean getWpx();

            boolean hasExt();
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat.class */
        public static final class NativeFormat extends GeneratedMessageV3 implements NativeFormatOrBuilder {
            public static final int ASSET_FIELD_NUMBER = 1;
            public static final int EXT_FIELD_NUMBER = 3;
            public static final int EXT_PROTO_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private List<AssetFormat> asset_;
            private List<Any> extProto_;
            private Struct ext_;
            private byte memoizedIsInitialized;
            private static final NativeFormat DEFAULT_INSTANCE = new NativeFormat();
            private static final Parser<NativeFormat> PARSER = new AbstractParser<NativeFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.1
                @Override // com.explorestack.protobuf.Parser
                public final NativeFormat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new NativeFormat(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat.class */
            public static final class AssetFormat extends GeneratedMessageV3 implements AssetFormatOrBuilder {
                public static final int DATA_FIELD_NUMBER = 6;
                public static final int EXT_FIELD_NUMBER = 8;
                public static final int EXT_PROTO_FIELD_NUMBER = 7;
                public static final int ID_FIELD_NUMBER = 1;
                public static final int IMG_FIELD_NUMBER = 4;
                public static final int REQ_FIELD_NUMBER = 2;
                public static final int TITLE_FIELD_NUMBER = 3;
                public static final int VIDEO_FIELD_NUMBER = 5;
                private static final long serialVersionUID = 0;
                private DataAssetFormat data_;
                private List<Any> extProto_;
                private Struct ext_;
                private int id_;
                private ImageAssetFormat img_;
                private byte memoizedIsInitialized;
                private boolean req_;
                private TitleAssetFormat title_;
                private VideoPlacement video_;
                private static final AssetFormat DEFAULT_INSTANCE = new AssetFormat();
                private static final Parser<AssetFormat> PARSER = new AbstractParser<AssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.1
                    @Override // com.explorestack.protobuf.Parser
                    public final AssetFormat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return new AssetFormat(codedInputStream, extensionRegistryLite);
                    }
                };

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder.class */
                public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AssetFormatOrBuilder {
                    private int bitField0_;
                    private SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> dataBuilder_;
                    private DataAssetFormat data_;
                    private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                    private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int id_;
                    private SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> imgBuilder_;
                    private ImageAssetFormat img_;
                    private boolean req_;
                    private SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> titleBuilder_;
                    private TitleAssetFormat title_;
                    private SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> videoBuilder_;
                    private VideoPlacement video_;

                    private Builder() {
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                        super(builderParent);
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private void ensureExtProtoIsMutable() {
                        if ((this.bitField0_ & 1) == 0) {
                            this.extProto_ = new ArrayList(this.extProto_);
                            this.bitField0_ |= 1;
                        }
                    }

                    private SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> getDataFieldBuilder() {
                        if (this.dataBuilder_ == null) {
                            this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                            this.data_ = null;
                        }
                        return this.dataBuilder_;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_descriptor;
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

                    private SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> getImgFieldBuilder() {
                        if (this.imgBuilder_ == null) {
                            this.imgBuilder_ = new SingleFieldBuilderV3<>(getImg(), getParentForChildren(), isClean());
                            this.img_ = null;
                        }
                        return this.imgBuilder_;
                    }

                    private SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> getTitleFieldBuilder() {
                        if (this.titleBuilder_ == null) {
                            this.titleBuilder_ = new SingleFieldBuilderV3<>(getTitle(), getParentForChildren(), isClean());
                            this.title_ = null;
                        }
                        return this.titleBuilder_;
                    }

                    private SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> getVideoFieldBuilder() {
                        if (this.videoBuilder_ == null) {
                            this.videoBuilder_ = new SingleFieldBuilderV3<>(getVideo(), getParentForChildren(), isClean());
                            this.video_ = null;
                        }
                        return this.videoBuilder_;
                    }

                    private void maybeForceBuilderInitialization() {
                        if (AssetFormat.alwaysUseFieldBuilders) {
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
                    public final AssetFormat build() {
                        AssetFormat buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final AssetFormat buildPartial() {
                        AssetFormat assetFormat = new AssetFormat(this);
                        assetFormat.id_ = this.id_;
                        assetFormat.req_ = this.req_;
                        SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            assetFormat.title_ = this.title_;
                        } else {
                            assetFormat.title_ = singleFieldBuilderV3.build();
                        }
                        SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> singleFieldBuilderV32 = this.imgBuilder_;
                        if (singleFieldBuilderV32 == null) {
                            assetFormat.img_ = this.img_;
                        } else {
                            assetFormat.img_ = singleFieldBuilderV32.build();
                        }
                        SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV33 = this.videoBuilder_;
                        if (singleFieldBuilderV33 == null) {
                            assetFormat.video_ = this.video_;
                        } else {
                            assetFormat.video_ = singleFieldBuilderV33.build();
                        }
                        SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> singleFieldBuilderV34 = this.dataBuilder_;
                        if (singleFieldBuilderV34 == null) {
                            assetFormat.data_ = this.data_;
                        } else {
                            assetFormat.data_ = singleFieldBuilderV34.build();
                        }
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV35 = this.extBuilder_;
                        if (singleFieldBuilderV35 == null) {
                            assetFormat.ext_ = this.ext_;
                        } else {
                            assetFormat.ext_ = singleFieldBuilderV35.build();
                        }
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            if ((this.bitField0_ & 1) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -2;
                            }
                            assetFormat.extProto_ = this.extProto_;
                        } else {
                            assetFormat.extProto_ = repeatedFieldBuilderV3.build();
                        }
                        onBuilt();
                        return assetFormat;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clear() {
                        super.clear();
                        this.id_ = 0;
                        this.req_ = false;
                        if (this.titleBuilder_ == null) {
                            this.title_ = null;
                        } else {
                            this.title_ = null;
                            this.titleBuilder_ = null;
                        }
                        if (this.imgBuilder_ == null) {
                            this.img_ = null;
                        } else {
                            this.img_ = null;
                            this.imgBuilder_ = null;
                        }
                        if (this.videoBuilder_ == null) {
                            this.video_ = null;
                        } else {
                            this.video_ = null;
                            this.videoBuilder_ = null;
                        }
                        if (this.dataBuilder_ == null) {
                            this.data_ = null;
                        } else {
                            this.data_ = null;
                            this.dataBuilder_ = null;
                        }
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

                    public final Builder clearData() {
                        if (this.dataBuilder_ == null) {
                            this.data_ = null;
                            onChanged();
                        } else {
                            this.data_ = null;
                            this.dataBuilder_ = null;
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

                    public final Builder clearId() {
                        this.id_ = 0;
                        onChanged();
                        return this;
                    }

                    public final Builder clearImg() {
                        if (this.imgBuilder_ == null) {
                            this.img_ = null;
                            onChanged();
                        } else {
                            this.img_ = null;
                            this.imgBuilder_ = null;
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                        return (Builder) super.clearOneof(oneofDescriptor);
                    }

                    public final Builder clearReq() {
                        this.req_ = false;
                        onChanged();
                        return this;
                    }

                    public final Builder clearTitle() {
                        if (this.titleBuilder_ == null) {
                            this.title_ = null;
                            onChanged();
                        } else {
                            this.title_ = null;
                            this.titleBuilder_ = null;
                        }
                        return this;
                    }

                    public final Builder clearVideo() {
                        if (this.videoBuilder_ == null) {
                            this.video_ = null;
                            onChanged();
                        } else {
                            this.video_ = null;
                            this.videoBuilder_ = null;
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clone() {
                        return (Builder) super.clone();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final DataAssetFormat getData() {
                        SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        DataAssetFormat dataAssetFormat = this.data_;
                        DataAssetFormat dataAssetFormat2 = dataAssetFormat;
                        if (dataAssetFormat == null) {
                            dataAssetFormat2 = DataAssetFormat.getDefaultInstance();
                        }
                        return dataAssetFormat2;
                    }

                    public final DataAssetFormat.Builder getDataBuilder() {
                        onChanged();
                        return getDataFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final DataAssetFormatOrBuilder getDataOrBuilder() {
                        SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        DataAssetFormat dataAssetFormat = this.data_;
                        DataAssetFormat dataAssetFormat2 = dataAssetFormat;
                        if (dataAssetFormat == null) {
                            dataAssetFormat2 = DataAssetFormat.getDefaultInstance();
                        }
                        return dataAssetFormat2;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final AssetFormat getDefaultInstanceForType() {
                        return AssetFormat.getDefaultInstance();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final Descriptors.Descriptor getDescriptorForType() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_descriptor;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final int getExtProtoCount() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final List<Any> getExtProtoList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final int getId() {
                        return this.id_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final ImageAssetFormat getImg() {
                        SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> singleFieldBuilderV3 = this.imgBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        ImageAssetFormat imageAssetFormat = this.img_;
                        ImageAssetFormat imageAssetFormat2 = imageAssetFormat;
                        if (imageAssetFormat == null) {
                            imageAssetFormat2 = ImageAssetFormat.getDefaultInstance();
                        }
                        return imageAssetFormat2;
                    }

                    public final ImageAssetFormat.Builder getImgBuilder() {
                        onChanged();
                        return getImgFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final ImageAssetFormatOrBuilder getImgOrBuilder() {
                        SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> singleFieldBuilderV3 = this.imgBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        ImageAssetFormat imageAssetFormat = this.img_;
                        ImageAssetFormat imageAssetFormat2 = imageAssetFormat;
                        if (imageAssetFormat == null) {
                            imageAssetFormat2 = ImageAssetFormat.getDefaultInstance();
                        }
                        return imageAssetFormat2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final boolean getReq() {
                        return this.req_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final TitleAssetFormat getTitle() {
                        SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        TitleAssetFormat titleAssetFormat = this.title_;
                        TitleAssetFormat titleAssetFormat2 = titleAssetFormat;
                        if (titleAssetFormat == null) {
                            titleAssetFormat2 = TitleAssetFormat.getDefaultInstance();
                        }
                        return titleAssetFormat2;
                    }

                    public final TitleAssetFormat.Builder getTitleBuilder() {
                        onChanged();
                        return getTitleFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final TitleAssetFormatOrBuilder getTitleOrBuilder() {
                        SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        TitleAssetFormat titleAssetFormat = this.title_;
                        TitleAssetFormat titleAssetFormat2 = titleAssetFormat;
                        if (titleAssetFormat == null) {
                            titleAssetFormat2 = TitleAssetFormat.getDefaultInstance();
                        }
                        return titleAssetFormat2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final VideoPlacement getVideo() {
                        SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        VideoPlacement videoPlacement = this.video_;
                        VideoPlacement videoPlacement2 = videoPlacement;
                        if (videoPlacement == null) {
                            videoPlacement2 = VideoPlacement.getDefaultInstance();
                        }
                        return videoPlacement2;
                    }

                    public final VideoPlacement.Builder getVideoBuilder() {
                        onChanged();
                        return getVideoFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final VideoPlacementOrBuilder getVideoOrBuilder() {
                        SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        VideoPlacement videoPlacement = this.video_;
                        VideoPlacement videoPlacement2 = videoPlacement;
                        if (videoPlacement == null) {
                            videoPlacement2 = VideoPlacement.getDefaultInstance();
                        }
                        return videoPlacement2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final boolean hasData() {
                        return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final boolean hasExt() {
                        return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final boolean hasImg() {
                        return (this.imgBuilder_ == null && this.img_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final boolean hasTitle() {
                        return (this.titleBuilder_ == null && this.title_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                    public final boolean hasVideo() {
                        return (this.videoBuilder_ == null && this.video_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(AssetFormat.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public final Builder mergeData(DataAssetFormat dataAssetFormat) {
                        SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            DataAssetFormat dataAssetFormat2 = this.data_;
                            if (dataAssetFormat2 != null) {
                                this.data_ = DataAssetFormat.newBuilder(dataAssetFormat2).mergeFrom(dataAssetFormat).buildPartial();
                            } else {
                                this.data_ = dataAssetFormat;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(dataAssetFormat);
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
                    public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.access$7200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x001a
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder r0 = r0.mergeFrom(r1)
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
                            com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat) r0     // Catch: all -> 0x001c
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
                            com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder r0 = r0.mergeFrom(r1)
                        L_0x003b:
                            r0 = r5
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$Builder");
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeFrom(Message message) {
                        if (message instanceof AssetFormat) {
                            return mergeFrom((AssetFormat) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public final Builder mergeFrom(AssetFormat assetFormat) {
                        if (assetFormat == AssetFormat.getDefaultInstance()) {
                            return this;
                        }
                        if (assetFormat.getId() != 0) {
                            setId(assetFormat.getId());
                        }
                        if (assetFormat.getReq()) {
                            setReq(assetFormat.getReq());
                        }
                        if (assetFormat.hasTitle()) {
                            mergeTitle(assetFormat.getTitle());
                        }
                        if (assetFormat.hasImg()) {
                            mergeImg(assetFormat.getImg());
                        }
                        if (assetFormat.hasVideo()) {
                            mergeVideo(assetFormat.getVideo());
                        }
                        if (assetFormat.hasData()) {
                            mergeData(assetFormat.getData());
                        }
                        if (assetFormat.hasExt()) {
                            mergeExt(assetFormat.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!assetFormat.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = assetFormat.extProto_;
                                    this.bitField0_ &= -2;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(assetFormat.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!assetFormat.extProto_.isEmpty()) {
                            if (this.extProtoBuilder_.isEmpty()) {
                                this.extProtoBuilder_.dispose();
                                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                this.extProtoBuilder_ = null;
                                this.extProto_ = assetFormat.extProto_;
                                this.bitField0_ &= -2;
                                if (AssetFormat.alwaysUseFieldBuilders) {
                                    repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                }
                                this.extProtoBuilder_ = repeatedFieldBuilderV3;
                            } else {
                                this.extProtoBuilder_.addAllMessages(assetFormat.extProto_);
                            }
                        }
                        mergeUnknownFields(assetFormat.unknownFields);
                        onChanged();
                        return this;
                    }

                    public final Builder mergeImg(ImageAssetFormat imageAssetFormat) {
                        SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> singleFieldBuilderV3 = this.imgBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            ImageAssetFormat imageAssetFormat2 = this.img_;
                            if (imageAssetFormat2 != null) {
                                this.img_ = ImageAssetFormat.newBuilder(imageAssetFormat2).mergeFrom(imageAssetFormat).buildPartial();
                            } else {
                                this.img_ = imageAssetFormat;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(imageAssetFormat);
                        }
                        return this;
                    }

                    public final Builder mergeTitle(TitleAssetFormat titleAssetFormat) {
                        SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            TitleAssetFormat titleAssetFormat2 = this.title_;
                            if (titleAssetFormat2 != null) {
                                this.title_ = TitleAssetFormat.newBuilder(titleAssetFormat2).mergeFrom(titleAssetFormat).buildPartial();
                            } else {
                                this.title_ = titleAssetFormat;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(titleAssetFormat);
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.mergeUnknownFields(unknownFieldSet);
                    }

                    public final Builder mergeVideo(VideoPlacement videoPlacement) {
                        SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            VideoPlacement videoPlacement2 = this.video_;
                            if (videoPlacement2 != null) {
                                this.video_ = VideoPlacement.newBuilder(videoPlacement2).mergeFrom(videoPlacement).buildPartial();
                            } else {
                                this.video_ = videoPlacement;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(videoPlacement);
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

                    public final Builder setData(DataAssetFormat.Builder builder) {
                        SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.data_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setData(DataAssetFormat dataAssetFormat) {
                        SingleFieldBuilderV3<DataAssetFormat, DataAssetFormat.Builder, DataAssetFormatOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(dataAssetFormat);
                            this.data_ = dataAssetFormat;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(dataAssetFormat);
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

                    public final Builder setId(int i) {
                        this.id_ = i;
                        onChanged();
                        return this;
                    }

                    public final Builder setImg(ImageAssetFormat.Builder builder) {
                        SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> singleFieldBuilderV3 = this.imgBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.img_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setImg(ImageAssetFormat imageAssetFormat) {
                        SingleFieldBuilderV3<ImageAssetFormat, ImageAssetFormat.Builder, ImageAssetFormatOrBuilder> singleFieldBuilderV3 = this.imgBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(imageAssetFormat);
                            this.img_ = imageAssetFormat;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(imageAssetFormat);
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                        return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                    }

                    public final Builder setReq(boolean z) {
                        this.req_ = z;
                        onChanged();
                        return this;
                    }

                    public final Builder setTitle(TitleAssetFormat.Builder builder) {
                        SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.title_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setTitle(TitleAssetFormat titleAssetFormat) {
                        SingleFieldBuilderV3<TitleAssetFormat, TitleAssetFormat.Builder, TitleAssetFormatOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(titleAssetFormat);
                            this.title_ = titleAssetFormat;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(titleAssetFormat);
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.setUnknownFields(unknownFieldSet);
                    }

                    public final Builder setVideo(VideoPlacement.Builder builder) {
                        SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.video_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setVideo(VideoPlacement videoPlacement) {
                        SingleFieldBuilderV3<VideoPlacement, VideoPlacement.Builder, VideoPlacementOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(videoPlacement);
                            this.video_ = videoPlacement;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(videoPlacement);
                        }
                        return this;
                    }
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat.class */
                public static final class DataAssetFormat extends GeneratedMessageV3 implements DataAssetFormatOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 4;
                    public static final int EXT_PROTO_FIELD_NUMBER = 3;
                    public static final int LEN_FIELD_NUMBER = 2;
                    public static final int TYPE_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int len_;
                    private byte memoizedIsInitialized;
                    private int type_;
                    private static final DataAssetFormat DEFAULT_INSTANCE = new DataAssetFormat();
                    private static final Parser<DataAssetFormat> PARSER = new AbstractParser<DataAssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.1
                        @Override // com.explorestack.protobuf.Parser
                        public final DataAssetFormat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new DataAssetFormat(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DataAssetFormatOrBuilder {
                        private int bitField0_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int len_;
                        private int type_;

                        private Builder() {
                            this.type_ = 0;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
                            this.type_ = 0;
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
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_DataAssetFormat_descriptor;
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
                            if (DataAssetFormat.alwaysUseFieldBuilders) {
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
                        public final DataAssetFormat build() {
                            DataAssetFormat buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final DataAssetFormat buildPartial() {
                            DataAssetFormat dataAssetFormat = new DataAssetFormat(this);
                            dataAssetFormat.type_ = this.type_;
                            dataAssetFormat.len_ = this.len_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                dataAssetFormat.ext_ = this.ext_;
                            } else {
                                dataAssetFormat.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                dataAssetFormat.extProto_ = this.extProto_;
                            } else {
                                dataAssetFormat.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return dataAssetFormat;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.type_ = 0;
                            this.len_ = 0;
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

                        public final Builder clearLen() {
                            this.len_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                            return (Builder) super.clearOneof(oneofDescriptor);
                        }

                        public final Builder clearType() {
                            this.type_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clone() {
                            return (Builder) super.clone();
                        }

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final DataAssetFormat getDefaultInstanceForType() {
                            return DataAssetFormat.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_DataAssetFormat_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final int getLen() {
                            return this.len_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final NativeDataAssetType getType() {
                            NativeDataAssetType valueOf = NativeDataAssetType.valueOf(this.type_);
                            NativeDataAssetType nativeDataAssetType = valueOf;
                            if (valueOf == null) {
                                nativeDataAssetType = NativeDataAssetType.UNRECOGNIZED;
                            }
                            return nativeDataAssetType;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final int getTypeValue() {
                            return this.type_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_DataAssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(DataAssetFormat.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.access$5600()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder r0 = r0.mergeFrom(r1)
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat) r0     // Catch: all -> 0x001c
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder r0 = r0.mergeFrom(r1)
                            L_0x003b:
                                r0 = r6
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormat.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormat$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof DataAssetFormat) {
                                return mergeFrom((DataAssetFormat) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(DataAssetFormat dataAssetFormat) {
                            if (dataAssetFormat == DataAssetFormat.getDefaultInstance()) {
                                return this;
                            }
                            if (dataAssetFormat.type_ != 0) {
                                setTypeValue(dataAssetFormat.getTypeValue());
                            }
                            if (dataAssetFormat.getLen() != 0) {
                                setLen(dataAssetFormat.getLen());
                            }
                            if (dataAssetFormat.hasExt()) {
                                mergeExt(dataAssetFormat.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!dataAssetFormat.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = dataAssetFormat.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(dataAssetFormat.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!dataAssetFormat.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = dataAssetFormat.extProto_;
                                    this.bitField0_ &= -2;
                                    if (DataAssetFormat.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(dataAssetFormat.extProto_);
                                }
                            }
                            mergeUnknownFields(dataAssetFormat.unknownFields);
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

                        public final Builder setLen(int i) {
                            this.len_ = i;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                        }

                        public final Builder setType(NativeDataAssetType nativeDataAssetType) {
                            Objects.requireNonNull(nativeDataAssetType);
                            this.type_ = nativeDataAssetType.getNumber();
                            onChanged();
                            return this;
                        }

                        public final Builder setTypeValue(int i) {
                            this.type_ = i;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                            return (Builder) super.setUnknownFields(unknownFieldSet);
                        }
                    }

                    private DataAssetFormat() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.type_ = 0;
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private DataAssetFormat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                        if (readTag == 8) {
                                            this.type_ = codedInputStream.readEnum();
                                        } else if (readTag == 16) {
                                            this.len_ = codedInputStream.readUInt32();
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

                    private DataAssetFormat(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static DataAssetFormat getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_DataAssetFormat_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(DataAssetFormat dataAssetFormat) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(dataAssetFormat);
                    }

                    public static DataAssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static DataAssetFormat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static DataAssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static DataAssetFormat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static DataAssetFormat parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static DataAssetFormat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static DataAssetFormat parseFrom(InputStream inputStream) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static DataAssetFormat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (DataAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static DataAssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static DataAssetFormat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static DataAssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static DataAssetFormat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<DataAssetFormat> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof DataAssetFormat)) {
                            return super.equals(obj);
                        }
                        DataAssetFormat dataAssetFormat = (DataAssetFormat) obj;
                        if (this.type_ == dataAssetFormat.type_ && getLen() == dataAssetFormat.getLen() && hasExt() == dataAssetFormat.hasExt()) {
                            return (!hasExt() || getExt().equals(dataAssetFormat.getExt())) && getExtProtoList().equals(dataAssetFormat.getExtProtoList()) && this.unknownFields.equals(dataAssetFormat.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final DataAssetFormat getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final int getLen() {
                        return this.len_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<DataAssetFormat> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int computeEnumSize = this.type_ != NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.type_) + 0 : 0;
                        int i2 = this.len_;
                        int i3 = computeEnumSize;
                        int i4 = 0;
                        if (i2 != 0) {
                            i3 = computeEnumSize + CodedOutputStream.computeUInt32Size(2, i2);
                            i4 = 0;
                        }
                        while (i4 < this.extProto_.size()) {
                            i3 += CodedOutputStream.computeMessageSize(3, this.extProto_.get(i4));
                            i4++;
                        }
                        int i5 = i3;
                        if (this.ext_ != null) {
                            i5 = i3 + CodedOutputStream.computeMessageSize(4, getExt());
                        }
                        int serializedSize = i5 + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final NativeDataAssetType getType() {
                        NativeDataAssetType valueOf = NativeDataAssetType.valueOf(this.type_);
                        NativeDataAssetType nativeDataAssetType = valueOf;
                        if (valueOf == null) {
                            nativeDataAssetType = NativeDataAssetType.UNRECOGNIZED;
                        }
                        return nativeDataAssetType;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final int getTypeValue() {
                        return this.type_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final UnknownFieldSet getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.DataAssetFormatOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + getLen();
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
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_DataAssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(DataAssetFormat.class, Builder.class);
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
                        return new DataAssetFormat();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (this.type_ != NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_INVALID.getNumber()) {
                            codedOutputStream.writeEnum(1, this.type_);
                        }
                        int i = this.len_;
                        if (i != 0) {
                            codedOutputStream.writeUInt32(2, i);
                        }
                        for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
                            codedOutputStream.writeMessage(3, this.extProto_.get(i2));
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.writeMessage(4, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$DataAssetFormatOrBuilder.class */
                public interface DataAssetFormatOrBuilder extends MessageOrBuilder {
                    Struct getExt();

                    StructOrBuilder getExtOrBuilder();

                    Any getExtProto(int i);

                    int getExtProtoCount();

                    List<Any> getExtProtoList();

                    AnyOrBuilder getExtProtoOrBuilder(int i);

                    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                    int getLen();

                    NativeDataAssetType getType();

                    int getTypeValue();

                    boolean hasExt();
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat.class */
                public static final class ImageAssetFormat extends GeneratedMessageV3 implements ImageAssetFormatOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 10;
                    public static final int EXT_PROTO_FIELD_NUMBER = 9;
                    public static final int HMIN_FIELD_NUMBER = 6;
                    public static final int HRATIO_FIELD_NUMBER = 8;
                    public static final int H_FIELD_NUMBER = 4;
                    public static final int MIME_FIELD_NUMBER = 2;
                    public static final int TYPE_FIELD_NUMBER = 1;
                    public static final int WMIN_FIELD_NUMBER = 5;
                    public static final int WRATIO_FIELD_NUMBER = 7;
                    public static final int W_FIELD_NUMBER = 3;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int h_;
                    private int hmin_;
                    private int hratio_;
                    private byte memoizedIsInitialized;
                    private LazyStringList mime_;
                    private int type_;
                    private int w_;
                    private int wmin_;
                    private int wratio_;
                    private static final ImageAssetFormat DEFAULT_INSTANCE = new ImageAssetFormat();
                    private static final Parser<ImageAssetFormat> PARSER = new AbstractParser<ImageAssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.1
                        @Override // com.explorestack.protobuf.Parser
                        public final ImageAssetFormat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new ImageAssetFormat(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ImageAssetFormatOrBuilder {
                        private int bitField0_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int h_;
                        private int hmin_;
                        private int hratio_;
                        private LazyStringList mime_;
                        private int type_;
                        private int w_;
                        private int wmin_;
                        private int wratio_;

                        private Builder() {
                            this.type_ = 0;
                            this.mime_ = LazyStringArrayList.EMPTY;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
                            this.type_ = 0;
                            this.mime_ = LazyStringArrayList.EMPTY;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private void ensureExtProtoIsMutable() {
                            if ((this.bitField0_ & 2) == 0) {
                                this.extProto_ = new ArrayList(this.extProto_);
                                this.bitField0_ |= 2;
                            }
                        }

                        private void ensureMimeIsMutable() {
                            if ((this.bitField0_ & 1) == 0) {
                                this.mime_ = new LazyStringArrayList(this.mime_);
                                this.bitField0_ |= 1;
                            }
                        }

                        public static final Descriptors.Descriptor getDescriptor() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_ImageAssetFormat_descriptor;
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
                            if (ImageAssetFormat.alwaysUseFieldBuilders) {
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

                        public final Builder addAllMime(Iterable<String> iterable) {
                            ensureMimeIsMutable();
                            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mime_);
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

                        public final Builder addMime(String str) {
                            Objects.requireNonNull(str);
                            ensureMimeIsMutable();
                            this.mime_.add(str);
                            onChanged();
                            return this;
                        }

                        public final Builder addMimeBytes(ByteString byteString) {
                            Objects.requireNonNull(byteString);
                            ImageAssetFormat.checkByteStringIsUtf8(byteString);
                            ensureMimeIsMutable();
                            this.mime_.add(byteString);
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final ImageAssetFormat build() {
                            ImageAssetFormat buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final ImageAssetFormat buildPartial() {
                            ImageAssetFormat imageAssetFormat = new ImageAssetFormat(this);
                            imageAssetFormat.type_ = this.type_;
                            if ((this.bitField0_ & 1) != 0) {
                                this.mime_ = this.mime_.getUnmodifiableView();
                                this.bitField0_ &= -2;
                            }
                            imageAssetFormat.mime_ = this.mime_;
                            imageAssetFormat.w_ = this.w_;
                            imageAssetFormat.h_ = this.h_;
                            imageAssetFormat.wmin_ = this.wmin_;
                            imageAssetFormat.hmin_ = this.hmin_;
                            imageAssetFormat.wratio_ = this.wratio_;
                            imageAssetFormat.hratio_ = this.hratio_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                imageAssetFormat.ext_ = this.ext_;
                            } else {
                                imageAssetFormat.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 2) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -3;
                                }
                                imageAssetFormat.extProto_ = this.extProto_;
                            } else {
                                imageAssetFormat.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return imageAssetFormat;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.type_ = 0;
                            this.mime_ = LazyStringArrayList.EMPTY;
                            this.bitField0_ &= -2;
                            this.w_ = 0;
                            this.h_ = 0;
                            this.wmin_ = 0;
                            this.hmin_ = 0;
                            this.wratio_ = 0;
                            this.hratio_ = 0;
                            if (this.extBuilder_ == null) {
                                this.ext_ = null;
                            } else {
                                this.ext_ = null;
                                this.extBuilder_ = null;
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                this.extProto_ = Collections.emptyList();
                                this.bitField0_ &= -3;
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

                        public final Builder clearH() {
                            this.h_ = 0;
                            onChanged();
                            return this;
                        }

                        public final Builder clearHmin() {
                            this.hmin_ = 0;
                            onChanged();
                            return this;
                        }

                        public final Builder clearHratio() {
                            this.hratio_ = 0;
                            onChanged();
                            return this;
                        }

                        public final Builder clearMime() {
                            this.mime_ = LazyStringArrayList.EMPTY;
                            this.bitField0_ &= -2;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                            return (Builder) super.clearOneof(oneofDescriptor);
                        }

                        public final Builder clearType() {
                            this.type_ = 0;
                            onChanged();
                            return this;
                        }

                        public final Builder clearW() {
                            this.w_ = 0;
                            onChanged();
                            return this;
                        }

                        public final Builder clearWmin() {
                            this.wmin_ = 0;
                            onChanged();
                            return this;
                        }

                        public final Builder clearWratio() {
                            this.wratio_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clone() {
                            return (Builder) super.clone();
                        }

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final ImageAssetFormat getDefaultInstanceForType() {
                            return ImageAssetFormat.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_ImageAssetFormat_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getH() {
                            return this.h_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getHmin() {
                            return this.hmin_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getHratio() {
                            return this.hratio_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final String getMime(int i) {
                            return (String) this.mime_.get(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final ByteString getMimeBytes(int i) {
                            return this.mime_.getByteString(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getMimeCount() {
                            return this.mime_.size();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final ProtocolStringList getMimeList() {
                            return this.mime_.getUnmodifiableView();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final NativeImageAssetType getType() {
                            NativeImageAssetType valueOf = NativeImageAssetType.valueOf(this.type_);
                            NativeImageAssetType nativeImageAssetType = valueOf;
                            if (valueOf == null) {
                                nativeImageAssetType = NativeImageAssetType.UNRECOGNIZED;
                            }
                            return nativeImageAssetType;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getTypeValue() {
                            return this.type_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getW() {
                            return this.w_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getWmin() {
                            return this.wmin_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final int getWratio() {
                            return this.wratio_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_ImageAssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(ImageAssetFormat.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.access$4300()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder r0 = r0.mergeFrom(r1)
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat) r0     // Catch: all -> 0x001c
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
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder r0 = r0.mergeFrom(r1)
                            L_0x003b:
                                r0 = r6
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormat.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormat$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof ImageAssetFormat) {
                                return mergeFrom((ImageAssetFormat) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(ImageAssetFormat imageAssetFormat) {
                            if (imageAssetFormat == ImageAssetFormat.getDefaultInstance()) {
                                return this;
                            }
                            if (imageAssetFormat.type_ != 0) {
                                setTypeValue(imageAssetFormat.getTypeValue());
                            }
                            if (!imageAssetFormat.mime_.isEmpty()) {
                                if (this.mime_.isEmpty()) {
                                    this.mime_ = imageAssetFormat.mime_;
                                    this.bitField0_ &= -2;
                                } else {
                                    ensureMimeIsMutable();
                                    this.mime_.addAll(imageAssetFormat.mime_);
                                }
                                onChanged();
                            }
                            if (imageAssetFormat.getW() != 0) {
                                setW(imageAssetFormat.getW());
                            }
                            if (imageAssetFormat.getH() != 0) {
                                setH(imageAssetFormat.getH());
                            }
                            if (imageAssetFormat.getWmin() != 0) {
                                setWmin(imageAssetFormat.getWmin());
                            }
                            if (imageAssetFormat.getHmin() != 0) {
                                setHmin(imageAssetFormat.getHmin());
                            }
                            if (imageAssetFormat.getWratio() != 0) {
                                setWratio(imageAssetFormat.getWratio());
                            }
                            if (imageAssetFormat.getHratio() != 0) {
                                setHratio(imageAssetFormat.getHratio());
                            }
                            if (imageAssetFormat.hasExt()) {
                                mergeExt(imageAssetFormat.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!imageAssetFormat.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = imageAssetFormat.extProto_;
                                        this.bitField0_ &= -3;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(imageAssetFormat.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!imageAssetFormat.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = imageAssetFormat.extProto_;
                                    this.bitField0_ &= -3;
                                    if (ImageAssetFormat.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(imageAssetFormat.extProto_);
                                }
                            }
                            mergeUnknownFields(imageAssetFormat.unknownFields);
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

                        public final Builder setH(int i) {
                            this.h_ = i;
                            onChanged();
                            return this;
                        }

                        public final Builder setHmin(int i) {
                            this.hmin_ = i;
                            onChanged();
                            return this;
                        }

                        public final Builder setHratio(int i) {
                            this.hratio_ = i;
                            onChanged();
                            return this;
                        }

                        public final Builder setMime(int i, String str) {
                            Objects.requireNonNull(str);
                            ensureMimeIsMutable();
                            this.mime_.set(i, str);
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                        }

                        public final Builder setType(NativeImageAssetType nativeImageAssetType) {
                            Objects.requireNonNull(nativeImageAssetType);
                            this.type_ = nativeImageAssetType.getNumber();
                            onChanged();
                            return this;
                        }

                        public final Builder setTypeValue(int i) {
                            this.type_ = i;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                            return (Builder) super.setUnknownFields(unknownFieldSet);
                        }

                        public final Builder setW(int i) {
                            this.w_ = i;
                            onChanged();
                            return this;
                        }

                        public final Builder setWmin(int i) {
                            this.wmin_ = i;
                            onChanged();
                            return this;
                        }

                        public final Builder setWratio(int i) {
                            this.wratio_ = i;
                            onChanged();
                            return this;
                        }
                    }

                    private ImageAssetFormat() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.type_ = 0;
                        this.mime_ = LazyStringArrayList.EMPTY;
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private ImageAssetFormat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        this();
                        Objects.requireNonNull(extensionRegistryLite);
                        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                        boolean z = false;
                        int i = 0;
                        while (!z) {
                            try {
                                try {
                                    try {
                                        int readTag = codedInputStream.readTag();
                                        switch (readTag) {
                                            case 0:
                                                break;
                                            case 8:
                                                this.type_ = codedInputStream.readEnum();
                                                continue;
                                            case 18:
                                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                                i = i;
                                                if ((i & 1) == 0) {
                                                    this.mime_ = new LazyStringArrayList();
                                                    i |= 1;
                                                }
                                                this.mime_.add(readStringRequireUtf8);
                                                continue;
                                            case 24:
                                                this.w_ = codedInputStream.readUInt32();
                                                continue;
                                            case 32:
                                                this.h_ = codedInputStream.readUInt32();
                                                continue;
                                            case 40:
                                                this.wmin_ = codedInputStream.readUInt32();
                                                continue;
                                            case 48:
                                                this.hmin_ = codedInputStream.readUInt32();
                                                continue;
                                            case 56:
                                                this.wratio_ = codedInputStream.readUInt32();
                                                continue;
                                            case 64:
                                                this.hratio_ = codedInputStream.readUInt32();
                                                continue;
                                            case 74:
                                                i = i;
                                                if ((i & 2) == 0) {
                                                    this.extProto_ = new ArrayList();
                                                    i |= 2;
                                                }
                                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                                continue;
                                            case 82:
                                                Struct.Builder builder = null;
                                                Struct struct = this.ext_;
                                                builder = struct != null ? struct.toBuilder() : builder;
                                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                                this.ext_ = struct2;
                                                if (builder != null) {
                                                    builder.mergeFrom(struct2);
                                                    this.ext_ = builder.buildPartial();
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
                                    } catch (IOException e) {
                                        throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                                    }
                                } catch (InvalidProtocolBufferException e2) {
                                    throw e2.setUnfinishedMessage(this);
                                }
                            } finally {
                                if ((i & 1) != 0) {
                                    this.mime_ = this.mime_.getUnmodifiableView();
                                }
                                if ((i & 2) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                }
                                this.unknownFields = newBuilder.build();
                                makeExtensionsImmutable();
                            }
                        }
                    }

                    private ImageAssetFormat(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static ImageAssetFormat getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_ImageAssetFormat_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(ImageAssetFormat imageAssetFormat) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(imageAssetFormat);
                    }

                    public static ImageAssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static ImageAssetFormat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static ImageAssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static ImageAssetFormat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static ImageAssetFormat parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static ImageAssetFormat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static ImageAssetFormat parseFrom(InputStream inputStream) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static ImageAssetFormat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (ImageAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static ImageAssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static ImageAssetFormat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static ImageAssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static ImageAssetFormat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<ImageAssetFormat> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof ImageAssetFormat)) {
                            return super.equals(obj);
                        }
                        ImageAssetFormat imageAssetFormat = (ImageAssetFormat) obj;
                        if (this.type_ == imageAssetFormat.type_ && getMimeList().equals(imageAssetFormat.getMimeList()) && getW() == imageAssetFormat.getW() && getH() == imageAssetFormat.getH() && getWmin() == imageAssetFormat.getWmin() && getHmin() == imageAssetFormat.getHmin() && getWratio() == imageAssetFormat.getWratio() && getHratio() == imageAssetFormat.getHratio() && hasExt() == imageAssetFormat.hasExt()) {
                            return (!hasExt() || getExt().equals(imageAssetFormat.getExt())) && getExtProtoList().equals(imageAssetFormat.getExtProtoList()) && this.unknownFields.equals(imageAssetFormat.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final ImageAssetFormat getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getH() {
                        return this.h_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getHmin() {
                        return this.hmin_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getHratio() {
                        return this.hratio_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final String getMime(int i) {
                        return (String) this.mime_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final ByteString getMimeBytes(int i) {
                        return this.mime_.getByteString(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getMimeCount() {
                        return this.mime_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final ProtocolStringList getMimeList() {
                        return this.mime_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<ImageAssetFormat> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int computeEnumSize = this.type_ != NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.type_) + 0 : 0;
                        int i2 = 0;
                        for (int i3 = 0; i3 < this.mime_.size(); i3++) {
                            i2 += computeStringSizeNoTag(this.mime_.getRaw(i3));
                        }
                        int size = computeEnumSize + i2 + (getMimeList().size() * 1);
                        int i4 = this.w_;
                        int i5 = size;
                        if (i4 != 0) {
                            i5 = size + CodedOutputStream.computeUInt32Size(3, i4);
                        }
                        int i6 = this.h_;
                        int i7 = i5;
                        if (i6 != 0) {
                            i7 = i5 + CodedOutputStream.computeUInt32Size(4, i6);
                        }
                        int i8 = this.wmin_;
                        int i9 = i7;
                        if (i8 != 0) {
                            i9 = i7 + CodedOutputStream.computeUInt32Size(5, i8);
                        }
                        int i10 = this.hmin_;
                        int i11 = i9;
                        if (i10 != 0) {
                            i11 = i9 + CodedOutputStream.computeUInt32Size(6, i10);
                        }
                        int i12 = this.wratio_;
                        int i13 = i11;
                        if (i12 != 0) {
                            i13 = i11 + CodedOutputStream.computeUInt32Size(7, i12);
                        }
                        int i14 = this.hratio_;
                        int i15 = i13;
                        int i16 = 0;
                        if (i14 != 0) {
                            i15 = i13 + CodedOutputStream.computeUInt32Size(8, i14);
                            i16 = 0;
                        }
                        while (i16 < this.extProto_.size()) {
                            i15 += CodedOutputStream.computeMessageSize(9, this.extProto_.get(i16));
                            i16++;
                        }
                        int i17 = i15;
                        if (this.ext_ != null) {
                            i17 = i15 + CodedOutputStream.computeMessageSize(10, getExt());
                        }
                        int serializedSize = i17 + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final NativeImageAssetType getType() {
                        NativeImageAssetType valueOf = NativeImageAssetType.valueOf(this.type_);
                        NativeImageAssetType nativeImageAssetType = valueOf;
                        if (valueOf == null) {
                            nativeImageAssetType = NativeImageAssetType.UNRECOGNIZED;
                        }
                        return nativeImageAssetType;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getTypeValue() {
                        return this.type_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final UnknownFieldSet getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getW() {
                        return this.w_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getWmin() {
                        return this.wmin_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final int getWratio() {
                        return this.wratio_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.ImageAssetFormatOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.type_;
                        int i = hashCode;
                        if (getMimeCount() > 0) {
                            i = (((hashCode * 37) + 2) * 53) + getMimeList().hashCode();
                        }
                        int w = (((((((((((((((((((((((i * 37) + 3) * 53) + getW()) * 37) + 4) * 53) + getH()) * 37) + 5) * 53) + getWmin()) * 37) + 6) * 53) + getHmin()) * 37) + 7) * 53) + getWratio()) * 37) + 8) * 53) + getHratio();
                        int i2 = w;
                        if (hasExt()) {
                            i2 = (((w * 37) + 10) * 53) + getExt().hashCode();
                        }
                        int i3 = i2;
                        if (getExtProtoCount() > 0) {
                            i3 = (((i2 * 37) + 9) * 53) + getExtProtoList().hashCode();
                        }
                        int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_ImageAssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(ImageAssetFormat.class, Builder.class);
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
                        return new ImageAssetFormat();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (this.type_ != NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_INVALID.getNumber()) {
                            codedOutputStream.writeEnum(1, this.type_);
                        }
                        for (int i = 0; i < this.mime_.size(); i++) {
                            GeneratedMessageV3.writeString(codedOutputStream, 2, this.mime_.getRaw(i));
                        }
                        int i2 = this.w_;
                        if (i2 != 0) {
                            codedOutputStream.writeUInt32(3, i2);
                        }
                        int i3 = this.h_;
                        if (i3 != 0) {
                            codedOutputStream.writeUInt32(4, i3);
                        }
                        int i4 = this.wmin_;
                        if (i4 != 0) {
                            codedOutputStream.writeUInt32(5, i4);
                        }
                        int i5 = this.hmin_;
                        if (i5 != 0) {
                            codedOutputStream.writeUInt32(6, i5);
                        }
                        int i6 = this.wratio_;
                        if (i6 != 0) {
                            codedOutputStream.writeUInt32(7, i6);
                        }
                        int i7 = this.hratio_;
                        int i8 = 0;
                        if (i7 != 0) {
                            codedOutputStream.writeUInt32(8, i7);
                            i8 = 0;
                        }
                        while (i8 < this.extProto_.size()) {
                            codedOutputStream.writeMessage(9, this.extProto_.get(i8));
                            i8++;
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.writeMessage(10, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$ImageAssetFormatOrBuilder.class */
                public interface ImageAssetFormatOrBuilder extends MessageOrBuilder {
                    Struct getExt();

                    StructOrBuilder getExtOrBuilder();

                    Any getExtProto(int i);

                    int getExtProtoCount();

                    List<Any> getExtProtoList();

                    AnyOrBuilder getExtProtoOrBuilder(int i);

                    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                    int getH();

                    int getHmin();

                    int getHratio();

                    String getMime(int i);

                    ByteString getMimeBytes(int i);

                    int getMimeCount();

                    List<String> getMimeList();

                    NativeImageAssetType getType();

                    int getTypeValue();

                    int getW();

                    int getWmin();

                    int getWratio();

                    boolean hasExt();
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat.class */
                public static final class TitleAssetFormat extends GeneratedMessageV3 implements TitleAssetFormatOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 3;
                    public static final int EXT_PROTO_FIELD_NUMBER = 2;
                    public static final int LEN_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int len_;
                    private byte memoizedIsInitialized;
                    private static final TitleAssetFormat DEFAULT_INSTANCE = new TitleAssetFormat();
                    private static final Parser<TitleAssetFormat> PARSER = new AbstractParser<TitleAssetFormat>() { // from class: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.1
                        @Override // com.explorestack.protobuf.Parser
                        public final TitleAssetFormat parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new TitleAssetFormat(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TitleAssetFormatOrBuilder {
                        private int bitField0_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int len_;

                        private Builder() {
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
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
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_TitleAssetFormat_descriptor;
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
                            if (TitleAssetFormat.alwaysUseFieldBuilders) {
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
                        public final TitleAssetFormat build() {
                            TitleAssetFormat buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final TitleAssetFormat buildPartial() {
                            TitleAssetFormat titleAssetFormat = new TitleAssetFormat(this);
                            titleAssetFormat.len_ = this.len_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                titleAssetFormat.ext_ = this.ext_;
                            } else {
                                titleAssetFormat.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                titleAssetFormat.extProto_ = this.extProto_;
                            } else {
                                titleAssetFormat.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return titleAssetFormat;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.len_ = 0;
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

                        public final Builder clearLen() {
                            this.len_ = 0;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                            return (Builder) super.clearOneof(oneofDescriptor);
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clone() {
                            return (Builder) super.clone();
                        }

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final TitleAssetFormat getDefaultInstanceForType() {
                            return TitleAssetFormat.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_TitleAssetFormat_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public final int getLen() {
                            return this.len_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_TitleAssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(TitleAssetFormat.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.access$2500()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder r0 = r0.mergeFrom(r1)
                            L_0x001a:
                                r0 = r4
                                return r0
                            L_0x001c:
                                r5 = move-exception
                                r0 = r7
                                r6 = r0
                                r0 = r5
                                r7 = r0
                                goto L_0x0037
                            L_0x0024:
                                r6 = move-exception
                                r0 = r6
                                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat) r0     // Catch: all -> 0x001c
                                r5 = r0
                                r0 = r6
                                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                                throw r0     // Catch: all -> 0x0032
                            L_0x0032:
                                r6 = move-exception
                                r0 = r6
                                r7 = r0
                                r0 = r5
                                r6 = r0
                            L_0x0037:
                                r0 = r6
                                if (r0 == 0) goto L_0x0041
                                r0 = r4
                                r1 = r6
                                com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder r0 = r0.mergeFrom(r1)
                            L_0x0041:
                                r0 = r7
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormat.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormat$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof TitleAssetFormat) {
                                return mergeFrom((TitleAssetFormat) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(TitleAssetFormat titleAssetFormat) {
                            if (titleAssetFormat == TitleAssetFormat.getDefaultInstance()) {
                                return this;
                            }
                            if (titleAssetFormat.getLen() != 0) {
                                setLen(titleAssetFormat.getLen());
                            }
                            if (titleAssetFormat.hasExt()) {
                                mergeExt(titleAssetFormat.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!titleAssetFormat.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = titleAssetFormat.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(titleAssetFormat.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!titleAssetFormat.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = titleAssetFormat.extProto_;
                                    this.bitField0_ &= -2;
                                    if (TitleAssetFormat.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(titleAssetFormat.extProto_);
                                }
                            }
                            mergeUnknownFields(titleAssetFormat.unknownFields);
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

                        public final Builder setLen(int i) {
                            this.len_ = i;
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
                    }

                    private TitleAssetFormat() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private TitleAssetFormat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                        if (readTag == 8) {
                                            this.len_ = codedInputStream.readUInt32();
                                        } else if (readTag == 18) {
                                            z2 = z2;
                                            if (!z2 || !true) {
                                                this.extProto_ = new ArrayList();
                                                z2 |= true;
                                            }
                                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                        } else if (readTag == 26) {
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

                    private TitleAssetFormat(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static TitleAssetFormat getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_TitleAssetFormat_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(TitleAssetFormat titleAssetFormat) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(titleAssetFormat);
                    }

                    public static TitleAssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static TitleAssetFormat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static TitleAssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static TitleAssetFormat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static TitleAssetFormat parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static TitleAssetFormat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static TitleAssetFormat parseFrom(InputStream inputStream) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static TitleAssetFormat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (TitleAssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static TitleAssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static TitleAssetFormat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static TitleAssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static TitleAssetFormat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<TitleAssetFormat> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof TitleAssetFormat)) {
                            return super.equals(obj);
                        }
                        TitleAssetFormat titleAssetFormat = (TitleAssetFormat) obj;
                        if (getLen() == titleAssetFormat.getLen() && hasExt() == titleAssetFormat.hasExt()) {
                            return (!hasExt() || getExt().equals(titleAssetFormat.getExt())) && getExtProtoList().equals(titleAssetFormat.getExtProtoList()) && this.unknownFields.equals(titleAssetFormat.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final TitleAssetFormat getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final int getLen() {
                        return this.len_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<TitleAssetFormat> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int i2 = this.len_;
                        int computeUInt32Size = i2 != 0 ? CodedOutputStream.computeUInt32Size(1, i2) + 0 : 0;
                        for (int i3 = 0; i3 < this.extProto_.size(); i3++) {
                            computeUInt32Size += CodedOutputStream.computeMessageSize(2, this.extProto_.get(i3));
                        }
                        int i4 = computeUInt32Size;
                        if (this.ext_ != null) {
                            i4 = computeUInt32Size + CodedOutputStream.computeMessageSize(3, getExt());
                        }
                        int serializedSize = i4 + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final UnknownFieldSet getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormat.TitleAssetFormatOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getLen();
                        int i = hashCode;
                        if (hasExt()) {
                            i = (((hashCode * 37) + 3) * 53) + getExt().hashCode();
                        }
                        int i2 = i;
                        if (getExtProtoCount() > 0) {
                            i2 = (((i * 37) + 2) * 53) + getExtProtoList().hashCode();
                        }
                        int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_TitleAssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(TitleAssetFormat.class, Builder.class);
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
                        return new TitleAssetFormat();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        int i = this.len_;
                        if (i != 0) {
                            codedOutputStream.writeUInt32(1, i);
                        }
                        for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
                            codedOutputStream.writeMessage(2, this.extProto_.get(i2));
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.writeMessage(3, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormat$TitleAssetFormatOrBuilder.class */
                public interface TitleAssetFormatOrBuilder extends MessageOrBuilder {
                    Struct getExt();

                    StructOrBuilder getExtOrBuilder();

                    Any getExtProto(int i);

                    int getExtProtoCount();

                    List<Any> getExtProtoList();

                    AnyOrBuilder getExtProtoOrBuilder(int i);

                    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                    int getLen();

                    boolean hasExt();
                }

                private AssetFormat() {
                    this.memoizedIsInitialized = (byte) (-1);
                    this.extProto_ = Collections.emptyList();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private AssetFormat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    if (readTag == 8) {
                                        this.id_ = codedInputStream.readUInt32();
                                    } else if (readTag != 16) {
                                        DataAssetFormat.Builder builder = null;
                                        VideoPlacement.Builder builder2 = null;
                                        ImageAssetFormat.Builder builder3 = null;
                                        TitleAssetFormat.Builder builder4 = null;
                                        Struct.Builder builder5 = null;
                                        if (readTag == 26) {
                                            TitleAssetFormat titleAssetFormat = this.title_;
                                            builder4 = titleAssetFormat != null ? titleAssetFormat.toBuilder() : builder4;
                                            TitleAssetFormat titleAssetFormat2 = (TitleAssetFormat) codedInputStream.readMessage(TitleAssetFormat.parser(), extensionRegistryLite);
                                            this.title_ = titleAssetFormat2;
                                            if (builder4 != null) {
                                                builder4.mergeFrom(titleAssetFormat2);
                                                this.title_ = builder4.buildPartial();
                                            }
                                        } else if (readTag == 34) {
                                            ImageAssetFormat imageAssetFormat = this.img_;
                                            builder3 = imageAssetFormat != null ? imageAssetFormat.toBuilder() : builder3;
                                            ImageAssetFormat imageAssetFormat2 = (ImageAssetFormat) codedInputStream.readMessage(ImageAssetFormat.parser(), extensionRegistryLite);
                                            this.img_ = imageAssetFormat2;
                                            if (builder3 != null) {
                                                builder3.mergeFrom(imageAssetFormat2);
                                                this.img_ = builder3.buildPartial();
                                            }
                                        } else if (readTag == 42) {
                                            VideoPlacement videoPlacement = this.video_;
                                            builder2 = videoPlacement != null ? videoPlacement.toBuilder() : builder2;
                                            VideoPlacement videoPlacement2 = (VideoPlacement) codedInputStream.readMessage(VideoPlacement.parser(), extensionRegistryLite);
                                            this.video_ = videoPlacement2;
                                            if (builder2 != null) {
                                                builder2.mergeFrom(videoPlacement2);
                                                this.video_ = builder2.buildPartial();
                                            }
                                        } else if (readTag == 50) {
                                            DataAssetFormat dataAssetFormat = this.data_;
                                            builder = dataAssetFormat != null ? dataAssetFormat.toBuilder() : builder;
                                            DataAssetFormat dataAssetFormat2 = (DataAssetFormat) codedInputStream.readMessage(DataAssetFormat.parser(), extensionRegistryLite);
                                            this.data_ = dataAssetFormat2;
                                            if (builder != null) {
                                                builder.mergeFrom(dataAssetFormat2);
                                                this.data_ = builder.buildPartial();
                                            }
                                        } else if (readTag == 58) {
                                            z2 = z2;
                                            if (!z2 || !true) {
                                                this.extProto_ = new ArrayList();
                                                z2 |= true;
                                            }
                                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                        } else if (readTag == 66) {
                                            Struct struct = this.ext_;
                                            builder5 = struct != null ? struct.toBuilder() : builder5;
                                            Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                            this.ext_ = struct2;
                                            if (builder5 != null) {
                                                builder5.mergeFrom(struct2);
                                                this.ext_ = builder5.buildPartial();
                                            }
                                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        }
                                    } else {
                                        this.req_ = codedInputStream.readBool();
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

                private AssetFormat(GeneratedMessageV3.Builder<?> builder) {
                    super(builder);
                    this.memoizedIsInitialized = (byte) (-1);
                }

                public static AssetFormat getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(AssetFormat assetFormat) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(assetFormat);
                }

                public static AssetFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static AssetFormat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static AssetFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static AssetFormat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static AssetFormat parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                }

                public static AssetFormat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                public static AssetFormat parseFrom(InputStream inputStream) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static AssetFormat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (AssetFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static AssetFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static AssetFormat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static AssetFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static AssetFormat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static Parser<AssetFormat> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof AssetFormat)) {
                        return super.equals(obj);
                    }
                    AssetFormat assetFormat = (AssetFormat) obj;
                    if (getId() != assetFormat.getId() || getReq() != assetFormat.getReq() || hasTitle() != assetFormat.hasTitle()) {
                        return false;
                    }
                    if ((hasTitle() && !getTitle().equals(assetFormat.getTitle())) || hasImg() != assetFormat.hasImg()) {
                        return false;
                    }
                    if ((hasImg() && !getImg().equals(assetFormat.getImg())) || hasVideo() != assetFormat.hasVideo()) {
                        return false;
                    }
                    if ((hasVideo() && !getVideo().equals(assetFormat.getVideo())) || hasData() != assetFormat.hasData()) {
                        return false;
                    }
                    if ((!hasData() || getData().equals(assetFormat.getData())) && hasExt() == assetFormat.hasExt()) {
                        return (!hasExt() || getExt().equals(assetFormat.getExt())) && getExtProtoList().equals(assetFormat.getExtProtoList()) && this.unknownFields.equals(assetFormat.unknownFields);
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final DataAssetFormat getData() {
                    DataAssetFormat dataAssetFormat = this.data_;
                    DataAssetFormat dataAssetFormat2 = dataAssetFormat;
                    if (dataAssetFormat == null) {
                        dataAssetFormat2 = DataAssetFormat.getDefaultInstance();
                    }
                    return dataAssetFormat2;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final DataAssetFormatOrBuilder getDataOrBuilder() {
                    return getData();
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final AssetFormat getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final Struct getExt() {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final StructOrBuilder getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final Any getExtProto(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final int getId() {
                    return this.id_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final ImageAssetFormat getImg() {
                    ImageAssetFormat imageAssetFormat = this.img_;
                    ImageAssetFormat imageAssetFormat2 = imageAssetFormat;
                    if (imageAssetFormat == null) {
                        imageAssetFormat2 = ImageAssetFormat.getDefaultInstance();
                    }
                    return imageAssetFormat2;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final ImageAssetFormatOrBuilder getImgOrBuilder() {
                    return getImg();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Parser<AssetFormat> getParserForType() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final boolean getReq() {
                    return this.req_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int i2 = this.id_;
                    int computeUInt32Size = i2 != 0 ? CodedOutputStream.computeUInt32Size(1, i2) + 0 : 0;
                    boolean z = this.req_;
                    int i3 = computeUInt32Size;
                    if (z) {
                        i3 = computeUInt32Size + CodedOutputStream.computeBoolSize(2, z);
                    }
                    int i4 = i3;
                    if (this.title_ != null) {
                        i4 = i3 + CodedOutputStream.computeMessageSize(3, getTitle());
                    }
                    int i5 = i4;
                    if (this.img_ != null) {
                        i5 = i4 + CodedOutputStream.computeMessageSize(4, getImg());
                    }
                    int i6 = i5;
                    if (this.video_ != null) {
                        i6 = i5 + CodedOutputStream.computeMessageSize(5, getVideo());
                    }
                    int i7 = i6;
                    int i8 = 0;
                    if (this.data_ != null) {
                        i7 = i6 + CodedOutputStream.computeMessageSize(6, getData());
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final TitleAssetFormat getTitle() {
                    TitleAssetFormat titleAssetFormat = this.title_;
                    TitleAssetFormat titleAssetFormat2 = titleAssetFormat;
                    if (titleAssetFormat == null) {
                        titleAssetFormat2 = TitleAssetFormat.getDefaultInstance();
                    }
                    return titleAssetFormat2;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final TitleAssetFormatOrBuilder getTitleOrBuilder() {
                    return getTitle();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final UnknownFieldSet getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final VideoPlacement getVideo() {
                    VideoPlacement videoPlacement = this.video_;
                    VideoPlacement videoPlacement2 = videoPlacement;
                    if (videoPlacement == null) {
                        videoPlacement2 = VideoPlacement.getDefaultInstance();
                    }
                    return videoPlacement2;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final VideoPlacementOrBuilder getVideoOrBuilder() {
                    return getVideo();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final boolean hasData() {
                    return this.data_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final boolean hasExt() {
                    return this.ext_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final boolean hasImg() {
                    return this.img_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final boolean hasTitle() {
                    return this.title_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.AssetFormatOrBuilder
                public final boolean hasVideo() {
                    return this.video_ != null;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final int hashCode() {
                    if (this.memoizedHashCode != 0) {
                        return this.memoizedHashCode;
                    }
                    int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId()) * 37) + 2) * 53) + Internal.hashBoolean(getReq());
                    int i = hashCode;
                    if (hasTitle()) {
                        i = (((hashCode * 37) + 3) * 53) + getTitle().hashCode();
                    }
                    int i2 = i;
                    if (hasImg()) {
                        i2 = (((i * 37) + 4) * 53) + getImg().hashCode();
                    }
                    int i3 = i2;
                    if (hasVideo()) {
                        i3 = (((i2 * 37) + 5) * 53) + getVideo().hashCode();
                    }
                    int i4 = i3;
                    if (hasData()) {
                        i4 = (((i3 * 37) + 6) * 53) + getData().hashCode();
                    }
                    int i5 = i4;
                    if (hasExt()) {
                        i5 = (((i4 * 37) + 8) * 53) + getExt().hashCode();
                    }
                    int i6 = i5;
                    if (getExtProtoCount() > 0) {
                        i6 = (((i5 * 37) + 7) * 53) + getExtProtoList().hashCode();
                    }
                    int hashCode2 = (i6 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_AssetFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(AssetFormat.class, Builder.class);
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
                    return new AssetFormat();
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    int i = this.id_;
                    if (i != 0) {
                        codedOutputStream.writeUInt32(1, i);
                    }
                    boolean z = this.req_;
                    if (z) {
                        codedOutputStream.writeBool(2, z);
                    }
                    if (this.title_ != null) {
                        codedOutputStream.writeMessage(3, getTitle());
                    }
                    if (this.img_ != null) {
                        codedOutputStream.writeMessage(4, getImg());
                    }
                    if (this.video_ != null) {
                        codedOutputStream.writeMessage(5, getVideo());
                    }
                    if (this.data_ != null) {
                        codedOutputStream.writeMessage(6, getData());
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

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$AssetFormatOrBuilder.class */
            public interface AssetFormatOrBuilder extends MessageOrBuilder {
                AssetFormat.DataAssetFormat getData();

                AssetFormat.DataAssetFormatOrBuilder getDataOrBuilder();

                Struct getExt();

                StructOrBuilder getExtOrBuilder();

                Any getExtProto(int i);

                int getExtProtoCount();

                List<Any> getExtProtoList();

                AnyOrBuilder getExtProtoOrBuilder(int i);

                List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                int getId();

                AssetFormat.ImageAssetFormat getImg();

                AssetFormat.ImageAssetFormatOrBuilder getImgOrBuilder();

                boolean getReq();

                AssetFormat.TitleAssetFormat getTitle();

                AssetFormat.TitleAssetFormatOrBuilder getTitleOrBuilder();

                VideoPlacement getVideo();

                VideoPlacementOrBuilder getVideoOrBuilder();

                boolean hasData();

                boolean hasExt();

                boolean hasImg();

                boolean hasTitle();

                boolean hasVideo();
            }

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements NativeFormatOrBuilder {
                private RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> assetBuilder_;
                private List<AssetFormat> asset_;
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;

                private Builder() {
                    this.asset_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.asset_ = Collections.emptyList();
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private void ensureAssetIsMutable() {
                    if ((this.bitField0_ & 1) == 0) {
                        this.asset_ = new ArrayList(this.asset_);
                        this.bitField0_ |= 1;
                    }
                }

                private void ensureExtProtoIsMutable() {
                    if ((this.bitField0_ & 2) == 0) {
                        this.extProto_ = new ArrayList(this.extProto_);
                        this.bitField0_ |= 2;
                    }
                }

                private RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> getAssetFieldBuilder() {
                    if (this.assetBuilder_ == null) {
                        List<AssetFormat> list = this.asset_;
                        boolean z = true;
                        if ((this.bitField0_ & 1) == 0) {
                            z = false;
                        }
                        this.assetBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                        this.asset_ = null;
                    }
                    return this.assetBuilder_;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_descriptor;
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
                    if (NativeFormat.alwaysUseFieldBuilders) {
                        getAssetFieldBuilder();
                        getExtProtoFieldBuilder();
                    }
                }

                public final Builder addAllAsset(Iterable<? extends AssetFormat> iterable) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.asset_);
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

                public final Builder addAsset(int i, AssetFormat.Builder builder) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder addAsset(int i, AssetFormat assetFormat) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(assetFormat);
                        ensureAssetIsMutable();
                        this.asset_.add(i, assetFormat);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, assetFormat);
                    }
                    return this;
                }

                public final Builder addAsset(AssetFormat.Builder builder) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(builder.build());
                    }
                    return this;
                }

                public final Builder addAsset(AssetFormat assetFormat) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(assetFormat);
                        ensureAssetIsMutable();
                        this.asset_.add(assetFormat);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(assetFormat);
                    }
                    return this;
                }

                public final AssetFormat.Builder addAssetBuilder() {
                    return getAssetFieldBuilder().addBuilder(AssetFormat.getDefaultInstance());
                }

                public final AssetFormat.Builder addAssetBuilder(int i) {
                    return getAssetFieldBuilder().addBuilder(i, AssetFormat.getDefaultInstance());
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
                public final NativeFormat build() {
                    NativeFormat buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final NativeFormat buildPartial() {
                    NativeFormat nativeFormat = new NativeFormat(this);
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.asset_ = Collections.unmodifiableList(this.asset_);
                            this.bitField0_ &= -2;
                        }
                        nativeFormat.asset_ = this.asset_;
                    } else {
                        nativeFormat.asset_ = repeatedFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        nativeFormat.ext_ = this.ext_;
                    } else {
                        nativeFormat.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV32 == null) {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        nativeFormat.extProto_ = this.extProto_;
                    } else {
                        nativeFormat.extProto_ = repeatedFieldBuilderV32.build();
                    }
                    onBuilt();
                    return nativeFormat;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.asset_ = Collections.emptyList();
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

                public final Builder clearAsset() {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        this.asset_ = Collections.emptyList();
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

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final AssetFormat getAsset(int i) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.asset_.get(i) : repeatedFieldBuilderV3.getMessage(i);
                }

                public final AssetFormat.Builder getAssetBuilder(int i) {
                    return getAssetFieldBuilder().getBuilder(i);
                }

                public final List<AssetFormat.Builder> getAssetBuilderList() {
                    return getAssetFieldBuilder().getBuilderList();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final int getAssetCount() {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.asset_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final List<AssetFormat> getAssetList() {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.asset_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final AssetFormatOrBuilder getAssetOrBuilder(int i) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.asset_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final List<? extends AssetFormatOrBuilder> getAssetOrBuilderList() {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.asset_);
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final NativeFormat getDefaultInstanceForType() {
                    return NativeFormat.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_descriptor;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(NativeFormat.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.access$8400()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat r0 = (com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormat.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$DisplayPlacement$NativeFormat$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof NativeFormat) {
                        return mergeFrom((NativeFormat) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(NativeFormat nativeFormat) {
                    if (nativeFormat == NativeFormat.getDefaultInstance()) {
                        return this;
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                    if (this.assetBuilder_ == null) {
                        if (!nativeFormat.asset_.isEmpty()) {
                            if (this.asset_.isEmpty()) {
                                this.asset_ = nativeFormat.asset_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureAssetIsMutable();
                                this.asset_.addAll(nativeFormat.asset_);
                            }
                            onChanged();
                        }
                    } else if (!nativeFormat.asset_.isEmpty()) {
                        if (this.assetBuilder_.isEmpty()) {
                            this.assetBuilder_.dispose();
                            this.assetBuilder_ = null;
                            this.asset_ = nativeFormat.asset_;
                            this.bitField0_ &= -2;
                            this.assetBuilder_ = NativeFormat.alwaysUseFieldBuilders ? getAssetFieldBuilder() : null;
                        } else {
                            this.assetBuilder_.addAllMessages(nativeFormat.asset_);
                        }
                    }
                    if (nativeFormat.hasExt()) {
                        mergeExt(nativeFormat.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!nativeFormat.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = nativeFormat.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(nativeFormat.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!nativeFormat.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = nativeFormat.extProto_;
                            this.bitField0_ &= -3;
                            if (NativeFormat.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(nativeFormat.extProto_);
                        }
                    }
                    mergeUnknownFields(nativeFormat.unknownFields);
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.mergeUnknownFields(unknownFieldSet);
                }

                public final Builder removeAsset(int i) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.remove(i);
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

                public final Builder setAsset(int i, AssetFormat.Builder builder) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder setAsset(int i, AssetFormat assetFormat) {
                    RepeatedFieldBuilderV3<AssetFormat, AssetFormat.Builder, AssetFormatOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(assetFormat);
                        ensureAssetIsMutable();
                        this.asset_.set(i, assetFormat);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, assetFormat);
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

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.setUnknownFields(unknownFieldSet);
                }
            }

            private NativeFormat() {
                this.memoizedIsInitialized = (byte) (-1);
                this.asset_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private NativeFormat(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                int i = 0;
                while (!z) {
                    try {
                        try {
                            try {
                                int readTag = codedInputStream.readTag();
                                if (readTag != 0) {
                                    if (readTag == 10) {
                                        i = i;
                                        if ((i & 1) == 0) {
                                            this.asset_ = new ArrayList();
                                            i |= 1;
                                        }
                                        this.asset_.add(codedInputStream.readMessage(AssetFormat.parser(), extensionRegistryLite));
                                    } else if (readTag == 18) {
                                        i = i;
                                        if ((i & 2) == 0) {
                                            this.extProto_ = new ArrayList();
                                            i |= 2;
                                        }
                                        this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                    } else if (readTag == 26) {
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
                            } catch (IOException e) {
                                throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                            }
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
                        }
                    } finally {
                        if ((i & 1) != 0) {
                            this.asset_ = Collections.unmodifiableList(this.asset_);
                        }
                        if ((i & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        }
                        this.unknownFields = newBuilder.build();
                        makeExtensionsImmutable();
                    }
                }
            }

            private NativeFormat(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static NativeFormat getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(NativeFormat nativeFormat) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(nativeFormat);
            }

            public static NativeFormat parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static NativeFormat parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static NativeFormat parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static NativeFormat parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static NativeFormat parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static NativeFormat parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static NativeFormat parseFrom(InputStream inputStream) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static NativeFormat parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (NativeFormat) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static NativeFormat parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static NativeFormat parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static NativeFormat parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static NativeFormat parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<NativeFormat> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof NativeFormat)) {
                    return super.equals(obj);
                }
                NativeFormat nativeFormat = (NativeFormat) obj;
                if (getAssetList().equals(nativeFormat.getAssetList()) && hasExt() == nativeFormat.hasExt()) {
                    return (!hasExt() || getExt().equals(nativeFormat.getExt())) && getExtProtoList().equals(nativeFormat.getExtProtoList()) && this.unknownFields.equals(nativeFormat.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final AssetFormat getAsset(int i) {
                return this.asset_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final int getAssetCount() {
                return this.asset_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final List<AssetFormat> getAssetList() {
                return this.asset_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final AssetFormatOrBuilder getAssetOrBuilder(int i) {
                return this.asset_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final List<? extends AssetFormatOrBuilder> getAssetOrBuilderList() {
                return this.asset_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final NativeFormat getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<NativeFormat> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i;
                int i2 = this.memoizedSize;
                if (i2 != -1) {
                    return i2;
                }
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i3 < this.asset_.size()) {
                        i4 += CodedOutputStream.computeMessageSize(1, this.asset_.get(i3));
                        i3++;
                    }
                }
                for (int i5 = 0; i5 < this.extProto_.size(); i5++) {
                    i += CodedOutputStream.computeMessageSize(2, this.extProto_.get(i5));
                }
                int i6 = i;
                if (this.ext_ != null) {
                    i6 = i + CodedOutputStream.computeMessageSize(3, getExt());
                }
                int serializedSize = i6 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacement.NativeFormatOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = getDescriptor().hashCode() + 779;
                int i = hashCode;
                if (getAssetCount() > 0) {
                    i = (((hashCode * 37) + 1) * 53) + getAssetList().hashCode();
                }
                int i2 = i;
                if (hasExt()) {
                    i2 = (((i * 37) + 3) * 53) + getExt().hashCode();
                }
                int i3 = i2;
                if (getExtProtoCount() > 0) {
                    i3 = (((i2 * 37) + 2) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i3 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_NativeFormat_fieldAccessorTable.ensureFieldAccessorsInitialized(NativeFormat.class, Builder.class);
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
                return new NativeFormat();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                for (int i = 0; i < this.asset_.size(); i++) {
                    codedOutputStream.writeMessage(1, this.asset_.get(i));
                }
                for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
                    codedOutputStream.writeMessage(2, this.extProto_.get(i2));
                }
                if (this.ext_ != null) {
                    codedOutputStream.writeMessage(3, getExt());
                }
                this.unknownFields.writeTo(codedOutputStream);
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormatOrBuilder.class */
        public interface NativeFormatOrBuilder extends MessageOrBuilder {
            NativeFormat.AssetFormat getAsset(int i);

            int getAssetCount();

            List<NativeFormat.AssetFormat> getAssetList();

            NativeFormat.AssetFormatOrBuilder getAssetOrBuilder(int i);

            List<? extends NativeFormat.AssetFormatOrBuilder> getAssetOrBuilderList();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            boolean hasExt();
        }

        private DisplayPlacement() {
            this.memoizedIsInitialized = (byte) (-1);
            this.pos_ = 0;
            this.ifrbust_ = LazyStringArrayList.EMPTY;
            this.clktype_ = 0;
            this.ptype_ = 0;
            this.context_ = 0;
            this.mime_ = LazyStringArrayList.EMPTY;
            this.api_ = Collections.emptyList();
            this.ctype_ = Collections.emptyList();
            this.unit_ = 0;
            this.displayfmt_ = Collections.emptyList();
            this.event_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private DisplayPlacement(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        NativeFormat.Builder builder = null;
                        Struct.Builder builder2 = null;
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.pos_ = codedInputStream.readEnum();
                                continue;
                            case 16:
                                this.instl_ = codedInputStream.readBool();
                                continue;
                            case 24:
                                this.topframe_ = codedInputStream.readBool();
                                continue;
                            case 34:
                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                i = i;
                                if ((i & 1) == 0) {
                                    this.ifrbust_ = new LazyStringArrayList();
                                    i |= 1;
                                }
                                this.ifrbust_.add(readStringRequireUtf8);
                                continue;
                            case 40:
                                this.clktype_ = codedInputStream.readEnum();
                                continue;
                            case 48:
                                this.ampren_ = codedInputStream.readUInt32();
                                continue;
                            case 56:
                                this.ptype_ = codedInputStream.readEnum();
                                continue;
                            case 64:
                                this.context_ = codedInputStream.readEnum();
                                continue;
                            case 74:
                                String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                                i = i;
                                if ((i & 2) == 0) {
                                    this.mime_ = new LazyStringArrayList();
                                    i |= 2;
                                }
                                this.mime_.add(readStringRequireUtf82);
                                continue;
                            case 80:
                                int readEnum = codedInputStream.readEnum();
                                i = i;
                                if ((i & 4) == 0) {
                                    this.api_ = new ArrayList();
                                    i |= 4;
                                }
                                this.api_.add(Integer.valueOf(readEnum));
                                continue;
                            case 82:
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i2 = i;
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum2 = codedInputStream.readEnum();
                                    i2 = i2;
                                    if ((i2 & 4) == 0) {
                                        this.api_ = new ArrayList();
                                        i2 |= 4;
                                    }
                                    this.api_.add(Integer.valueOf(readEnum2));
                                }
                                codedInputStream.popLimit(pushLimit);
                                i = i2;
                                continue;
                            case 88:
                                int readEnum3 = codedInputStream.readEnum();
                                i = i;
                                if ((i & 8) == 0) {
                                    this.ctype_ = new ArrayList();
                                    i |= 8;
                                }
                                this.ctype_.add(Integer.valueOf(readEnum3));
                                continue;
                            case 90:
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum4 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 8) == 0) {
                                        this.ctype_ = new ArrayList();
                                        i |= 8;
                                    }
                                    this.ctype_.add(Integer.valueOf(readEnum4));
                                }
                                codedInputStream.popLimit(pushLimit2);
                                continue;
                            case 96:
                                this.w_ = codedInputStream.readUInt32();
                                continue;
                            case 104:
                                this.h_ = codedInputStream.readUInt32();
                                continue;
                            case 112:
                                this.unit_ = codedInputStream.readEnum();
                                continue;
                            case 120:
                                this.priv_ = codedInputStream.readBool();
                                continue;
                            case 130:
                                i = i;
                                if ((i & 16) == 0) {
                                    this.displayfmt_ = new ArrayList();
                                    i |= 16;
                                }
                                this.displayfmt_.add(codedInputStream.readMessage(DisplayFormat.parser(), extensionRegistryLite));
                                continue;
                            case 138:
                                NativeFormat nativeFormat = this.nativefmt_;
                                builder = nativeFormat != null ? nativeFormat.toBuilder() : builder;
                                NativeFormat nativeFormat2 = (NativeFormat) codedInputStream.readMessage(NativeFormat.parser(), extensionRegistryLite);
                                this.nativefmt_ = nativeFormat2;
                                if (builder != null) {
                                    builder.mergeFrom(nativeFormat2);
                                    this.nativefmt_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 146:
                                i = i;
                                if ((i & 32) == 0) {
                                    this.event_ = new ArrayList();
                                    i |= 32;
                                }
                                this.event_.add(codedInputStream.readMessage(EventSpec.parser(), extensionRegistryLite));
                                continue;
                            case 154:
                                i = i;
                                if ((i & 64) == 0) {
                                    this.extProto_ = new ArrayList();
                                    i |= 64;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                continue;
                            case 162:
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
                        this.ifrbust_ = this.ifrbust_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.mime_ = this.mime_.getUnmodifiableView();
                    }
                    if ((i & 4) != 0) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if ((i & 8) != 0) {
                        this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    }
                    if ((i & 16) != 0) {
                        this.displayfmt_ = Collections.unmodifiableList(this.displayfmt_);
                    }
                    if ((i & 32) != 0) {
                        this.event_ = Collections.unmodifiableList(this.event_);
                    }
                    if ((i & 64) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private DisplayPlacement(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static DisplayPlacement getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(DisplayPlacement displayPlacement) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(displayPlacement);
        }

        public static DisplayPlacement parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static DisplayPlacement parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DisplayPlacement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static DisplayPlacement parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static DisplayPlacement parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static DisplayPlacement parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static DisplayPlacement parseFrom(InputStream inputStream) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static DisplayPlacement parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (DisplayPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static DisplayPlacement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static DisplayPlacement parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static DisplayPlacement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static DisplayPlacement parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<DisplayPlacement> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DisplayPlacement)) {
                return super.equals(obj);
            }
            DisplayPlacement displayPlacement = (DisplayPlacement) obj;
            if (this.pos_ != displayPlacement.pos_ || getInstl() != displayPlacement.getInstl() || getTopframe() != displayPlacement.getTopframe() || !getIfrbustList().equals(displayPlacement.getIfrbustList()) || this.clktype_ != displayPlacement.clktype_ || getAmpren() != displayPlacement.getAmpren() || this.ptype_ != displayPlacement.ptype_ || this.context_ != displayPlacement.context_ || !getMimeList().equals(displayPlacement.getMimeList()) || !this.api_.equals(displayPlacement.api_) || !this.ctype_.equals(displayPlacement.ctype_) || getW() != displayPlacement.getW() || getH() != displayPlacement.getH() || this.unit_ != displayPlacement.unit_ || getPriv() != displayPlacement.getPriv() || !getDisplayfmtList().equals(displayPlacement.getDisplayfmtList()) || hasNativefmt() != displayPlacement.hasNativefmt()) {
                return false;
            }
            if ((!hasNativefmt() || getNativefmt().equals(displayPlacement.getNativefmt())) && getEventList().equals(displayPlacement.getEventList()) && hasExt() == displayPlacement.hasExt()) {
                return (!hasExt() || getExt().equals(displayPlacement.getExt())) && getExtProtoList().equals(displayPlacement.getExtProtoList()) && this.unknownFields.equals(displayPlacement.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getAmpren() {
            return this.ampren_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final ApiFramework getApi(int i) {
            return api_converter_.convert(this.api_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<ApiFramework> getApiList() {
            return new Internal.ListAdapter(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getApiValue(int i) {
            return this.api_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final ClickType getClktype() {
            ClickType valueOf = ClickType.valueOf(this.clktype_);
            ClickType clickType = valueOf;
            if (valueOf == null) {
                clickType = ClickType.UNRECOGNIZED;
            }
            return clickType;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getClktypeValue() {
            return this.clktype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final DisplayContextType getContext() {
            DisplayContextType valueOf = DisplayContextType.valueOf(this.context_);
            DisplayContextType displayContextType = valueOf;
            if (valueOf == null) {
                displayContextType = DisplayContextType.UNRECOGNIZED;
            }
            return displayContextType;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getContextValue() {
            return this.context_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final DisplayCreativeType getCtype(int i) {
            return ctype_converter_.convert(this.ctype_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getCtypeCount() {
            return this.ctype_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<DisplayCreativeType> getCtypeList() {
            return new Internal.ListAdapter(this.ctype_, ctype_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getCtypeValue(int i) {
            return this.ctype_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<Integer> getCtypeValueList() {
            return this.ctype_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final DisplayPlacement getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final DisplayFormat getDisplayfmt(int i) {
            return this.displayfmt_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getDisplayfmtCount() {
            return this.displayfmt_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<DisplayFormat> getDisplayfmtList() {
            return this.displayfmt_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final DisplayFormatOrBuilder getDisplayfmtOrBuilder(int i) {
            return this.displayfmt_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<? extends DisplayFormatOrBuilder> getDisplayfmtOrBuilderList() {
            return this.displayfmt_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final EventSpec getEvent(int i) {
            return this.event_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getEventCount() {
            return this.event_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<EventSpec> getEventList() {
            return this.event_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final EventSpecOrBuilder getEventOrBuilder(int i) {
            return this.event_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<? extends EventSpecOrBuilder> getEventOrBuilderList() {
            return this.event_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getH() {
            return this.h_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final String getIfrbust(int i) {
            return (String) this.ifrbust_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final ByteString getIfrbustBytes(int i) {
            return this.ifrbust_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getIfrbustCount() {
            return this.ifrbust_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final ProtocolStringList getIfrbustList() {
            return this.ifrbust_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final boolean getInstl() {
            return this.instl_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final String getMime(int i) {
            return (String) this.mime_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final ByteString getMimeBytes(int i) {
            return this.mime_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getMimeCount() {
            return this.mime_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final ProtocolStringList getMimeList() {
            return this.mime_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final NativeFormat getNativefmt() {
            NativeFormat nativeFormat = this.nativefmt_;
            NativeFormat nativeFormat2 = nativeFormat;
            if (nativeFormat == null) {
                nativeFormat2 = NativeFormat.getDefaultInstance();
            }
            return nativeFormat2;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final NativeFormatOrBuilder getNativefmtOrBuilder() {
            return getNativefmt();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<DisplayPlacement> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final PlacementPosition getPos() {
            PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
            PlacementPosition placementPosition = valueOf;
            if (valueOf == null) {
                placementPosition = PlacementPosition.UNRECOGNIZED;
            }
            return placementPosition;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getPosValue() {
            return this.pos_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final boolean getPriv() {
            return this.priv_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final DisplayPlacementType getPtype() {
            DisplayPlacementType valueOf = DisplayPlacementType.valueOf(this.ptype_);
            DisplayPlacementType displayPlacementType = valueOf;
            if (valueOf == null) {
                displayPlacementType = DisplayPlacementType.UNRECOGNIZED;
            }
            return displayPlacementType;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getPtypeValue() {
            return this.ptype_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i;
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int computeEnumSize = this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.pos_) + 0 : 0;
            boolean z = this.instl_;
            int i3 = computeEnumSize;
            if (z) {
                i3 = computeEnumSize + CodedOutputStream.computeBoolSize(2, z);
            }
            boolean z2 = this.topframe_;
            int i4 = i3;
            if (z2) {
                i4 = i3 + CodedOutputStream.computeBoolSize(3, z2);
            }
            int i5 = 0;
            for (int i6 = 0; i6 < this.ifrbust_.size(); i6++) {
                i5 += computeStringSizeNoTag(this.ifrbust_.getRaw(i6));
            }
            int size = i4 + i5 + (getIfrbustList().size() * 1);
            int i7 = size;
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                i7 = size + CodedOutputStream.computeEnumSize(5, this.clktype_);
            }
            int i8 = this.ampren_;
            int i9 = i7;
            if (i8 != 0) {
                i9 = i7 + CodedOutputStream.computeUInt32Size(6, i8);
            }
            int i10 = i9;
            if (this.ptype_ != DisplayPlacementType.DISPLAY_PLACEMENT_TYPE_INVALID.getNumber()) {
                i10 = i9 + CodedOutputStream.computeEnumSize(7, this.ptype_);
            }
            int i11 = i10;
            if (this.context_ != DisplayContextType.DISPLAY_CONTEXT_TYPE_INVALID.getNumber()) {
                i11 = i10 + CodedOutputStream.computeEnumSize(8, this.context_);
            }
            int i12 = 0;
            for (int i13 = 0; i13 < this.mime_.size(); i13++) {
                i12 += computeStringSizeNoTag(this.mime_.getRaw(i13));
            }
            int size2 = getMimeList().size();
            int i14 = 0;
            for (int i15 = 0; i15 < this.api_.size(); i15++) {
                i14 += CodedOutputStream.computeEnumSizeNoTag(this.api_.get(i15).intValue());
            }
            int i16 = i11 + i12 + (size2 * 1) + i14;
            int i17 = i16;
            if (!getApiList().isEmpty()) {
                i17 = i16 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i14);
            }
            this.apiMemoizedSerializedSize = i14;
            int i18 = 0;
            for (int i19 = 0; i19 < this.ctype_.size(); i19++) {
                i18 += CodedOutputStream.computeEnumSizeNoTag(this.ctype_.get(i19).intValue());
            }
            int i20 = i17 + i18;
            int i21 = i20;
            if (!getCtypeList().isEmpty()) {
                i21 = i20 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i18);
            }
            this.ctypeMemoizedSerializedSize = i18;
            int i22 = this.w_;
            int i23 = i21;
            if (i22 != 0) {
                i23 = i21 + CodedOutputStream.computeUInt32Size(12, i22);
            }
            int i24 = this.h_;
            int i25 = i23;
            if (i24 != 0) {
                i25 = i23 + CodedOutputStream.computeUInt32Size(13, i24);
            }
            int i26 = i25;
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                i26 = i25 + CodedOutputStream.computeEnumSize(14, this.unit_);
            }
            boolean z3 = this.priv_;
            int i27 = i26;
            if (z3) {
                i27 = i26 + CodedOutputStream.computeBoolSize(15, z3);
            }
            for (int i28 = 0; i28 < this.displayfmt_.size(); i28++) {
                i27 += CodedOutputStream.computeMessageSize(16, this.displayfmt_.get(i28));
            }
            int i29 = i27;
            if (this.nativefmt_ != null) {
                i29 = i27 + CodedOutputStream.computeMessageSize(17, getNativefmt());
            }
            int i30 = 0;
            while (true) {
                i = i29;
                if (i30 < this.event_.size()) {
                    i29 += CodedOutputStream.computeMessageSize(18, this.event_.get(i30));
                    i30++;
                }
            }
            for (int i31 = 0; i31 < this.extProto_.size(); i31++) {
                i += CodedOutputStream.computeMessageSize(19, this.extProto_.get(i31));
            }
            int i32 = i;
            if (this.ext_ != null) {
                i32 = i + CodedOutputStream.computeMessageSize(20, getExt());
            }
            int serializedSize = i32 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final boolean getTopframe() {
            return this.topframe_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final SizeUnit getUnit() {
            SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
            SizeUnit sizeUnit = valueOf;
            if (valueOf == null) {
                sizeUnit = SizeUnit.UNRECOGNIZED;
            }
            return sizeUnit;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getUnitValue() {
            return this.unit_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final int getW() {
            return this.w_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.DisplayPlacementOrBuilder
        public final boolean hasNativefmt() {
            return this.nativefmt_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.pos_) * 37) + 2) * 53) + Internal.hashBoolean(getInstl())) * 37) + 3) * 53) + Internal.hashBoolean(getTopframe());
            int i = hashCode;
            if (getIfrbustCount() > 0) {
                i = (((hashCode * 37) + 4) * 53) + getIfrbustList().hashCode();
            }
            int ampren = (((((((((((((((i * 37) + 5) * 53) + this.clktype_) * 37) + 6) * 53) + getAmpren()) * 37) + 7) * 53) + this.ptype_) * 37) + 8) * 53) + this.context_;
            int i2 = ampren;
            if (getMimeCount() > 0) {
                i2 = (((ampren * 37) + 9) * 53) + getMimeList().hashCode();
            }
            int i3 = i2;
            if (getApiCount() > 0) {
                i3 = (((i2 * 37) + 10) * 53) + this.api_.hashCode();
            }
            int i4 = i3;
            if (getCtypeCount() > 0) {
                i4 = (((i3 * 37) + 11) * 53) + this.ctype_.hashCode();
            }
            int w = (((((((((((((((i4 * 37) + 12) * 53) + getW()) * 37) + 13) * 53) + getH()) * 37) + 14) * 53) + this.unit_) * 37) + 15) * 53) + Internal.hashBoolean(getPriv());
            int i5 = w;
            if (getDisplayfmtCount() > 0) {
                i5 = (((w * 37) + 16) * 53) + getDisplayfmtList().hashCode();
            }
            int i6 = i5;
            if (hasNativefmt()) {
                i6 = (((i5 * 37) + 17) * 53) + getNativefmt().hashCode();
            }
            int i7 = i6;
            if (getEventCount() > 0) {
                i7 = (((i6 * 37) + 18) * 53) + getEventList().hashCode();
            }
            int i8 = i7;
            if (hasExt()) {
                i8 = (((i7 * 37) + 20) * 53) + getExt().hashCode();
            }
            int i9 = i8;
            if (getExtProtoCount() > 0) {
                i9 = (((i8 * 37) + 19) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i9 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_DisplayPlacement_fieldAccessorTable.ensureFieldAccessorsInitialized(DisplayPlacement.class, Builder.class);
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
            return new DisplayPlacement();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                codedOutputStream.writeEnum(1, this.pos_);
            }
            boolean z = this.instl_;
            if (z) {
                codedOutputStream.writeBool(2, z);
            }
            boolean z2 = this.topframe_;
            if (z2) {
                codedOutputStream.writeBool(3, z2);
            }
            for (int i = 0; i < this.ifrbust_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.ifrbust_.getRaw(i));
            }
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                codedOutputStream.writeEnum(5, this.clktype_);
            }
            int i2 = this.ampren_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(6, i2);
            }
            if (this.ptype_ != DisplayPlacementType.DISPLAY_PLACEMENT_TYPE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(7, this.ptype_);
            }
            if (this.context_ != DisplayContextType.DISPLAY_CONTEXT_TYPE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(8, this.context_);
            }
            for (int i3 = 0; i3 < this.mime_.size(); i3++) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.mime_.getRaw(i3));
            }
            if (getApiList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(82);
                codedOutputStream.writeUInt32NoTag(this.apiMemoizedSerializedSize);
            }
            for (int i4 = 0; i4 < this.api_.size(); i4++) {
                codedOutputStream.writeEnumNoTag(this.api_.get(i4).intValue());
            }
            if (getCtypeList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(90);
                codedOutputStream.writeUInt32NoTag(this.ctypeMemoizedSerializedSize);
            }
            for (int i5 = 0; i5 < this.ctype_.size(); i5++) {
                codedOutputStream.writeEnumNoTag(this.ctype_.get(i5).intValue());
            }
            int i6 = this.w_;
            if (i6 != 0) {
                codedOutputStream.writeUInt32(12, i6);
            }
            int i7 = this.h_;
            if (i7 != 0) {
                codedOutputStream.writeUInt32(13, i7);
            }
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                codedOutputStream.writeEnum(14, this.unit_);
            }
            boolean z3 = this.priv_;
            if (z3) {
                codedOutputStream.writeBool(15, z3);
            }
            for (int i8 = 0; i8 < this.displayfmt_.size(); i8++) {
                codedOutputStream.writeMessage(16, this.displayfmt_.get(i8));
            }
            if (this.nativefmt_ != null) {
                codedOutputStream.writeMessage(17, getNativefmt());
            }
            for (int i9 = 0; i9 < this.event_.size(); i9++) {
                codedOutputStream.writeMessage(18, this.event_.get(i9));
            }
            for (int i10 = 0; i10 < this.extProto_.size(); i10++) {
                codedOutputStream.writeMessage(19, this.extProto_.get(i10));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(20, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$DisplayPlacementOrBuilder.class */
    public interface DisplayPlacementOrBuilder extends MessageOrBuilder {
        int getAmpren();

        ApiFramework getApi(int i);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i);

        List<Integer> getApiValueList();

        ClickType getClktype();

        int getClktypeValue();

        DisplayContextType getContext();

        int getContextValue();

        DisplayCreativeType getCtype(int i);

        int getCtypeCount();

        List<DisplayCreativeType> getCtypeList();

        int getCtypeValue(int i);

        List<Integer> getCtypeValueList();

        DisplayPlacement.DisplayFormat getDisplayfmt(int i);

        int getDisplayfmtCount();

        List<DisplayPlacement.DisplayFormat> getDisplayfmtList();

        DisplayPlacement.DisplayFormatOrBuilder getDisplayfmtOrBuilder(int i);

        List<? extends DisplayPlacement.DisplayFormatOrBuilder> getDisplayfmtOrBuilderList();

        DisplayPlacement.EventSpec getEvent(int i);

        int getEventCount();

        List<DisplayPlacement.EventSpec> getEventList();

        DisplayPlacement.EventSpecOrBuilder getEventOrBuilder(int i);

        List<? extends DisplayPlacement.EventSpecOrBuilder> getEventOrBuilderList();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        int getH();

        String getIfrbust(int i);

        ByteString getIfrbustBytes(int i);

        int getIfrbustCount();

        List<String> getIfrbustList();

        boolean getInstl();

        String getMime(int i);

        ByteString getMimeBytes(int i);

        int getMimeCount();

        List<String> getMimeList();

        DisplayPlacement.NativeFormat getNativefmt();

        DisplayPlacement.NativeFormatOrBuilder getNativefmtOrBuilder();

        PlacementPosition getPos();

        int getPosValue();

        boolean getPriv();

        DisplayPlacementType getPtype();

        int getPtypeValue();

        boolean getTopframe();

        SizeUnit getUnit();

        int getUnitValue();

        int getW();

        boolean hasExt();

        boolean hasNativefmt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$VideoPlacement.class */
    public static final class VideoPlacement extends GeneratedMessageV3 implements VideoPlacementOrBuilder {
        public static final int API_FIELD_NUMBER = 11;
        public static final int BOXING_FIELD_NUMBER = 24;
        public static final int CLKTYPE_FIELD_NUMBER = 9;
        public static final int COMPTYPE_FIELD_NUMBER = 26;
        public static final int COMP_FIELD_NUMBER = 25;
        public static final int CTYPE_FIELD_NUMBER = 12;
        public static final int DELAY_FIELD_NUMBER = 3;
        public static final int DELIVERY_FIELD_NUMBER = 21;
        public static final int EXT_FIELD_NUMBER = 28;
        public static final int EXT_PROTO_FIELD_NUMBER = 27;
        public static final int H_FIELD_NUMBER = 14;
        public static final int LINEAR_FIELD_NUMBER = 23;
        public static final int MAXBITR_FIELD_NUMBER = 20;
        public static final int MAXDUR_FIELD_NUMBER = 17;
        public static final int MAXEXT_FIELD_NUMBER = 18;
        public static final int MAXSEQ_FIELD_NUMBER = 22;
        public static final int MIME_FIELD_NUMBER = 10;
        public static final int MINBITR_FIELD_NUMBER = 19;
        public static final int MINDUR_FIELD_NUMBER = 16;
        public static final int PLAYEND_FIELD_NUMBER = 8;
        public static final int PLAYMETHOD_FIELD_NUMBER = 7;
        public static final int POS_FIELD_NUMBER = 2;
        public static final int PTYPE_FIELD_NUMBER = 1;
        public static final int SKIPAFTER_FIELD_NUMBER = 6;
        public static final int SKIPMIN_FIELD_NUMBER = 5;
        public static final int SKIP_FIELD_NUMBER = 4;
        public static final int UNIT_FIELD_NUMBER = 15;
        public static final int W_FIELD_NUMBER = 13;
        private static final long serialVersionUID = 0;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private boolean boxing_;
        private int clktype_;
        private List<Companion> comp_;
        private int comptypeMemoizedSerializedSize;
        private List<Integer> comptype_;
        private int ctypeMemoizedSerializedSize;
        private List<Integer> ctype_;
        private int delay_;
        private int deliveryMemoizedSerializedSize;
        private List<Integer> delivery_;
        private List<Any> extProto_;
        private Struct ext_;
        private int h_;
        private int linear_;
        private int maxbitr_;
        private int maxdur_;
        private int maxext_;
        private int maxseq_;
        private byte memoizedIsInitialized;
        private LazyStringList mime_;
        private int minbitr_;
        private int mindur_;
        private int playend_;
        private int playmethod_;
        private int pos_;
        private int ptype_;
        private boolean skip_;
        private int skipafter_;
        private int skipmin_;
        private int unit_;
        private int w_;
        private static final Internal.ListAdapter.Converter<Integer, ApiFramework> api_converter_ = new Internal.ListAdapter.Converter<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.1
            public final ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                ApiFramework apiFramework = valueOf;
                if (valueOf == null) {
                    apiFramework = ApiFramework.UNRECOGNIZED;
                }
                return apiFramework;
            }
        };
        private static final Internal.ListAdapter.Converter<Integer, VideoCreativeType> ctype_converter_ = new Internal.ListAdapter.Converter<Integer, VideoCreativeType>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.2
            public final VideoCreativeType convert(Integer num) {
                VideoCreativeType valueOf = VideoCreativeType.valueOf(num.intValue());
                VideoCreativeType videoCreativeType = valueOf;
                if (valueOf == null) {
                    videoCreativeType = VideoCreativeType.UNRECOGNIZED;
                }
                return videoCreativeType;
            }
        };
        private static final Internal.ListAdapter.Converter<Integer, DeliveryMethod> delivery_converter_ = new Internal.ListAdapter.Converter<Integer, DeliveryMethod>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.3
            public final DeliveryMethod convert(Integer num) {
                DeliveryMethod valueOf = DeliveryMethod.valueOf(num.intValue());
                DeliveryMethod deliveryMethod = valueOf;
                if (valueOf == null) {
                    deliveryMethod = DeliveryMethod.UNRECOGNIZED;
                }
                return deliveryMethod;
            }
        };
        private static final Internal.ListAdapter.Converter<Integer, CompanionType> comptype_converter_ = new Internal.ListAdapter.Converter<Integer, CompanionType>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.4
            public final CompanionType convert(Integer num) {
                CompanionType valueOf = CompanionType.valueOf(num.intValue());
                CompanionType companionType = valueOf;
                if (valueOf == null) {
                    companionType = CompanionType.UNRECOGNIZED;
                }
                return companionType;
            }
        };
        private static final VideoPlacement DEFAULT_INSTANCE = new VideoPlacement();
        private static final Parser<VideoPlacement> PARSER = new AbstractParser<VideoPlacement>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.5
            @Override // com.explorestack.protobuf.Parser
            public final VideoPlacement parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new VideoPlacement(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VideoPlacementOrBuilder {
            private List<Integer> api_;
            private int bitField0_;
            private boolean boxing_;
            private int clktype_;
            private RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> compBuilder_;
            private List<Companion> comp_;
            private List<Integer> comptype_;
            private List<Integer> ctype_;
            private int delay_;
            private List<Integer> delivery_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private int linear_;
            private int maxbitr_;
            private int maxdur_;
            private int maxext_;
            private int maxseq_;
            private LazyStringList mime_;
            private int minbitr_;
            private int mindur_;
            private int playend_;
            private int playmethod_;
            private int pos_;
            private int ptype_;
            private boolean skip_;
            private int skipafter_;
            private int skipmin_;
            private int unit_;
            private int w_;

            private Builder() {
                this.ptype_ = 0;
                this.pos_ = 0;
                this.playmethod_ = 0;
                this.playend_ = 0;
                this.clktype_ = 0;
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.delivery_ = Collections.emptyList();
                this.linear_ = 0;
                this.comp_ = Collections.emptyList();
                this.comptype_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.ptype_ = 0;
                this.pos_ = 0;
                this.playmethod_ = 0;
                this.playend_ = 0;
                this.clktype_ = 0;
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.ctype_ = Collections.emptyList();
                this.unit_ = 0;
                this.delivery_ = Collections.emptyList();
                this.linear_ = 0;
                this.comp_ = Collections.emptyList();
                this.comptype_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureApiIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.api_ = new ArrayList(this.api_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureCompIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.comp_ = new ArrayList(this.comp_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureComptypeIsMutable() {
                if ((this.bitField0_ & 32) == 0) {
                    this.comptype_ = new ArrayList(this.comptype_);
                    this.bitField0_ |= 32;
                }
            }

            private void ensureCtypeIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.ctype_ = new ArrayList(this.ctype_);
                    this.bitField0_ |= 4;
                }
            }

            private void ensureDeliveryIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.delivery_ = new ArrayList(this.delivery_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 64) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 64;
                }
            }

            private void ensureMimeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.mime_ = new LazyStringArrayList(this.mime_);
                    this.bitField0_ |= 1;
                }
            }

            private RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> getCompFieldBuilder() {
                if (this.compBuilder_ == null) {
                    this.compBuilder_ = new RepeatedFieldBuilderV3<>(this.comp_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.comp_ = null;
                }
                return this.compBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_descriptor;
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
                    this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 64) != 0, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (VideoPlacement.alwaysUseFieldBuilders) {
                    getCompFieldBuilder();
                    getExtProtoFieldBuilder();
                }
            }

            public final Builder addAllApi(Iterable<? extends ApiFramework> iterable) {
                ensureApiIsMutable();
                for (ApiFramework apiFramework : iterable) {
                    this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllApiValue(Iterable<Integer> iterable) {
                ensureApiIsMutable();
                for (Integer num : iterable) {
                    this.api_.add(Integer.valueOf(num.intValue()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllComp(Iterable<? extends Companion> iterable) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCompIsMutable();
                    AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.comp_);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addAllMessages(iterable);
                }
                return this;
            }

            public final Builder addAllComptype(Iterable<? extends CompanionType> iterable) {
                ensureComptypeIsMutable();
                for (CompanionType companionType : iterable) {
                    this.comptype_.add(Integer.valueOf(companionType.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllComptypeValue(Iterable<Integer> iterable) {
                ensureComptypeIsMutable();
                for (Integer num : iterable) {
                    this.comptype_.add(Integer.valueOf(num.intValue()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllCtype(Iterable<? extends VideoCreativeType> iterable) {
                ensureCtypeIsMutable();
                for (VideoCreativeType videoCreativeType : iterable) {
                    this.ctype_.add(Integer.valueOf(videoCreativeType.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllCtypeValue(Iterable<Integer> iterable) {
                ensureCtypeIsMutable();
                for (Integer num : iterable) {
                    this.ctype_.add(Integer.valueOf(num.intValue()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllDelivery(Iterable<? extends DeliveryMethod> iterable) {
                ensureDeliveryIsMutable();
                for (DeliveryMethod deliveryMethod : iterable) {
                    this.delivery_.add(Integer.valueOf(deliveryMethod.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllDeliveryValue(Iterable<Integer> iterable) {
                ensureDeliveryIsMutable();
                for (Integer num : iterable) {
                    this.delivery_.add(Integer.valueOf(num.intValue()));
                }
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

            public final Builder addAllMime(Iterable<String> iterable) {
                ensureMimeIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mime_);
                onChanged();
                return this;
            }

            public final Builder addApi(ApiFramework apiFramework) {
                Objects.requireNonNull(apiFramework);
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addApiValue(int i) {
                ensureApiIsMutable();
                this.api_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public final Builder addComp(int i, Companion.Builder builder) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCompIsMutable();
                    this.comp_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addComp(int i, Companion companion) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(companion);
                    ensureCompIsMutable();
                    this.comp_.add(i, companion);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, companion);
                }
                return this;
            }

            public final Builder addComp(Companion.Builder builder) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCompIsMutable();
                    this.comp_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addComp(Companion companion) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(companion);
                    ensureCompIsMutable();
                    this.comp_.add(companion);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(companion);
                }
                return this;
            }

            public final Companion.Builder addCompBuilder() {
                return getCompFieldBuilder().addBuilder(Companion.getDefaultInstance());
            }

            public final Companion.Builder addCompBuilder(int i) {
                return getCompFieldBuilder().addBuilder(i, Companion.getDefaultInstance());
            }

            public final Builder addComptype(CompanionType companionType) {
                Objects.requireNonNull(companionType);
                ensureComptypeIsMutable();
                this.comptype_.add(Integer.valueOf(companionType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addComptypeValue(int i) {
                ensureComptypeIsMutable();
                this.comptype_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public final Builder addCtype(VideoCreativeType videoCreativeType) {
                Objects.requireNonNull(videoCreativeType);
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(videoCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addCtypeValue(int i) {
                ensureCtypeIsMutable();
                this.ctype_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            public final Builder addDelivery(DeliveryMethod deliveryMethod) {
                Objects.requireNonNull(deliveryMethod);
                ensureDeliveryIsMutable();
                this.delivery_.add(Integer.valueOf(deliveryMethod.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addDeliveryValue(int i) {
                ensureDeliveryIsMutable();
                this.delivery_.add(Integer.valueOf(i));
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

            public final Builder addMime(String str) {
                Objects.requireNonNull(str);
                ensureMimeIsMutable();
                this.mime_.add(str);
                onChanged();
                return this;
            }

            public final Builder addMimeBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                VideoPlacement.checkByteStringIsUtf8(byteString);
                ensureMimeIsMutable();
                this.mime_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final VideoPlacement build() {
                VideoPlacement buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final VideoPlacement buildPartial() {
                VideoPlacement videoPlacement = new VideoPlacement(this);
                videoPlacement.ptype_ = this.ptype_;
                videoPlacement.pos_ = this.pos_;
                videoPlacement.delay_ = this.delay_;
                videoPlacement.skip_ = this.skip_;
                videoPlacement.skipmin_ = this.skipmin_;
                videoPlacement.skipafter_ = this.skipafter_;
                videoPlacement.playmethod_ = this.playmethod_;
                videoPlacement.playend_ = this.playend_;
                videoPlacement.clktype_ = this.clktype_;
                if ((this.bitField0_ & 1) != 0) {
                    this.mime_ = this.mime_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                videoPlacement.mime_ = this.mime_;
                if ((this.bitField0_ & 2) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -3;
                }
                videoPlacement.api_ = this.api_;
                if ((this.bitField0_ & 4) != 0) {
                    this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    this.bitField0_ &= -5;
                }
                videoPlacement.ctype_ = this.ctype_;
                videoPlacement.w_ = this.w_;
                videoPlacement.h_ = this.h_;
                videoPlacement.unit_ = this.unit_;
                videoPlacement.mindur_ = this.mindur_;
                videoPlacement.maxdur_ = this.maxdur_;
                videoPlacement.maxext_ = this.maxext_;
                videoPlacement.minbitr_ = this.minbitr_;
                videoPlacement.maxbitr_ = this.maxbitr_;
                if ((this.bitField0_ & 8) != 0) {
                    this.delivery_ = Collections.unmodifiableList(this.delivery_);
                    this.bitField0_ &= -9;
                }
                videoPlacement.delivery_ = this.delivery_;
                videoPlacement.maxseq_ = this.maxseq_;
                videoPlacement.linear_ = this.linear_;
                videoPlacement.boxing_ = this.boxing_;
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.comp_ = Collections.unmodifiableList(this.comp_);
                        this.bitField0_ &= -17;
                    }
                    videoPlacement.comp_ = this.comp_;
                } else {
                    videoPlacement.comp_ = repeatedFieldBuilderV3.build();
                }
                if ((this.bitField0_ & 32) != 0) {
                    this.comptype_ = Collections.unmodifiableList(this.comptype_);
                    this.bitField0_ &= -33;
                }
                videoPlacement.comptype_ = this.comptype_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    videoPlacement.ext_ = this.ext_;
                } else {
                    videoPlacement.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 64) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -65;
                    }
                    videoPlacement.extProto_ = this.extProto_;
                } else {
                    videoPlacement.extProto_ = repeatedFieldBuilderV32.build();
                }
                onBuilt();
                return videoPlacement;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.ptype_ = 0;
                this.pos_ = 0;
                this.delay_ = 0;
                this.skip_ = false;
                this.skipmin_ = 0;
                this.skipafter_ = 0;
                this.playmethod_ = 0;
                this.playend_ = 0;
                this.clktype_ = 0;
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.w_ = 0;
                this.h_ = 0;
                this.unit_ = 0;
                this.mindur_ = 0;
                this.maxdur_ = 0;
                this.maxext_ = 0;
                this.minbitr_ = 0;
                this.maxbitr_ = 0;
                this.delivery_ = Collections.emptyList();
                this.bitField0_ &= -9;
                this.maxseq_ = 0;
                this.linear_ = 0;
                this.boxing_ = false;
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.comp_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                this.comptype_ = Collections.emptyList();
                this.bitField0_ &= -33;
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -65;
                } else {
                    repeatedFieldBuilderV32.clear();
                }
                return this;
            }

            public final Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearBoxing() {
                this.boxing_ = false;
                onChanged();
                return this;
            }

            public final Builder clearClktype() {
                this.clktype_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearComp() {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.comp_ = Collections.emptyList();
                    this.bitField0_ &= -17;
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearComptype() {
                this.comptype_ = Collections.emptyList();
                this.bitField0_ &= -33;
                onChanged();
                return this;
            }

            public final Builder clearCtype() {
                this.ctype_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            public final Builder clearDelay() {
                this.delay_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearDelivery() {
                this.delivery_ = Collections.emptyList();
                this.bitField0_ &= -9;
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
                    this.bitField0_ &= -65;
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

            public final Builder clearH() {
                this.h_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearLinear() {
                this.linear_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMaxbitr() {
                this.maxbitr_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMaxdur() {
                this.maxdur_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMaxext() {
                this.maxext_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMaxseq() {
                this.maxseq_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMime() {
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public final Builder clearMinbitr() {
                this.minbitr_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMindur() {
                this.mindur_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearPlayend() {
                this.playend_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearPlaymethod() {
                this.playmethod_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearPos() {
                this.pos_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearPtype() {
                this.ptype_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearSkip() {
                this.skip_ = false;
                onChanged();
                return this;
            }

            public final Builder clearSkipafter() {
                this.skipafter_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearSkipmin() {
                this.skipmin_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearUnit() {
                this.unit_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearW() {
                this.w_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final ApiFramework getApi(int i) {
                return (ApiFramework) VideoPlacement.api_converter_.convert(this.api_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<ApiFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, VideoPlacement.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getApiValue(int i) {
                return this.api_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final boolean getBoxing() {
                return this.boxing_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final ClickType getClktype() {
                ClickType valueOf = ClickType.valueOf(this.clktype_);
                ClickType clickType = valueOf;
                if (valueOf == null) {
                    clickType = ClickType.UNRECOGNIZED;
                }
                return clickType;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getClktypeValue() {
                return this.clktype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final Companion getComp(int i) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                return repeatedFieldBuilderV3 == null ? this.comp_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Companion.Builder getCompBuilder(int i) {
                return getCompFieldBuilder().getBuilder(i);
            }

            public final List<Companion.Builder> getCompBuilderList() {
                return getCompFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getCompCount() {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                return repeatedFieldBuilderV3 == null ? this.comp_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<Companion> getCompList() {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.comp_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final CompanionOrBuilder getCompOrBuilder(int i) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                return repeatedFieldBuilderV3 == null ? this.comp_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<? extends CompanionOrBuilder> getCompOrBuilderList() {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.comp_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final CompanionType getComptype(int i) {
                return (CompanionType) VideoPlacement.comptype_converter_.convert(this.comptype_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getComptypeCount() {
                return this.comptype_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<CompanionType> getComptypeList() {
                return new Internal.ListAdapter(this.comptype_, VideoPlacement.comptype_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getComptypeValue(int i) {
                return this.comptype_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<Integer> getComptypeValueList() {
                return Collections.unmodifiableList(this.comptype_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final VideoCreativeType getCtype(int i) {
                return (VideoCreativeType) VideoPlacement.ctype_converter_.convert(this.ctype_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getCtypeCount() {
                return this.ctype_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<VideoCreativeType> getCtypeList() {
                return new Internal.ListAdapter(this.ctype_, VideoPlacement.ctype_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getCtypeValue(int i) {
                return this.ctype_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<Integer> getCtypeValueList() {
                return Collections.unmodifiableList(this.ctype_);
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final VideoPlacement getDefaultInstanceForType() {
                return VideoPlacement.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getDelay() {
                return this.delay_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final DeliveryMethod getDelivery(int i) {
                return (DeliveryMethod) VideoPlacement.delivery_converter_.convert(this.delivery_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getDeliveryCount() {
                return this.delivery_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<DeliveryMethod> getDeliveryList() {
                return new Internal.ListAdapter(this.delivery_, VideoPlacement.delivery_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getDeliveryValue(int i) {
                return this.delivery_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<Integer> getDeliveryValueList() {
                return Collections.unmodifiableList(this.delivery_);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final LinearityMode getLinear() {
                LinearityMode valueOf = LinearityMode.valueOf(this.linear_);
                LinearityMode linearityMode = valueOf;
                if (valueOf == null) {
                    linearityMode = LinearityMode.UNRECOGNIZED;
                }
                return linearityMode;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getLinearValue() {
                return this.linear_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMaxbitr() {
                return this.maxbitr_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMaxdur() {
                return this.maxdur_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMaxext() {
                return this.maxext_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMaxseq() {
                return this.maxseq_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final String getMime(int i) {
                return (String) this.mime_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final ByteString getMimeBytes(int i) {
                return this.mime_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMimeCount() {
                return this.mime_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final ProtocolStringList getMimeList() {
                return this.mime_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMinbitr() {
                return this.minbitr_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getMindur() {
                return this.mindur_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final PlaybackCessationMode getPlayend() {
                PlaybackCessationMode valueOf = PlaybackCessationMode.valueOf(this.playend_);
                PlaybackCessationMode playbackCessationMode = valueOf;
                if (valueOf == null) {
                    playbackCessationMode = PlaybackCessationMode.UNRECOGNIZED;
                }
                return playbackCessationMode;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getPlayendValue() {
                return this.playend_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final PlaybackMethod getPlaymethod() {
                PlaybackMethod valueOf = PlaybackMethod.valueOf(this.playmethod_);
                PlaybackMethod playbackMethod = valueOf;
                if (valueOf == null) {
                    playbackMethod = PlaybackMethod.UNRECOGNIZED;
                }
                return playbackMethod;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getPlaymethodValue() {
                return this.playmethod_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final PlacementPosition getPos() {
                PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
                PlacementPosition placementPosition = valueOf;
                if (valueOf == null) {
                    placementPosition = PlacementPosition.UNRECOGNIZED;
                }
                return placementPosition;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getPosValue() {
                return this.pos_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final VideoPlacementType getPtype() {
                VideoPlacementType valueOf = VideoPlacementType.valueOf(this.ptype_);
                VideoPlacementType videoPlacementType = valueOf;
                if (valueOf == null) {
                    videoPlacementType = VideoPlacementType.UNRECOGNIZED;
                }
                return videoPlacementType;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getPtypeValue() {
                return this.ptype_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final boolean getSkip() {
                return this.skip_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getSkipafter() {
                return this.skipafter_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getSkipmin() {
                return this.skipmin_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final SizeUnit getUnit() {
                SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
                SizeUnit sizeUnit = valueOf;
                if (valueOf == null) {
                    sizeUnit = SizeUnit.UNRECOGNIZED;
                }
                return sizeUnit;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getUnitValue() {
                return this.unit_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_fieldAccessorTable.ensureFieldAccessorsInitialized(VideoPlacement.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Placement.VideoPlacement.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.VideoPlacement.access$19000()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                    com.explorestack.protobuf.adcom.Placement$VideoPlacement r0 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Placement$VideoPlacement$Builder r0 = r0.mergeFrom(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r7
                    r6 = r0
                    r0 = r5
                    r7 = r0
                    goto L_0x0037
                L_0x0024:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                    com.explorestack.protobuf.adcom.Placement$VideoPlacement r0 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                    throw r0     // Catch: all -> 0x0032
                L_0x0032:
                    r6 = move-exception
                    r0 = r6
                    r7 = r0
                    r0 = r5
                    r6 = r0
                L_0x0037:
                    r0 = r6
                    if (r0 == 0) goto L_0x0041
                    r0 = r4
                    r1 = r6
                    com.explorestack.protobuf.adcom.Placement$VideoPlacement$Builder r0 = r0.mergeFrom(r1)
                L_0x0041:
                    r0 = r7
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.VideoPlacement.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$VideoPlacement$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof VideoPlacement) {
                    return mergeFrom((VideoPlacement) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(VideoPlacement videoPlacement) {
                if (videoPlacement == VideoPlacement.getDefaultInstance()) {
                    return this;
                }
                if (videoPlacement.ptype_ != 0) {
                    setPtypeValue(videoPlacement.getPtypeValue());
                }
                if (videoPlacement.pos_ != 0) {
                    setPosValue(videoPlacement.getPosValue());
                }
                if (videoPlacement.getDelay() != 0) {
                    setDelay(videoPlacement.getDelay());
                }
                if (videoPlacement.getSkip()) {
                    setSkip(videoPlacement.getSkip());
                }
                if (videoPlacement.getSkipmin() != 0) {
                    setSkipmin(videoPlacement.getSkipmin());
                }
                if (videoPlacement.getSkipafter() != 0) {
                    setSkipafter(videoPlacement.getSkipafter());
                }
                if (videoPlacement.playmethod_ != 0) {
                    setPlaymethodValue(videoPlacement.getPlaymethodValue());
                }
                if (videoPlacement.playend_ != 0) {
                    setPlayendValue(videoPlacement.getPlayendValue());
                }
                if (videoPlacement.clktype_ != 0) {
                    setClktypeValue(videoPlacement.getClktypeValue());
                }
                if (!videoPlacement.mime_.isEmpty()) {
                    if (this.mime_.isEmpty()) {
                        this.mime_ = videoPlacement.mime_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMimeIsMutable();
                        this.mime_.addAll(videoPlacement.mime_);
                    }
                    onChanged();
                }
                if (!videoPlacement.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = videoPlacement.api_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(videoPlacement.api_);
                    }
                    onChanged();
                }
                if (!videoPlacement.ctype_.isEmpty()) {
                    if (this.ctype_.isEmpty()) {
                        this.ctype_ = videoPlacement.ctype_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureCtypeIsMutable();
                        this.ctype_.addAll(videoPlacement.ctype_);
                    }
                    onChanged();
                }
                if (videoPlacement.getW() != 0) {
                    setW(videoPlacement.getW());
                }
                if (videoPlacement.getH() != 0) {
                    setH(videoPlacement.getH());
                }
                if (videoPlacement.unit_ != 0) {
                    setUnitValue(videoPlacement.getUnitValue());
                }
                if (videoPlacement.getMindur() != 0) {
                    setMindur(videoPlacement.getMindur());
                }
                if (videoPlacement.getMaxdur() != 0) {
                    setMaxdur(videoPlacement.getMaxdur());
                }
                if (videoPlacement.getMaxext() != 0) {
                    setMaxext(videoPlacement.getMaxext());
                }
                if (videoPlacement.getMinbitr() != 0) {
                    setMinbitr(videoPlacement.getMinbitr());
                }
                if (videoPlacement.getMaxbitr() != 0) {
                    setMaxbitr(videoPlacement.getMaxbitr());
                }
                if (!videoPlacement.delivery_.isEmpty()) {
                    if (this.delivery_.isEmpty()) {
                        this.delivery_ = videoPlacement.delivery_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureDeliveryIsMutable();
                        this.delivery_.addAll(videoPlacement.delivery_);
                    }
                    onChanged();
                }
                if (videoPlacement.getMaxseq() != 0) {
                    setMaxseq(videoPlacement.getMaxseq());
                }
                if (videoPlacement.linear_ != 0) {
                    setLinearValue(videoPlacement.getLinearValue());
                }
                if (videoPlacement.getBoxing()) {
                    setBoxing(videoPlacement.getBoxing());
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                if (this.compBuilder_ == null) {
                    if (!videoPlacement.comp_.isEmpty()) {
                        if (this.comp_.isEmpty()) {
                            this.comp_ = videoPlacement.comp_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureCompIsMutable();
                            this.comp_.addAll(videoPlacement.comp_);
                        }
                        onChanged();
                    }
                } else if (!videoPlacement.comp_.isEmpty()) {
                    if (this.compBuilder_.isEmpty()) {
                        this.compBuilder_.dispose();
                        this.compBuilder_ = null;
                        this.comp_ = videoPlacement.comp_;
                        this.bitField0_ &= -17;
                        this.compBuilder_ = VideoPlacement.alwaysUseFieldBuilders ? getCompFieldBuilder() : null;
                    } else {
                        this.compBuilder_.addAllMessages(videoPlacement.comp_);
                    }
                }
                if (!videoPlacement.comptype_.isEmpty()) {
                    if (this.comptype_.isEmpty()) {
                        this.comptype_ = videoPlacement.comptype_;
                        this.bitField0_ &= -33;
                    } else {
                        ensureComptypeIsMutable();
                        this.comptype_.addAll(videoPlacement.comptype_);
                    }
                    onChanged();
                }
                if (videoPlacement.hasExt()) {
                    mergeExt(videoPlacement.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!videoPlacement.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = videoPlacement.extProto_;
                            this.bitField0_ &= -65;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(videoPlacement.extProto_);
                        }
                        onChanged();
                    }
                } else if (!videoPlacement.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = videoPlacement.extProto_;
                        this.bitField0_ &= -65;
                        if (VideoPlacement.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(videoPlacement.extProto_);
                    }
                }
                mergeUnknownFields(videoPlacement.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeComp(int i) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCompIsMutable();
                    this.comp_.remove(i);
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

            public final Builder setApi(int i, ApiFramework apiFramework) {
                Objects.requireNonNull(apiFramework);
                ensureApiIsMutable();
                this.api_.set(i, Integer.valueOf(apiFramework.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setApiValue(int i, int i2) {
                ensureApiIsMutable();
                this.api_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public final Builder setBoxing(boolean z) {
                this.boxing_ = z;
                onChanged();
                return this;
            }

            public final Builder setClktype(ClickType clickType) {
                Objects.requireNonNull(clickType);
                this.clktype_ = clickType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setClktypeValue(int i) {
                this.clktype_ = i;
                onChanged();
                return this;
            }

            public final Builder setComp(int i, Companion.Builder builder) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureCompIsMutable();
                    this.comp_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setComp(int i, Companion companion) {
                RepeatedFieldBuilderV3<Companion, Companion.Builder, CompanionOrBuilder> repeatedFieldBuilderV3 = this.compBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    Objects.requireNonNull(companion);
                    ensureCompIsMutable();
                    this.comp_.set(i, companion);
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, companion);
                }
                return this;
            }

            public final Builder setComptype(int i, CompanionType companionType) {
                Objects.requireNonNull(companionType);
                ensureComptypeIsMutable();
                this.comptype_.set(i, Integer.valueOf(companionType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setComptypeValue(int i, int i2) {
                ensureComptypeIsMutable();
                this.comptype_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public final Builder setCtype(int i, VideoCreativeType videoCreativeType) {
                Objects.requireNonNull(videoCreativeType);
                ensureCtypeIsMutable();
                this.ctype_.set(i, Integer.valueOf(videoCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setCtypeValue(int i, int i2) {
                ensureCtypeIsMutable();
                this.ctype_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            public final Builder setDelay(int i) {
                this.delay_ = i;
                onChanged();
                return this;
            }

            public final Builder setDelivery(int i, DeliveryMethod deliveryMethod) {
                Objects.requireNonNull(deliveryMethod);
                ensureDeliveryIsMutable();
                this.delivery_.set(i, Integer.valueOf(deliveryMethod.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setDeliveryValue(int i, int i2) {
                ensureDeliveryIsMutable();
                this.delivery_.set(i, Integer.valueOf(i2));
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

            public final Builder setH(int i) {
                this.h_ = i;
                onChanged();
                return this;
            }

            public final Builder setLinear(LinearityMode linearityMode) {
                Objects.requireNonNull(linearityMode);
                this.linear_ = linearityMode.getNumber();
                onChanged();
                return this;
            }

            public final Builder setLinearValue(int i) {
                this.linear_ = i;
                onChanged();
                return this;
            }

            public final Builder setMaxbitr(int i) {
                this.maxbitr_ = i;
                onChanged();
                return this;
            }

            public final Builder setMaxdur(int i) {
                this.maxdur_ = i;
                onChanged();
                return this;
            }

            public final Builder setMaxext(int i) {
                this.maxext_ = i;
                onChanged();
                return this;
            }

            public final Builder setMaxseq(int i) {
                this.maxseq_ = i;
                onChanged();
                return this;
            }

            public final Builder setMime(int i, String str) {
                Objects.requireNonNull(str);
                ensureMimeIsMutable();
                this.mime_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setMinbitr(int i) {
                this.minbitr_ = i;
                onChanged();
                return this;
            }

            public final Builder setMindur(int i) {
                this.mindur_ = i;
                onChanged();
                return this;
            }

            public final Builder setPlayend(PlaybackCessationMode playbackCessationMode) {
                Objects.requireNonNull(playbackCessationMode);
                this.playend_ = playbackCessationMode.getNumber();
                onChanged();
                return this;
            }

            public final Builder setPlayendValue(int i) {
                this.playend_ = i;
                onChanged();
                return this;
            }

            public final Builder setPlaymethod(PlaybackMethod playbackMethod) {
                Objects.requireNonNull(playbackMethod);
                this.playmethod_ = playbackMethod.getNumber();
                onChanged();
                return this;
            }

            public final Builder setPlaymethodValue(int i) {
                this.playmethod_ = i;
                onChanged();
                return this;
            }

            public final Builder setPos(PlacementPosition placementPosition) {
                Objects.requireNonNull(placementPosition);
                this.pos_ = placementPosition.getNumber();
                onChanged();
                return this;
            }

            public final Builder setPosValue(int i) {
                this.pos_ = i;
                onChanged();
                return this;
            }

            public final Builder setPtype(VideoPlacementType videoPlacementType) {
                Objects.requireNonNull(videoPlacementType);
                this.ptype_ = videoPlacementType.getNumber();
                onChanged();
                return this;
            }

            public final Builder setPtypeValue(int i) {
                this.ptype_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setSkip(boolean z) {
                this.skip_ = z;
                onChanged();
                return this;
            }

            public final Builder setSkipafter(int i) {
                this.skipafter_ = i;
                onChanged();
                return this;
            }

            public final Builder setSkipmin(int i) {
                this.skipmin_ = i;
                onChanged();
                return this;
            }

            public final Builder setUnit(SizeUnit sizeUnit) {
                Objects.requireNonNull(sizeUnit);
                this.unit_ = sizeUnit.getNumber();
                onChanged();
                return this;
            }

            public final Builder setUnitValue(int i) {
                this.unit_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public final Builder setW(int i) {
                this.w_ = i;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion.class */
        public static final class Companion extends GeneratedMessageV3 implements CompanionOrBuilder {
            public static final int DISPLAY_FIELD_NUMBER = 3;
            public static final int EXT_FIELD_NUMBER = 5;
            public static final int EXT_PROTO_FIELD_NUMBER = 4;
            public static final int ID_FIELD_NUMBER = 1;
            public static final int VCM_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private DisplayPlacement display_;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object id_;
            private byte memoizedIsInitialized;
            private int vcm_;
            private static final Companion DEFAULT_INSTANCE = new Companion();
            private static final Parser<Companion> PARSER = new AbstractParser<Companion>() { // from class: com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.1
                @Override // com.explorestack.protobuf.Parser
                public final Companion parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Companion(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$VideoPlacement$Companion$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements CompanionOrBuilder {
                private int bitField0_;
                private SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> displayBuilder_;
                private DisplayPlacement display_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object id_;
                private int vcm_;

                private Builder() {
                    this.id_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.id_ = "";
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
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_descriptor;
                }

                private SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> getDisplayFieldBuilder() {
                    if (this.displayBuilder_ == null) {
                        this.displayBuilder_ = new SingleFieldBuilderV3<>(getDisplay(), getParentForChildren(), isClean());
                        this.display_ = null;
                    }
                    return this.displayBuilder_;
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
                    if (Companion.alwaysUseFieldBuilders) {
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
                public final Companion build() {
                    Companion buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Companion buildPartial() {
                    Companion companion = new Companion(this);
                    companion.id_ = this.id_;
                    companion.vcm_ = this.vcm_;
                    SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        companion.display_ = this.display_;
                    } else {
                        companion.display_ = singleFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        companion.ext_ = this.ext_;
                    } else {
                        companion.ext_ = singleFieldBuilderV32.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        companion.extProto_ = this.extProto_;
                    } else {
                        companion.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return companion;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.id_ = "";
                    this.vcm_ = 0;
                    if (this.displayBuilder_ == null) {
                        this.display_ = null;
                    } else {
                        this.display_ = null;
                        this.displayBuilder_ = null;
                    }
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

                public final Builder clearDisplay() {
                    if (this.displayBuilder_ == null) {
                        this.display_ = null;
                        onChanged();
                    } else {
                        this.display_ = null;
                        this.displayBuilder_ = null;
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

                public final Builder clearId() {
                    this.id_ = Companion.getDefaultInstance().getId();
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                    return (Builder) super.clearOneof(oneofDescriptor);
                }

                public final Builder clearVcm() {
                    this.vcm_ = 0;
                    onChanged();
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clone() {
                    return (Builder) super.clone();
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Companion getDefaultInstanceForType() {
                    return Companion.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_descriptor;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final DisplayPlacement getDisplay() {
                    SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessage();
                    }
                    DisplayPlacement displayPlacement = this.display_;
                    DisplayPlacement displayPlacement2 = displayPlacement;
                    if (displayPlacement == null) {
                        displayPlacement2 = DisplayPlacement.getDefaultInstance();
                    }
                    return displayPlacement2;
                }

                public final DisplayPlacement.Builder getDisplayBuilder() {
                    onChanged();
                    return getDisplayFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final DisplayPlacementOrBuilder getDisplayOrBuilder() {
                    SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    DisplayPlacement displayPlacement = this.display_;
                    DisplayPlacement displayPlacement2 = displayPlacement;
                    if (displayPlacement == null) {
                        displayPlacement2 = DisplayPlacement.getDefaultInstance();
                    }
                    return displayPlacement2;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final String getId() {
                    Object obj = this.id_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.id_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final ByteString getIdBytes() {
                    Object obj = this.id_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.id_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final int getVcm() {
                    return this.vcm_;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final boolean hasDisplay() {
                    return (this.displayBuilder_ == null && this.display_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_fieldAccessorTable.ensureFieldAccessorsInitialized(Companion.class, Builder.class);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
                public final boolean isInitialized() {
                    return true;
                }

                public final Builder mergeDisplay(DisplayPlacement displayPlacement) {
                    SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        DisplayPlacement displayPlacement2 = this.display_;
                        if (displayPlacement2 != null) {
                            this.display_ = DisplayPlacement.newBuilder(displayPlacement2).mergeFrom(displayPlacement).buildPartial();
                        } else {
                            this.display_ = displayPlacement;
                        }
                        onChanged();
                    } else {
                        singleFieldBuilderV3.mergeFrom(displayPlacement);
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
                public final com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.access$15200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion r0 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion r0 = (com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r6
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Placement.VideoPlacement.Companion.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Placement$VideoPlacement$Companion$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Companion) {
                        return mergeFrom((Companion) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Companion companion) {
                    if (companion == Companion.getDefaultInstance()) {
                        return this;
                    }
                    if (!companion.getId().isEmpty()) {
                        this.id_ = companion.id_;
                        onChanged();
                    }
                    if (companion.getVcm() != 0) {
                        setVcm(companion.getVcm());
                    }
                    if (companion.hasDisplay()) {
                        mergeDisplay(companion.getDisplay());
                    }
                    if (companion.hasExt()) {
                        mergeExt(companion.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!companion.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = companion.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(companion.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!companion.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = companion.extProto_;
                            this.bitField0_ &= -2;
                            if (Companion.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(companion.extProto_);
                        }
                    }
                    mergeUnknownFields(companion.unknownFields);
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

                public final Builder setDisplay(DisplayPlacement.Builder builder) {
                    SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.display_ = builder.build();
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(builder.build());
                    }
                    return this;
                }

                public final Builder setDisplay(DisplayPlacement displayPlacement) {
                    SingleFieldBuilderV3<DisplayPlacement, DisplayPlacement.Builder, DisplayPlacementOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Objects.requireNonNull(displayPlacement);
                        this.display_ = displayPlacement;
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(displayPlacement);
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

                public final Builder setId(String str) {
                    Objects.requireNonNull(str);
                    this.id_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setIdBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Companion.checkByteStringIsUtf8(byteString);
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

                public final Builder setVcm(int i) {
                    this.vcm_ = i;
                    onChanged();
                    return this;
                }
            }

            private Companion() {
                this.memoizedIsInitialized = (byte) (-1);
                this.id_ = "";
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Companion(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                this();
                Objects.requireNonNull(extensionRegistryLite);
                UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
                boolean z = false;
                boolean z2 = false;
                while (!z) {
                    try {
                        try {
                            try {
                                int readTag = codedInputStream.readTag();
                                if (readTag != 0) {
                                    if (readTag == 10) {
                                        this.id_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag != 16) {
                                        DisplayPlacement.Builder builder = null;
                                        Struct.Builder builder2 = null;
                                        if (readTag == 26) {
                                            DisplayPlacement displayPlacement = this.display_;
                                            builder = displayPlacement != null ? displayPlacement.toBuilder() : builder;
                                            DisplayPlacement displayPlacement2 = (DisplayPlacement) codedInputStream.readMessage(DisplayPlacement.parser(), extensionRegistryLite);
                                            this.display_ = displayPlacement2;
                                            if (builder != null) {
                                                builder.mergeFrom(displayPlacement2);
                                                this.display_ = builder.buildPartial();
                                            }
                                        } else if (readTag == 34) {
                                            z2 = z2;
                                            if (!z2 || !true) {
                                                this.extProto_ = new ArrayList();
                                                z2 |= true;
                                            }
                                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                        } else if (readTag == 42) {
                                            Struct struct = this.ext_;
                                            builder2 = struct != null ? struct.toBuilder() : builder2;
                                            Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                            this.ext_ = struct2;
                                            if (builder2 != null) {
                                                builder2.mergeFrom(struct2);
                                                this.ext_ = builder2.buildPartial();
                                            }
                                        } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                        }
                                    } else {
                                        this.vcm_ = codedInputStream.readUInt32();
                                    }
                                }
                                z = true;
                            } catch (IOException e) {
                                throw new InvalidProtocolBufferException(e).setUnfinishedMessage(this);
                            }
                        } catch (InvalidProtocolBufferException e2) {
                            throw e2.setUnfinishedMessage(this);
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

            private Companion(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Companion getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Companion companion) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(companion);
            }

            public static Companion parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Companion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Companion parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Companion) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Companion parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Companion parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Companion parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Companion parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Companion parseFrom(InputStream inputStream) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Companion parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Companion) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Companion parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Companion parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Companion parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Companion parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Companion> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Companion)) {
                    return super.equals(obj);
                }
                Companion companion = (Companion) obj;
                if (!getId().equals(companion.getId()) || getVcm() != companion.getVcm() || hasDisplay() != companion.hasDisplay()) {
                    return false;
                }
                if ((!hasDisplay() || getDisplay().equals(companion.getDisplay())) && hasExt() == companion.hasExt()) {
                    return (!hasExt() || getExt().equals(companion.getExt())) && getExtProtoList().equals(companion.getExtProtoList()) && this.unknownFields.equals(companion.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Companion getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final DisplayPlacement getDisplay() {
                DisplayPlacement displayPlacement = this.display_;
                DisplayPlacement displayPlacement2 = displayPlacement;
                if (displayPlacement == null) {
                    displayPlacement2 = DisplayPlacement.getDefaultInstance();
                }
                return displayPlacement2;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final DisplayPlacementOrBuilder getDisplayOrBuilder() {
                return getDisplay();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final String getId() {
                Object obj = this.id_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.id_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
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
            public final Parser<Companion> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
                int i2 = this.vcm_;
                int i3 = computeStringSize;
                if (i2 != 0) {
                    i3 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i2);
                }
                int i4 = i3;
                int i5 = 0;
                if (this.display_ != null) {
                    i4 = i3 + CodedOutputStream.computeMessageSize(3, getDisplay());
                    i5 = 0;
                }
                while (i5 < this.extProto_.size()) {
                    i4 += CodedOutputStream.computeMessageSize(4, this.extProto_.get(i5));
                    i5++;
                }
                int i6 = i4;
                if (this.ext_ != null) {
                    i6 = i4 + CodedOutputStream.computeMessageSize(5, getExt());
                }
                int serializedSize = i6 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final int getVcm() {
                return this.vcm_;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final boolean hasDisplay() {
                return this.display_ != null;
            }

            @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacement.CompanionOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode()) * 37) + 2) * 53) + getVcm();
                int i = hashCode;
                if (hasDisplay()) {
                    i = (((hashCode * 37) + 3) * 53) + getDisplay().hashCode();
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
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_Companion_fieldAccessorTable.ensureFieldAccessorsInitialized(Companion.class, Builder.class);
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
                return new Companion();
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
                int i = this.vcm_;
                if (i != 0) {
                    codedOutputStream.writeUInt32(2, i);
                }
                if (this.display_ != null) {
                    codedOutputStream.writeMessage(3, getDisplay());
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

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$VideoPlacement$CompanionOrBuilder.class */
        public interface CompanionOrBuilder extends MessageOrBuilder {
            DisplayPlacement getDisplay();

            DisplayPlacementOrBuilder getDisplayOrBuilder();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getId();

            ByteString getIdBytes();

            int getVcm();

            boolean hasDisplay();

            boolean hasExt();
        }

        private VideoPlacement() {
            this.memoizedIsInitialized = (byte) (-1);
            this.ptype_ = 0;
            this.pos_ = 0;
            this.playmethod_ = 0;
            this.playend_ = 0;
            this.clktype_ = 0;
            this.mime_ = LazyStringArrayList.EMPTY;
            this.api_ = Collections.emptyList();
            this.ctype_ = Collections.emptyList();
            this.unit_ = 0;
            this.delivery_ = Collections.emptyList();
            this.linear_ = 0;
            this.comp_ = Collections.emptyList();
            this.comptype_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private VideoPlacement(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 8:
                                this.ptype_ = codedInputStream.readEnum();
                                continue;
                            case 16:
                                this.pos_ = codedInputStream.readEnum();
                                continue;
                            case 24:
                                this.delay_ = codedInputStream.readInt32();
                                continue;
                            case 32:
                                this.skip_ = codedInputStream.readBool();
                                continue;
                            case 40:
                                this.skipmin_ = codedInputStream.readUInt32();
                                continue;
                            case 48:
                                this.skipafter_ = codedInputStream.readUInt32();
                                continue;
                            case 56:
                                this.playmethod_ = codedInputStream.readEnum();
                                continue;
                            case 64:
                                this.playend_ = codedInputStream.readEnum();
                                continue;
                            case 72:
                                this.clktype_ = codedInputStream.readEnum();
                                continue;
                            case 82:
                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                i = i;
                                if ((i & 1) == 0) {
                                    this.mime_ = new LazyStringArrayList();
                                    i |= 1;
                                }
                                this.mime_.add(readStringRequireUtf8);
                                continue;
                            case 88:
                                int readEnum = codedInputStream.readEnum();
                                i = i;
                                if ((i & 2) == 0) {
                                    this.api_ = new ArrayList();
                                    i |= 2;
                                }
                                this.api_.add(Integer.valueOf(readEnum));
                                continue;
                            case 90:
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum2 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.api_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.api_.add(Integer.valueOf(readEnum2));
                                }
                                codedInputStream.popLimit(pushLimit);
                                continue;
                            case 96:
                                int readEnum3 = codedInputStream.readEnum();
                                i = i;
                                if ((i & 4) == 0) {
                                    this.ctype_ = new ArrayList();
                                    i |= 4;
                                }
                                this.ctype_.add(Integer.valueOf(readEnum3));
                                continue;
                            case 98:
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum4 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 4) == 0) {
                                        this.ctype_ = new ArrayList();
                                        i |= 4;
                                    }
                                    this.ctype_.add(Integer.valueOf(readEnum4));
                                }
                                codedInputStream.popLimit(pushLimit2);
                                continue;
                            case 104:
                                this.w_ = codedInputStream.readUInt32();
                                continue;
                            case 112:
                                this.h_ = codedInputStream.readUInt32();
                                continue;
                            case 120:
                                this.unit_ = codedInputStream.readEnum();
                                continue;
                            case 128:
                                this.mindur_ = codedInputStream.readUInt32();
                                continue;
                            case 136:
                                this.maxdur_ = codedInputStream.readUInt32();
                                continue;
                            case 144:
                                this.maxext_ = codedInputStream.readInt32();
                                continue;
                            case 152:
                                this.minbitr_ = codedInputStream.readUInt32();
                                continue;
                            case 160:
                                this.maxbitr_ = codedInputStream.readUInt32();
                                continue;
                            case 168:
                                int readEnum5 = codedInputStream.readEnum();
                                i = i;
                                if ((i & 8) == 0) {
                                    this.delivery_ = new ArrayList();
                                    i |= 8;
                                }
                                this.delivery_.add(Integer.valueOf(readEnum5));
                                continue;
                            case 170:
                                int pushLimit3 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum6 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 8) == 0) {
                                        this.delivery_ = new ArrayList();
                                        i |= 8;
                                    }
                                    this.delivery_.add(Integer.valueOf(readEnum6));
                                }
                                codedInputStream.popLimit(pushLimit3);
                                continue;
                            case 176:
                                this.maxseq_ = codedInputStream.readUInt32();
                                continue;
                            case 184:
                                this.linear_ = codedInputStream.readEnum();
                                continue;
                            case 192:
                                this.boxing_ = codedInputStream.readBool();
                                continue;
                            case 202:
                                i = i;
                                if ((i & 16) == 0) {
                                    this.comp_ = new ArrayList();
                                    i |= 16;
                                }
                                this.comp_.add(codedInputStream.readMessage(Companion.parser(), extensionRegistryLite));
                                continue;
                            case LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS_VALUE:
                                int readEnum7 = codedInputStream.readEnum();
                                i = i;
                                if ((i & 32) == 0) {
                                    this.comptype_ = new ArrayList();
                                    i |= 32;
                                }
                                this.comptype_.add(Integer.valueOf(readEnum7));
                                continue;
                            case LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE:
                                int pushLimit4 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i2 = i;
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum8 = codedInputStream.readEnum();
                                    i2 = i2;
                                    if ((i2 & 32) == 0) {
                                        this.comptype_ = new ArrayList();
                                        i2 |= 32;
                                    }
                                    this.comptype_.add(Integer.valueOf(readEnum8));
                                }
                                codedInputStream.popLimit(pushLimit4);
                                i = i2;
                                continue;
                            case 218:
                                i = i;
                                if ((i & 64) == 0) {
                                    this.extProto_ = new ArrayList();
                                    i |= 64;
                                }
                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                continue;
                            case 226:
                                Struct.Builder builder = null;
                                Struct struct = this.ext_;
                                builder = struct != null ? struct.toBuilder() : builder;
                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                this.ext_ = struct2;
                                if (builder != null) {
                                    builder.mergeFrom(struct2);
                                    this.ext_ = builder.buildPartial();
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
                        this.mime_ = this.mime_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if ((i & 4) != 0) {
                        this.ctype_ = Collections.unmodifiableList(this.ctype_);
                    }
                    if ((i & 8) != 0) {
                        this.delivery_ = Collections.unmodifiableList(this.delivery_);
                    }
                    if ((i & 16) != 0) {
                        this.comp_ = Collections.unmodifiableList(this.comp_);
                    }
                    if ((i & 32) != 0) {
                        this.comptype_ = Collections.unmodifiableList(this.comptype_);
                    }
                    if ((i & 64) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private VideoPlacement(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static VideoPlacement getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(VideoPlacement videoPlacement) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(videoPlacement);
        }

        public static VideoPlacement parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static VideoPlacement parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VideoPlacement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static VideoPlacement parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static VideoPlacement parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static VideoPlacement parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static VideoPlacement parseFrom(InputStream inputStream) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static VideoPlacement parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (VideoPlacement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static VideoPlacement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static VideoPlacement parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static VideoPlacement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static VideoPlacement parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<VideoPlacement> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof VideoPlacement)) {
                return super.equals(obj);
            }
            VideoPlacement videoPlacement = (VideoPlacement) obj;
            if (this.ptype_ == videoPlacement.ptype_ && this.pos_ == videoPlacement.pos_ && getDelay() == videoPlacement.getDelay() && getSkip() == videoPlacement.getSkip() && getSkipmin() == videoPlacement.getSkipmin() && getSkipafter() == videoPlacement.getSkipafter() && this.playmethod_ == videoPlacement.playmethod_ && this.playend_ == videoPlacement.playend_ && this.clktype_ == videoPlacement.clktype_ && getMimeList().equals(videoPlacement.getMimeList()) && this.api_.equals(videoPlacement.api_) && this.ctype_.equals(videoPlacement.ctype_) && getW() == videoPlacement.getW() && getH() == videoPlacement.getH() && this.unit_ == videoPlacement.unit_ && getMindur() == videoPlacement.getMindur() && getMaxdur() == videoPlacement.getMaxdur() && getMaxext() == videoPlacement.getMaxext() && getMinbitr() == videoPlacement.getMinbitr() && getMaxbitr() == videoPlacement.getMaxbitr() && this.delivery_.equals(videoPlacement.delivery_) && getMaxseq() == videoPlacement.getMaxseq() && this.linear_ == videoPlacement.linear_ && getBoxing() == videoPlacement.getBoxing() && getCompList().equals(videoPlacement.getCompList()) && this.comptype_.equals(videoPlacement.comptype_) && hasExt() == videoPlacement.hasExt()) {
                return (!hasExt() || getExt().equals(videoPlacement.getExt())) && getExtProtoList().equals(videoPlacement.getExtProtoList()) && this.unknownFields.equals(videoPlacement.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final ApiFramework getApi(int i) {
            return api_converter_.convert(this.api_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<ApiFramework> getApiList() {
            return new Internal.ListAdapter(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getApiValue(int i) {
            return this.api_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final boolean getBoxing() {
            return this.boxing_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final ClickType getClktype() {
            ClickType valueOf = ClickType.valueOf(this.clktype_);
            ClickType clickType = valueOf;
            if (valueOf == null) {
                clickType = ClickType.UNRECOGNIZED;
            }
            return clickType;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getClktypeValue() {
            return this.clktype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final Companion getComp(int i) {
            return this.comp_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getCompCount() {
            return this.comp_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<Companion> getCompList() {
            return this.comp_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final CompanionOrBuilder getCompOrBuilder(int i) {
            return this.comp_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<? extends CompanionOrBuilder> getCompOrBuilderList() {
            return this.comp_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final CompanionType getComptype(int i) {
            return comptype_converter_.convert(this.comptype_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getComptypeCount() {
            return this.comptype_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<CompanionType> getComptypeList() {
            return new Internal.ListAdapter(this.comptype_, comptype_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getComptypeValue(int i) {
            return this.comptype_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<Integer> getComptypeValueList() {
            return this.comptype_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final VideoCreativeType getCtype(int i) {
            return ctype_converter_.convert(this.ctype_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getCtypeCount() {
            return this.ctype_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<VideoCreativeType> getCtypeList() {
            return new Internal.ListAdapter(this.ctype_, ctype_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getCtypeValue(int i) {
            return this.ctype_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<Integer> getCtypeValueList() {
            return this.ctype_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final VideoPlacement getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getDelay() {
            return this.delay_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final DeliveryMethod getDelivery(int i) {
            return delivery_converter_.convert(this.delivery_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getDeliveryCount() {
            return this.delivery_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<DeliveryMethod> getDeliveryList() {
            return new Internal.ListAdapter(this.delivery_, delivery_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getDeliveryValue(int i) {
            return this.delivery_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<Integer> getDeliveryValueList() {
            return this.delivery_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getH() {
            return this.h_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final LinearityMode getLinear() {
            LinearityMode valueOf = LinearityMode.valueOf(this.linear_);
            LinearityMode linearityMode = valueOf;
            if (valueOf == null) {
                linearityMode = LinearityMode.UNRECOGNIZED;
            }
            return linearityMode;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getLinearValue() {
            return this.linear_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMaxbitr() {
            return this.maxbitr_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMaxdur() {
            return this.maxdur_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMaxext() {
            return this.maxext_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMaxseq() {
            return this.maxseq_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final String getMime(int i) {
            return (String) this.mime_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final ByteString getMimeBytes(int i) {
            return this.mime_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMimeCount() {
            return this.mime_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final ProtocolStringList getMimeList() {
            return this.mime_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMinbitr() {
            return this.minbitr_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getMindur() {
            return this.mindur_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<VideoPlacement> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final PlaybackCessationMode getPlayend() {
            PlaybackCessationMode valueOf = PlaybackCessationMode.valueOf(this.playend_);
            PlaybackCessationMode playbackCessationMode = valueOf;
            if (valueOf == null) {
                playbackCessationMode = PlaybackCessationMode.UNRECOGNIZED;
            }
            return playbackCessationMode;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getPlayendValue() {
            return this.playend_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final PlaybackMethod getPlaymethod() {
            PlaybackMethod valueOf = PlaybackMethod.valueOf(this.playmethod_);
            PlaybackMethod playbackMethod = valueOf;
            if (valueOf == null) {
                playbackMethod = PlaybackMethod.UNRECOGNIZED;
            }
            return playbackMethod;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getPlaymethodValue() {
            return this.playmethod_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final PlacementPosition getPos() {
            PlacementPosition valueOf = PlacementPosition.valueOf(this.pos_);
            PlacementPosition placementPosition = valueOf;
            if (valueOf == null) {
                placementPosition = PlacementPosition.UNRECOGNIZED;
            }
            return placementPosition;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getPosValue() {
            return this.pos_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final VideoPlacementType getPtype() {
            VideoPlacementType valueOf = VideoPlacementType.valueOf(this.ptype_);
            VideoPlacementType videoPlacementType = valueOf;
            if (valueOf == null) {
                videoPlacementType = VideoPlacementType.UNRECOGNIZED;
            }
            return videoPlacementType;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getPtypeValue() {
            return this.ptype_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.ptype_ != VideoPlacementType.VIDEO_PLACEMENT_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.ptype_) + 0 : 0;
            int i2 = computeEnumSize;
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                i2 = computeEnumSize + CodedOutputStream.computeEnumSize(2, this.pos_);
            }
            int i3 = this.delay_;
            int i4 = i2;
            if (i3 != 0) {
                i4 = i2 + CodedOutputStream.computeInt32Size(3, i3);
            }
            boolean z = this.skip_;
            int i5 = i4;
            if (z) {
                i5 = i4 + CodedOutputStream.computeBoolSize(4, z);
            }
            int i6 = this.skipmin_;
            int i7 = i5;
            if (i6 != 0) {
                i7 = i5 + CodedOutputStream.computeUInt32Size(5, i6);
            }
            int i8 = this.skipafter_;
            int i9 = i7;
            if (i8 != 0) {
                i9 = i7 + CodedOutputStream.computeUInt32Size(6, i8);
            }
            int i10 = i9;
            if (this.playmethod_ != PlaybackMethod.PLAYBACK_METHOD_INVALID.getNumber()) {
                i10 = i9 + CodedOutputStream.computeEnumSize(7, this.playmethod_);
            }
            int i11 = i10;
            if (this.playend_ != PlaybackCessationMode.PLAYBACK_CESSATION_MODE_INVALID.getNumber()) {
                i11 = i10 + CodedOutputStream.computeEnumSize(8, this.playend_);
            }
            int i12 = i11;
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                i12 = i11 + CodedOutputStream.computeEnumSize(9, this.clktype_);
            }
            int i13 = 0;
            for (int i14 = 0; i14 < this.mime_.size(); i14++) {
                i13 += computeStringSizeNoTag(this.mime_.getRaw(i14));
            }
            int size = getMimeList().size();
            int i15 = 0;
            for (int i16 = 0; i16 < this.api_.size(); i16++) {
                i15 += CodedOutputStream.computeEnumSizeNoTag(this.api_.get(i16).intValue());
            }
            int i17 = i12 + i13 + (size * 1) + i15;
            int i18 = i17;
            if (!getApiList().isEmpty()) {
                i18 = i17 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i15);
            }
            this.apiMemoizedSerializedSize = i15;
            int i19 = 0;
            for (int i20 = 0; i20 < this.ctype_.size(); i20++) {
                i19 += CodedOutputStream.computeEnumSizeNoTag(this.ctype_.get(i20).intValue());
            }
            int i21 = i18 + i19;
            int i22 = i21;
            if (!getCtypeList().isEmpty()) {
                i22 = i21 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i19);
            }
            this.ctypeMemoizedSerializedSize = i19;
            int i23 = this.w_;
            int i24 = i22;
            if (i23 != 0) {
                i24 = i22 + CodedOutputStream.computeUInt32Size(13, i23);
            }
            int i25 = this.h_;
            int i26 = i24;
            if (i25 != 0) {
                i26 = i24 + CodedOutputStream.computeUInt32Size(14, i25);
            }
            int i27 = i26;
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                i27 = i26 + CodedOutputStream.computeEnumSize(15, this.unit_);
            }
            int i28 = this.mindur_;
            int i29 = i27;
            if (i28 != 0) {
                i29 = i27 + CodedOutputStream.computeUInt32Size(16, i28);
            }
            int i30 = this.maxdur_;
            int i31 = i29;
            if (i30 != 0) {
                i31 = i29 + CodedOutputStream.computeUInt32Size(17, i30);
            }
            int i32 = this.maxext_;
            int i33 = i31;
            if (i32 != 0) {
                i33 = i31 + CodedOutputStream.computeInt32Size(18, i32);
            }
            int i34 = this.minbitr_;
            int i35 = i33;
            if (i34 != 0) {
                i35 = i33 + CodedOutputStream.computeUInt32Size(19, i34);
            }
            int i36 = this.maxbitr_;
            int i37 = i35;
            if (i36 != 0) {
                i37 = i35 + CodedOutputStream.computeUInt32Size(20, i36);
            }
            int i38 = 0;
            for (int i39 = 0; i39 < this.delivery_.size(); i39++) {
                i38 += CodedOutputStream.computeEnumSizeNoTag(this.delivery_.get(i39).intValue());
            }
            int i40 = i37 + i38;
            int i41 = i40;
            if (!getDeliveryList().isEmpty()) {
                i41 = i40 + 2 + CodedOutputStream.computeUInt32SizeNoTag(i38);
            }
            this.deliveryMemoizedSerializedSize = i38;
            int i42 = this.maxseq_;
            int i43 = i41;
            if (i42 != 0) {
                i43 = i41 + CodedOutputStream.computeUInt32Size(22, i42);
            }
            int i44 = i43;
            if (this.linear_ != LinearityMode.LINEARITY_MODE_INVALID.getNumber()) {
                i44 = i43 + CodedOutputStream.computeEnumSize(23, this.linear_);
            }
            boolean z2 = this.boxing_;
            int i45 = i44;
            if (z2) {
                i45 = i44 + CodedOutputStream.computeBoolSize(24, z2);
            }
            for (int i46 = 0; i46 < this.comp_.size(); i46++) {
                i45 += CodedOutputStream.computeMessageSize(25, this.comp_.get(i46));
            }
            int i47 = 0;
            for (int i48 = 0; i48 < this.comptype_.size(); i48++) {
                i47 += CodedOutputStream.computeEnumSizeNoTag(this.comptype_.get(i48).intValue());
            }
            int i49 = i45 + i47;
            int i50 = i49;
            if (!getComptypeList().isEmpty()) {
                i50 = i49 + 2 + CodedOutputStream.computeUInt32SizeNoTag(i47);
            }
            this.comptypeMemoizedSerializedSize = i47;
            for (int i51 = 0; i51 < this.extProto_.size(); i51++) {
                i50 += CodedOutputStream.computeMessageSize(27, this.extProto_.get(i51));
            }
            int i52 = i50;
            if (this.ext_ != null) {
                i52 = i50 + CodedOutputStream.computeMessageSize(28, getExt());
            }
            int serializedSize = i52 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final boolean getSkip() {
            return this.skip_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getSkipafter() {
            return this.skipafter_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getSkipmin() {
            return this.skipmin_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final SizeUnit getUnit() {
            SizeUnit valueOf = SizeUnit.valueOf(this.unit_);
            SizeUnit sizeUnit = valueOf;
            if (valueOf == null) {
                sizeUnit = SizeUnit.UNRECOGNIZED;
            }
            return sizeUnit;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getUnitValue() {
            return this.unit_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final int getW() {
            return this.w_;
        }

        @Override // com.explorestack.protobuf.adcom.Placement.VideoPlacementOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.ptype_) * 37) + 2) * 53) + this.pos_) * 37) + 3) * 53) + getDelay()) * 37) + 4) * 53) + Internal.hashBoolean(getSkip())) * 37) + 5) * 53) + getSkipmin()) * 37) + 6) * 53) + getSkipafter()) * 37) + 7) * 53) + this.playmethod_) * 37) + 8) * 53) + this.playend_) * 37) + 9) * 53) + this.clktype_;
            int i = hashCode;
            if (getMimeCount() > 0) {
                i = (((hashCode * 37) + 10) * 53) + getMimeList().hashCode();
            }
            int i2 = i;
            if (getApiCount() > 0) {
                i2 = (((i * 37) + 11) * 53) + this.api_.hashCode();
            }
            int i3 = i2;
            if (getCtypeCount() > 0) {
                i3 = (((i2 * 37) + 12) * 53) + this.ctype_.hashCode();
            }
            int w = (((((((((((((((((((((((((((((((i3 * 37) + 13) * 53) + getW()) * 37) + 14) * 53) + getH()) * 37) + 15) * 53) + this.unit_) * 37) + 16) * 53) + getMindur()) * 37) + 17) * 53) + getMaxdur()) * 37) + 18) * 53) + getMaxext()) * 37) + 19) * 53) + getMinbitr()) * 37) + 20) * 53) + getMaxbitr();
            int i4 = w;
            if (getDeliveryCount() > 0) {
                i4 = (((w * 37) + 21) * 53) + this.delivery_.hashCode();
            }
            int maxseq = (((((((((((i4 * 37) + 22) * 53) + getMaxseq()) * 37) + 23) * 53) + this.linear_) * 37) + 24) * 53) + Internal.hashBoolean(getBoxing());
            int i5 = maxseq;
            if (getCompCount() > 0) {
                i5 = (((maxseq * 37) + 25) * 53) + getCompList().hashCode();
            }
            int i6 = i5;
            if (getComptypeCount() > 0) {
                i6 = (((i5 * 37) + 26) * 53) + this.comptype_.hashCode();
            }
            int i7 = i6;
            if (hasExt()) {
                i7 = (((i6 * 37) + 28) * 53) + getExt().hashCode();
            }
            int i8 = i7;
            if (getExtProtoCount() > 0) {
                i8 = (((i7 * 37) + 27) * 53) + getExtProtoList().hashCode();
            }
            int hashCode2 = (i8 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_VideoPlacement_fieldAccessorTable.ensureFieldAccessorsInitialized(VideoPlacement.class, Builder.class);
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
            return new VideoPlacement();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if (this.ptype_ != VideoPlacementType.VIDEO_PLACEMENT_TYPE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(1, this.ptype_);
            }
            if (this.pos_ != PlacementPosition.PLACEMENT_POSITION_INVALID.getNumber()) {
                codedOutputStream.writeEnum(2, this.pos_);
            }
            int i = this.delay_;
            if (i != 0) {
                codedOutputStream.writeInt32(3, i);
            }
            boolean z = this.skip_;
            if (z) {
                codedOutputStream.writeBool(4, z);
            }
            int i2 = this.skipmin_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(5, i2);
            }
            int i3 = this.skipafter_;
            if (i3 != 0) {
                codedOutputStream.writeUInt32(6, i3);
            }
            if (this.playmethod_ != PlaybackMethod.PLAYBACK_METHOD_INVALID.getNumber()) {
                codedOutputStream.writeEnum(7, this.playmethod_);
            }
            if (this.playend_ != PlaybackCessationMode.PLAYBACK_CESSATION_MODE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(8, this.playend_);
            }
            if (this.clktype_ != ClickType.CLICK_TYPE_NON_CLICKABLE.getNumber()) {
                codedOutputStream.writeEnum(9, this.clktype_);
            }
            for (int i4 = 0; i4 < this.mime_.size(); i4++) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.mime_.getRaw(i4));
            }
            if (getApiList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(90);
                codedOutputStream.writeUInt32NoTag(this.apiMemoizedSerializedSize);
            }
            for (int i5 = 0; i5 < this.api_.size(); i5++) {
                codedOutputStream.writeEnumNoTag(this.api_.get(i5).intValue());
            }
            if (getCtypeList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(98);
                codedOutputStream.writeUInt32NoTag(this.ctypeMemoizedSerializedSize);
            }
            for (int i6 = 0; i6 < this.ctype_.size(); i6++) {
                codedOutputStream.writeEnumNoTag(this.ctype_.get(i6).intValue());
            }
            int i7 = this.w_;
            if (i7 != 0) {
                codedOutputStream.writeUInt32(13, i7);
            }
            int i8 = this.h_;
            if (i8 != 0) {
                codedOutputStream.writeUInt32(14, i8);
            }
            if (this.unit_ != SizeUnit.SIZE_UNIT_INVALID.getNumber()) {
                codedOutputStream.writeEnum(15, this.unit_);
            }
            int i9 = this.mindur_;
            if (i9 != 0) {
                codedOutputStream.writeUInt32(16, i9);
            }
            int i10 = this.maxdur_;
            if (i10 != 0) {
                codedOutputStream.writeUInt32(17, i10);
            }
            int i11 = this.maxext_;
            if (i11 != 0) {
                codedOutputStream.writeInt32(18, i11);
            }
            int i12 = this.minbitr_;
            if (i12 != 0) {
                codedOutputStream.writeUInt32(19, i12);
            }
            int i13 = this.maxbitr_;
            if (i13 != 0) {
                codedOutputStream.writeUInt32(20, i13);
            }
            if (getDeliveryList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(170);
                codedOutputStream.writeUInt32NoTag(this.deliveryMemoizedSerializedSize);
            }
            for (int i14 = 0; i14 < this.delivery_.size(); i14++) {
                codedOutputStream.writeEnumNoTag(this.delivery_.get(i14).intValue());
            }
            int i15 = this.maxseq_;
            if (i15 != 0) {
                codedOutputStream.writeUInt32(22, i15);
            }
            if (this.linear_ != LinearityMode.LINEARITY_MODE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(23, this.linear_);
            }
            boolean z2 = this.boxing_;
            if (z2) {
                codedOutputStream.writeBool(24, z2);
            }
            for (int i16 = 0; i16 < this.comp_.size(); i16++) {
                codedOutputStream.writeMessage(25, this.comp_.get(i16));
            }
            if (getComptypeList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE);
                codedOutputStream.writeUInt32NoTag(this.comptypeMemoizedSerializedSize);
            }
            for (int i17 = 0; i17 < this.comptype_.size(); i17++) {
                codedOutputStream.writeEnumNoTag(this.comptype_.get(i17).intValue());
            }
            for (int i18 = 0; i18 < this.extProto_.size(); i18++) {
                codedOutputStream.writeMessage(27, this.extProto_.get(i18));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(28, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Placement$VideoPlacementOrBuilder.class */
    public interface VideoPlacementOrBuilder extends MessageOrBuilder {
        ApiFramework getApi(int i);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i);

        List<Integer> getApiValueList();

        boolean getBoxing();

        ClickType getClktype();

        int getClktypeValue();

        VideoPlacement.Companion getComp(int i);

        int getCompCount();

        List<VideoPlacement.Companion> getCompList();

        VideoPlacement.CompanionOrBuilder getCompOrBuilder(int i);

        List<? extends VideoPlacement.CompanionOrBuilder> getCompOrBuilderList();

        CompanionType getComptype(int i);

        int getComptypeCount();

        List<CompanionType> getComptypeList();

        int getComptypeValue(int i);

        List<Integer> getComptypeValueList();

        VideoCreativeType getCtype(int i);

        int getCtypeCount();

        List<VideoCreativeType> getCtypeList();

        int getCtypeValue(int i);

        List<Integer> getCtypeValueList();

        int getDelay();

        DeliveryMethod getDelivery(int i);

        int getDeliveryCount();

        List<DeliveryMethod> getDeliveryList();

        int getDeliveryValue(int i);

        List<Integer> getDeliveryValueList();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        int getH();

        LinearityMode getLinear();

        int getLinearValue();

        int getMaxbitr();

        int getMaxdur();

        int getMaxext();

        int getMaxseq();

        String getMime(int i);

        ByteString getMimeBytes(int i);

        int getMimeCount();

        List<String> getMimeList();

        int getMinbitr();

        int getMindur();

        PlaybackCessationMode getPlayend();

        int getPlayendValue();

        PlaybackMethod getPlaymethod();

        int getPlaymethodValue();

        PlacementPosition getPos();

        int getPosValue();

        VideoPlacementType getPtype();

        int getPtypeValue();

        boolean getSkip();

        int getSkipafter();

        int getSkipmin();

        SizeUnit getUnit();

        int getUnitValue();

        int getW();

        boolean hasExt();
    }

    private Placement() {
        this.memoizedIsInitialized = (byte) (-1);
        this.tagid_ = "";
        this.sdk_ = "";
        this.sdkver_ = "";
        this.bcat_ = LazyStringArrayList.EMPTY;
        this.cattax_ = 0;
        this.badv_ = LazyStringArrayList.EMPTY;
        this.bapp_ = LazyStringArrayList.EMPTY;
        this.battr_ = Collections.emptyList();
        this.wlang_ = LazyStringArrayList.EMPTY;
        this.extProto_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Placement(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    VideoPlacement.Builder builder = null;
                    DisplayPlacement.Builder builder2 = null;
                    Struct.Builder builder3 = null;
                    switch (readTag) {
                        case 0:
                            break;
                        case 10:
                            this.tagid_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 16:
                            this.ssai_ = codedInputStream.readUInt32();
                            continue;
                        case 26:
                            this.sdk_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 34:
                            this.sdkver_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 40:
                            this.reward_ = codedInputStream.readBool();
                            continue;
                        case 50:
                            String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 1) == 0) {
                                this.bcat_ = new LazyStringArrayList();
                                i |= 1;
                            }
                            this.bcat_.add(readStringRequireUtf8);
                            continue;
                        case 56:
                            this.cattax_ = codedInputStream.readEnum();
                            continue;
                        case 74:
                            String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 2) == 0) {
                                this.badv_ = new LazyStringArrayList();
                                i |= 2;
                            }
                            this.badv_.add(readStringRequireUtf82);
                            continue;
                        case 82:
                            String readStringRequireUtf83 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 4) == 0) {
                                this.bapp_ = new LazyStringArrayList();
                                i |= 4;
                            }
                            this.bapp_.add(readStringRequireUtf83);
                            continue;
                        case 88:
                            int readEnum = codedInputStream.readEnum();
                            i = i;
                            if ((i & 8) == 0) {
                                this.battr_ = new ArrayList();
                                i |= 8;
                            }
                            this.battr_.add(Integer.valueOf(readEnum));
                            continue;
                        case 90:
                            int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                            int i2 = i;
                            while (codedInputStream.getBytesUntilLimit() > 0) {
                                int readEnum2 = codedInputStream.readEnum();
                                i2 = i2;
                                if ((i2 & 8) == 0) {
                                    this.battr_ = new ArrayList();
                                    i2 |= 8;
                                }
                                this.battr_.add(Integer.valueOf(readEnum2));
                            }
                            codedInputStream.popLimit(pushLimit);
                            i = i2;
                            continue;
                        case 98:
                            String readStringRequireUtf84 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 16) == 0) {
                                this.wlang_ = new LazyStringArrayList();
                                i |= 16;
                            }
                            this.wlang_.add(readStringRequireUtf84);
                            continue;
                        case 104:
                            this.secure_ = codedInputStream.readBool();
                            continue;
                        case 112:
                            this.admx_ = codedInputStream.readBool();
                            continue;
                        case 120:
                            this.curlx_ = codedInputStream.readBool();
                            continue;
                        case 130:
                            DisplayPlacement displayPlacement = this.display_;
                            builder2 = displayPlacement != null ? displayPlacement.toBuilder() : builder2;
                            DisplayPlacement displayPlacement2 = (DisplayPlacement) codedInputStream.readMessage(DisplayPlacement.parser(), extensionRegistryLite);
                            this.display_ = displayPlacement2;
                            if (builder2 != null) {
                                builder2.mergeFrom(displayPlacement2);
                                this.display_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 138:
                            VideoPlacement videoPlacement = this.video_;
                            builder = videoPlacement != null ? videoPlacement.toBuilder() : builder;
                            VideoPlacement videoPlacement2 = (VideoPlacement) codedInputStream.readMessage(VideoPlacement.parser(), extensionRegistryLite);
                            this.video_ = videoPlacement2;
                            if (builder != null) {
                                builder.mergeFrom(videoPlacement2);
                                this.video_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 154:
                            i = i;
                            if ((i & 32) == 0) {
                                this.extProto_ = new ArrayList();
                                i |= 32;
                            }
                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                            continue;
                        case 162:
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
                    this.bcat_ = this.bcat_.getUnmodifiableView();
                }
                if ((i & 2) != 0) {
                    this.badv_ = this.badv_.getUnmodifiableView();
                }
                if ((i & 4) != 0) {
                    this.bapp_ = this.bapp_.getUnmodifiableView();
                }
                if ((i & 8) != 0) {
                    this.battr_ = Collections.unmodifiableList(this.battr_);
                }
                if ((i & 16) != 0) {
                    this.wlang_ = this.wlang_.getUnmodifiableView();
                }
                if ((i & 32) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private Placement(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Placement getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Placement placement) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(placement);
    }

    public static Placement parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Placement parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Placement) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Placement parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Placement parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Placement parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Placement parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Placement parseFrom(InputStream inputStream) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Placement parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Placement) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Placement parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Placement parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Placement parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Placement parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Placement> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Placement)) {
            return super.equals(obj);
        }
        Placement placement = (Placement) obj;
        if (!getTagid().equals(placement.getTagid()) || getSsai() != placement.getSsai() || !getSdk().equals(placement.getSdk()) || !getSdkver().equals(placement.getSdkver()) || getReward() != placement.getReward() || !getBcatList().equals(placement.getBcatList()) || this.cattax_ != placement.cattax_ || !getBadvList().equals(placement.getBadvList()) || !getBappList().equals(placement.getBappList()) || !this.battr_.equals(placement.battr_) || !getWlangList().equals(placement.getWlangList()) || getSecure() != placement.getSecure() || getAdmx() != placement.getAdmx() || getCurlx() != placement.getCurlx() || hasDisplay() != placement.hasDisplay()) {
            return false;
        }
        if ((hasDisplay() && !getDisplay().equals(placement.getDisplay())) || hasVideo() != placement.hasVideo()) {
            return false;
        }
        if ((!hasVideo() || getVideo().equals(placement.getVideo())) && hasExt() == placement.hasExt()) {
            return (!hasExt() || getExt().equals(placement.getExt())) && getExtProtoList().equals(placement.getExtProtoList()) && this.unknownFields.equals(placement.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean getAdmx() {
        return this.admx_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getBadv(int i) {
        return (String) this.badv_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getBadvBytes(int i) {
        return this.badv_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getBadvCount() {
        return this.badv_.size();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ProtocolStringList getBadvList() {
        return this.badv_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getBapp(int i) {
        return (String) this.bapp_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getBappBytes(int i) {
        return this.bapp_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getBappCount() {
        return this.bapp_.size();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ProtocolStringList getBappList() {
        return this.bapp_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final CreativeAttribute getBattr(int i) {
        return battr_converter_.convert(this.battr_.get(i));
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getBattrCount() {
        return this.battr_.size();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final List<CreativeAttribute> getBattrList() {
        return new Internal.ListAdapter(this.battr_, battr_converter_);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getBattrValue(int i) {
        return this.battr_.get(i).intValue();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final List<Integer> getBattrValueList() {
        return this.battr_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getBcat(int i) {
        return (String) this.bcat_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getBcatBytes(int i) {
        return this.bcat_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getBcatCount() {
        return this.bcat_.size();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ProtocolStringList getBcatList() {
        return this.bcat_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final CategoryTaxonomy getCattax() {
        CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
        CategoryTaxonomy categoryTaxonomy = valueOf;
        if (valueOf == null) {
            categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
        }
        return categoryTaxonomy;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getCattaxValue() {
        return this.cattax_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean getCurlx() {
        return this.curlx_;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Placement getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final DisplayPlacement getDisplay() {
        DisplayPlacement displayPlacement = this.display_;
        DisplayPlacement displayPlacement2 = displayPlacement;
        if (displayPlacement == null) {
            displayPlacement2 = DisplayPlacement.getDefaultInstance();
        }
        return displayPlacement2;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final DisplayPlacementOrBuilder getDisplayOrBuilder() {
        return getDisplay();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final Struct getExt() {
        Struct struct = this.ext_;
        Struct struct2 = struct;
        if (struct == null) {
            struct2 = Struct.getDefaultInstance();
        }
        return struct2;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final StructOrBuilder getExtOrBuilder() {
        return getExt();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final Any getExtProto(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getExtProtoCount() {
        return this.extProto_.size();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final List<Any> getExtProtoList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Placement> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean getReward() {
        return this.reward_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getSdk() {
        Object obj = this.sdk_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdk_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getSdkBytes() {
        Object obj = this.sdk_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.sdk_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getSdkver() {
        Object obj = this.sdkver_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.sdkver_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getSdkverBytes() {
        Object obj = this.sdkver_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.sdkver_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean getSecure() {
        return this.secure_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getTagidBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.tagid_) + 0 : 0;
        int i2 = this.ssai_;
        int i3 = computeStringSize;
        if (i2 != 0) {
            i3 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i2);
        }
        int i4 = i3;
        if (!getSdkBytes().isEmpty()) {
            i4 = i3 + GeneratedMessageV3.computeStringSize(3, this.sdk_);
        }
        int i5 = i4;
        if (!getSdkverBytes().isEmpty()) {
            i5 = i4 + GeneratedMessageV3.computeStringSize(4, this.sdkver_);
        }
        boolean z = this.reward_;
        int i6 = i5;
        if (z) {
            i6 = i5 + CodedOutputStream.computeBoolSize(5, z);
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.bcat_.size(); i8++) {
            i7 += computeStringSizeNoTag(this.bcat_.getRaw(i8));
        }
        int size = i6 + i7 + (getBcatList().size() * 1);
        int i9 = size;
        if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
            i9 = size + CodedOutputStream.computeEnumSize(7, this.cattax_);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.badv_.size(); i11++) {
            i10 += computeStringSizeNoTag(this.badv_.getRaw(i11));
        }
        int size2 = getBadvList().size();
        int i12 = 0;
        for (int i13 = 0; i13 < this.bapp_.size(); i13++) {
            i12 += computeStringSizeNoTag(this.bapp_.getRaw(i13));
        }
        int size3 = getBappList().size();
        int i14 = 0;
        for (int i15 = 0; i15 < this.battr_.size(); i15++) {
            i14 += CodedOutputStream.computeEnumSizeNoTag(this.battr_.get(i15).intValue());
        }
        int i16 = i9 + i10 + (size2 * 1) + i12 + (size3 * 1) + i14;
        int i17 = i16;
        if (!getBattrList().isEmpty()) {
            i17 = i16 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i14);
        }
        this.battrMemoizedSerializedSize = i14;
        int i18 = 0;
        for (int i19 = 0; i19 < this.wlang_.size(); i19++) {
            i18 += computeStringSizeNoTag(this.wlang_.getRaw(i19));
        }
        int size4 = i17 + i18 + (getWlangList().size() * 1);
        boolean z2 = this.secure_;
        int i20 = size4;
        if (z2) {
            i20 = size4 + CodedOutputStream.computeBoolSize(13, z2);
        }
        boolean z3 = this.admx_;
        int i21 = i20;
        if (z3) {
            i21 = i20 + CodedOutputStream.computeBoolSize(14, z3);
        }
        boolean z4 = this.curlx_;
        int i22 = i21;
        if (z4) {
            i22 = i21 + CodedOutputStream.computeBoolSize(15, z4);
        }
        int i23 = i22;
        if (this.display_ != null) {
            i23 = i22 + CodedOutputStream.computeMessageSize(16, getDisplay());
        }
        int i24 = i23;
        int i25 = 0;
        if (this.video_ != null) {
            i24 = i23 + CodedOutputStream.computeMessageSize(17, getVideo());
            i25 = 0;
        }
        while (i25 < this.extProto_.size()) {
            i24 += CodedOutputStream.computeMessageSize(19, this.extProto_.get(i25));
            i25++;
        }
        int i26 = i24;
        if (this.ext_ != null) {
            i26 = i24 + CodedOutputStream.computeMessageSize(20, getExt());
        }
        int serializedSize = i26 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getSsai() {
        return this.ssai_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getTagid() {
        Object obj = this.tagid_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.tagid_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getTagidBytes() {
        Object obj = this.tagid_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.tagid_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final VideoPlacement getVideo() {
        VideoPlacement videoPlacement = this.video_;
        VideoPlacement videoPlacement2 = videoPlacement;
        if (videoPlacement == null) {
            videoPlacement2 = VideoPlacement.getDefaultInstance();
        }
        return videoPlacement2;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final VideoPlacementOrBuilder getVideoOrBuilder() {
        return getVideo();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final String getWlang(int i) {
        return (String) this.wlang_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ByteString getWlangBytes(int i) {
        return this.wlang_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final int getWlangCount() {
        return this.wlang_.size();
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final ProtocolStringList getWlangList() {
        return this.wlang_;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean hasDisplay() {
        return this.display_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean hasExt() {
        return this.ext_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.PlacementOrBuilder
    public final boolean hasVideo() {
        return this.video_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getTagid().hashCode()) * 37) + 2) * 53) + getSsai()) * 37) + 3) * 53) + getSdk().hashCode()) * 37) + 4) * 53) + getSdkver().hashCode()) * 37) + 5) * 53) + Internal.hashBoolean(getReward());
        int i = hashCode;
        if (getBcatCount() > 0) {
            i = (((hashCode * 37) + 6) * 53) + getBcatList().hashCode();
        }
        int i2 = (((i * 37) + 7) * 53) + this.cattax_;
        int i3 = i2;
        if (getBadvCount() > 0) {
            i3 = (((i2 * 37) + 9) * 53) + getBadvList().hashCode();
        }
        int i4 = i3;
        if (getBappCount() > 0) {
            i4 = (((i3 * 37) + 10) * 53) + getBappList().hashCode();
        }
        int i5 = i4;
        if (getBattrCount() > 0) {
            i5 = (((i4 * 37) + 11) * 53) + this.battr_.hashCode();
        }
        int i6 = i5;
        if (getWlangCount() > 0) {
            i6 = (((i5 * 37) + 12) * 53) + getWlangList().hashCode();
        }
        int hashBoolean = (((((((((((i6 * 37) + 13) * 53) + Internal.hashBoolean(getSecure())) * 37) + 14) * 53) + Internal.hashBoolean(getAdmx())) * 37) + 15) * 53) + Internal.hashBoolean(getCurlx());
        int i7 = hashBoolean;
        if (hasDisplay()) {
            i7 = (((hashBoolean * 37) + 16) * 53) + getDisplay().hashCode();
        }
        int i8 = i7;
        if (hasVideo()) {
            i8 = (((i7 * 37) + 17) * 53) + getVideo().hashCode();
        }
        int i9 = i8;
        if (hasExt()) {
            i9 = (((i8 * 37) + 20) * 53) + getExt().hashCode();
        }
        int i10 = i9;
        if (getExtProtoCount() > 0) {
            i10 = (((i9 * 37) + 19) * 53) + getExtProtoList().hashCode();
        }
        int hashCode2 = (i10 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Placement_fieldAccessorTable.ensureFieldAccessorsInitialized(Placement.class, Builder.class);
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
        return new Placement();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if (!getTagidBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.tagid_);
        }
        int i = this.ssai_;
        if (i != 0) {
            codedOutputStream.writeUInt32(2, i);
        }
        if (!getSdkBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.sdk_);
        }
        if (!getSdkverBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.sdkver_);
        }
        boolean z = this.reward_;
        if (z) {
            codedOutputStream.writeBool(5, z);
        }
        for (int i2 = 0; i2 < this.bcat_.size(); i2++) {
            GeneratedMessageV3.writeString(codedOutputStream, 6, this.bcat_.getRaw(i2));
        }
        if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
            codedOutputStream.writeEnum(7, this.cattax_);
        }
        for (int i3 = 0; i3 < this.badv_.size(); i3++) {
            GeneratedMessageV3.writeString(codedOutputStream, 9, this.badv_.getRaw(i3));
        }
        for (int i4 = 0; i4 < this.bapp_.size(); i4++) {
            GeneratedMessageV3.writeString(codedOutputStream, 10, this.bapp_.getRaw(i4));
        }
        if (getBattrList().size() > 0) {
            codedOutputStream.writeUInt32NoTag(90);
            codedOutputStream.writeUInt32NoTag(this.battrMemoizedSerializedSize);
        }
        for (int i5 = 0; i5 < this.battr_.size(); i5++) {
            codedOutputStream.writeEnumNoTag(this.battr_.get(i5).intValue());
        }
        for (int i6 = 0; i6 < this.wlang_.size(); i6++) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.wlang_.getRaw(i6));
        }
        boolean z2 = this.secure_;
        if (z2) {
            codedOutputStream.writeBool(13, z2);
        }
        boolean z3 = this.admx_;
        if (z3) {
            codedOutputStream.writeBool(14, z3);
        }
        boolean z4 = this.curlx_;
        if (z4) {
            codedOutputStream.writeBool(15, z4);
        }
        if (this.display_ != null) {
            codedOutputStream.writeMessage(16, getDisplay());
        }
        int i7 = 0;
        if (this.video_ != null) {
            codedOutputStream.writeMessage(17, getVideo());
            i7 = 0;
        }
        while (i7 < this.extProto_.size()) {
            codedOutputStream.writeMessage(19, this.extProto_.get(i7));
            i7++;
        }
        if (this.ext_ != null) {
            codedOutputStream.writeMessage(20, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}

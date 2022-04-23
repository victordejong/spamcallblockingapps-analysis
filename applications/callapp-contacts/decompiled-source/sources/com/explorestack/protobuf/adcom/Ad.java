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
import com.explorestack.protobuf.MapEntry;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.ProtocolStringList;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad.class */
public final class Ad extends GeneratedMessageV3 implements AdOrBuilder {
    public static final int ADOMAIN_FIELD_NUMBER = 2;
    public static final int AUDIT_FIELD_NUMBER = 16;
    public static final int BUNDLE_FIELD_NUMBER = 3;
    public static final int CATTAX_FIELD_NUMBER = 6;
    public static final int CAT_FIELD_NUMBER = 5;
    public static final int DISPLAY_FIELD_NUMBER = 13;
    public static final int EXT_FIELD_NUMBER = 18;
    public static final int EXT_PROTO_FIELD_NUMBER = 17;
    public static final int ID_FIELD_NUMBER = 1;
    public static final int INIT_FIELD_NUMBER = 11;
    public static final int IURL_FIELD_NUMBER = 4;
    public static final int LANG_FIELD_NUMBER = 7;
    public static final int LASTMOD_FIELD_NUMBER = 12;
    public static final int MRATING_FIELD_NUMBER = 10;
    public static final int SECURE_FIELD_NUMBER = 9;
    public static final int VIDEO_FIELD_NUMBER = 14;
    private static final long serialVersionUID = 0;
    private LazyStringList adomain_;
    private Audit audit_;
    private LazyStringList bundle_;
    private LazyStringList cat_;
    private int cattax_;
    private Display display_;
    private List<Any> extProto_;
    private Struct ext_;
    private volatile Object id_;
    private volatile Object init_;
    private volatile Object iurl_;
    private volatile Object lang_;
    private volatile Object lastmod_;
    private byte memoizedIsInitialized;
    private int mrating_;
    private boolean secure_;
    private Video video_;
    private static final Ad DEFAULT_INSTANCE = new Ad();
    private static final Parser<Ad> PARSER = new AbstractParser<Ad>() { // from class: com.explorestack.protobuf.adcom.Ad.1
        @Override // com.explorestack.protobuf.Parser
        public final Ad parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new Ad(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Audit.class */
    public static final class Audit extends GeneratedMessageV3 implements AuditOrBuilder {
        public static final int CORR_FIELD_NUMBER = 5;
        public static final int EXT_FIELD_NUMBER = 7;
        public static final int EXT_PROTO_FIELD_NUMBER = 6;
        public static final int FEEDBACK_FIELD_NUMBER = 2;
        public static final int INIT_FIELD_NUMBER = 3;
        public static final int LASTMOD_FIELD_NUMBER = 4;
        public static final int STATUS_FIELD_NUMBER = 1;
        private static final long serialVersionUID = 0;
        private Ad corr_;
        private List<Any> extProto_;
        private Struct ext_;
        private LazyStringList feedback_;
        private volatile Object init_;
        private volatile Object lastmod_;
        private byte memoizedIsInitialized;
        private int status_;
        private static final Audit DEFAULT_INSTANCE = new Audit();
        private static final Parser<Audit> PARSER = new AbstractParser<Audit>() { // from class: com.explorestack.protobuf.adcom.Ad.Audit.1
            @Override // com.explorestack.protobuf.Parser
            public final Audit parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Audit(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Audit$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AuditOrBuilder {
            private int bitField0_;
            private SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> corrBuilder_;
            private Ad corr_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private LazyStringList feedback_;
            private Object init_;
            private Object lastmod_;
            private int status_;

            private Builder() {
                this.status_ = 0;
                this.feedback_ = LazyStringArrayList.EMPTY;
                this.init_ = "";
                this.lastmod_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.status_ = 0;
                this.feedback_ = LazyStringArrayList.EMPTY;
                this.init_ = "";
                this.lastmod_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureFeedbackIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.feedback_ = new LazyStringArrayList(this.feedback_);
                    this.bitField0_ |= 1;
                }
            }

            private SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> getCorrFieldBuilder() {
                if (this.corrBuilder_ == null) {
                    this.corrBuilder_ = new SingleFieldBuilderV3<>(getCorr(), getParentForChildren(), isClean());
                    this.corr_ = null;
                }
                return this.corrBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor;
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
                if (Audit.alwaysUseFieldBuilders) {
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

            public final Builder addAllFeedback(Iterable<String> iterable) {
                ensureFeedbackIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.feedback_);
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

            public final Builder addFeedback(String str) {
                Objects.requireNonNull(str);
                ensureFeedbackIsMutable();
                this.feedback_.add(str);
                onChanged();
                return this;
            }

            public final Builder addFeedbackBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Audit.checkByteStringIsUtf8(byteString);
                ensureFeedbackIsMutable();
                this.feedback_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Audit build() {
                Audit buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Audit buildPartial() {
                Audit audit = new Audit(this);
                audit.status_ = this.status_;
                if ((this.bitField0_ & 1) != 0) {
                    this.feedback_ = this.feedback_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                audit.feedback_ = this.feedback_;
                audit.init_ = this.init_;
                audit.lastmod_ = this.lastmod_;
                SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> singleFieldBuilderV3 = this.corrBuilder_;
                if (singleFieldBuilderV3 == null) {
                    audit.corr_ = this.corr_;
                } else {
                    audit.corr_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                if (singleFieldBuilderV32 == null) {
                    audit.ext_ = this.ext_;
                } else {
                    audit.ext_ = singleFieldBuilderV32.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -3;
                    }
                    audit.extProto_ = this.extProto_;
                } else {
                    audit.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return audit;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.status_ = 0;
                this.feedback_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.init_ = "";
                this.lastmod_ = "";
                if (this.corrBuilder_ == null) {
                    this.corr_ = null;
                } else {
                    this.corr_ = null;
                    this.corrBuilder_ = null;
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
                    this.bitField0_ &= -3;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearCorr() {
                if (this.corrBuilder_ == null) {
                    this.corr_ = null;
                    onChanged();
                } else {
                    this.corr_ = null;
                    this.corrBuilder_ = null;
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

            public final Builder clearFeedback() {
                this.feedback_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            public final Builder clearInit() {
                this.init_ = Audit.getDefaultInstance().getInit();
                onChanged();
                return this;
            }

            public final Builder clearLastmod() {
                this.lastmod_ = Audit.getDefaultInstance().getLastmod();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearStatus() {
                this.status_ = 0;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final Ad getCorr() {
                SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> singleFieldBuilderV3 = this.corrBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                Ad ad = this.corr_;
                Ad ad2 = ad;
                if (ad == null) {
                    ad2 = Ad.getDefaultInstance();
                }
                return ad2;
            }

            public final Builder getCorrBuilder() {
                onChanged();
                return getCorrFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final AdOrBuilder getCorrOrBuilder() {
                SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> singleFieldBuilderV3 = this.corrBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Ad ad = this.corr_;
                Ad ad2 = ad;
                if (ad == null) {
                    ad2 = Ad.getDefaultInstance();
                }
                return ad2;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Audit getDefaultInstanceForType() {
                return Audit.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final String getFeedback(int i) {
                return (String) this.feedback_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final ByteString getFeedbackBytes(int i) {
                return this.feedback_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final int getFeedbackCount() {
                return this.feedback_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final ProtocolStringList getFeedbackList() {
                return this.feedback_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final String getInit() {
                Object obj = this.init_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.init_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final ByteString getInitBytes() {
                Object obj = this.init_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.init_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final String getLastmod() {
                Object obj = this.lastmod_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.lastmod_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final ByteString getLastmodBytes() {
                Object obj = this.lastmod_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.lastmod_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final AuditStatusCode getStatus() {
                AuditStatusCode valueOf = AuditStatusCode.valueOf(this.status_);
                AuditStatusCode auditStatusCode = valueOf;
                if (valueOf == null) {
                    auditStatusCode = AuditStatusCode.UNRECOGNIZED;
                }
                return auditStatusCode;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final int getStatusValue() {
                return this.status_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final boolean hasCorr() {
                return (this.corrBuilder_ == null && this.corr_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Audit_fieldAccessorTable.ensureFieldAccessorsInitialized(Audit.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public final Builder mergeCorr(Ad ad) {
                SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> singleFieldBuilderV3 = this.corrBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Ad ad2 = this.corr_;
                    if (ad2 != null) {
                        this.corr_ = Ad.newBuilder(ad2).mergeFrom(ad).buildPartial();
                    } else {
                        this.corr_ = ad;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(ad);
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
            public final com.explorestack.protobuf.adcom.Ad.Audit.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Audit.access$19500()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.adcom.Ad$Audit r0 = (com.explorestack.protobuf.adcom.Ad.Audit) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Ad$Audit$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.adcom.Ad$Audit r0 = (com.explorestack.protobuf.adcom.Ad.Audit) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.adcom.Ad$Audit$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Audit.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Audit$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Audit) {
                    return mergeFrom((Audit) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Audit audit) {
                if (audit == Audit.getDefaultInstance()) {
                    return this;
                }
                if (audit.status_ != 0) {
                    setStatusValue(audit.getStatusValue());
                }
                if (!audit.feedback_.isEmpty()) {
                    if (this.feedback_.isEmpty()) {
                        this.feedback_ = audit.feedback_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureFeedbackIsMutable();
                        this.feedback_.addAll(audit.feedback_);
                    }
                    onChanged();
                }
                if (!audit.getInit().isEmpty()) {
                    this.init_ = audit.init_;
                    onChanged();
                }
                if (!audit.getLastmod().isEmpty()) {
                    this.lastmod_ = audit.lastmod_;
                    onChanged();
                }
                if (audit.hasCorr()) {
                    mergeCorr(audit.getCorr());
                }
                if (audit.hasExt()) {
                    mergeExt(audit.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!audit.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = audit.extProto_;
                            this.bitField0_ &= -3;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(audit.extProto_);
                        }
                        onChanged();
                    }
                } else if (!audit.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = audit.extProto_;
                        this.bitField0_ &= -3;
                        if (Audit.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(audit.extProto_);
                    }
                }
                mergeUnknownFields(audit.unknownFields);
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

            public final Builder setCorr(Builder builder) {
                SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> singleFieldBuilderV3 = this.corrBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.corr_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setCorr(Ad ad) {
                SingleFieldBuilderV3<Ad, Builder, AdOrBuilder> singleFieldBuilderV3 = this.corrBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(ad);
                    this.corr_ = ad;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(ad);
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

            public final Builder setFeedback(int i, String str) {
                Objects.requireNonNull(str);
                ensureFeedbackIsMutable();
                this.feedback_.set(i, str);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            public final Builder setInit(String str) {
                Objects.requireNonNull(str);
                this.init_ = str;
                onChanged();
                return this;
            }

            public final Builder setInitBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Audit.checkByteStringIsUtf8(byteString);
                this.init_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setLastmod(String str) {
                Objects.requireNonNull(str);
                this.lastmod_ = str;
                onChanged();
                return this;
            }

            public final Builder setLastmodBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Audit.checkByteStringIsUtf8(byteString);
                this.lastmod_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setStatus(AuditStatusCode auditStatusCode) {
                Objects.requireNonNull(auditStatusCode);
                this.status_ = auditStatusCode.getNumber();
                onChanged();
                return this;
            }

            public final Builder setStatusValue(int i) {
                this.status_ = i;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        private Audit() {
            this.memoizedIsInitialized = (byte) (-1);
            this.status_ = 0;
            this.feedback_ = LazyStringArrayList.EMPTY;
            this.init_ = "";
            this.lastmod_ = "";
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Audit(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.status_ = codedInputStream.readEnum();
                            } else if (readTag == 18) {
                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                i = i;
                                if ((i & 1) == 0) {
                                    this.feedback_ = new LazyStringArrayList();
                                    i |= 1;
                                }
                                this.feedback_.add(readStringRequireUtf8);
                            } else if (readTag == 26) {
                                this.init_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag != 34) {
                                Builder builder = null;
                                Struct.Builder builder2 = null;
                                if (readTag == 42) {
                                    Ad ad = this.corr_;
                                    builder = ad != null ? ad.toBuilder() : builder;
                                    Ad ad2 = (Ad) codedInputStream.readMessage(Ad.parser(), extensionRegistryLite);
                                    this.corr_ = ad2;
                                    if (builder != null) {
                                        builder.mergeFrom(ad2);
                                        this.corr_ = builder.buildPartial();
                                    }
                                } else if (readTag == 50) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.extProto_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                } else if (readTag == 58) {
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
                                this.lastmod_ = codedInputStream.readStringRequireUtf8();
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
                        this.feedback_ = this.feedback_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Audit(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Audit getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Audit_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Audit audit) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(audit);
        }

        public static Audit parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Audit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Audit parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Audit) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Audit parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Audit parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Audit parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Audit) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Audit parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Audit) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Audit parseFrom(InputStream inputStream) throws IOException {
            return (Audit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Audit parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Audit) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Audit parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Audit parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Audit parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Audit parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Audit> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Audit)) {
                return super.equals(obj);
            }
            Audit audit = (Audit) obj;
            if (this.status_ != audit.status_ || !getFeedbackList().equals(audit.getFeedbackList()) || !getInit().equals(audit.getInit()) || !getLastmod().equals(audit.getLastmod()) || hasCorr() != audit.hasCorr()) {
                return false;
            }
            if ((!hasCorr() || getCorr().equals(audit.getCorr())) && hasExt() == audit.hasExt()) {
                return (!hasExt() || getExt().equals(audit.getExt())) && getExtProtoList().equals(audit.getExtProtoList()) && this.unknownFields.equals(audit.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final Ad getCorr() {
            Ad ad = this.corr_;
            Ad ad2 = ad;
            if (ad == null) {
                ad2 = Ad.getDefaultInstance();
            }
            return ad2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final AdOrBuilder getCorrOrBuilder() {
            return getCorr();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Audit getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final String getFeedback(int i) {
            return (String) this.feedback_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final ByteString getFeedbackBytes(int i) {
            return this.feedback_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final int getFeedbackCount() {
            return this.feedback_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final ProtocolStringList getFeedbackList() {
            return this.feedback_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final String getInit() {
            Object obj = this.init_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.init_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final ByteString getInitBytes() {
            Object obj = this.init_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.init_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final String getLastmod() {
            Object obj = this.lastmod_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastmod_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final ByteString getLastmodBytes() {
            Object obj = this.lastmod_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastmod_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Audit> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int computeEnumSize = this.status_ != AuditStatusCode.AUDIT_STATUS_CODE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.status_) + 0 : 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.feedback_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.feedback_.getRaw(i3));
            }
            int size = computeEnumSize + i2 + (getFeedbackList().size() * 1);
            int i4 = size;
            if (!getInitBytes().isEmpty()) {
                i4 = size + GeneratedMessageV3.computeStringSize(3, this.init_);
            }
            int i5 = i4;
            if (!getLastmodBytes().isEmpty()) {
                i5 = i4 + GeneratedMessageV3.computeStringSize(4, this.lastmod_);
            }
            int i6 = i5;
            int i7 = 0;
            if (this.corr_ != null) {
                i6 = i5 + CodedOutputStream.computeMessageSize(5, getCorr());
                i7 = 0;
            }
            while (i7 < this.extProto_.size()) {
                i6 += CodedOutputStream.computeMessageSize(6, this.extProto_.get(i7));
                i7++;
            }
            int i8 = i6;
            if (this.ext_ != null) {
                i8 = i6 + CodedOutputStream.computeMessageSize(7, getExt());
            }
            int serializedSize = i8 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final AuditStatusCode getStatus() {
            AuditStatusCode valueOf = AuditStatusCode.valueOf(this.status_);
            AuditStatusCode auditStatusCode = valueOf;
            if (valueOf == null) {
                auditStatusCode = AuditStatusCode.UNRECOGNIZED;
            }
            return auditStatusCode;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final int getStatusValue() {
            return this.status_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final boolean hasCorr() {
            return this.corr_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.AuditOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.status_;
            int i = hashCode;
            if (getFeedbackCount() > 0) {
                i = (((hashCode * 37) + 2) * 53) + getFeedbackList().hashCode();
            }
            int hashCode2 = (((((((i * 37) + 3) * 53) + getInit().hashCode()) * 37) + 4) * 53) + getLastmod().hashCode();
            int i2 = hashCode2;
            if (hasCorr()) {
                i2 = (((hashCode2 * 37) + 5) * 53) + getCorr().hashCode();
            }
            int i3 = i2;
            if (hasExt()) {
                i3 = (((i2 * 37) + 7) * 53) + getExt().hashCode();
            }
            int i4 = i3;
            if (getExtProtoCount() > 0) {
                i4 = (((i3 * 37) + 6) * 53) + getExtProtoList().hashCode();
            }
            int hashCode3 = (i4 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Audit_fieldAccessorTable.ensureFieldAccessorsInitialized(Audit.class, Builder.class);
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
            return new Audit();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (this.status_ != AuditStatusCode.AUDIT_STATUS_CODE_INVALID.getNumber()) {
                codedOutputStream.writeEnum(1, this.status_);
            }
            for (int i = 0; i < this.feedback_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.feedback_.getRaw(i));
            }
            if (!getInitBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 3, this.init_);
            }
            if (!getLastmodBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.lastmod_);
            }
            int i2 = 0;
            if (this.corr_ != null) {
                codedOutputStream.writeMessage(5, getCorr());
                i2 = 0;
            }
            while (i2 < this.extProto_.size()) {
                codedOutputStream.writeMessage(6, this.extProto_.get(i2));
                i2++;
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(7, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$AuditOrBuilder.class */
    public interface AuditOrBuilder extends MessageOrBuilder {
        Ad getCorr();

        AdOrBuilder getCorrOrBuilder();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        String getFeedback(int i);

        ByteString getFeedbackBytes(int i);

        int getFeedbackCount();

        List<String> getFeedbackList();

        String getInit();

        ByteString getInitBytes();

        String getLastmod();

        ByteString getLastmodBytes();

        AuditStatusCode getStatus();

        int getStatusValue();

        boolean hasCorr();

        boolean hasExt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdOrBuilder {
        private LazyStringList adomain_;
        private SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> auditBuilder_;
        private Audit audit_;
        private int bitField0_;
        private LazyStringList bundle_;
        private LazyStringList cat_;
        private int cattax_;
        private SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> displayBuilder_;
        private Display display_;
        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
        private List<Any> extProto_;
        private Struct ext_;
        private Object id_;
        private Object init_;
        private Object iurl_;
        private Object lang_;
        private Object lastmod_;
        private int mrating_;
        private boolean secure_;
        private SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> videoBuilder_;
        private Video video_;

        private Builder() {
            this.id_ = "";
            this.adomain_ = LazyStringArrayList.EMPTY;
            this.bundle_ = LazyStringArrayList.EMPTY;
            this.iurl_ = "";
            this.cat_ = LazyStringArrayList.EMPTY;
            this.cattax_ = 0;
            this.lang_ = "";
            this.mrating_ = 0;
            this.init_ = "";
            this.lastmod_ = "";
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.id_ = "";
            this.adomain_ = LazyStringArrayList.EMPTY;
            this.bundle_ = LazyStringArrayList.EMPTY;
            this.iurl_ = "";
            this.cat_ = LazyStringArrayList.EMPTY;
            this.cattax_ = 0;
            this.lang_ = "";
            this.mrating_ = 0;
            this.init_ = "";
            this.lastmod_ = "";
            this.extProto_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureAdomainIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.adomain_ = new LazyStringArrayList(this.adomain_);
                this.bitField0_ |= 1;
            }
        }

        private void ensureBundleIsMutable() {
            if ((this.bitField0_ & 2) == 0) {
                this.bundle_ = new LazyStringArrayList(this.bundle_);
                this.bitField0_ |= 2;
            }
        }

        private void ensureCatIsMutable() {
            if ((this.bitField0_ & 4) == 0) {
                this.cat_ = new LazyStringArrayList(this.cat_);
                this.bitField0_ |= 4;
            }
        }

        private void ensureExtProtoIsMutable() {
            if ((this.bitField0_ & 8) == 0) {
                this.extProto_ = new ArrayList(this.extProto_);
                this.bitField0_ |= 8;
            }
        }

        private SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> getAuditFieldBuilder() {
            if (this.auditBuilder_ == null) {
                this.auditBuilder_ = new SingleFieldBuilderV3<>(getAudit(), getParentForChildren(), isClean());
                this.audit_ = null;
            }
            return this.auditBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_descriptor;
        }

        private SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> getDisplayFieldBuilder() {
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
                this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
                this.extProto_ = null;
            }
            return this.extProtoBuilder_;
        }

        private SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> getVideoFieldBuilder() {
            if (this.videoBuilder_ == null) {
                this.videoBuilder_ = new SingleFieldBuilderV3<>(getVideo(), getParentForChildren(), isClean());
                this.video_ = null;
            }
            return this.videoBuilder_;
        }

        private void maybeForceBuilderInitialization() {
            if (Ad.alwaysUseFieldBuilders) {
                getExtProtoFieldBuilder();
            }
        }

        public final Builder addAdomain(String str) {
            Objects.requireNonNull(str);
            ensureAdomainIsMutable();
            this.adomain_.add(str);
            onChanged();
            return this;
        }

        public final Builder addAdomainBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            ensureAdomainIsMutable();
            this.adomain_.add(byteString);
            onChanged();
            return this;
        }

        public final Builder addAllAdomain(Iterable<String> iterable) {
            ensureAdomainIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.adomain_);
            onChanged();
            return this;
        }

        public final Builder addAllBundle(Iterable<String> iterable) {
            ensureBundleIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.bundle_);
            onChanged();
            return this;
        }

        public final Builder addAllCat(Iterable<String> iterable) {
            ensureCatIsMutable();
            AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.cat_);
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

        public final Builder addBundle(String str) {
            Objects.requireNonNull(str);
            ensureBundleIsMutable();
            this.bundle_.add(str);
            onChanged();
            return this;
        }

        public final Builder addBundleBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            ensureBundleIsMutable();
            this.bundle_.add(byteString);
            onChanged();
            return this;
        }

        public final Builder addCat(String str) {
            Objects.requireNonNull(str);
            ensureCatIsMutable();
            this.cat_.add(str);
            onChanged();
            return this;
        }

        public final Builder addCatBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            ensureCatIsMutable();
            this.cat_.add(byteString);
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
        public final Ad build() {
            Ad buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Ad buildPartial() {
            Ad ad = new Ad(this);
            ad.id_ = this.id_;
            if ((this.bitField0_ & 1) != 0) {
                this.adomain_ = this.adomain_.getUnmodifiableView();
                this.bitField0_ &= -2;
            }
            ad.adomain_ = this.adomain_;
            if ((this.bitField0_ & 2) != 0) {
                this.bundle_ = this.bundle_.getUnmodifiableView();
                this.bitField0_ &= -3;
            }
            ad.bundle_ = this.bundle_;
            ad.iurl_ = this.iurl_;
            if ((this.bitField0_ & 4) != 0) {
                this.cat_ = this.cat_.getUnmodifiableView();
                this.bitField0_ &= -5;
            }
            ad.cat_ = this.cat_;
            ad.cattax_ = this.cattax_;
            ad.lang_ = this.lang_;
            ad.secure_ = this.secure_;
            ad.mrating_ = this.mrating_;
            ad.init_ = this.init_;
            ad.lastmod_ = this.lastmod_;
            SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                ad.display_ = this.display_;
            } else {
                ad.display_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> singleFieldBuilderV32 = this.videoBuilder_;
            if (singleFieldBuilderV32 == null) {
                ad.video_ = this.video_;
            } else {
                ad.video_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> singleFieldBuilderV33 = this.auditBuilder_;
            if (singleFieldBuilderV33 == null) {
                ad.audit_ = this.audit_;
            } else {
                ad.audit_ = singleFieldBuilderV33.build();
            }
            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV34 = this.extBuilder_;
            if (singleFieldBuilderV34 == null) {
                ad.ext_ = this.ext_;
            } else {
                ad.ext_ = singleFieldBuilderV34.build();
            }
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 8) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    this.bitField0_ &= -9;
                }
                ad.extProto_ = this.extProto_;
            } else {
                ad.extProto_ = repeatedFieldBuilderV3.build();
            }
            onBuilt();
            return ad;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.id_ = "";
            this.adomain_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            this.bundle_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            this.iurl_ = "";
            this.cat_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -5;
            this.cattax_ = 0;
            this.lang_ = "";
            this.secure_ = false;
            this.mrating_ = 0;
            this.init_ = "";
            this.lastmod_ = "";
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
            if (this.auditBuilder_ == null) {
                this.audit_ = null;
            } else {
                this.audit_ = null;
                this.auditBuilder_ = null;
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
                this.bitField0_ &= -9;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        public final Builder clearAdomain() {
            this.adomain_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -2;
            onChanged();
            return this;
        }

        public final Builder clearAudit() {
            if (this.auditBuilder_ == null) {
                this.audit_ = null;
                onChanged();
            } else {
                this.audit_ = null;
                this.auditBuilder_ = null;
            }
            return this;
        }

        public final Builder clearBundle() {
            this.bundle_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -3;
            onChanged();
            return this;
        }

        public final Builder clearCat() {
            this.cat_ = LazyStringArrayList.EMPTY;
            this.bitField0_ &= -5;
            onChanged();
            return this;
        }

        public final Builder clearCattax() {
            this.cattax_ = 0;
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
            this.id_ = Ad.getDefaultInstance().getId();
            onChanged();
            return this;
        }

        public final Builder clearInit() {
            this.init_ = Ad.getDefaultInstance().getInit();
            onChanged();
            return this;
        }

        public final Builder clearIurl() {
            this.iurl_ = Ad.getDefaultInstance().getIurl();
            onChanged();
            return this;
        }

        public final Builder clearLang() {
            this.lang_ = Ad.getDefaultInstance().getLang();
            onChanged();
            return this;
        }

        public final Builder clearLastmod() {
            this.lastmod_ = Ad.getDefaultInstance().getLastmod();
            onChanged();
            return this;
        }

        public final Builder clearMrating() {
            this.mrating_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public final Builder clearSecure() {
            this.secure_ = false;
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

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getAdomain(int i) {
            return (String) this.adomain_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getAdomainBytes(int i) {
            return this.adomain_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final int getAdomainCount() {
            return this.adomain_.size();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ProtocolStringList getAdomainList() {
            return this.adomain_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final Audit getAudit() {
            SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> singleFieldBuilderV3 = this.auditBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Audit audit = this.audit_;
            Audit audit2 = audit;
            if (audit == null) {
                audit2 = Audit.getDefaultInstance();
            }
            return audit2;
        }

        public final Audit.Builder getAuditBuilder() {
            onChanged();
            return getAuditFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final AuditOrBuilder getAuditOrBuilder() {
            SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> singleFieldBuilderV3 = this.auditBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Audit audit = this.audit_;
            Audit audit2 = audit;
            if (audit == null) {
                audit2 = Audit.getDefaultInstance();
            }
            return audit2;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getBundle(int i) {
            return (String) this.bundle_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getBundleBytes(int i) {
            return this.bundle_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final int getBundleCount() {
            return this.bundle_.size();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ProtocolStringList getBundleList() {
            return this.bundle_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getCat(int i) {
            return (String) this.cat_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getCatBytes(int i) {
            return this.cat_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final int getCatCount() {
            return this.cat_.size();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ProtocolStringList getCatList() {
            return this.cat_.getUnmodifiableView();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final CategoryTaxonomy getCattax() {
            CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
            CategoryTaxonomy categoryTaxonomy = valueOf;
            if (valueOf == null) {
                categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
            }
            return categoryTaxonomy;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final int getCattaxValue() {
            return this.cattax_;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Ad getDefaultInstanceForType() {
            return Ad.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_descriptor;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final Display getDisplay() {
            SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Display display = this.display_;
            Display display2 = display;
            if (display == null) {
                display2 = Display.getDefaultInstance();
            }
            return display2;
        }

        public final Display.Builder getDisplayBuilder() {
            onChanged();
            return getDisplayFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final DisplayOrBuilder getDisplayOrBuilder() {
            SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Display display = this.display_;
            Display display2 = display;
            if (display == null) {
                display2 = Display.getDefaultInstance();
            }
            return display2;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
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

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final int getExtProtoCount() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final List<Any> getExtProtoList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getId() {
            Object obj = this.id_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.id_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getIdBytes() {
            Object obj = this.id_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.id_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getInit() {
            Object obj = this.init_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.init_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getInitBytes() {
            Object obj = this.init_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.init_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getIurl() {
            Object obj = this.iurl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.iurl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getIurlBytes() {
            Object obj = this.iurl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.iurl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getLang() {
            Object obj = this.lang_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lang_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getLangBytes() {
            Object obj = this.lang_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lang_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final String getLastmod() {
            Object obj = this.lastmod_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.lastmod_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final ByteString getLastmodBytes() {
            Object obj = this.lastmod_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.lastmod_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final MediaRating getMrating() {
            MediaRating valueOf = MediaRating.valueOf(this.mrating_);
            MediaRating mediaRating = valueOf;
            if (valueOf == null) {
                mediaRating = MediaRating.UNRECOGNIZED;
            }
            return mediaRating;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final int getMratingValue() {
            return this.mrating_;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final boolean getSecure() {
            return this.secure_;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final Video getVideo() {
            SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            Video video = this.video_;
            Video video2 = video;
            if (video == null) {
                video2 = Video.getDefaultInstance();
            }
            return video2;
        }

        public final Video.Builder getVideoBuilder() {
            onChanged();
            return getVideoFieldBuilder().getBuilder();
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final VideoOrBuilder getVideoOrBuilder() {
            SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            Video video = this.video_;
            Video video2 = video;
            if (video == null) {
                video2 = Video.getDefaultInstance();
            }
            return video2;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final boolean hasAudit() {
            return (this.auditBuilder_ == null && this.audit_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final boolean hasDisplay() {
            return (this.displayBuilder_ == null && this.display_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final boolean hasExt() {
            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.adcom.AdOrBuilder
        public final boolean hasVideo() {
            return (this.videoBuilder_ == null && this.video_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_fieldAccessorTable.ensureFieldAccessorsInitialized(Ad.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeAudit(Audit audit) {
            SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> singleFieldBuilderV3 = this.auditBuilder_;
            if (singleFieldBuilderV3 == null) {
                Audit audit2 = this.audit_;
                if (audit2 != null) {
                    this.audit_ = Audit.newBuilder(audit2).mergeFrom(audit).buildPartial();
                } else {
                    this.audit_ = audit;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(audit);
            }
            return this;
        }

        public final Builder mergeDisplay(Display display) {
            SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                Display display2 = this.display_;
                if (display2 != null) {
                    this.display_ = Display.newBuilder(display2).mergeFrom(display).buildPartial();
                } else {
                    this.display_ = display;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(display);
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
        public final com.explorestack.protobuf.adcom.Ad.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.access$22200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                com.explorestack.protobuf.adcom.Ad r0 = (com.explorestack.protobuf.adcom.Ad) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                com.explorestack.protobuf.adcom.Ad$Builder r0 = r0.mergeFrom(r1)
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
                com.explorestack.protobuf.adcom.Ad r0 = (com.explorestack.protobuf.adcom.Ad) r0     // Catch: all -> 0x001c
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
                com.explorestack.protobuf.adcom.Ad$Builder r0 = r0.mergeFrom(r1)
            L_0x003b:
                r0 = r5
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof Ad) {
                return mergeFrom((Ad) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(Ad ad) {
            if (ad == Ad.getDefaultInstance()) {
                return this;
            }
            if (!ad.getId().isEmpty()) {
                this.id_ = ad.id_;
                onChanged();
            }
            if (!ad.adomain_.isEmpty()) {
                if (this.adomain_.isEmpty()) {
                    this.adomain_ = ad.adomain_;
                    this.bitField0_ &= -2;
                } else {
                    ensureAdomainIsMutable();
                    this.adomain_.addAll(ad.adomain_);
                }
                onChanged();
            }
            if (!ad.bundle_.isEmpty()) {
                if (this.bundle_.isEmpty()) {
                    this.bundle_ = ad.bundle_;
                    this.bitField0_ &= -3;
                } else {
                    ensureBundleIsMutable();
                    this.bundle_.addAll(ad.bundle_);
                }
                onChanged();
            }
            if (!ad.getIurl().isEmpty()) {
                this.iurl_ = ad.iurl_;
                onChanged();
            }
            if (!ad.cat_.isEmpty()) {
                if (this.cat_.isEmpty()) {
                    this.cat_ = ad.cat_;
                    this.bitField0_ &= -5;
                } else {
                    ensureCatIsMutable();
                    this.cat_.addAll(ad.cat_);
                }
                onChanged();
            }
            if (ad.cattax_ != 0) {
                setCattaxValue(ad.getCattaxValue());
            }
            if (!ad.getLang().isEmpty()) {
                this.lang_ = ad.lang_;
                onChanged();
            }
            if (ad.getSecure()) {
                setSecure(ad.getSecure());
            }
            if (ad.mrating_ != 0) {
                setMratingValue(ad.getMratingValue());
            }
            if (!ad.getInit().isEmpty()) {
                this.init_ = ad.init_;
                onChanged();
            }
            if (!ad.getLastmod().isEmpty()) {
                this.lastmod_ = ad.lastmod_;
                onChanged();
            }
            if (ad.hasDisplay()) {
                mergeDisplay(ad.getDisplay());
            }
            if (ad.hasVideo()) {
                mergeVideo(ad.getVideo());
            }
            if (ad.hasAudit()) {
                mergeAudit(ad.getAudit());
            }
            if (ad.hasExt()) {
                mergeExt(ad.getExt());
            }
            if (this.extProtoBuilder_ == null) {
                if (!ad.extProto_.isEmpty()) {
                    if (this.extProto_.isEmpty()) {
                        this.extProto_ = ad.extProto_;
                        this.bitField0_ &= -9;
                    } else {
                        ensureExtProtoIsMutable();
                        this.extProto_.addAll(ad.extProto_);
                    }
                    onChanged();
                }
            } else if (!ad.extProto_.isEmpty()) {
                if (this.extProtoBuilder_.isEmpty()) {
                    this.extProtoBuilder_.dispose();
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                    this.extProtoBuilder_ = null;
                    this.extProto_ = ad.extProto_;
                    this.bitField0_ &= -9;
                    if (Ad.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                    }
                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.extProtoBuilder_.addAllMessages(ad.extProto_);
                }
            }
            mergeUnknownFields(ad.unknownFields);
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder mergeVideo(Video video) {
            SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 == null) {
                Video video2 = this.video_;
                if (video2 != null) {
                    this.video_ = Video.newBuilder(video2).mergeFrom(video).buildPartial();
                } else {
                    this.video_ = video;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(video);
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

        public final Builder setAdomain(int i, String str) {
            Objects.requireNonNull(str);
            ensureAdomainIsMutable();
            this.adomain_.set(i, str);
            onChanged();
            return this;
        }

        public final Builder setAudit(Audit.Builder builder) {
            SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> singleFieldBuilderV3 = this.auditBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.audit_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setAudit(Audit audit) {
            SingleFieldBuilderV3<Audit, Audit.Builder, AuditOrBuilder> singleFieldBuilderV3 = this.auditBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(audit);
                this.audit_ = audit;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(audit);
            }
            return this;
        }

        public final Builder setBundle(int i, String str) {
            Objects.requireNonNull(str);
            ensureBundleIsMutable();
            this.bundle_.set(i, str);
            onChanged();
            return this;
        }

        public final Builder setCat(int i, String str) {
            Objects.requireNonNull(str);
            ensureCatIsMutable();
            this.cat_.set(i, str);
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

        public final Builder setDisplay(Display.Builder builder) {
            SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.display_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setDisplay(Display display) {
            SingleFieldBuilderV3<Display, Display.Builder, DisplayOrBuilder> singleFieldBuilderV3 = this.displayBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(display);
                this.display_ = display;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(display);
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
            Ad.checkByteStringIsUtf8(byteString);
            this.id_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setInit(String str) {
            Objects.requireNonNull(str);
            this.init_ = str;
            onChanged();
            return this;
        }

        public final Builder setInitBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            this.init_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setIurl(String str) {
            Objects.requireNonNull(str);
            this.iurl_ = str;
            onChanged();
            return this;
        }

        public final Builder setIurlBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            this.iurl_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setLang(String str) {
            Objects.requireNonNull(str);
            this.lang_ = str;
            onChanged();
            return this;
        }

        public final Builder setLangBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            this.lang_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setLastmod(String str) {
            Objects.requireNonNull(str);
            this.lastmod_ = str;
            onChanged();
            return this;
        }

        public final Builder setLastmodBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            Ad.checkByteStringIsUtf8(byteString);
            this.lastmod_ = byteString;
            onChanged();
            return this;
        }

        public final Builder setMrating(MediaRating mediaRating) {
            Objects.requireNonNull(mediaRating);
            this.mrating_ = mediaRating.getNumber();
            onChanged();
            return this;
        }

        public final Builder setMratingValue(int i) {
            this.mrating_ = i;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSecure(boolean z) {
            this.secure_ = z;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setVideo(Video.Builder builder) {
            SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.video_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setVideo(Video video) {
            SingleFieldBuilderV3<Video, Video.Builder, VideoOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(video);
                this.video_ = video;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(video);
            }
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display.class */
    public static final class Display extends GeneratedMessageV3 implements DisplayOrBuilder {
        public static final int ADM_FIELD_NUMBER = 8;
        public static final int API_FIELD_NUMBER = 2;
        public static final int BANNER_FIELD_NUMBER = 10;
        public static final int CURL_FIELD_NUMBER = 9;
        public static final int EVENT_FIELD_NUMBER = 12;
        public static final int EXT_FIELD_NUMBER = 14;
        public static final int EXT_PROTO_FIELD_NUMBER = 13;
        public static final int HRATIO_FIELD_NUMBER = 7;
        public static final int H_FIELD_NUMBER = 5;
        public static final int MIME_FIELD_NUMBER = 1;
        public static final int NATIVE_FIELD_NUMBER = 11;
        public static final int TYPE_FIELD_NUMBER = 3;
        public static final int WRATIO_FIELD_NUMBER = 6;
        public static final int W_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private volatile Object adm_;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private Banner banner_;
        private volatile Object curl_;
        private List<Event> event_;
        private List<Any> extProto_;
        private Struct ext_;
        private int h_;
        private int hratio_;
        private byte memoizedIsInitialized;
        private LazyStringList mime_;
        private Native native_;
        private int typeMemoizedSerializedSize;
        private List<Integer> type_;
        private int w_;
        private int wratio_;
        private static final Internal.ListAdapter.Converter<Integer, ApiFramework> api_converter_ = new Internal.ListAdapter.Converter<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.1
            public final ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                ApiFramework apiFramework = valueOf;
                if (valueOf == null) {
                    apiFramework = ApiFramework.UNRECOGNIZED;
                }
                return apiFramework;
            }
        };
        private static final Internal.ListAdapter.Converter<Integer, DisplayCreativeType> type_converter_ = new Internal.ListAdapter.Converter<Integer, DisplayCreativeType>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.2
            public final DisplayCreativeType convert(Integer num) {
                DisplayCreativeType valueOf = DisplayCreativeType.valueOf(num.intValue());
                DisplayCreativeType displayCreativeType = valueOf;
                if (valueOf == null) {
                    displayCreativeType = DisplayCreativeType.UNRECOGNIZED;
                }
                return displayCreativeType;
            }
        };
        private static final Display DEFAULT_INSTANCE = new Display();
        private static final Parser<Display> PARSER = new AbstractParser<Display>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.3
            @Override // com.explorestack.protobuf.Parser
            public final Display parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Display(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Banner.class */
        public static final class Banner extends GeneratedMessageV3 implements BannerOrBuilder {
            public static final int EXT_FIELD_NUMBER = 4;
            public static final int EXT_PROTO_FIELD_NUMBER = 3;
            public static final int IMG_FIELD_NUMBER = 1;
            public static final int LINK_FIELD_NUMBER = 2;
            private static final long serialVersionUID = 0;
            private List<Any> extProto_;
            private Struct ext_;
            private volatile Object img_;
            private volatile Object link_;
            private byte memoizedIsInitialized;
            private static final Banner DEFAULT_INSTANCE = new Banner();
            private static final Parser<Banner> PARSER = new AbstractParser<Banner>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Banner.1
                @Override // com.explorestack.protobuf.Parser
                public final Banner parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Banner(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Banner$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements BannerOrBuilder {
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private Object img_;
                private Object link_;

                private Builder() {
                    this.img_ = "";
                    this.link_ = "";
                    this.extProto_ = Collections.emptyList();
                    maybeForceBuilderInitialization();
                }

                private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                    super(builderParent);
                    this.img_ = "";
                    this.link_ = "";
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
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_descriptor;
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
                    if (Banner.alwaysUseFieldBuilders) {
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
                public final Banner build() {
                    Banner buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Banner buildPartial() {
                    Banner banner = new Banner(this);
                    banner.img_ = this.img_;
                    banner.link_ = this.link_;
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        banner.ext_ = this.ext_;
                    } else {
                        banner.ext_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -2;
                        }
                        banner.extProto_ = this.extProto_;
                    } else {
                        banner.extProto_ = repeatedFieldBuilderV3.build();
                    }
                    onBuilt();
                    return banner;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    this.img_ = "";
                    this.link_ = "";
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

                public final Builder clearImg() {
                    this.img_ = Banner.getDefaultInstance().getImg();
                    onChanged();
                    return this;
                }

                public final Builder clearLink() {
                    this.link_ = Banner.getDefaultInstance().getLink();
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
                public final Banner getDefaultInstanceForType() {
                    return Banner.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_descriptor;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final String getImg() {
                    Object obj = this.img_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.img_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final ByteString getImgBytes() {
                    Object obj = this.img_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.img_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final String getLink() {
                    Object obj = this.link_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.link_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final ByteString getLinkBytes() {
                    Object obj = this.link_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.link_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_fieldAccessorTable.ensureFieldAccessorsInitialized(Banner.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Ad.Display.Banner.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Banner.access$2800()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.adcom.Ad$Display$Banner r0 = (com.explorestack.protobuf.adcom.Ad.Display.Banner) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Ad$Display$Banner$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.adcom.Ad$Display$Banner r0 = (com.explorestack.protobuf.adcom.Ad.Display.Banner) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.adcom.Ad$Display$Banner$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Banner.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Banner$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Banner) {
                        return mergeFrom((Banner) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Banner banner) {
                    if (banner == Banner.getDefaultInstance()) {
                        return this;
                    }
                    if (!banner.getImg().isEmpty()) {
                        this.img_ = banner.img_;
                        onChanged();
                    }
                    if (!banner.getLink().isEmpty()) {
                        this.link_ = banner.link_;
                        onChanged();
                    }
                    if (banner.hasExt()) {
                        mergeExt(banner.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!banner.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = banner.extProto_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(banner.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!banner.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                            this.extProtoBuilder_ = null;
                            this.extProto_ = banner.extProto_;
                            this.bitField0_ &= -2;
                            if (Banner.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(banner.extProto_);
                        }
                    }
                    mergeUnknownFields(banner.unknownFields);
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

                public final Builder setImg(String str) {
                    Objects.requireNonNull(str);
                    this.img_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setImgBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Banner.checkByteStringIsUtf8(byteString);
                    this.img_ = byteString;
                    onChanged();
                    return this;
                }

                public final Builder setLink(String str) {
                    Objects.requireNonNull(str);
                    this.link_ = str;
                    onChanged();
                    return this;
                }

                public final Builder setLinkBytes(ByteString byteString) {
                    Objects.requireNonNull(byteString);
                    Banner.checkByteStringIsUtf8(byteString);
                    this.link_ = byteString;
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

            private Banner() {
                this.memoizedIsInitialized = (byte) (-1);
                this.img_ = "";
                this.link_ = "";
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Banner(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    this.img_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 18) {
                                    this.link_ = codedInputStream.readStringRequireUtf8();
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

            private Banner(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Banner getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Banner banner) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(banner);
            }

            public static Banner parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Banner) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Banner parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Banner) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Banner parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Banner parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Banner parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Banner) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Banner parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Banner) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Banner parseFrom(InputStream inputStream) throws IOException {
                return (Banner) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Banner parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Banner) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Banner parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Banner parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Banner parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Banner parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Banner> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Banner)) {
                    return super.equals(obj);
                }
                Banner banner = (Banner) obj;
                if (getImg().equals(banner.getImg()) && getLink().equals(banner.getLink()) && hasExt() == banner.hasExt()) {
                    return (!hasExt() || getExt().equals(banner.getExt())) && getExtProtoList().equals(banner.getExtProtoList()) && this.unknownFields.equals(banner.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Banner getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final String getImg() {
                Object obj = this.img_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.img_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final ByteString getImgBytes() {
                Object obj = this.img_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.img_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final String getLink() {
                Object obj = this.link_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.link_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final ByteString getLinkBytes() {
                Object obj = this.link_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.link_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Banner> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i = this.memoizedSize;
                if (i != -1) {
                    return i;
                }
                int computeStringSize = !getImgBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.img_) + 0 : 0;
                int i2 = computeStringSize;
                int i3 = 0;
                if (!getLinkBytes().isEmpty()) {
                    i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.link_);
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

            @Override // com.explorestack.protobuf.adcom.Ad.Display.BannerOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getImg().hashCode()) * 37) + 2) * 53) + getLink().hashCode();
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
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Banner_fieldAccessorTable.ensureFieldAccessorsInitialized(Banner.class, Builder.class);
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
                return new Banner();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!getImgBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 1, this.img_);
                }
                if (!getLinkBytes().isEmpty()) {
                    GeneratedMessageV3.writeString(codedOutputStream, 2, this.link_);
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

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder.class */
        public interface BannerOrBuilder extends MessageOrBuilder {
            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            String getImg();

            ByteString getImgBytes();

            String getLink();

            ByteString getLinkBytes();

            boolean hasExt();
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DisplayOrBuilder {
            private Object adm_;
            private List<Integer> api_;
            private SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> bannerBuilder_;
            private Banner banner_;
            private int bitField0_;
            private Object curl_;
            private RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> eventBuilder_;
            private List<Event> event_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int h_;
            private int hratio_;
            private LazyStringList mime_;
            private SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> nativeBuilder_;
            private Native native_;
            private List<Integer> type_;
            private int w_;
            private int wratio_;

            private Builder() {
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.type_ = Collections.emptyList();
                this.adm_ = "";
                this.curl_ = "";
                this.event_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.type_ = Collections.emptyList();
                this.adm_ = "";
                this.curl_ = "";
                this.event_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureApiIsMutable() {
                if ((this.bitField0_ & 2) == 0) {
                    this.api_ = new ArrayList(this.api_);
                    this.bitField0_ |= 2;
                }
            }

            private void ensureEventIsMutable() {
                if ((this.bitField0_ & 8) == 0) {
                    this.event_ = new ArrayList(this.event_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 16) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 16;
                }
            }

            private void ensureMimeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.mime_ = new LazyStringArrayList(this.mime_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureTypeIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.type_ = new ArrayList(this.type_);
                    this.bitField0_ |= 4;
                }
            }

            private SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> getBannerFieldBuilder() {
                if (this.bannerBuilder_ == null) {
                    this.bannerBuilder_ = new SingleFieldBuilderV3<>(getBanner(), getParentForChildren(), isClean());
                    this.banner_ = null;
                }
                return this.bannerBuilder_;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor;
            }

            private RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> getEventFieldBuilder() {
                if (this.eventBuilder_ == null) {
                    this.eventBuilder_ = new RepeatedFieldBuilderV3<>(this.event_, (this.bitField0_ & 8) != 0, getParentForChildren(), isClean());
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
                    this.extProtoBuilder_ = new RepeatedFieldBuilderV3<>(this.extProto_, (this.bitField0_ & 16) != 0, getParentForChildren(), isClean());
                    this.extProto_ = null;
                }
                return this.extProtoBuilder_;
            }

            private SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> getNativeFieldBuilder() {
                if (this.nativeBuilder_ == null) {
                    this.nativeBuilder_ = new SingleFieldBuilderV3<>(getNative(), getParentForChildren(), isClean());
                    this.native_ = null;
                }
                return this.nativeBuilder_;
            }

            private void maybeForceBuilderInitialization() {
                if (Display.alwaysUseFieldBuilders) {
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

            public final Builder addAllEvent(Iterable<? extends Event> iterable) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
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

            public final Builder addAllMime(Iterable<String> iterable) {
                ensureMimeIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mime_);
                onChanged();
                return this;
            }

            public final Builder addAllType(Iterable<? extends DisplayCreativeType> iterable) {
                ensureTypeIsMutable();
                for (DisplayCreativeType displayCreativeType : iterable) {
                    this.type_.add(Integer.valueOf(displayCreativeType.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllTypeValue(Iterable<Integer> iterable) {
                ensureTypeIsMutable();
                for (Integer num : iterable) {
                    this.type_.add(Integer.valueOf(num.intValue()));
                }
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

            public final Builder addEvent(int i, Event.Builder builder) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.add(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(i, builder.build());
                }
                return this;
            }

            public final Builder addEvent(int i, Event event) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
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

            public final Builder addEvent(Event.Builder builder) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.add(builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.addMessage(builder.build());
                }
                return this;
            }

            public final Builder addEvent(Event event) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
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

            public final Event.Builder addEventBuilder() {
                return getEventFieldBuilder().addBuilder(Event.getDefaultInstance());
            }

            public final Event.Builder addEventBuilder(int i) {
                return getEventFieldBuilder().addBuilder(i, Event.getDefaultInstance());
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
                Display.checkByteStringIsUtf8(byteString);
                ensureMimeIsMutable();
                this.mime_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            public final Builder addType(DisplayCreativeType displayCreativeType) {
                Objects.requireNonNull(displayCreativeType);
                ensureTypeIsMutable();
                this.type_.add(Integer.valueOf(displayCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addTypeValue(int i) {
                ensureTypeIsMutable();
                this.type_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Display build() {
                Display buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Display buildPartial() {
                Display display = new Display(this);
                if ((this.bitField0_ & 1) != 0) {
                    this.mime_ = this.mime_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                display.mime_ = this.mime_;
                if ((this.bitField0_ & 2) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -3;
                }
                display.api_ = this.api_;
                if ((this.bitField0_ & 4) != 0) {
                    this.type_ = Collections.unmodifiableList(this.type_);
                    this.bitField0_ &= -5;
                }
                display.type_ = this.type_;
                display.w_ = this.w_;
                display.h_ = this.h_;
                display.wratio_ = this.wratio_;
                display.hratio_ = this.hratio_;
                display.adm_ = this.adm_;
                display.curl_ = this.curl_;
                SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> singleFieldBuilderV3 = this.bannerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    display.banner_ = this.banner_;
                } else {
                    display.banner_ = singleFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> singleFieldBuilderV32 = this.nativeBuilder_;
                if (singleFieldBuilderV32 == null) {
                    display.native_ = this.native_;
                } else {
                    display.native_ = singleFieldBuilderV32.build();
                }
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.event_ = Collections.unmodifiableList(this.event_);
                        this.bitField0_ &= -9;
                    }
                    display.event_ = this.event_;
                } else {
                    display.event_ = repeatedFieldBuilderV3.build();
                }
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV33 = this.extBuilder_;
                if (singleFieldBuilderV33 == null) {
                    display.ext_ = this.ext_;
                } else {
                    display.ext_ = singleFieldBuilderV33.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV32 == null) {
                    if ((this.bitField0_ & 16) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -17;
                    }
                    display.extProto_ = this.extProto_;
                } else {
                    display.extProto_ = repeatedFieldBuilderV32.build();
                }
                onBuilt();
                return display;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.type_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.w_ = 0;
                this.h_ = 0;
                this.wratio_ = 0;
                this.hratio_ = 0;
                this.adm_ = "";
                this.curl_ = "";
                if (this.bannerBuilder_ == null) {
                    this.banner_ = null;
                } else {
                    this.banner_ = null;
                    this.bannerBuilder_ = null;
                }
                if (this.nativeBuilder_ == null) {
                    this.native_ = null;
                } else {
                    this.native_ = null;
                    this.nativeBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.event_ = Collections.emptyList();
                    this.bitField0_ &= -9;
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
                    this.bitField0_ &= -17;
                } else {
                    repeatedFieldBuilderV32.clear();
                }
                return this;
            }

            public final Builder clearAdm() {
                this.adm_ = Display.getDefaultInstance().getAdm();
                onChanged();
                return this;
            }

            public final Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearBanner() {
                if (this.bannerBuilder_ == null) {
                    this.banner_ = null;
                    onChanged();
                } else {
                    this.banner_ = null;
                    this.bannerBuilder_ = null;
                }
                return this;
            }

            public final Builder clearCurl() {
                this.curl_ = Display.getDefaultInstance().getCurl();
                onChanged();
                return this;
            }

            public final Builder clearEvent() {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.event_ = Collections.emptyList();
                    this.bitField0_ &= -9;
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

            public final Builder clearMime() {
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public final Builder clearNative() {
                if (this.nativeBuilder_ == null) {
                    this.native_ = null;
                    onChanged();
                } else {
                    this.native_ = null;
                    this.nativeBuilder_ = null;
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearType() {
                this.type_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
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

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final String getAdm() {
                Object obj = this.adm_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.adm_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final ByteString getAdmBytes() {
                Object obj = this.adm_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.adm_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final ApiFramework getApi(int i) {
                return (ApiFramework) Display.api_converter_.convert(this.api_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<ApiFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, Display.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getApiValue(int i) {
                return this.api_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final Banner getBanner() {
                SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> singleFieldBuilderV3 = this.bannerBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                Banner banner = this.banner_;
                Banner banner2 = banner;
                if (banner == null) {
                    banner2 = Banner.getDefaultInstance();
                }
                return banner2;
            }

            public final Banner.Builder getBannerBuilder() {
                onChanged();
                return getBannerFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final BannerOrBuilder getBannerOrBuilder() {
                SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> singleFieldBuilderV3 = this.bannerBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Banner banner = this.banner_;
                Banner banner2 = banner;
                if (banner == null) {
                    banner2 = Banner.getDefaultInstance();
                }
                return banner2;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final String getCurl() {
                Object obj = this.curl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.curl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final ByteString getCurlBytes() {
                Object obj = this.curl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.curl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Display getDefaultInstanceForType() {
                return Display.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final Event getEvent(int i) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessage(i);
            }

            public final Event.Builder getEventBuilder(int i) {
                return getEventFieldBuilder().getBuilder(i);
            }

            public final List<Event.Builder> getEventBuilderList() {
                return getEventFieldBuilder().getBuilderList();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getEventCount() {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? this.event_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<Event> getEventList() {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.event_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final EventOrBuilder getEventOrBuilder(int i) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<? extends EventOrBuilder> getEventOrBuilderList() {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.event_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getH() {
                return this.h_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getHratio() {
                return this.hratio_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final String getMime(int i) {
                return (String) this.mime_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final ByteString getMimeBytes(int i) {
                return this.mime_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getMimeCount() {
                return this.mime_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final ProtocolStringList getMimeList() {
                return this.mime_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final Native getNative() {
                SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> singleFieldBuilderV3 = this.nativeBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessage();
                }
                Native r0 = this.native_;
                Native r3 = r0;
                if (r0 == null) {
                    r3 = Native.getDefaultInstance();
                }
                return r3;
            }

            public final Native.Builder getNativeBuilder() {
                onChanged();
                return getNativeFieldBuilder().getBuilder();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final NativeOrBuilder getNativeOrBuilder() {
                SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> singleFieldBuilderV3 = this.nativeBuilder_;
                if (singleFieldBuilderV3 != null) {
                    return singleFieldBuilderV3.getMessageOrBuilder();
                }
                Native r0 = this.native_;
                Native r3 = r0;
                if (r0 == null) {
                    r3 = Native.getDefaultInstance();
                }
                return r3;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final DisplayCreativeType getType(int i) {
                return (DisplayCreativeType) Display.type_converter_.convert(this.type_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getTypeCount() {
                return this.type_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<DisplayCreativeType> getTypeList() {
                return new Internal.ListAdapter(this.type_, Display.type_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getTypeValue(int i) {
                return this.type_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final List<Integer> getTypeValueList() {
                return Collections.unmodifiableList(this.type_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getW() {
                return this.w_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final int getWratio() {
                return this.wratio_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final boolean hasBanner() {
                return (this.bannerBuilder_ == null && this.banner_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
            public final boolean hasNative() {
                return (this.nativeBuilder_ == null && this.native_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_fieldAccessorTable.ensureFieldAccessorsInitialized(Display.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            public final Builder mergeBanner(Banner banner) {
                SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> singleFieldBuilderV3 = this.bannerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Banner banner2 = this.banner_;
                    if (banner2 != null) {
                        this.banner_ = Banner.newBuilder(banner2).mergeFrom(banner).buildPartial();
                    } else {
                        this.banner_ = banner;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(banner);
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
            public final com.explorestack.protobuf.adcom.Ad.Display.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.access$15500()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.adcom.Ad$Display r0 = (com.explorestack.protobuf.adcom.Ad.Display) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Ad$Display$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.adcom.Ad$Display r0 = (com.explorestack.protobuf.adcom.Ad.Display) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.adcom.Ad$Display$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r5
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Display) {
                    return mergeFrom((Display) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Display display) {
                if (display == Display.getDefaultInstance()) {
                    return this;
                }
                if (!display.mime_.isEmpty()) {
                    if (this.mime_.isEmpty()) {
                        this.mime_ = display.mime_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMimeIsMutable();
                        this.mime_.addAll(display.mime_);
                    }
                    onChanged();
                }
                if (!display.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = display.api_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(display.api_);
                    }
                    onChanged();
                }
                if (!display.type_.isEmpty()) {
                    if (this.type_.isEmpty()) {
                        this.type_ = display.type_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureTypeIsMutable();
                        this.type_.addAll(display.type_);
                    }
                    onChanged();
                }
                if (display.getW() != 0) {
                    setW(display.getW());
                }
                if (display.getH() != 0) {
                    setH(display.getH());
                }
                if (display.getWratio() != 0) {
                    setWratio(display.getWratio());
                }
                if (display.getHratio() != 0) {
                    setHratio(display.getHratio());
                }
                if (!display.getAdm().isEmpty()) {
                    this.adm_ = display.adm_;
                    onChanged();
                }
                if (!display.getCurl().isEmpty()) {
                    this.curl_ = display.curl_;
                    onChanged();
                }
                if (display.hasBanner()) {
                    mergeBanner(display.getBanner());
                }
                if (display.hasNative()) {
                    mergeNative(display.getNative());
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                if (this.eventBuilder_ == null) {
                    if (!display.event_.isEmpty()) {
                        if (this.event_.isEmpty()) {
                            this.event_ = display.event_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureEventIsMutable();
                            this.event_.addAll(display.event_);
                        }
                        onChanged();
                    }
                } else if (!display.event_.isEmpty()) {
                    if (this.eventBuilder_.isEmpty()) {
                        this.eventBuilder_.dispose();
                        this.eventBuilder_ = null;
                        this.event_ = display.event_;
                        this.bitField0_ &= -9;
                        this.eventBuilder_ = Display.alwaysUseFieldBuilders ? getEventFieldBuilder() : null;
                    } else {
                        this.eventBuilder_.addAllMessages(display.event_);
                    }
                }
                if (display.hasExt()) {
                    mergeExt(display.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!display.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = display.extProto_;
                            this.bitField0_ &= -17;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(display.extProto_);
                        }
                        onChanged();
                    }
                } else if (!display.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        this.extProtoBuilder_ = null;
                        this.extProto_ = display.extProto_;
                        this.bitField0_ &= -17;
                        if (Display.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(display.extProto_);
                    }
                }
                mergeUnknownFields(display.unknownFields);
                onChanged();
                return this;
            }

            public final Builder mergeNative(Native r5) {
                SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> singleFieldBuilderV3 = this.nativeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Native r0 = this.native_;
                    if (r0 != null) {
                        this.native_ = Native.newBuilder(r0).mergeFrom(r5).buildPartial();
                    } else {
                        this.native_ = r5;
                    }
                    onChanged();
                } else {
                    singleFieldBuilderV3.mergeFrom(r5);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder removeEvent(int i) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
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

            public final Builder setAdm(String str) {
                Objects.requireNonNull(str);
                this.adm_ = str;
                onChanged();
                return this;
            }

            public final Builder setAdmBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Display.checkByteStringIsUtf8(byteString);
                this.adm_ = byteString;
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

            public final Builder setBanner(Banner.Builder builder) {
                SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> singleFieldBuilderV3 = this.bannerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.banner_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setBanner(Banner banner) {
                SingleFieldBuilderV3<Banner, Banner.Builder, BannerOrBuilder> singleFieldBuilderV3 = this.bannerBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(banner);
                    this.banner_ = banner;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(banner);
                }
                return this;
            }

            public final Builder setCurl(String str) {
                Objects.requireNonNull(str);
                this.curl_ = str;
                onChanged();
                return this;
            }

            public final Builder setCurlBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Display.checkByteStringIsUtf8(byteString);
                this.curl_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setEvent(int i, Event.Builder builder) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    ensureEventIsMutable();
                    this.event_.set(i, builder.build());
                    onChanged();
                } else {
                    repeatedFieldBuilderV3.setMessage(i, builder.build());
                }
                return this;
            }

            public final Builder setEvent(int i, Event event) {
                RepeatedFieldBuilderV3<Event, Event.Builder, EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
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

            public final Builder setMime(int i, String str) {
                Objects.requireNonNull(str);
                ensureMimeIsMutable();
                this.mime_.set(i, str);
                onChanged();
                return this;
            }

            public final Builder setNative(Native.Builder builder) {
                SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> singleFieldBuilderV3 = this.nativeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    this.native_ = builder.build();
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(builder.build());
                }
                return this;
            }

            public final Builder setNative(Native r4) {
                SingleFieldBuilderV3<Native, Native.Builder, NativeOrBuilder> singleFieldBuilderV3 = this.nativeBuilder_;
                if (singleFieldBuilderV3 == null) {
                    Objects.requireNonNull(r4);
                    this.native_ = r4;
                    onChanged();
                } else {
                    singleFieldBuilderV3.setMessage(r4);
                }
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setType(int i, DisplayCreativeType displayCreativeType) {
                Objects.requireNonNull(displayCreativeType);
                ensureTypeIsMutable();
                this.type_.set(i, Integer.valueOf(displayCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setTypeValue(int i, int i2) {
                ensureTypeIsMutable();
                this.type_.set(i, Integer.valueOf(i2));
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

            public final Builder setWratio(int i) {
                this.wratio_ = i;
                onChanged();
                return this;
            }
        }

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native.class */
        public static final class Native extends GeneratedMessageV3 implements NativeOrBuilder {
            public static final int ASSET_FIELD_NUMBER = 2;
            public static final int EXT_FIELD_NUMBER = 4;
            public static final int EXT_PROTO_FIELD_NUMBER = 3;
            public static final int LINK_FIELD_NUMBER = 1;
            private static final long serialVersionUID = 0;
            private List<Asset> asset_;
            private List<Any> extProto_;
            private Struct ext_;
            private LinkAsset link_;
            private byte memoizedIsInitialized;
            private static final Native DEFAULT_INSTANCE = new Native();
            private static final Parser<Native> PARSER = new AbstractParser<Native>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.1
                @Override // com.explorestack.protobuf.Parser
                public final Native parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return new Native(codedInputStream, extensionRegistryLite);
                }
            };

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset.class */
            public static final class Asset extends GeneratedMessageV3 implements AssetOrBuilder {
                public static final int DATA_FIELD_NUMBER = 6;
                public static final int EXT_FIELD_NUMBER = 9;
                public static final int EXT_PROTO_FIELD_NUMBER = 8;
                public static final int ID_FIELD_NUMBER = 1;
                public static final int IMAGE_FIELD_NUMBER = 4;
                public static final int LINK_FIELD_NUMBER = 7;
                public static final int REQ_FIELD_NUMBER = 2;
                public static final int TITLE_FIELD_NUMBER = 3;
                public static final int VIDEO_FIELD_NUMBER = 5;
                private static final long serialVersionUID = 0;
                private DataAsset data_;
                private List<Any> extProto_;
                private Struct ext_;
                private int id_;
                private ImageAsset image_;
                private LinkAsset link_;
                private byte memoizedIsInitialized;
                private boolean req_;
                private TitleAsset title_;
                private VideoAsset video_;
                private static final Asset DEFAULT_INSTANCE = new Asset();
                private static final Parser<Asset> PARSER = new AbstractParser<Asset>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.1
                    @Override // com.explorestack.protobuf.Parser
                    public final Asset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return new Asset(codedInputStream, extensionRegistryLite);
                    }
                };

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$Builder.class */
                public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AssetOrBuilder {
                    private int bitField0_;
                    private SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> dataBuilder_;
                    private DataAsset data_;
                    private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                    private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int id_;
                    private SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> imageBuilder_;
                    private ImageAsset image_;
                    private SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> linkBuilder_;
                    private LinkAsset link_;
                    private boolean req_;
                    private SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> titleBuilder_;
                    private TitleAsset title_;
                    private SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> videoBuilder_;
                    private VideoAsset video_;

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

                    private SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> getDataFieldBuilder() {
                        if (this.dataBuilder_ == null) {
                            this.dataBuilder_ = new SingleFieldBuilderV3<>(getData(), getParentForChildren(), isClean());
                            this.data_ = null;
                        }
                        return this.dataBuilder_;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_descriptor;
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

                    private SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> getImageFieldBuilder() {
                        if (this.imageBuilder_ == null) {
                            this.imageBuilder_ = new SingleFieldBuilderV3<>(getImage(), getParentForChildren(), isClean());
                            this.image_ = null;
                        }
                        return this.imageBuilder_;
                    }

                    private SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> getLinkFieldBuilder() {
                        if (this.linkBuilder_ == null) {
                            this.linkBuilder_ = new SingleFieldBuilderV3<>(getLink(), getParentForChildren(), isClean());
                            this.link_ = null;
                        }
                        return this.linkBuilder_;
                    }

                    private SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> getTitleFieldBuilder() {
                        if (this.titleBuilder_ == null) {
                            this.titleBuilder_ = new SingleFieldBuilderV3<>(getTitle(), getParentForChildren(), isClean());
                            this.title_ = null;
                        }
                        return this.titleBuilder_;
                    }

                    private SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> getVideoFieldBuilder() {
                        if (this.videoBuilder_ == null) {
                            this.videoBuilder_ = new SingleFieldBuilderV3<>(getVideo(), getParentForChildren(), isClean());
                            this.video_ = null;
                        }
                        return this.videoBuilder_;
                    }

                    private void maybeForceBuilderInitialization() {
                        if (Asset.alwaysUseFieldBuilders) {
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
                    public final Asset build() {
                        Asset buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Asset buildPartial() {
                        Asset asset = new Asset(this);
                        asset.id_ = this.id_;
                        asset.req_ = this.req_;
                        SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            asset.title_ = this.title_;
                        } else {
                            asset.title_ = singleFieldBuilderV3.build();
                        }
                        SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> singleFieldBuilderV32 = this.imageBuilder_;
                        if (singleFieldBuilderV32 == null) {
                            asset.image_ = this.image_;
                        } else {
                            asset.image_ = singleFieldBuilderV32.build();
                        }
                        SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> singleFieldBuilderV33 = this.videoBuilder_;
                        if (singleFieldBuilderV33 == null) {
                            asset.video_ = this.video_;
                        } else {
                            asset.video_ = singleFieldBuilderV33.build();
                        }
                        SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> singleFieldBuilderV34 = this.dataBuilder_;
                        if (singleFieldBuilderV34 == null) {
                            asset.data_ = this.data_;
                        } else {
                            asset.data_ = singleFieldBuilderV34.build();
                        }
                        SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV35 = this.linkBuilder_;
                        if (singleFieldBuilderV35 == null) {
                            asset.link_ = this.link_;
                        } else {
                            asset.link_ = singleFieldBuilderV35.build();
                        }
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV36 = this.extBuilder_;
                        if (singleFieldBuilderV36 == null) {
                            asset.ext_ = this.ext_;
                        } else {
                            asset.ext_ = singleFieldBuilderV36.build();
                        }
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            if ((this.bitField0_ & 1) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -2;
                            }
                            asset.extProto_ = this.extProto_;
                        } else {
                            asset.extProto_ = repeatedFieldBuilderV3.build();
                        }
                        onBuilt();
                        return asset;
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
                        if (this.imageBuilder_ == null) {
                            this.image_ = null;
                        } else {
                            this.image_ = null;
                            this.imageBuilder_ = null;
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
                        if (this.linkBuilder_ == null) {
                            this.link_ = null;
                        } else {
                            this.link_ = null;
                            this.linkBuilder_ = null;
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

                    public final Builder clearImage() {
                        if (this.imageBuilder_ == null) {
                            this.image_ = null;
                            onChanged();
                        } else {
                            this.image_ = null;
                            this.imageBuilder_ = null;
                        }
                        return this;
                    }

                    public final Builder clearLink() {
                        if (this.linkBuilder_ == null) {
                            this.link_ = null;
                            onChanged();
                        } else {
                            this.link_ = null;
                            this.linkBuilder_ = null;
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final DataAsset getData() {
                        SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        DataAsset dataAsset = this.data_;
                        DataAsset dataAsset2 = dataAsset;
                        if (dataAsset == null) {
                            dataAsset2 = DataAsset.getDefaultInstance();
                        }
                        return dataAsset2;
                    }

                    public final DataAsset.Builder getDataBuilder() {
                        onChanged();
                        return getDataFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final DataAssetOrBuilder getDataOrBuilder() {
                        SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        DataAsset dataAsset = this.data_;
                        DataAsset dataAsset2 = dataAsset;
                        if (dataAsset == null) {
                            dataAsset2 = DataAsset.getDefaultInstance();
                        }
                        return dataAsset2;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final Asset getDefaultInstanceForType() {
                        return Asset.getDefaultInstance();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final Descriptors.Descriptor getDescriptorForType() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_descriptor;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final int getExtProtoCount() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final List<Any> getExtProtoList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final int getId() {
                        return this.id_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final ImageAsset getImage() {
                        SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> singleFieldBuilderV3 = this.imageBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        ImageAsset imageAsset = this.image_;
                        ImageAsset imageAsset2 = imageAsset;
                        if (imageAsset == null) {
                            imageAsset2 = ImageAsset.getDefaultInstance();
                        }
                        return imageAsset2;
                    }

                    public final ImageAsset.Builder getImageBuilder() {
                        onChanged();
                        return getImageFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final ImageAssetOrBuilder getImageOrBuilder() {
                        SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> singleFieldBuilderV3 = this.imageBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        ImageAsset imageAsset = this.image_;
                        ImageAsset imageAsset2 = imageAsset;
                        if (imageAsset == null) {
                            imageAsset2 = ImageAsset.getDefaultInstance();
                        }
                        return imageAsset2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final LinkAsset getLink() {
                        SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        LinkAsset linkAsset = this.link_;
                        LinkAsset linkAsset2 = linkAsset;
                        if (linkAsset == null) {
                            linkAsset2 = LinkAsset.getDefaultInstance();
                        }
                        return linkAsset2;
                    }

                    public final LinkAsset.Builder getLinkBuilder() {
                        onChanged();
                        return getLinkFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final LinkAssetOrBuilder getLinkOrBuilder() {
                        SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        LinkAsset linkAsset = this.link_;
                        LinkAsset linkAsset2 = linkAsset;
                        if (linkAsset == null) {
                            linkAsset2 = LinkAsset.getDefaultInstance();
                        }
                        return linkAsset2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean getReq() {
                        return this.req_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final TitleAsset getTitle() {
                        SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        TitleAsset titleAsset = this.title_;
                        TitleAsset titleAsset2 = titleAsset;
                        if (titleAsset == null) {
                            titleAsset2 = TitleAsset.getDefaultInstance();
                        }
                        return titleAsset2;
                    }

                    public final TitleAsset.Builder getTitleBuilder() {
                        onChanged();
                        return getTitleFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final TitleAssetOrBuilder getTitleOrBuilder() {
                        SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        TitleAsset titleAsset = this.title_;
                        TitleAsset titleAsset2 = titleAsset;
                        if (titleAsset == null) {
                            titleAsset2 = TitleAsset.getDefaultInstance();
                        }
                        return titleAsset2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final VideoAsset getVideo() {
                        SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessage();
                        }
                        VideoAsset videoAsset = this.video_;
                        VideoAsset videoAsset2 = videoAsset;
                        if (videoAsset == null) {
                            videoAsset2 = VideoAsset.getDefaultInstance();
                        }
                        return videoAsset2;
                    }

                    public final VideoAsset.Builder getVideoBuilder() {
                        onChanged();
                        return getVideoFieldBuilder().getBuilder();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final VideoAssetOrBuilder getVideoOrBuilder() {
                        SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 != null) {
                            return singleFieldBuilderV3.getMessageOrBuilder();
                        }
                        VideoAsset videoAsset = this.video_;
                        VideoAsset videoAsset2 = videoAsset;
                        if (videoAsset == null) {
                            videoAsset2 = VideoAsset.getDefaultInstance();
                        }
                        return videoAsset2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean hasData() {
                        return (this.dataBuilder_ == null && this.data_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean hasExt() {
                        return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean hasImage() {
                        return (this.imageBuilder_ == null && this.image_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean hasLink() {
                        return (this.linkBuilder_ == null && this.link_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean hasTitle() {
                        return (this.titleBuilder_ == null && this.title_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                    public final boolean hasVideo() {
                        return (this.videoBuilder_ == null && this.video_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_fieldAccessorTable.ensureFieldAccessorsInitialized(Asset.class, Builder.class);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
                    public final boolean isInitialized() {
                        return true;
                    }

                    public final Builder mergeData(DataAsset dataAsset) {
                        SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            DataAsset dataAsset2 = this.data_;
                            if (dataAsset2 != null) {
                                this.data_ = DataAsset.newBuilder(dataAsset2).mergeFrom(dataAsset).buildPartial();
                            } else {
                                this.data_ = dataAsset;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(dataAsset);
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
                    public final com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.access$11900()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            com.explorestack.protobuf.adcom.Ad$Display$Native$Asset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x001a
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$Builder r0 = r0.mergeFrom(r1)
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
                            com.explorestack.protobuf.adcom.Ad$Display$Native$Asset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset) r0     // Catch: all -> 0x001c
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
                            com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$Builder r0 = r0.mergeFrom(r1)
                        L_0x003b:
                            r0 = r6
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$Builder");
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeFrom(Message message) {
                        if (message instanceof Asset) {
                            return mergeFrom((Asset) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public final Builder mergeFrom(Asset asset) {
                        if (asset == Asset.getDefaultInstance()) {
                            return this;
                        }
                        if (asset.getId() != 0) {
                            setId(asset.getId());
                        }
                        if (asset.getReq()) {
                            setReq(asset.getReq());
                        }
                        if (asset.hasTitle()) {
                            mergeTitle(asset.getTitle());
                        }
                        if (asset.hasImage()) {
                            mergeImage(asset.getImage());
                        }
                        if (asset.hasVideo()) {
                            mergeVideo(asset.getVideo());
                        }
                        if (asset.hasData()) {
                            mergeData(asset.getData());
                        }
                        if (asset.hasLink()) {
                            mergeLink(asset.getLink());
                        }
                        if (asset.hasExt()) {
                            mergeExt(asset.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!asset.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = asset.extProto_;
                                    this.bitField0_ &= -2;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(asset.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!asset.extProto_.isEmpty()) {
                            if (this.extProtoBuilder_.isEmpty()) {
                                this.extProtoBuilder_.dispose();
                                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                this.extProtoBuilder_ = null;
                                this.extProto_ = asset.extProto_;
                                this.bitField0_ &= -2;
                                if (Asset.alwaysUseFieldBuilders) {
                                    repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                }
                                this.extProtoBuilder_ = repeatedFieldBuilderV3;
                            } else {
                                this.extProtoBuilder_.addAllMessages(asset.extProto_);
                            }
                        }
                        mergeUnknownFields(asset.unknownFields);
                        onChanged();
                        return this;
                    }

                    public final Builder mergeImage(ImageAsset imageAsset) {
                        SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> singleFieldBuilderV3 = this.imageBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            ImageAsset imageAsset2 = this.image_;
                            if (imageAsset2 != null) {
                                this.image_ = ImageAsset.newBuilder(imageAsset2).mergeFrom(imageAsset).buildPartial();
                            } else {
                                this.image_ = imageAsset;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(imageAsset);
                        }
                        return this;
                    }

                    public final Builder mergeLink(LinkAsset linkAsset) {
                        SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            LinkAsset linkAsset2 = this.link_;
                            if (linkAsset2 != null) {
                                this.link_ = LinkAsset.newBuilder(linkAsset2).mergeFrom(linkAsset).buildPartial();
                            } else {
                                this.link_ = linkAsset;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(linkAsset);
                        }
                        return this;
                    }

                    public final Builder mergeTitle(TitleAsset titleAsset) {
                        SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            TitleAsset titleAsset2 = this.title_;
                            if (titleAsset2 != null) {
                                this.title_ = TitleAsset.newBuilder(titleAsset2).mergeFrom(titleAsset).buildPartial();
                            } else {
                                this.title_ = titleAsset;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(titleAsset);
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.mergeUnknownFields(unknownFieldSet);
                    }

                    public final Builder mergeVideo(VideoAsset videoAsset) {
                        SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            VideoAsset videoAsset2 = this.video_;
                            if (videoAsset2 != null) {
                                this.video_ = VideoAsset.newBuilder(videoAsset2).mergeFrom(videoAsset).buildPartial();
                            } else {
                                this.video_ = videoAsset;
                            }
                            onChanged();
                        } else {
                            singleFieldBuilderV3.mergeFrom(videoAsset);
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

                    public final Builder setData(DataAsset.Builder builder) {
                        SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.data_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setData(DataAsset dataAsset) {
                        SingleFieldBuilderV3<DataAsset, DataAsset.Builder, DataAssetOrBuilder> singleFieldBuilderV3 = this.dataBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(dataAsset);
                            this.data_ = dataAsset;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(dataAsset);
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

                    public final Builder setImage(ImageAsset.Builder builder) {
                        SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> singleFieldBuilderV3 = this.imageBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.image_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setImage(ImageAsset imageAsset) {
                        SingleFieldBuilderV3<ImageAsset, ImageAsset.Builder, ImageAssetOrBuilder> singleFieldBuilderV3 = this.imageBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(imageAsset);
                            this.image_ = imageAsset;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(imageAsset);
                        }
                        return this;
                    }

                    public final Builder setLink(LinkAsset.Builder builder) {
                        SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.link_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setLink(LinkAsset linkAsset) {
                        SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(linkAsset);
                            this.link_ = linkAsset;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(linkAsset);
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

                    public final Builder setTitle(TitleAsset.Builder builder) {
                        SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.title_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setTitle(TitleAsset titleAsset) {
                        SingleFieldBuilderV3<TitleAsset, TitleAsset.Builder, TitleAssetOrBuilder> singleFieldBuilderV3 = this.titleBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(titleAsset);
                            this.title_ = titleAsset;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(titleAsset);
                        }
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.setUnknownFields(unknownFieldSet);
                    }

                    public final Builder setVideo(VideoAsset.Builder builder) {
                        SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            this.video_ = builder.build();
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(builder.build());
                        }
                        return this;
                    }

                    public final Builder setVideo(VideoAsset videoAsset) {
                        SingleFieldBuilderV3<VideoAsset, VideoAsset.Builder, VideoAssetOrBuilder> singleFieldBuilderV3 = this.videoBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            Objects.requireNonNull(videoAsset);
                            this.video_ = videoAsset;
                            onChanged();
                        } else {
                            singleFieldBuilderV3.setMessage(videoAsset);
                        }
                        return this;
                    }
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset.class */
                public static final class DataAsset extends GeneratedMessageV3 implements DataAssetOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 5;
                    public static final int EXT_PROTO_FIELD_NUMBER = 4;
                    public static final int LEN_FIELD_NUMBER = 2;
                    public static final int TYPE_FIELD_NUMBER = 3;
                    public static final int VALUE_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int len_;
                    private byte memoizedIsInitialized;
                    private int type_;
                    private volatile Object value_;
                    private static final DataAsset DEFAULT_INSTANCE = new DataAsset();
                    private static final Parser<DataAsset> PARSER = new AbstractParser<DataAsset>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAsset.1
                        @Override // com.explorestack.protobuf.Parser
                        public final DataAsset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new DataAsset(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAsset$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements DataAssetOrBuilder {
                        private int bitField0_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int len_;
                        private int type_;
                        private Object value_;

                        private Builder() {
                            this.value_ = "";
                            this.type_ = 0;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
                            this.value_ = "";
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
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_DataAsset_descriptor;
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
                            if (DataAsset.alwaysUseFieldBuilders) {
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
                        public final DataAsset build() {
                            DataAsset buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final DataAsset buildPartial() {
                            DataAsset dataAsset = new DataAsset(this);
                            dataAsset.value_ = this.value_;
                            dataAsset.len_ = this.len_;
                            dataAsset.type_ = this.type_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                dataAsset.ext_ = this.ext_;
                            } else {
                                dataAsset.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                dataAsset.extProto_ = this.extProto_;
                            } else {
                                dataAsset.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return dataAsset;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.value_ = "";
                            this.len_ = 0;
                            this.type_ = 0;
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

                        public final Builder clearValue() {
                            this.value_ = DataAsset.getDefaultInstance().getValue();
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clone() {
                            return (Builder) super.clone();
                        }

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final DataAsset getDefaultInstanceForType() {
                            return DataAsset.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_DataAsset_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final int getLen() {
                            return this.len_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final NativeDataAssetType getType() {
                            NativeDataAssetType valueOf = NativeDataAssetType.valueOf(this.type_);
                            NativeDataAssetType nativeDataAssetType = valueOf;
                            if (valueOf == null) {
                                nativeDataAssetType = NativeDataAssetType.UNRECOGNIZED;
                            }
                            return nativeDataAssetType;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final int getTypeValue() {
                            return this.type_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final String getValue() {
                            Object obj = this.value_;
                            if (obj instanceof String) {
                                return (String) obj;
                            }
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.value_ = stringUtf8;
                            return stringUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final ByteString getValueBytes() {
                            Object obj = this.value_;
                            if (!(obj instanceof String)) {
                                return (ByteString) obj;
                            }
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.value_ = copyFromUtf8;
                            return copyFromUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_DataAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(DataAsset.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAsset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAsset.access$10100()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$DataAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAsset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$DataAsset$Builder r0 = r0.mergeFrom(r1)
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
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$DataAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAsset) r0     // Catch: all -> 0x001c
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
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$DataAsset$Builder r0 = r0.mergeFrom(r1)
                            L_0x003b:
                                r0 = r6
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAsset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$DataAsset$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof DataAsset) {
                                return mergeFrom((DataAsset) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(DataAsset dataAsset) {
                            if (dataAsset == DataAsset.getDefaultInstance()) {
                                return this;
                            }
                            if (!dataAsset.getValue().isEmpty()) {
                                this.value_ = dataAsset.value_;
                                onChanged();
                            }
                            if (dataAsset.getLen() != 0) {
                                setLen(dataAsset.getLen());
                            }
                            if (dataAsset.type_ != 0) {
                                setTypeValue(dataAsset.getTypeValue());
                            }
                            if (dataAsset.hasExt()) {
                                mergeExt(dataAsset.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!dataAsset.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = dataAsset.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(dataAsset.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!dataAsset.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = dataAsset.extProto_;
                                    this.bitField0_ &= -2;
                                    if (DataAsset.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(dataAsset.extProto_);
                                }
                            }
                            mergeUnknownFields(dataAsset.unknownFields);
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

                        public final Builder setValue(String str) {
                            Objects.requireNonNull(str);
                            this.value_ = str;
                            onChanged();
                            return this;
                        }

                        public final Builder setValueBytes(ByteString byteString) {
                            Objects.requireNonNull(byteString);
                            DataAsset.checkByteStringIsUtf8(byteString);
                            this.value_ = byteString;
                            onChanged();
                            return this;
                        }
                    }

                    private DataAsset() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.value_ = "";
                        this.type_ = 0;
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private DataAsset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                            this.value_ = codedInputStream.readStringRequireUtf8();
                                        } else if (readTag == 16) {
                                            this.len_ = codedInputStream.readUInt32();
                                        } else if (readTag == 24) {
                                            this.type_ = codedInputStream.readEnum();
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

                    private DataAsset(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static DataAsset getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_DataAsset_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(DataAsset dataAsset) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(dataAsset);
                    }

                    public static DataAsset parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (DataAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static DataAsset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (DataAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static DataAsset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static DataAsset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static DataAsset parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (DataAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static DataAsset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (DataAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static DataAsset parseFrom(InputStream inputStream) throws IOException {
                        return (DataAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static DataAsset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (DataAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static DataAsset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static DataAsset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static DataAsset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static DataAsset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<DataAsset> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof DataAsset)) {
                            return super.equals(obj);
                        }
                        DataAsset dataAsset = (DataAsset) obj;
                        if (getValue().equals(dataAsset.getValue()) && getLen() == dataAsset.getLen() && this.type_ == dataAsset.type_ && hasExt() == dataAsset.hasExt()) {
                            return (!hasExt() || getExt().equals(dataAsset.getExt())) && getExtProtoList().equals(dataAsset.getExtProtoList()) && this.unknownFields.equals(dataAsset.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final DataAsset getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final int getLen() {
                        return this.len_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<DataAsset> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int computeStringSize = !getValueBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.value_) + 0 : 0;
                        int i2 = this.len_;
                        int i3 = computeStringSize;
                        if (i2 != 0) {
                            i3 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i2);
                        }
                        int i4 = i3;
                        int i5 = 0;
                        if (this.type_ != NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_INVALID.getNumber()) {
                            i4 = i3 + CodedOutputStream.computeEnumSize(3, this.type_);
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final NativeDataAssetType getType() {
                        NativeDataAssetType valueOf = NativeDataAssetType.valueOf(this.type_);
                        NativeDataAssetType nativeDataAssetType = valueOf;
                        if (valueOf == null) {
                            nativeDataAssetType = NativeDataAssetType.UNRECOGNIZED;
                        }
                        return nativeDataAssetType;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final int getTypeValue() {
                        return this.type_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final UnknownFieldSet getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final String getValue() {
                        Object obj = this.value_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.value_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final ByteString getValueBytes() {
                        Object obj = this.value_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.value_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.DataAssetOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getValue().hashCode()) * 37) + 2) * 53) + getLen()) * 37) + 3) * 53) + this.type_;
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
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_DataAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(DataAsset.class, Builder.class);
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
                        return new DataAsset();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (!getValueBytes().isEmpty()) {
                            GeneratedMessageV3.writeString(codedOutputStream, 1, this.value_);
                        }
                        int i = this.len_;
                        if (i != 0) {
                            codedOutputStream.writeUInt32(2, i);
                        }
                        if (this.type_ != NativeDataAssetType.NATIVE_DATA_ASSET_TYPE_INVALID.getNumber()) {
                            codedOutputStream.writeEnum(3, this.type_);
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

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$DataAssetOrBuilder.class */
                public interface DataAssetOrBuilder extends MessageOrBuilder {
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

                    String getValue();

                    ByteString getValueBytes();

                    boolean hasExt();
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset.class */
                public static final class ImageAsset extends GeneratedMessageV3 implements ImageAssetOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 6;
                    public static final int EXT_PROTO_FIELD_NUMBER = 5;
                    public static final int H_FIELD_NUMBER = 3;
                    public static final int TYPE_FIELD_NUMBER = 4;
                    public static final int URL_FIELD_NUMBER = 1;
                    public static final int W_FIELD_NUMBER = 2;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int h_;
                    private byte memoizedIsInitialized;
                    private int type_;
                    private volatile Object url_;
                    private int w_;
                    private static final ImageAsset DEFAULT_INSTANCE = new ImageAsset();
                    private static final Parser<ImageAsset> PARSER = new AbstractParser<ImageAsset>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAsset.1
                        @Override // com.explorestack.protobuf.Parser
                        public final ImageAsset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new ImageAsset(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAsset$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ImageAssetOrBuilder {
                        private int bitField0_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int h_;
                        private int type_;
                        private Object url_;
                        private int w_;

                        private Builder() {
                            this.url_ = "";
                            this.type_ = 0;
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
                            this.url_ = "";
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
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_ImageAsset_descriptor;
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
                            if (ImageAsset.alwaysUseFieldBuilders) {
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
                        public final ImageAsset build() {
                            ImageAsset buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final ImageAsset buildPartial() {
                            ImageAsset imageAsset = new ImageAsset(this);
                            imageAsset.url_ = this.url_;
                            imageAsset.w_ = this.w_;
                            imageAsset.h_ = this.h_;
                            imageAsset.type_ = this.type_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                imageAsset.ext_ = this.ext_;
                            } else {
                                imageAsset.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                imageAsset.extProto_ = this.extProto_;
                            } else {
                                imageAsset.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return imageAsset;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.url_ = "";
                            this.w_ = 0;
                            this.h_ = 0;
                            this.type_ = 0;
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

                        public final Builder clearH() {
                            this.h_ = 0;
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

                        public final Builder clearUrl() {
                            this.url_ = ImageAsset.getDefaultInstance().getUrl();
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

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final ImageAsset getDefaultInstanceForType() {
                            return ImageAsset.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_ImageAsset_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final int getH() {
                            return this.h_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final NativeImageAssetType getType() {
                            NativeImageAssetType valueOf = NativeImageAssetType.valueOf(this.type_);
                            NativeImageAssetType nativeImageAssetType = valueOf;
                            if (valueOf == null) {
                                nativeImageAssetType = NativeImageAssetType.UNRECOGNIZED;
                            }
                            return nativeImageAssetType;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final int getTypeValue() {
                            return this.type_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final String getUrl() {
                            Object obj = this.url_;
                            if (obj instanceof String) {
                                return (String) obj;
                            }
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.url_ = stringUtf8;
                            return stringUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final ByteString getUrlBytes() {
                            Object obj = this.url_;
                            if (!(obj instanceof String)) {
                                return (ByteString) obj;
                            }
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.url_ = copyFromUtf8;
                            return copyFromUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final int getW() {
                            return this.w_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_ImageAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(ImageAsset.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAsset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAsset.access$7300()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$ImageAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAsset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$ImageAsset$Builder r0 = r0.mergeFrom(r1)
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
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$ImageAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAsset) r0     // Catch: all -> 0x001c
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
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$ImageAsset$Builder r0 = r0.mergeFrom(r1)
                            L_0x003b:
                                r0 = r6
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAsset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$ImageAsset$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof ImageAsset) {
                                return mergeFrom((ImageAsset) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(ImageAsset imageAsset) {
                            if (imageAsset == ImageAsset.getDefaultInstance()) {
                                return this;
                            }
                            if (!imageAsset.getUrl().isEmpty()) {
                                this.url_ = imageAsset.url_;
                                onChanged();
                            }
                            if (imageAsset.getW() != 0) {
                                setW(imageAsset.getW());
                            }
                            if (imageAsset.getH() != 0) {
                                setH(imageAsset.getH());
                            }
                            if (imageAsset.type_ != 0) {
                                setTypeValue(imageAsset.getTypeValue());
                            }
                            if (imageAsset.hasExt()) {
                                mergeExt(imageAsset.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!imageAsset.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = imageAsset.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(imageAsset.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!imageAsset.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = imageAsset.extProto_;
                                    this.bitField0_ &= -2;
                                    if (ImageAsset.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(imageAsset.extProto_);
                                }
                            }
                            mergeUnknownFields(imageAsset.unknownFields);
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

                        public final Builder setUrl(String str) {
                            Objects.requireNonNull(str);
                            this.url_ = str;
                            onChanged();
                            return this;
                        }

                        public final Builder setUrlBytes(ByteString byteString) {
                            Objects.requireNonNull(byteString);
                            ImageAsset.checkByteStringIsUtf8(byteString);
                            this.url_ = byteString;
                            onChanged();
                            return this;
                        }

                        public final Builder setW(int i) {
                            this.w_ = i;
                            onChanged();
                            return this;
                        }
                    }

                    private ImageAsset() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.url_ = "";
                        this.type_ = 0;
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private ImageAsset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                            this.url_ = codedInputStream.readStringRequireUtf8();
                                        } else if (readTag == 16) {
                                            this.w_ = codedInputStream.readUInt32();
                                        } else if (readTag == 24) {
                                            this.h_ = codedInputStream.readUInt32();
                                        } else if (readTag == 32) {
                                            this.type_ = codedInputStream.readEnum();
                                        } else if (readTag == 42) {
                                            z2 = z2;
                                            if (!z2 || !true) {
                                                this.extProto_ = new ArrayList();
                                                z2 |= true;
                                            }
                                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                        } else if (readTag == 50) {
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

                    private ImageAsset(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static ImageAsset getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_ImageAsset_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(ImageAsset imageAsset) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(imageAsset);
                    }

                    public static ImageAsset parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (ImageAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static ImageAsset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (ImageAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static ImageAsset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static ImageAsset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static ImageAsset parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (ImageAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static ImageAsset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (ImageAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static ImageAsset parseFrom(InputStream inputStream) throws IOException {
                        return (ImageAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static ImageAsset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (ImageAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static ImageAsset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static ImageAsset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static ImageAsset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static ImageAsset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<ImageAsset> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof ImageAsset)) {
                            return super.equals(obj);
                        }
                        ImageAsset imageAsset = (ImageAsset) obj;
                        if (getUrl().equals(imageAsset.getUrl()) && getW() == imageAsset.getW() && getH() == imageAsset.getH() && this.type_ == imageAsset.type_ && hasExt() == imageAsset.hasExt()) {
                            return (!hasExt() || getExt().equals(imageAsset.getExt())) && getExtProtoList().equals(imageAsset.getExtProtoList()) && this.unknownFields.equals(imageAsset.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final ImageAsset getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final int getH() {
                        return this.h_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<ImageAsset> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int computeStringSize = !getUrlBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.url_) + 0 : 0;
                        int i2 = this.w_;
                        int i3 = computeStringSize;
                        if (i2 != 0) {
                            i3 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i2);
                        }
                        int i4 = this.h_;
                        int i5 = i3;
                        if (i4 != 0) {
                            i5 = i3 + CodedOutputStream.computeUInt32Size(3, i4);
                        }
                        int i6 = i5;
                        int i7 = 0;
                        if (this.type_ != NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_INVALID.getNumber()) {
                            i6 = i5 + CodedOutputStream.computeEnumSize(4, this.type_);
                            i7 = 0;
                        }
                        while (i7 < this.extProto_.size()) {
                            i6 += CodedOutputStream.computeMessageSize(5, this.extProto_.get(i7));
                            i7++;
                        }
                        int i8 = i6;
                        if (this.ext_ != null) {
                            i8 = i6 + CodedOutputStream.computeMessageSize(6, getExt());
                        }
                        int serializedSize = i8 + this.unknownFields.getSerializedSize();
                        this.memoizedSize = serializedSize;
                        return serializedSize;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final NativeImageAssetType getType() {
                        NativeImageAssetType valueOf = NativeImageAssetType.valueOf(this.type_);
                        NativeImageAssetType nativeImageAssetType = valueOf;
                        if (valueOf == null) {
                            nativeImageAssetType = NativeImageAssetType.UNRECOGNIZED;
                        }
                        return nativeImageAssetType;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final int getTypeValue() {
                        return this.type_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final UnknownFieldSet getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final String getUrl() {
                        Object obj = this.url_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.url_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final ByteString getUrlBytes() {
                        Object obj = this.url_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.url_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final int getW() {
                        return this.w_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.ImageAssetOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getUrl().hashCode()) * 37) + 2) * 53) + getW()) * 37) + 3) * 53) + getH()) * 37) + 4) * 53) + this.type_;
                        int i = hashCode;
                        if (hasExt()) {
                            i = (((hashCode * 37) + 6) * 53) + getExt().hashCode();
                        }
                        int i2 = i;
                        if (getExtProtoCount() > 0) {
                            i2 = (((i * 37) + 5) * 53) + getExtProtoList().hashCode();
                        }
                        int hashCode2 = (i2 * 29) + this.unknownFields.hashCode();
                        this.memoizedHashCode = hashCode2;
                        return hashCode2;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_ImageAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(ImageAsset.class, Builder.class);
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
                        return new ImageAsset();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (!getUrlBytes().isEmpty()) {
                            GeneratedMessageV3.writeString(codedOutputStream, 1, this.url_);
                        }
                        int i = this.w_;
                        if (i != 0) {
                            codedOutputStream.writeUInt32(2, i);
                        }
                        int i2 = this.h_;
                        if (i2 != 0) {
                            codedOutputStream.writeUInt32(3, i2);
                        }
                        if (this.type_ != NativeImageAssetType.NATIVE_IMAGE_ASSET_TYPE_INVALID.getNumber()) {
                            codedOutputStream.writeEnum(4, this.type_);
                        }
                        for (int i3 = 0; i3 < this.extProto_.size(); i3++) {
                            codedOutputStream.writeMessage(5, this.extProto_.get(i3));
                        }
                        if (this.ext_ != null) {
                            codedOutputStream.writeMessage(6, getExt());
                        }
                        this.unknownFields.writeTo(codedOutputStream);
                    }
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$ImageAssetOrBuilder.class */
                public interface ImageAssetOrBuilder extends MessageOrBuilder {
                    Struct getExt();

                    StructOrBuilder getExtOrBuilder();

                    Any getExtProto(int i);

                    int getExtProtoCount();

                    List<Any> getExtProtoList();

                    AnyOrBuilder getExtProtoOrBuilder(int i);

                    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                    int getH();

                    NativeImageAssetType getType();

                    int getTypeValue();

                    String getUrl();

                    ByteString getUrlBytes();

                    int getW();

                    boolean hasExt();
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset.class */
                public static final class TitleAsset extends GeneratedMessageV3 implements TitleAssetOrBuilder {
                    public static final int EXT_FIELD_NUMBER = 4;
                    public static final int EXT_PROTO_FIELD_NUMBER = 3;
                    public static final int LEN_FIELD_NUMBER = 2;
                    public static final int TEXT_FIELD_NUMBER = 1;
                    private static final long serialVersionUID = 0;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private int len_;
                    private byte memoizedIsInitialized;
                    private volatile Object text_;
                    private static final TitleAsset DEFAULT_INSTANCE = new TitleAsset();
                    private static final Parser<TitleAsset> PARSER = new AbstractParser<TitleAsset>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAsset.1
                        @Override // com.explorestack.protobuf.Parser
                        public final TitleAsset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new TitleAsset(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAsset$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements TitleAssetOrBuilder {
                        private int bitField0_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;
                        private int len_;
                        private Object text_;

                        private Builder() {
                            this.text_ = "";
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
                            this.text_ = "";
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
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_TitleAsset_descriptor;
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
                            if (TitleAsset.alwaysUseFieldBuilders) {
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
                        public final TitleAsset build() {
                            TitleAsset buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final TitleAsset buildPartial() {
                            TitleAsset titleAsset = new TitleAsset(this);
                            titleAsset.text_ = this.text_;
                            titleAsset.len_ = this.len_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                titleAsset.ext_ = this.ext_;
                            } else {
                                titleAsset.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                titleAsset.extProto_ = this.extProto_;
                            } else {
                                titleAsset.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return titleAsset;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.text_ = "";
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

                        public final Builder clearText() {
                            this.text_ = TitleAsset.getDefaultInstance().getText();
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clone() {
                            return (Builder) super.clone();
                        }

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final TitleAsset getDefaultInstanceForType() {
                            return TitleAsset.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_TitleAsset_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final int getLen() {
                            return this.len_;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final String getText() {
                            Object obj = this.text_;
                            if (obj instanceof String) {
                                return (String) obj;
                            }
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.text_ = stringUtf8;
                            return stringUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final ByteString getTextBytes() {
                            Object obj = this.text_;
                            if (!(obj instanceof String)) {
                                return (ByteString) obj;
                            }
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.text_ = copyFromUtf8;
                            return copyFromUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_TitleAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(TitleAsset.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAsset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAsset.access$5800()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$TitleAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAsset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$TitleAsset$Builder r0 = r0.mergeFrom(r1)
                            L_0x001a:
                                r0 = r4
                                return r0
                            L_0x001c:
                                r6 = move-exception
                                r0 = r7
                                r5 = r0
                                goto L_0x0037
                            L_0x0022:
                                r5 = move-exception
                                r0 = r5
                                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$TitleAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAsset) r0     // Catch: all -> 0x001c
                                r6 = r0
                                r0 = r5
                                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                                throw r0     // Catch: all -> 0x0030
                            L_0x0030:
                                r5 = move-exception
                                r0 = r6
                                r7 = r0
                                r0 = r5
                                r6 = r0
                                r0 = r7
                                r5 = r0
                            L_0x0037:
                                r0 = r5
                                if (r0 == 0) goto L_0x0041
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$TitleAsset$Builder r0 = r0.mergeFrom(r1)
                            L_0x0041:
                                r0 = r6
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAsset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$TitleAsset$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof TitleAsset) {
                                return mergeFrom((TitleAsset) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(TitleAsset titleAsset) {
                            if (titleAsset == TitleAsset.getDefaultInstance()) {
                                return this;
                            }
                            if (!titleAsset.getText().isEmpty()) {
                                this.text_ = titleAsset.text_;
                                onChanged();
                            }
                            if (titleAsset.getLen() != 0) {
                                setLen(titleAsset.getLen());
                            }
                            if (titleAsset.hasExt()) {
                                mergeExt(titleAsset.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!titleAsset.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = titleAsset.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(titleAsset.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!titleAsset.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = titleAsset.extProto_;
                                    this.bitField0_ &= -2;
                                    if (TitleAsset.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(titleAsset.extProto_);
                                }
                            }
                            mergeUnknownFields(titleAsset.unknownFields);
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

                        public final Builder setText(String str) {
                            Objects.requireNonNull(str);
                            this.text_ = str;
                            onChanged();
                            return this;
                        }

                        public final Builder setTextBytes(ByteString byteString) {
                            Objects.requireNonNull(byteString);
                            TitleAsset.checkByteStringIsUtf8(byteString);
                            this.text_ = byteString;
                            onChanged();
                            return this;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                            return (Builder) super.setUnknownFields(unknownFieldSet);
                        }
                    }

                    private TitleAsset() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.text_ = "";
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private TitleAsset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                            this.text_ = codedInputStream.readStringRequireUtf8();
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

                    private TitleAsset(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static TitleAsset getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_TitleAsset_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(TitleAsset titleAsset) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(titleAsset);
                    }

                    public static TitleAsset parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (TitleAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static TitleAsset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (TitleAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static TitleAsset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static TitleAsset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static TitleAsset parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (TitleAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static TitleAsset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (TitleAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static TitleAsset parseFrom(InputStream inputStream) throws IOException {
                        return (TitleAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static TitleAsset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (TitleAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static TitleAsset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static TitleAsset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static TitleAsset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static TitleAsset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<TitleAsset> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof TitleAsset)) {
                            return super.equals(obj);
                        }
                        TitleAsset titleAsset = (TitleAsset) obj;
                        if (getText().equals(titleAsset.getText()) && getLen() == titleAsset.getLen() && hasExt() == titleAsset.hasExt()) {
                            return (!hasExt() || getExt().equals(titleAsset.getExt())) && getExtProtoList().equals(titleAsset.getExtProtoList()) && this.unknownFields.equals(titleAsset.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final TitleAsset getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final int getLen() {
                        return this.len_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<TitleAsset> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int computeStringSize = !getTextBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.text_) + 0 : 0;
                        int i2 = this.len_;
                        int i3 = computeStringSize;
                        int i4 = 0;
                        if (i2 != 0) {
                            i3 = computeStringSize + CodedOutputStream.computeUInt32Size(2, i2);
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final String getText() {
                        Object obj = this.text_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.text_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final ByteString getTextBytes() {
                        Object obj = this.text_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.text_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                    public final UnknownFieldSet getUnknownFields() {
                        return this.unknownFields;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.TitleAssetOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getText().hashCode()) * 37) + 2) * 53) + getLen();
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
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_TitleAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(TitleAsset.class, Builder.class);
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
                        return new TitleAsset();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (!getTextBytes().isEmpty()) {
                            GeneratedMessageV3.writeString(codedOutputStream, 1, this.text_);
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

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$TitleAssetOrBuilder.class */
                public interface TitleAssetOrBuilder extends MessageOrBuilder {
                    Struct getExt();

                    StructOrBuilder getExtOrBuilder();

                    Any getExtProto(int i);

                    int getExtProtoCount();

                    List<Any> getExtProtoList();

                    AnyOrBuilder getExtProtoOrBuilder(int i);

                    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                    int getLen();

                    String getText();

                    ByteString getTextBytes();

                    boolean hasExt();
                }

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset.class */
                public static final class VideoAsset extends GeneratedMessageV3 implements VideoAssetOrBuilder {
                    public static final int ADM_FIELD_NUMBER = 1;
                    public static final int CURL_FIELD_NUMBER = 2;
                    public static final int EXT_FIELD_NUMBER = 4;
                    public static final int EXT_PROTO_FIELD_NUMBER = 3;
                    private static final long serialVersionUID = 0;
                    private volatile Object adm_;
                    private volatile Object curl_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private byte memoizedIsInitialized;
                    private static final VideoAsset DEFAULT_INSTANCE = new VideoAsset();
                    private static final Parser<VideoAsset> PARSER = new AbstractParser<VideoAsset>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAsset.1
                        @Override // com.explorestack.protobuf.Parser
                        public final VideoAsset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                            return new VideoAsset(codedInputStream, extensionRegistryLite);
                        }
                    };

                    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAsset$Builder.class */
                    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VideoAssetOrBuilder {
                        private Object adm_;
                        private int bitField0_;
                        private Object curl_;
                        private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                        private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                        private List<Any> extProto_;
                        private Struct ext_;

                        private Builder() {
                            this.adm_ = "";
                            this.curl_ = "";
                            this.extProto_ = Collections.emptyList();
                            maybeForceBuilderInitialization();
                        }

                        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                            super(builderParent);
                            this.adm_ = "";
                            this.curl_ = "";
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
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_VideoAsset_descriptor;
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
                            if (VideoAsset.alwaysUseFieldBuilders) {
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
                        public final VideoAsset build() {
                            VideoAsset buildPartial = buildPartial();
                            if (buildPartial.isInitialized()) {
                                return buildPartial;
                            }
                            throw newUninitializedMessageException((Message) buildPartial);
                        }

                        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final VideoAsset buildPartial() {
                            VideoAsset videoAsset = new VideoAsset(this);
                            videoAsset.adm_ = this.adm_;
                            videoAsset.curl_ = this.curl_;
                            SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                            if (singleFieldBuilderV3 == null) {
                                videoAsset.ext_ = this.ext_;
                            } else {
                                videoAsset.ext_ = singleFieldBuilderV3.build();
                            }
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            if (repeatedFieldBuilderV3 == null) {
                                if ((this.bitField0_ & 1) != 0) {
                                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                    this.bitField0_ &= -2;
                                }
                                videoAsset.extProto_ = this.extProto_;
                            } else {
                                videoAsset.extProto_ = repeatedFieldBuilderV3.build();
                            }
                            onBuilt();
                            return videoAsset;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clear() {
                            super.clear();
                            this.adm_ = "";
                            this.curl_ = "";
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

                        public final Builder clearAdm() {
                            this.adm_ = VideoAsset.getDefaultInstance().getAdm();
                            onChanged();
                            return this;
                        }

                        public final Builder clearCurl() {
                            this.curl_ = VideoAsset.getDefaultInstance().getCurl();
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

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder clone() {
                            return (Builder) super.clone();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final String getAdm() {
                            Object obj = this.adm_;
                            if (obj instanceof String) {
                                return (String) obj;
                            }
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.adm_ = stringUtf8;
                            return stringUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final ByteString getAdmBytes() {
                            Object obj = this.adm_;
                            if (!(obj instanceof String)) {
                                return (ByteString) obj;
                            }
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.adm_ = copyFromUtf8;
                            return copyFromUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final String getCurl() {
                            Object obj = this.curl_;
                            if (obj instanceof String) {
                                return (String) obj;
                            }
                            String stringUtf8 = ((ByteString) obj).toStringUtf8();
                            this.curl_ = stringUtf8;
                            return stringUtf8;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final ByteString getCurlBytes() {
                            Object obj = this.curl_;
                            if (!(obj instanceof String)) {
                                return (ByteString) obj;
                            }
                            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                            this.curl_ = copyFromUtf8;
                            return copyFromUtf8;
                        }

                        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                        public final VideoAsset getDefaultInstanceForType() {
                            return VideoAsset.getDefaultInstance();
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                        public final Descriptors.Descriptor getDescriptorForType() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_VideoAsset_descriptor;
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
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

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final int getExtProtoCount() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final List<Any> getExtProtoList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                            RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                        }

                        @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                        public final boolean hasExt() {
                            return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_VideoAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(VideoAsset.class, Builder.class);
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
                        public final com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAsset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                            /*
                                r4 = this;
                                r0 = 0
                                r7 = r0
                                com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAsset.access$8600()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r1 = r5
                                r2 = r6
                                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$VideoAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAsset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                                r5 = r0
                                r0 = r5
                                if (r0 == 0) goto L_0x001a
                                r0 = r4
                                r1 = r5
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$VideoAsset$Builder r0 = r0.mergeFrom(r1)
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
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$VideoAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAsset) r0     // Catch: all -> 0x001c
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
                                com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$VideoAsset$Builder r0 = r0.mergeFrom(r1)
                            L_0x003b:
                                r0 = r5
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAsset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$Asset$VideoAsset$Builder");
                        }

                        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder mergeFrom(Message message) {
                            if (message instanceof VideoAsset) {
                                return mergeFrom((VideoAsset) message);
                            }
                            super.mergeFrom(message);
                            return this;
                        }

                        public final Builder mergeFrom(VideoAsset videoAsset) {
                            if (videoAsset == VideoAsset.getDefaultInstance()) {
                                return this;
                            }
                            if (!videoAsset.getAdm().isEmpty()) {
                                this.adm_ = videoAsset.adm_;
                                onChanged();
                            }
                            if (!videoAsset.getCurl().isEmpty()) {
                                this.curl_ = videoAsset.curl_;
                                onChanged();
                            }
                            if (videoAsset.hasExt()) {
                                mergeExt(videoAsset.getExt());
                            }
                            if (this.extProtoBuilder_ == null) {
                                if (!videoAsset.extProto_.isEmpty()) {
                                    if (this.extProto_.isEmpty()) {
                                        this.extProto_ = videoAsset.extProto_;
                                        this.bitField0_ &= -2;
                                    } else {
                                        ensureExtProtoIsMutable();
                                        this.extProto_.addAll(videoAsset.extProto_);
                                    }
                                    onChanged();
                                }
                            } else if (!videoAsset.extProto_.isEmpty()) {
                                if (this.extProtoBuilder_.isEmpty()) {
                                    this.extProtoBuilder_.dispose();
                                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                    this.extProtoBuilder_ = null;
                                    this.extProto_ = videoAsset.extProto_;
                                    this.bitField0_ &= -2;
                                    if (VideoAsset.alwaysUseFieldBuilders) {
                                        repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                    }
                                    this.extProtoBuilder_ = repeatedFieldBuilderV3;
                                } else {
                                    this.extProtoBuilder_.addAllMessages(videoAsset.extProto_);
                                }
                            }
                            mergeUnknownFields(videoAsset.unknownFields);
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

                        public final Builder setAdm(String str) {
                            Objects.requireNonNull(str);
                            this.adm_ = str;
                            onChanged();
                            return this;
                        }

                        public final Builder setAdmBytes(ByteString byteString) {
                            Objects.requireNonNull(byteString);
                            VideoAsset.checkByteStringIsUtf8(byteString);
                            this.adm_ = byteString;
                            onChanged();
                            return this;
                        }

                        public final Builder setCurl(String str) {
                            Objects.requireNonNull(str);
                            this.curl_ = str;
                            onChanged();
                            return this;
                        }

                        public final Builder setCurlBytes(ByteString byteString) {
                            Objects.requireNonNull(byteString);
                            VideoAsset.checkByteStringIsUtf8(byteString);
                            this.curl_ = byteString;
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

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
                        }

                        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                            return (Builder) super.setUnknownFields(unknownFieldSet);
                        }
                    }

                    private VideoAsset() {
                        this.memoizedIsInitialized = (byte) (-1);
                        this.adm_ = "";
                        this.curl_ = "";
                        this.extProto_ = Collections.emptyList();
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    private VideoAsset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                            this.adm_ = codedInputStream.readStringRequireUtf8();
                                        } else if (readTag == 18) {
                                            this.curl_ = codedInputStream.readStringRequireUtf8();
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

                    private VideoAsset(GeneratedMessageV3.Builder<?> builder) {
                        super(builder);
                        this.memoizedIsInitialized = (byte) (-1);
                    }

                    public static VideoAsset getDefaultInstance() {
                        return DEFAULT_INSTANCE;
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_VideoAsset_descriptor;
                    }

                    public static Builder newBuilder() {
                        return DEFAULT_INSTANCE.toBuilder();
                    }

                    public static Builder newBuilder(VideoAsset videoAsset) {
                        return DEFAULT_INSTANCE.toBuilder().mergeFrom(videoAsset);
                    }

                    public static VideoAsset parseDelimitedFrom(InputStream inputStream) throws IOException {
                        return (VideoAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                    }

                    public static VideoAsset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (VideoAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static VideoAsset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString);
                    }

                    public static VideoAsset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteString, extensionRegistryLite);
                    }

                    public static VideoAsset parseFrom(CodedInputStream codedInputStream) throws IOException {
                        return (VideoAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                    }

                    public static VideoAsset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (VideoAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                    }

                    public static VideoAsset parseFrom(InputStream inputStream) throws IOException {
                        return (VideoAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                    }

                    public static VideoAsset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                        return (VideoAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                    }

                    public static VideoAsset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer);
                    }

                    public static VideoAsset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                    }

                    public static VideoAsset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr);
                    }

                    public static VideoAsset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return PARSER.parseFrom(bArr, extensionRegistryLite);
                    }

                    public static Parser<VideoAsset> parser() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final boolean equals(Object obj) {
                        if (obj == this) {
                            return true;
                        }
                        if (!(obj instanceof VideoAsset)) {
                            return super.equals(obj);
                        }
                        VideoAsset videoAsset = (VideoAsset) obj;
                        if (getAdm().equals(videoAsset.getAdm()) && getCurl().equals(videoAsset.getCurl()) && hasExt() == videoAsset.hasExt()) {
                            return (!hasExt() || getExt().equals(videoAsset.getExt())) && getExtProtoList().equals(videoAsset.getExtProtoList()) && this.unknownFields.equals(videoAsset.unknownFields);
                        }
                        return false;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final String getAdm() {
                        Object obj = this.adm_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.adm_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final ByteString getAdmBytes() {
                        Object obj = this.adm_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.adm_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final String getCurl() {
                        Object obj = this.curl_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.curl_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final ByteString getCurlBytes() {
                        Object obj = this.curl_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.curl_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final VideoAsset getDefaultInstanceForType() {
                        return DEFAULT_INSTANCE;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final Struct getExt() {
                        Struct struct = this.ext_;
                        Struct struct2 = struct;
                        if (struct == null) {
                            struct2 = Struct.getDefaultInstance();
                        }
                        return struct2;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final StructOrBuilder getExtOrBuilder() {
                        return getExt();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final Any getExtProto(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final int getExtProtoCount() {
                        return this.extProto_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final List<Any> getExtProtoList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        return this.extProto_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        return this.extProto_;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Parser<VideoAsset> getParserForType() {
                        return PARSER;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final int getSerializedSize() {
                        int i = this.memoizedSize;
                        if (i != -1) {
                            return i;
                        }
                        int computeStringSize = !getAdmBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.adm_) + 0 : 0;
                        int i2 = computeStringSize;
                        int i3 = 0;
                        if (!getCurlBytes().isEmpty()) {
                            i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.curl_);
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.Asset.VideoAssetOrBuilder
                    public final boolean hasExt() {
                        return this.ext_ != null;
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                    public final int hashCode() {
                        if (this.memoizedHashCode != 0) {
                            return this.memoizedHashCode;
                        }
                        int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getAdm().hashCode()) * 37) + 2) * 53) + getCurl().hashCode();
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
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_VideoAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(VideoAsset.class, Builder.class);
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
                        return new VideoAsset();
                    }

                    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                    public final Builder toBuilder() {
                        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                        if (!getAdmBytes().isEmpty()) {
                            GeneratedMessageV3.writeString(codedOutputStream, 1, this.adm_);
                        }
                        if (!getCurlBytes().isEmpty()) {
                            GeneratedMessageV3.writeString(codedOutputStream, 2, this.curl_);
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

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Asset$VideoAssetOrBuilder.class */
                public interface VideoAssetOrBuilder extends MessageOrBuilder {
                    String getAdm();

                    ByteString getAdmBytes();

                    String getCurl();

                    ByteString getCurlBytes();

                    Struct getExt();

                    StructOrBuilder getExtOrBuilder();

                    Any getExtProto(int i);

                    int getExtProtoCount();

                    List<Any> getExtProtoList();

                    AnyOrBuilder getExtProtoOrBuilder(int i);

                    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                    boolean hasExt();
                }

                private Asset() {
                    this.memoizedIsInitialized = (byte) (-1);
                    this.extProto_ = Collections.emptyList();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private Asset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                        if (readTag == 8) {
                                            this.id_ = codedInputStream.readUInt32();
                                        } else if (readTag != 16) {
                                            LinkAsset.Builder builder = null;
                                            DataAsset.Builder builder2 = null;
                                            VideoAsset.Builder builder3 = null;
                                            ImageAsset.Builder builder4 = null;
                                            TitleAsset.Builder builder5 = null;
                                            Struct.Builder builder6 = null;
                                            if (readTag == 26) {
                                                TitleAsset titleAsset = this.title_;
                                                builder5 = titleAsset != null ? titleAsset.toBuilder() : builder5;
                                                TitleAsset titleAsset2 = (TitleAsset) codedInputStream.readMessage(TitleAsset.parser(), extensionRegistryLite);
                                                this.title_ = titleAsset2;
                                                if (builder5 != null) {
                                                    builder5.mergeFrom(titleAsset2);
                                                    this.title_ = builder5.buildPartial();
                                                }
                                            } else if (readTag == 34) {
                                                ImageAsset imageAsset = this.image_;
                                                builder4 = imageAsset != null ? imageAsset.toBuilder() : builder4;
                                                ImageAsset imageAsset2 = (ImageAsset) codedInputStream.readMessage(ImageAsset.parser(), extensionRegistryLite);
                                                this.image_ = imageAsset2;
                                                if (builder4 != null) {
                                                    builder4.mergeFrom(imageAsset2);
                                                    this.image_ = builder4.buildPartial();
                                                }
                                            } else if (readTag == 42) {
                                                VideoAsset videoAsset = this.video_;
                                                builder3 = videoAsset != null ? videoAsset.toBuilder() : builder3;
                                                VideoAsset videoAsset2 = (VideoAsset) codedInputStream.readMessage(VideoAsset.parser(), extensionRegistryLite);
                                                this.video_ = videoAsset2;
                                                if (builder3 != null) {
                                                    builder3.mergeFrom(videoAsset2);
                                                    this.video_ = builder3.buildPartial();
                                                }
                                            } else if (readTag == 50) {
                                                DataAsset dataAsset = this.data_;
                                                builder2 = dataAsset != null ? dataAsset.toBuilder() : builder2;
                                                DataAsset dataAsset2 = (DataAsset) codedInputStream.readMessage(DataAsset.parser(), extensionRegistryLite);
                                                this.data_ = dataAsset2;
                                                if (builder2 != null) {
                                                    builder2.mergeFrom(dataAsset2);
                                                    this.data_ = builder2.buildPartial();
                                                }
                                            } else if (readTag == 58) {
                                                LinkAsset linkAsset = this.link_;
                                                builder = linkAsset != null ? linkAsset.toBuilder() : builder;
                                                LinkAsset linkAsset2 = (LinkAsset) codedInputStream.readMessage(LinkAsset.parser(), extensionRegistryLite);
                                                this.link_ = linkAsset2;
                                                if (builder != null) {
                                                    builder.mergeFrom(linkAsset2);
                                                    this.link_ = builder.buildPartial();
                                                }
                                            } else if (readTag == 66) {
                                                z2 = z2;
                                                if (!z2 || !true) {
                                                    this.extProto_ = new ArrayList();
                                                    z2 |= true;
                                                }
                                                this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                            } else if (readTag == 74) {
                                                Struct struct = this.ext_;
                                                builder6 = struct != null ? struct.toBuilder() : builder6;
                                                Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                                                this.ext_ = struct2;
                                                if (builder6 != null) {
                                                    builder6.mergeFrom(struct2);
                                                    this.ext_ = builder6.buildPartial();
                                                }
                                            } else if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                            }
                                        } else {
                                            this.req_ = codedInputStream.readBool();
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

                private Asset(GeneratedMessageV3.Builder<?> builder) {
                    super(builder);
                    this.memoizedIsInitialized = (byte) (-1);
                }

                public static Asset getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(Asset asset) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(asset);
                }

                public static Asset parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (Asset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static Asset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Asset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static Asset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static Asset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static Asset parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (Asset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                }

                public static Asset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Asset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                public static Asset parseFrom(InputStream inputStream) throws IOException {
                    return (Asset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static Asset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (Asset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static Asset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static Asset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static Asset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static Asset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static Parser<Asset> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof Asset)) {
                        return super.equals(obj);
                    }
                    Asset asset = (Asset) obj;
                    if (getId() != asset.getId() || getReq() != asset.getReq() || hasTitle() != asset.hasTitle()) {
                        return false;
                    }
                    if ((hasTitle() && !getTitle().equals(asset.getTitle())) || hasImage() != asset.hasImage()) {
                        return false;
                    }
                    if ((hasImage() && !getImage().equals(asset.getImage())) || hasVideo() != asset.hasVideo()) {
                        return false;
                    }
                    if ((hasVideo() && !getVideo().equals(asset.getVideo())) || hasData() != asset.hasData()) {
                        return false;
                    }
                    if ((hasData() && !getData().equals(asset.getData())) || hasLink() != asset.hasLink()) {
                        return false;
                    }
                    if ((!hasLink() || getLink().equals(asset.getLink())) && hasExt() == asset.hasExt()) {
                        return (!hasExt() || getExt().equals(asset.getExt())) && getExtProtoList().equals(asset.getExtProtoList()) && this.unknownFields.equals(asset.unknownFields);
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final DataAsset getData() {
                    DataAsset dataAsset = this.data_;
                    DataAsset dataAsset2 = dataAsset;
                    if (dataAsset == null) {
                        dataAsset2 = DataAsset.getDefaultInstance();
                    }
                    return dataAsset2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final DataAssetOrBuilder getDataOrBuilder() {
                    return getData();
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Asset getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final Struct getExt() {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final StructOrBuilder getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final Any getExtProto(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final int getId() {
                    return this.id_;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final ImageAsset getImage() {
                    ImageAsset imageAsset = this.image_;
                    ImageAsset imageAsset2 = imageAsset;
                    if (imageAsset == null) {
                        imageAsset2 = ImageAsset.getDefaultInstance();
                    }
                    return imageAsset2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final ImageAssetOrBuilder getImageOrBuilder() {
                    return getImage();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final LinkAsset getLink() {
                    LinkAsset linkAsset = this.link_;
                    LinkAsset linkAsset2 = linkAsset;
                    if (linkAsset == null) {
                        linkAsset2 = LinkAsset.getDefaultInstance();
                    }
                    return linkAsset2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final LinkAssetOrBuilder getLinkOrBuilder() {
                    return getLink();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Parser<Asset> getParserForType() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
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
                    if (this.image_ != null) {
                        i5 = i4 + CodedOutputStream.computeMessageSize(4, getImage());
                    }
                    int i6 = i5;
                    if (this.video_ != null) {
                        i6 = i5 + CodedOutputStream.computeMessageSize(5, getVideo());
                    }
                    int i7 = i6;
                    if (this.data_ != null) {
                        i7 = i6 + CodedOutputStream.computeMessageSize(6, getData());
                    }
                    int i8 = i7;
                    int i9 = 0;
                    if (this.link_ != null) {
                        i8 = i7 + CodedOutputStream.computeMessageSize(7, getLink());
                        i9 = 0;
                    }
                    while (i9 < this.extProto_.size()) {
                        i8 += CodedOutputStream.computeMessageSize(8, this.extProto_.get(i9));
                        i9++;
                    }
                    int i10 = i8;
                    if (this.ext_ != null) {
                        i10 = i8 + CodedOutputStream.computeMessageSize(9, getExt());
                    }
                    int serializedSize = i10 + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final TitleAsset getTitle() {
                    TitleAsset titleAsset = this.title_;
                    TitleAsset titleAsset2 = titleAsset;
                    if (titleAsset == null) {
                        titleAsset2 = TitleAsset.getDefaultInstance();
                    }
                    return titleAsset2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final TitleAssetOrBuilder getTitleOrBuilder() {
                    return getTitle();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final UnknownFieldSet getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final VideoAsset getVideo() {
                    VideoAsset videoAsset = this.video_;
                    VideoAsset videoAsset2 = videoAsset;
                    if (videoAsset == null) {
                        videoAsset2 = VideoAsset.getDefaultInstance();
                    }
                    return videoAsset2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final VideoAssetOrBuilder getVideoOrBuilder() {
                    return getVideo();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final boolean hasData() {
                    return this.data_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final boolean hasExt() {
                    return this.ext_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final boolean hasImage() {
                    return this.image_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final boolean hasLink() {
                    return this.link_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
                public final boolean hasTitle() {
                    return this.title_ != null;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.AssetOrBuilder
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
                    if (hasImage()) {
                        i2 = (((i * 37) + 4) * 53) + getImage().hashCode();
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
                    if (hasLink()) {
                        i5 = (((i4 * 37) + 7) * 53) + getLink().hashCode();
                    }
                    int i6 = i5;
                    if (hasExt()) {
                        i6 = (((i5 * 37) + 9) * 53) + getExt().hashCode();
                    }
                    int i7 = i6;
                    if (getExtProtoCount() > 0) {
                        i7 = (((i6 * 37) + 8) * 53) + getExtProtoList().hashCode();
                    }
                    int hashCode2 = (i7 * 29) + this.unknownFields.hashCode();
                    this.memoizedHashCode = hashCode2;
                    return hashCode2;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_Asset_fieldAccessorTable.ensureFieldAccessorsInitialized(Asset.class, Builder.class);
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
                    return new Asset();
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
                    if (this.image_ != null) {
                        codedOutputStream.writeMessage(4, getImage());
                    }
                    if (this.video_ != null) {
                        codedOutputStream.writeMessage(5, getVideo());
                    }
                    if (this.data_ != null) {
                        codedOutputStream.writeMessage(6, getData());
                    }
                    if (this.link_ != null) {
                        codedOutputStream.writeMessage(7, getLink());
                    }
                    for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
                        codedOutputStream.writeMessage(8, this.extProto_.get(i2));
                    }
                    if (this.ext_ != null) {
                        codedOutputStream.writeMessage(9, getExt());
                    }
                    this.unknownFields.writeTo(codedOutputStream);
                }
            }

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$AssetOrBuilder.class */
            public interface AssetOrBuilder extends MessageOrBuilder {
                Asset.DataAsset getData();

                Asset.DataAssetOrBuilder getDataOrBuilder();

                Struct getExt();

                StructOrBuilder getExtOrBuilder();

                Any getExtProto(int i);

                int getExtProtoCount();

                List<Any> getExtProtoList();

                AnyOrBuilder getExtProtoOrBuilder(int i);

                List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                int getId();

                Asset.ImageAsset getImage();

                Asset.ImageAssetOrBuilder getImageOrBuilder();

                LinkAsset getLink();

                LinkAssetOrBuilder getLinkOrBuilder();

                boolean getReq();

                Asset.TitleAsset getTitle();

                Asset.TitleAssetOrBuilder getTitleOrBuilder();

                Asset.VideoAsset getVideo();

                Asset.VideoAssetOrBuilder getVideoOrBuilder();

                boolean hasData();

                boolean hasExt();

                boolean hasImage();

                boolean hasLink();

                boolean hasTitle();

                boolean hasVideo();
            }

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$Builder.class */
            public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements NativeOrBuilder {
                private RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> assetBuilder_;
                private List<Asset> asset_;
                private int bitField0_;
                private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                private List<Any> extProto_;
                private Struct ext_;
                private SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> linkBuilder_;
                private LinkAsset link_;

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

                private RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> getAssetFieldBuilder() {
                    if (this.assetBuilder_ == null) {
                        List<Asset> list = this.asset_;
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
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_descriptor;
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

                private SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> getLinkFieldBuilder() {
                    if (this.linkBuilder_ == null) {
                        this.linkBuilder_ = new SingleFieldBuilderV3<>(getLink(), getParentForChildren(), isClean());
                        this.link_ = null;
                    }
                    return this.linkBuilder_;
                }

                private void maybeForceBuilderInitialization() {
                    if (Native.alwaysUseFieldBuilders) {
                        getAssetFieldBuilder();
                        getExtProtoFieldBuilder();
                    }
                }

                public final Builder addAllAsset(Iterable<? extends Asset> iterable) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
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

                public final Builder addAsset(int i, Asset.Builder builder) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.add(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder addAsset(int i, Asset asset) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(asset);
                        ensureAssetIsMutable();
                        this.asset_.add(i, asset);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(i, asset);
                    }
                    return this;
                }

                public final Builder addAsset(Asset.Builder builder) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.add(builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(builder.build());
                    }
                    return this;
                }

                public final Builder addAsset(Asset asset) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(asset);
                        ensureAssetIsMutable();
                        this.asset_.add(asset);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.addMessage(asset);
                    }
                    return this;
                }

                public final Asset.Builder addAssetBuilder() {
                    return getAssetFieldBuilder().addBuilder(Asset.getDefaultInstance());
                }

                public final Asset.Builder addAssetBuilder(int i) {
                    return getAssetFieldBuilder().addBuilder(i, Asset.getDefaultInstance());
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
                public final Native build() {
                    Native buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw newUninitializedMessageException((Message) buildPartial);
                }

                @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Native buildPartial() {
                    Native r0 = new Native(this);
                    SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        r0.link_ = this.link_;
                    } else {
                        r0.link_ = singleFieldBuilderV3.build();
                    }
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        if ((this.bitField0_ & 1) != 0) {
                            this.asset_ = Collections.unmodifiableList(this.asset_);
                            this.bitField0_ &= -2;
                        }
                        r0.asset_ = this.asset_;
                    } else {
                        r0.asset_ = repeatedFieldBuilderV3.build();
                    }
                    SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV32 = this.extBuilder_;
                    if (singleFieldBuilderV32 == null) {
                        r0.ext_ = this.ext_;
                    } else {
                        r0.ext_ = singleFieldBuilderV32.build();
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV32 = this.extProtoBuilder_;
                    if (repeatedFieldBuilderV32 == null) {
                        if ((this.bitField0_ & 2) != 0) {
                            this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            this.bitField0_ &= -3;
                        }
                        r0.extProto_ = this.extProto_;
                    } else {
                        r0.extProto_ = repeatedFieldBuilderV32.build();
                    }
                    onBuilt();
                    return r0;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder clear() {
                    super.clear();
                    if (this.linkBuilder_ == null) {
                        this.link_ = null;
                    } else {
                        this.link_ = null;
                        this.linkBuilder_ = null;
                    }
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
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
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
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

                public final Builder clearLink() {
                    if (this.linkBuilder_ == null) {
                        this.link_ = null;
                        onChanged();
                    } else {
                        this.link_ = null;
                        this.linkBuilder_ = null;
                    }
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final Asset getAsset(int i) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.asset_.get(i) : repeatedFieldBuilderV3.getMessage(i);
                }

                public final Asset.Builder getAssetBuilder(int i) {
                    return getAssetFieldBuilder().getBuilder(i);
                }

                public final List<Asset.Builder> getAssetBuilderList() {
                    return getAssetFieldBuilder().getBuilderList();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final int getAssetCount() {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.asset_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final List<Asset> getAssetList() {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.asset_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final AssetOrBuilder getAssetOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.asset_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final List<? extends AssetOrBuilder> getAssetOrBuilderList() {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.asset_);
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final Native getDefaultInstanceForType() {
                    return Native.getDefaultInstance();
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                public final Descriptors.Descriptor getDescriptorForType() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_descriptor;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
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

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final int getExtProtoCount() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final List<Any> getExtProtoList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                    return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final LinkAsset getLink() {
                    SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessage();
                    }
                    LinkAsset linkAsset = this.link_;
                    LinkAsset linkAsset2 = linkAsset;
                    if (linkAsset == null) {
                        linkAsset2 = LinkAsset.getDefaultInstance();
                    }
                    return linkAsset2;
                }

                public final LinkAsset.Builder getLinkBuilder() {
                    onChanged();
                    return getLinkFieldBuilder().getBuilder();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final LinkAssetOrBuilder getLinkOrBuilder() {
                    SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                    if (singleFieldBuilderV3 != null) {
                        return singleFieldBuilderV3.getMessageOrBuilder();
                    }
                    LinkAsset linkAsset = this.link_;
                    LinkAsset linkAsset2 = linkAsset;
                    if (linkAsset == null) {
                        linkAsset2 = LinkAsset.getDefaultInstance();
                    }
                    return linkAsset2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final boolean hasExt() {
                    return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
                public final boolean hasLink() {
                    return (this.linkBuilder_ == null && this.link_ == null) ? false : true;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_fieldAccessorTable.ensureFieldAccessorsInitialized(Native.class, Builder.class);
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
                public final com.explorestack.protobuf.adcom.Ad.Display.Native.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                    /*
                        r4 = this;
                        r0 = 0
                        r7 = r0
                        com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.access$13200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r1 = r5
                        r2 = r6
                        java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        com.explorestack.protobuf.adcom.Ad$Display$Native r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                        r5 = r0
                        r0 = r5
                        if (r0 == 0) goto L_0x001a
                        r0 = r4
                        r1 = r5
                        com.explorestack.protobuf.adcom.Ad$Display$Native$Builder r0 = r0.mergeFrom(r1)
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
                        com.explorestack.protobuf.adcom.Ad$Display$Native r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native) r0     // Catch: all -> 0x001c
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
                        com.explorestack.protobuf.adcom.Ad$Display$Native$Builder r0 = r0.mergeFrom(r1)
                    L_0x003b:
                        r0 = r5
                        throw r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$Builder");
                }

                @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeFrom(Message message) {
                    if (message instanceof Native) {
                        return mergeFrom((Native) message);
                    }
                    super.mergeFrom(message);
                    return this;
                }

                public final Builder mergeFrom(Native r5) {
                    if (r5 == Native.getDefaultInstance()) {
                        return this;
                    }
                    if (r5.hasLink()) {
                        mergeLink(r5.getLink());
                    }
                    RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                    if (this.assetBuilder_ == null) {
                        if (!r5.asset_.isEmpty()) {
                            if (this.asset_.isEmpty()) {
                                this.asset_ = r5.asset_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureAssetIsMutable();
                                this.asset_.addAll(r5.asset_);
                            }
                            onChanged();
                        }
                    } else if (!r5.asset_.isEmpty()) {
                        if (this.assetBuilder_.isEmpty()) {
                            this.assetBuilder_.dispose();
                            this.assetBuilder_ = null;
                            this.asset_ = r5.asset_;
                            this.bitField0_ &= -2;
                            this.assetBuilder_ = Native.alwaysUseFieldBuilders ? getAssetFieldBuilder() : null;
                        } else {
                            this.assetBuilder_.addAllMessages(r5.asset_);
                        }
                    }
                    if (r5.hasExt()) {
                        mergeExt(r5.getExt());
                    }
                    if (this.extProtoBuilder_ == null) {
                        if (!r5.extProto_.isEmpty()) {
                            if (this.extProto_.isEmpty()) {
                                this.extProto_ = r5.extProto_;
                                this.bitField0_ &= -3;
                            } else {
                                ensureExtProtoIsMutable();
                                this.extProto_.addAll(r5.extProto_);
                            }
                            onChanged();
                        }
                    } else if (!r5.extProto_.isEmpty()) {
                        if (this.extProtoBuilder_.isEmpty()) {
                            this.extProtoBuilder_.dispose();
                            this.extProtoBuilder_ = null;
                            this.extProto_ = r5.extProto_;
                            this.bitField0_ &= -3;
                            if (Native.alwaysUseFieldBuilders) {
                                repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                            }
                            this.extProtoBuilder_ = repeatedFieldBuilderV3;
                        } else {
                            this.extProtoBuilder_.addAllMessages(r5.extProto_);
                        }
                    }
                    mergeUnknownFields(r5.unknownFields);
                    onChanged();
                    return this;
                }

                public final Builder mergeLink(LinkAsset linkAsset) {
                    SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        LinkAsset linkAsset2 = this.link_;
                        if (linkAsset2 != null) {
                            this.link_ = LinkAsset.newBuilder(linkAsset2).mergeFrom(linkAsset).buildPartial();
                        } else {
                            this.link_ = linkAsset;
                        }
                        onChanged();
                    } else {
                        singleFieldBuilderV3.mergeFrom(linkAsset);
                    }
                    return this;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                    return (Builder) super.mergeUnknownFields(unknownFieldSet);
                }

                public final Builder removeAsset(int i) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
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

                public final Builder setAsset(int i, Asset.Builder builder) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        ensureAssetIsMutable();
                        this.asset_.set(i, builder.build());
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, builder.build());
                    }
                    return this;
                }

                public final Builder setAsset(int i, Asset asset) {
                    RepeatedFieldBuilderV3<Asset, Asset.Builder, AssetOrBuilder> repeatedFieldBuilderV3 = this.assetBuilder_;
                    if (repeatedFieldBuilderV3 == null) {
                        Objects.requireNonNull(asset);
                        ensureAssetIsMutable();
                        this.asset_.set(i, asset);
                        onChanged();
                    } else {
                        repeatedFieldBuilderV3.setMessage(i, asset);
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

                public final Builder setLink(LinkAsset.Builder builder) {
                    SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        this.link_ = builder.build();
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(builder.build());
                    }
                    return this;
                }

                public final Builder setLink(LinkAsset linkAsset) {
                    SingleFieldBuilderV3<LinkAsset, LinkAsset.Builder, LinkAssetOrBuilder> singleFieldBuilderV3 = this.linkBuilder_;
                    if (singleFieldBuilderV3 == null) {
                        Objects.requireNonNull(linkAsset);
                        this.link_ = linkAsset;
                        onChanged();
                    } else {
                        singleFieldBuilderV3.setMessage(linkAsset);
                    }
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

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset.class */
            public static final class LinkAsset extends GeneratedMessageV3 implements LinkAssetOrBuilder {
                public static final int EXT_FIELD_NUMBER = 5;
                public static final int EXT_PROTO_FIELD_NUMBER = 4;
                public static final int TRKR_FIELD_NUMBER = 3;
                public static final int URLFB_FIELD_NUMBER = 2;
                public static final int URL_FIELD_NUMBER = 1;
                private static final long serialVersionUID = 0;
                private List<Any> extProto_;
                private Struct ext_;
                private byte memoizedIsInitialized;
                private LazyStringList trkr_;
                private volatile Object url_;
                private volatile Object urlfb_;
                private static final LinkAsset DEFAULT_INSTANCE = new LinkAsset();
                private static final Parser<LinkAsset> PARSER = new AbstractParser<LinkAsset>() { // from class: com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAsset.1
                    @Override // com.explorestack.protobuf.Parser
                    public final LinkAsset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                        return new LinkAsset(codedInputStream, extensionRegistryLite);
                    }
                };

                /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$LinkAsset$Builder.class */
                public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements LinkAssetOrBuilder {
                    private int bitField0_;
                    private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
                    private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
                    private List<Any> extProto_;
                    private Struct ext_;
                    private LazyStringList trkr_;
                    private Object url_;
                    private Object urlfb_;

                    private Builder() {
                        this.url_ = "";
                        this.urlfb_ = "";
                        this.trkr_ = LazyStringArrayList.EMPTY;
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                        super(builderParent);
                        this.url_ = "";
                        this.urlfb_ = "";
                        this.trkr_ = LazyStringArrayList.EMPTY;
                        this.extProto_ = Collections.emptyList();
                        maybeForceBuilderInitialization();
                    }

                    private void ensureExtProtoIsMutable() {
                        if ((this.bitField0_ & 2) == 0) {
                            this.extProto_ = new ArrayList(this.extProto_);
                            this.bitField0_ |= 2;
                        }
                    }

                    private void ensureTrkrIsMutable() {
                        if ((this.bitField0_ & 1) == 0) {
                            this.trkr_ = new LazyStringArrayList(this.trkr_);
                            this.bitField0_ |= 1;
                        }
                    }

                    public static final Descriptors.Descriptor getDescriptor() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_LinkAsset_descriptor;
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
                        if (LinkAsset.alwaysUseFieldBuilders) {
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

                    public final Builder addAllTrkr(Iterable<String> iterable) {
                        ensureTrkrIsMutable();
                        AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.trkr_);
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

                    public final Builder addTrkr(String str) {
                        Objects.requireNonNull(str);
                        ensureTrkrIsMutable();
                        this.trkr_.add(str);
                        onChanged();
                        return this;
                    }

                    public final Builder addTrkrBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        LinkAsset.checkByteStringIsUtf8(byteString);
                        ensureTrkrIsMutable();
                        this.trkr_.add(byteString);
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final LinkAsset build() {
                        LinkAsset buildPartial = buildPartial();
                        if (buildPartial.isInitialized()) {
                            return buildPartial;
                        }
                        throw newUninitializedMessageException((Message) buildPartial);
                    }

                    @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final LinkAsset buildPartial() {
                        LinkAsset linkAsset = new LinkAsset(this);
                        linkAsset.url_ = this.url_;
                        linkAsset.urlfb_ = this.urlfb_;
                        if ((this.bitField0_ & 1) != 0) {
                            this.trkr_ = this.trkr_.getUnmodifiableView();
                            this.bitField0_ &= -2;
                        }
                        linkAsset.trkr_ = this.trkr_;
                        SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                        if (singleFieldBuilderV3 == null) {
                            linkAsset.ext_ = this.ext_;
                        } else {
                            linkAsset.ext_ = singleFieldBuilderV3.build();
                        }
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        if (repeatedFieldBuilderV3 == null) {
                            if ((this.bitField0_ & 2) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                                this.bitField0_ &= -3;
                            }
                            linkAsset.extProto_ = this.extProto_;
                        } else {
                            linkAsset.extProto_ = repeatedFieldBuilderV3.build();
                        }
                        onBuilt();
                        return linkAsset;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clear() {
                        super.clear();
                        this.url_ = "";
                        this.urlfb_ = "";
                        this.trkr_ = LazyStringArrayList.EMPTY;
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

                    public final Builder clearTrkr() {
                        this.trkr_ = LazyStringArrayList.EMPTY;
                        this.bitField0_ &= -2;
                        onChanged();
                        return this;
                    }

                    public final Builder clearUrl() {
                        this.url_ = LinkAsset.getDefaultInstance().getUrl();
                        onChanged();
                        return this;
                    }

                    public final Builder clearUrlfb() {
                        this.urlfb_ = LinkAsset.getDefaultInstance().getUrlfb();
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder clone() {
                        return (Builder) super.clone();
                    }

                    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                    public final LinkAsset getDefaultInstanceForType() {
                        return LinkAsset.getDefaultInstance();
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
                    public final Descriptors.Descriptor getDescriptorForType() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_LinkAsset_descriptor;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
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

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final int getExtProtoCount() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final List<Any> getExtProtoList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                        return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final String getTrkr(int i) {
                        return (String) this.trkr_.get(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final ByteString getTrkrBytes(int i) {
                        return this.trkr_.getByteString(i);
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final int getTrkrCount() {
                        return this.trkr_.size();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final ProtocolStringList getTrkrList() {
                        return this.trkr_.getUnmodifiableView();
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final String getUrl() {
                        Object obj = this.url_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.url_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final ByteString getUrlBytes() {
                        Object obj = this.url_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.url_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final String getUrlfb() {
                        Object obj = this.urlfb_;
                        if (obj instanceof String) {
                            return (String) obj;
                        }
                        String stringUtf8 = ((ByteString) obj).toStringUtf8();
                        this.urlfb_ = stringUtf8;
                        return stringUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final ByteString getUrlfbBytes() {
                        Object obj = this.urlfb_;
                        if (!(obj instanceof String)) {
                            return (ByteString) obj;
                        }
                        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                        this.urlfb_ = copyFromUtf8;
                        return copyFromUtf8;
                    }

                    @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                    public final boolean hasExt() {
                        return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
                    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_LinkAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(LinkAsset.class, Builder.class);
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
                    public final com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAsset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                        /*
                            r4 = this;
                            r0 = 0
                            r7 = r0
                            com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAsset.access$4300()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r1 = r5
                            r2 = r6
                            java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            com.explorestack.protobuf.adcom.Ad$Display$Native$LinkAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAsset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                            r5 = r0
                            r0 = r5
                            if (r0 == 0) goto L_0x001a
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.adcom.Ad$Display$Native$LinkAsset$Builder r0 = r0.mergeFrom(r1)
                        L_0x001a:
                            r0 = r4
                            return r0
                        L_0x001c:
                            r6 = move-exception
                            r0 = r7
                            r5 = r0
                            goto L_0x0037
                        L_0x0022:
                            r5 = move-exception
                            r0 = r5
                            com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                            com.explorestack.protobuf.adcom.Ad$Display$Native$LinkAsset r0 = (com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAsset) r0     // Catch: all -> 0x001c
                            r6 = r0
                            r0 = r5
                            java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                            throw r0     // Catch: all -> 0x0030
                        L_0x0030:
                            r5 = move-exception
                            r0 = r6
                            r7 = r0
                            r0 = r5
                            r6 = r0
                            r0 = r7
                            r5 = r0
                        L_0x0037:
                            r0 = r5
                            if (r0 == 0) goto L_0x0041
                            r0 = r4
                            r1 = r5
                            com.explorestack.protobuf.adcom.Ad$Display$Native$LinkAsset$Builder r0 = r0.mergeFrom(r1)
                        L_0x0041:
                            r0 = r6
                            throw r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAsset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Display$Native$LinkAsset$Builder");
                    }

                    @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder mergeFrom(Message message) {
                        if (message instanceof LinkAsset) {
                            return mergeFrom((LinkAsset) message);
                        }
                        super.mergeFrom(message);
                        return this;
                    }

                    public final Builder mergeFrom(LinkAsset linkAsset) {
                        if (linkAsset == LinkAsset.getDefaultInstance()) {
                            return this;
                        }
                        if (!linkAsset.getUrl().isEmpty()) {
                            this.url_ = linkAsset.url_;
                            onChanged();
                        }
                        if (!linkAsset.getUrlfb().isEmpty()) {
                            this.urlfb_ = linkAsset.urlfb_;
                            onChanged();
                        }
                        if (!linkAsset.trkr_.isEmpty()) {
                            if (this.trkr_.isEmpty()) {
                                this.trkr_ = linkAsset.trkr_;
                                this.bitField0_ &= -2;
                            } else {
                                ensureTrkrIsMutable();
                                this.trkr_.addAll(linkAsset.trkr_);
                            }
                            onChanged();
                        }
                        if (linkAsset.hasExt()) {
                            mergeExt(linkAsset.getExt());
                        }
                        if (this.extProtoBuilder_ == null) {
                            if (!linkAsset.extProto_.isEmpty()) {
                                if (this.extProto_.isEmpty()) {
                                    this.extProto_ = linkAsset.extProto_;
                                    this.bitField0_ &= -3;
                                } else {
                                    ensureExtProtoIsMutable();
                                    this.extProto_.addAll(linkAsset.extProto_);
                                }
                                onChanged();
                            }
                        } else if (!linkAsset.extProto_.isEmpty()) {
                            if (this.extProtoBuilder_.isEmpty()) {
                                this.extProtoBuilder_.dispose();
                                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                                this.extProtoBuilder_ = null;
                                this.extProto_ = linkAsset.extProto_;
                                this.bitField0_ &= -3;
                                if (LinkAsset.alwaysUseFieldBuilders) {
                                    repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                                }
                                this.extProtoBuilder_ = repeatedFieldBuilderV3;
                            } else {
                                this.extProtoBuilder_.addAllMessages(linkAsset.extProto_);
                            }
                        }
                        mergeUnknownFields(linkAsset.unknownFields);
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

                    public final Builder setTrkr(int i, String str) {
                        Objects.requireNonNull(str);
                        ensureTrkrIsMutable();
                        this.trkr_.set(i, str);
                        onChanged();
                        return this;
                    }

                    @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
                    public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                        return (Builder) super.setUnknownFields(unknownFieldSet);
                    }

                    public final Builder setUrl(String str) {
                        Objects.requireNonNull(str);
                        this.url_ = str;
                        onChanged();
                        return this;
                    }

                    public final Builder setUrlBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        LinkAsset.checkByteStringIsUtf8(byteString);
                        this.url_ = byteString;
                        onChanged();
                        return this;
                    }

                    public final Builder setUrlfb(String str) {
                        Objects.requireNonNull(str);
                        this.urlfb_ = str;
                        onChanged();
                        return this;
                    }

                    public final Builder setUrlfbBytes(ByteString byteString) {
                        Objects.requireNonNull(byteString);
                        LinkAsset.checkByteStringIsUtf8(byteString);
                        this.urlfb_ = byteString;
                        onChanged();
                        return this;
                    }
                }

                private LinkAsset() {
                    this.memoizedIsInitialized = (byte) (-1);
                    this.url_ = "";
                    this.urlfb_ = "";
                    this.trkr_ = LazyStringArrayList.EMPTY;
                    this.extProto_ = Collections.emptyList();
                }

                /* JADX WARN: Multi-variable type inference failed */
                private LinkAsset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                        this.url_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 18) {
                                        this.urlfb_ = codedInputStream.readStringRequireUtf8();
                                    } else if (readTag == 26) {
                                        String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                        i = i;
                                        if ((i & 1) == 0) {
                                            this.trkr_ = new LazyStringArrayList();
                                            i |= 1;
                                        }
                                        this.trkr_.add(readStringRequireUtf8);
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
                                this.trkr_ = this.trkr_.getUnmodifiableView();
                            }
                            if ((i & 2) != 0) {
                                this.extProto_ = Collections.unmodifiableList(this.extProto_);
                            }
                            this.unknownFields = newBuilder.build();
                            makeExtensionsImmutable();
                        }
                    }
                }

                private LinkAsset(GeneratedMessageV3.Builder<?> builder) {
                    super(builder);
                    this.memoizedIsInitialized = (byte) (-1);
                }

                public static LinkAsset getDefaultInstance() {
                    return DEFAULT_INSTANCE;
                }

                public static final Descriptors.Descriptor getDescriptor() {
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_LinkAsset_descriptor;
                }

                public static Builder newBuilder() {
                    return DEFAULT_INSTANCE.toBuilder();
                }

                public static Builder newBuilder(LinkAsset linkAsset) {
                    return DEFAULT_INSTANCE.toBuilder().mergeFrom(linkAsset);
                }

                public static LinkAsset parseDelimitedFrom(InputStream inputStream) throws IOException {
                    return (LinkAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
                }

                public static LinkAsset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (LinkAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static LinkAsset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString);
                }

                public static LinkAsset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteString, extensionRegistryLite);
                }

                public static LinkAsset parseFrom(CodedInputStream codedInputStream) throws IOException {
                    return (LinkAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
                }

                public static LinkAsset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (LinkAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
                }

                public static LinkAsset parseFrom(InputStream inputStream) throws IOException {
                    return (LinkAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
                }

                public static LinkAsset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                    return (LinkAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
                }

                public static LinkAsset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer);
                }

                public static LinkAsset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
                }

                public static LinkAsset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr);
                }

                public static LinkAsset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                    return PARSER.parseFrom(bArr, extensionRegistryLite);
                }

                public static Parser<LinkAsset> parser() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final boolean equals(Object obj) {
                    if (obj == this) {
                        return true;
                    }
                    if (!(obj instanceof LinkAsset)) {
                        return super.equals(obj);
                    }
                    LinkAsset linkAsset = (LinkAsset) obj;
                    if (getUrl().equals(linkAsset.getUrl()) && getUrlfb().equals(linkAsset.getUrlfb()) && getTrkrList().equals(linkAsset.getTrkrList()) && hasExt() == linkAsset.hasExt()) {
                        return (!hasExt() || getExt().equals(linkAsset.getExt())) && getExtProtoList().equals(linkAsset.getExtProtoList()) && this.unknownFields.equals(linkAsset.unknownFields);
                    }
                    return false;
                }

                @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
                public final LinkAsset getDefaultInstanceForType() {
                    return DEFAULT_INSTANCE;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final Struct getExt() {
                    Struct struct = this.ext_;
                    Struct struct2 = struct;
                    if (struct == null) {
                        struct2 = Struct.getDefaultInstance();
                    }
                    return struct2;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final StructOrBuilder getExtOrBuilder() {
                    return getExt();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final Any getExtProto(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final int getExtProtoCount() {
                    return this.extProto_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final List<Any> getExtProtoList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                    return this.extProto_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                    return this.extProto_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Parser<LinkAsset> getParserForType() {
                    return PARSER;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final int getSerializedSize() {
                    int i = this.memoizedSize;
                    if (i != -1) {
                        return i;
                    }
                    int computeStringSize = !getUrlBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.url_) + 0 : 0;
                    int i2 = computeStringSize;
                    if (!getUrlfbBytes().isEmpty()) {
                        i2 = computeStringSize + GeneratedMessageV3.computeStringSize(2, this.urlfb_);
                    }
                    int i3 = 0;
                    for (int i4 = 0; i4 < this.trkr_.size(); i4++) {
                        i3 += computeStringSizeNoTag(this.trkr_.getRaw(i4));
                    }
                    int size = i2 + i3 + (getTrkrList().size() * 1);
                    for (int i5 = 0; i5 < this.extProto_.size(); i5++) {
                        size += CodedOutputStream.computeMessageSize(4, this.extProto_.get(i5));
                    }
                    int i6 = size;
                    if (this.ext_ != null) {
                        i6 = size + CodedOutputStream.computeMessageSize(5, getExt());
                    }
                    int serializedSize = i6 + this.unknownFields.getSerializedSize();
                    this.memoizedSize = serializedSize;
                    return serializedSize;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final String getTrkr(int i) {
                    return (String) this.trkr_.get(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final ByteString getTrkrBytes(int i) {
                    return this.trkr_.getByteString(i);
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final int getTrkrCount() {
                    return this.trkr_.size();
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final ProtocolStringList getTrkrList() {
                    return this.trkr_;
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
                public final UnknownFieldSet getUnknownFields() {
                    return this.unknownFields;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final String getUrl() {
                    Object obj = this.url_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.url_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final ByteString getUrlBytes() {
                    Object obj = this.url_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.url_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final String getUrlfb() {
                    Object obj = this.urlfb_;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String stringUtf8 = ((ByteString) obj).toStringUtf8();
                    this.urlfb_ = stringUtf8;
                    return stringUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final ByteString getUrlfbBytes() {
                    Object obj = this.urlfb_;
                    if (!(obj instanceof String)) {
                        return (ByteString) obj;
                    }
                    ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                    this.urlfb_ = copyFromUtf8;
                    return copyFromUtf8;
                }

                @Override // com.explorestack.protobuf.adcom.Ad.Display.Native.LinkAssetOrBuilder
                public final boolean hasExt() {
                    return this.ext_ != null;
                }

                @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
                public final int hashCode() {
                    if (this.memoizedHashCode != 0) {
                        return this.memoizedHashCode;
                    }
                    int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getUrl().hashCode()) * 37) + 2) * 53) + getUrlfb().hashCode();
                    int i = hashCode;
                    if (getTrkrCount() > 0) {
                        i = (((hashCode * 37) + 3) * 53) + getTrkrList().hashCode();
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
                    return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_LinkAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(LinkAsset.class, Builder.class);
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
                    return new LinkAsset();
                }

                @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
                public final Builder toBuilder() {
                    return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
                }

                @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
                public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                    if (!getUrlBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 1, this.url_);
                    }
                    if (!getUrlfbBytes().isEmpty()) {
                        GeneratedMessageV3.writeString(codedOutputStream, 2, this.urlfb_);
                    }
                    for (int i = 0; i < this.trkr_.size(); i++) {
                        GeneratedMessageV3.writeString(codedOutputStream, 3, this.trkr_.getRaw(i));
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

            /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$Native$LinkAssetOrBuilder.class */
            public interface LinkAssetOrBuilder extends MessageOrBuilder {
                Struct getExt();

                StructOrBuilder getExtOrBuilder();

                Any getExtProto(int i);

                int getExtProtoCount();

                List<Any> getExtProtoList();

                AnyOrBuilder getExtProtoOrBuilder(int i);

                List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

                String getTrkr(int i);

                ByteString getTrkrBytes(int i);

                int getTrkrCount();

                List<String> getTrkrList();

                String getUrl();

                ByteString getUrlBytes();

                String getUrlfb();

                ByteString getUrlfbBytes();

                boolean hasExt();
            }

            private Native() {
                this.memoizedIsInitialized = (byte) (-1);
                this.asset_ = Collections.emptyList();
                this.extProto_ = Collections.emptyList();
            }

            /* JADX WARN: Multi-variable type inference failed */
            private Native(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                LinkAsset.Builder builder = null;
                                Struct.Builder builder2 = null;
                                if (readTag == 10) {
                                    LinkAsset linkAsset = this.link_;
                                    builder = linkAsset != null ? linkAsset.toBuilder() : builder;
                                    LinkAsset linkAsset2 = (LinkAsset) codedInputStream.readMessage(LinkAsset.parser(), extensionRegistryLite);
                                    this.link_ = linkAsset2;
                                    if (builder != null) {
                                        builder.mergeFrom(linkAsset2);
                                        this.link_ = builder.buildPartial();
                                    }
                                } else if (readTag == 18) {
                                    i = i;
                                    if ((i & 1) == 0) {
                                        this.asset_ = new ArrayList();
                                        i |= 1;
                                    }
                                    this.asset_.add(codedInputStream.readMessage(Asset.parser(), extensionRegistryLite));
                                } else if (readTag == 26) {
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.extProto_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                                } else if (readTag == 34) {
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
                            }
                            z = true;
                        } catch (InvalidProtocolBufferException e) {
                            throw e.setUnfinishedMessage(this);
                        } catch (IOException e2) {
                            throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
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

            private Native(GeneratedMessageV3.Builder<?> builder) {
                super(builder);
                this.memoizedIsInitialized = (byte) (-1);
            }

            public static Native getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_descriptor;
            }

            public static Builder newBuilder() {
                return DEFAULT_INSTANCE.toBuilder();
            }

            public static Builder newBuilder(Native r3) {
                return DEFAULT_INSTANCE.toBuilder().mergeFrom(r3);
            }

            public static Native parseDelimitedFrom(InputStream inputStream) throws IOException {
                return (Native) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
            }

            public static Native parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Native) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Native parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString);
            }

            public static Native parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteString, extensionRegistryLite);
            }

            public static Native parseFrom(CodedInputStream codedInputStream) throws IOException {
                return (Native) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
            }

            public static Native parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Native) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
            }

            public static Native parseFrom(InputStream inputStream) throws IOException {
                return (Native) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
            }

            public static Native parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return (Native) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
            }

            public static Native parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer);
            }

            public static Native parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
            }

            public static Native parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr);
            }

            public static Native parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return PARSER.parseFrom(bArr, extensionRegistryLite);
            }

            public static Parser<Native> parser() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof Native)) {
                    return super.equals(obj);
                }
                Native r0 = (Native) obj;
                if (hasLink() != r0.hasLink()) {
                    return false;
                }
                if ((!hasLink() || getLink().equals(r0.getLink())) && getAssetList().equals(r0.getAssetList()) && hasExt() == r0.hasExt()) {
                    return (!hasExt() || getExt().equals(r0.getExt())) && getExtProtoList().equals(r0.getExtProtoList()) && this.unknownFields.equals(r0.unknownFields);
                }
                return false;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final Asset getAsset(int i) {
                return this.asset_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final int getAssetCount() {
                return this.asset_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final List<Asset> getAssetList() {
                return this.asset_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final AssetOrBuilder getAssetOrBuilder(int i) {
                return this.asset_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final List<? extends AssetOrBuilder> getAssetOrBuilderList() {
                return this.asset_;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Native getDefaultInstanceForType() {
                return DEFAULT_INSTANCE;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final Struct getExt() {
                Struct struct = this.ext_;
                Struct struct2 = struct;
                if (struct == null) {
                    struct2 = Struct.getDefaultInstance();
                }
                return struct2;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final StructOrBuilder getExtOrBuilder() {
                return getExt();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final Any getExtProto(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final int getExtProtoCount() {
                return this.extProto_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final List<Any> getExtProtoList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                return this.extProto_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                return this.extProto_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final LinkAsset getLink() {
                LinkAsset linkAsset = this.link_;
                LinkAsset linkAsset2 = linkAsset;
                if (linkAsset == null) {
                    linkAsset2 = LinkAsset.getDefaultInstance();
                }
                return linkAsset2;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final LinkAssetOrBuilder getLinkOrBuilder() {
                return getLink();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Parser<Native> getParserForType() {
                return PARSER;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final int getSerializedSize() {
                int i;
                int i2 = this.memoizedSize;
                if (i2 != -1) {
                    return i2;
                }
                int computeMessageSize = this.link_ != null ? CodedOutputStream.computeMessageSize(1, getLink()) + 0 : 0;
                int i3 = 0;
                while (true) {
                    i = computeMessageSize;
                    if (i3 < this.asset_.size()) {
                        computeMessageSize += CodedOutputStream.computeMessageSize(2, this.asset_.get(i3));
                        i3++;
                    }
                }
                for (int i4 = 0; i4 < this.extProto_.size(); i4++) {
                    i += CodedOutputStream.computeMessageSize(3, this.extProto_.get(i4));
                }
                int i5 = i;
                if (this.ext_ != null) {
                    i5 = i + CodedOutputStream.computeMessageSize(4, getExt());
                }
                int serializedSize = i5 + this.unknownFields.getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
            public final UnknownFieldSet getUnknownFields() {
                return this.unknownFields;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final boolean hasExt() {
                return this.ext_ != null;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.Display.NativeOrBuilder
            public final boolean hasLink() {
                return this.link_ != null;
            }

            @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
            public final int hashCode() {
                if (this.memoizedHashCode != 0) {
                    return this.memoizedHashCode;
                }
                int hashCode = getDescriptor().hashCode() + 779;
                int i = hashCode;
                if (hasLink()) {
                    i = (((hashCode * 37) + 1) * 53) + getLink().hashCode();
                }
                int i2 = i;
                if (getAssetCount() > 0) {
                    i2 = (((i * 37) + 2) * 53) + getAssetList().hashCode();
                }
                int i3 = i2;
                if (hasExt()) {
                    i3 = (((i2 * 37) + 4) * 53) + getExt().hashCode();
                }
                int i4 = i3;
                if (getExtProtoCount() > 0) {
                    i4 = (((i3 * 37) + 3) * 53) + getExtProtoList().hashCode();
                }
                int hashCode2 = (i4 * 29) + this.unknownFields.hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_Native_fieldAccessorTable.ensureFieldAccessorsInitialized(Native.class, Builder.class);
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
                return new Native();
            }

            @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
            public final Builder toBuilder() {
                return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
            public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (this.link_ != null) {
                    codedOutputStream.writeMessage(1, getLink());
                }
                for (int i = 0; i < this.asset_.size(); i++) {
                    codedOutputStream.writeMessage(2, this.asset_.get(i));
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

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder.class */
        public interface NativeOrBuilder extends MessageOrBuilder {
            Native.Asset getAsset(int i);

            int getAssetCount();

            List<Native.Asset> getAssetList();

            Native.AssetOrBuilder getAssetOrBuilder(int i);

            List<? extends Native.AssetOrBuilder> getAssetOrBuilderList();

            Struct getExt();

            StructOrBuilder getExtOrBuilder();

            Any getExtProto(int i);

            int getExtProtoCount();

            List<Any> getExtProtoList();

            AnyOrBuilder getExtProtoOrBuilder(int i);

            List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

            Native.LinkAsset getLink();

            Native.LinkAssetOrBuilder getLinkOrBuilder();

            boolean hasExt();

            boolean hasLink();
        }

        private Display() {
            this.memoizedIsInitialized = (byte) (-1);
            this.mime_ = LazyStringArrayList.EMPTY;
            this.api_ = Collections.emptyList();
            this.type_ = Collections.emptyList();
            this.adm_ = "";
            this.curl_ = "";
            this.event_ = Collections.emptyList();
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Display(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            int i = 0;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        Native.Builder builder = null;
                        Banner.Builder builder2 = null;
                        Struct.Builder builder3 = null;
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                i = i;
                                if ((i & 1) == 0) {
                                    this.mime_ = new LazyStringArrayList();
                                    i |= 1;
                                }
                                this.mime_.add(readStringRequireUtf8);
                                continue;
                            case 16:
                                int readEnum = codedInputStream.readEnum();
                                i = i;
                                if ((i & 2) == 0) {
                                    this.api_ = new ArrayList();
                                    i |= 2;
                                }
                                this.api_.add(Integer.valueOf(readEnum));
                                continue;
                            case 18:
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                int i2 = i;
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum2 = codedInputStream.readEnum();
                                    i2 = i2;
                                    if ((i2 & 2) == 0) {
                                        this.api_ = new ArrayList();
                                        i2 |= 2;
                                    }
                                    this.api_.add(Integer.valueOf(readEnum2));
                                }
                                codedInputStream.popLimit(pushLimit);
                                i = i2;
                                continue;
                            case 24:
                                int readEnum3 = codedInputStream.readEnum();
                                i = i;
                                if ((i & 4) == 0) {
                                    this.type_ = new ArrayList();
                                    i |= 4;
                                }
                                this.type_.add(Integer.valueOf(readEnum3));
                                continue;
                            case 26:
                                int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum4 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 4) == 0) {
                                        this.type_ = new ArrayList();
                                        i |= 4;
                                    }
                                    this.type_.add(Integer.valueOf(readEnum4));
                                }
                                codedInputStream.popLimit(pushLimit2);
                                continue;
                            case 32:
                                this.w_ = codedInputStream.readUInt32();
                                continue;
                            case 40:
                                this.h_ = codedInputStream.readUInt32();
                                continue;
                            case 48:
                                this.wratio_ = codedInputStream.readUInt32();
                                continue;
                            case 56:
                                this.hratio_ = codedInputStream.readUInt32();
                                continue;
                            case 66:
                                this.adm_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 74:
                                this.curl_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 82:
                                Banner banner = this.banner_;
                                builder2 = banner != null ? banner.toBuilder() : builder2;
                                Banner banner2 = (Banner) codedInputStream.readMessage(Banner.parser(), extensionRegistryLite);
                                this.banner_ = banner2;
                                if (builder2 != null) {
                                    builder2.mergeFrom(banner2);
                                    this.banner_ = builder2.buildPartial();
                                } else {
                                    continue;
                                }
                            case 90:
                                Native r0 = this.native_;
                                builder = r0 != null ? r0.toBuilder() : builder;
                                Native r02 = (Native) codedInputStream.readMessage(Native.parser(), extensionRegistryLite);
                                this.native_ = r02;
                                if (builder != null) {
                                    builder.mergeFrom(r02);
                                    this.native_ = builder.buildPartial();
                                } else {
                                    continue;
                                }
                            case 98:
                                i = i;
                                if ((i & 8) == 0) {
                                    this.event_ = new ArrayList();
                                    i |= 8;
                                }
                                this.event_.add(codedInputStream.readMessage(Event.parser(), extensionRegistryLite));
                                continue;
                            case 106:
                                i = i;
                                if ((i & 16) == 0) {
                                    this.extProto_ = new ArrayList();
                                    i |= 16;
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
                        this.mime_ = this.mime_.getUnmodifiableView();
                    }
                    if ((i & 2) != 0) {
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if ((i & 4) != 0) {
                        this.type_ = Collections.unmodifiableList(this.type_);
                    }
                    if ((i & 8) != 0) {
                        this.event_ = Collections.unmodifiableList(this.event_);
                    }
                    if ((i & 16) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Display(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Display getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Display display) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(display);
        }

        public static Display parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Display) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Display parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Display) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Display parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Display parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Display parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Display) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Display parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Display) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Display parseFrom(InputStream inputStream) throws IOException {
            return (Display) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Display parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Display) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Display parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Display parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Display parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Display parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Display> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Display)) {
                return super.equals(obj);
            }
            Display display = (Display) obj;
            if (!getMimeList().equals(display.getMimeList()) || !this.api_.equals(display.api_) || !this.type_.equals(display.type_) || getW() != display.getW() || getH() != display.getH() || getWratio() != display.getWratio() || getHratio() != display.getHratio() || !getAdm().equals(display.getAdm()) || !getCurl().equals(display.getCurl()) || hasBanner() != display.hasBanner()) {
                return false;
            }
            if ((hasBanner() && !getBanner().equals(display.getBanner())) || hasNative() != display.hasNative()) {
                return false;
            }
            if ((!hasNative() || getNative().equals(display.getNative())) && getEventList().equals(display.getEventList()) && hasExt() == display.hasExt()) {
                return (!hasExt() || getExt().equals(display.getExt())) && getExtProtoList().equals(display.getExtProtoList()) && this.unknownFields.equals(display.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final String getAdm() {
            Object obj = this.adm_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.adm_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final ByteString getAdmBytes() {
            Object obj = this.adm_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.adm_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final ApiFramework getApi(int i) {
            return api_converter_.convert(this.api_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<ApiFramework> getApiList() {
            return new Internal.ListAdapter(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getApiValue(int i) {
            return this.api_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final Banner getBanner() {
            Banner banner = this.banner_;
            Banner banner2 = banner;
            if (banner == null) {
                banner2 = Banner.getDefaultInstance();
            }
            return banner2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final BannerOrBuilder getBannerOrBuilder() {
            return getBanner();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final String getCurl() {
            Object obj = this.curl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.curl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final ByteString getCurlBytes() {
            Object obj = this.curl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.curl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Display getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final Event getEvent(int i) {
            return this.event_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getEventCount() {
            return this.event_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<Event> getEventList() {
            return this.event_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final EventOrBuilder getEventOrBuilder(int i) {
            return this.event_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<? extends EventOrBuilder> getEventOrBuilderList() {
            return this.event_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getH() {
            return this.h_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getHratio() {
            return this.hratio_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final String getMime(int i) {
            return (String) this.mime_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final ByteString getMimeBytes(int i) {
            return this.mime_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getMimeCount() {
            return this.mime_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final ProtocolStringList getMimeList() {
            return this.mime_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final Native getNative() {
            Native r0 = this.native_;
            Native r4 = r0;
            if (r0 == null) {
                r4 = Native.getDefaultInstance();
            }
            return r4;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final NativeOrBuilder getNativeOrBuilder() {
            return getNative();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Display> getParserForType() {
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
            for (int i4 = 0; i4 < this.mime_.size(); i4++) {
                i3 += computeStringSizeNoTag(this.mime_.getRaw(i4));
            }
            int size = getMimeList().size();
            int i5 = 0;
            for (int i6 = 0; i6 < this.api_.size(); i6++) {
                i5 += CodedOutputStream.computeEnumSizeNoTag(this.api_.get(i6).intValue());
            }
            int i7 = i3 + 0 + (size * 1) + i5;
            int i8 = i7;
            if (!getApiList().isEmpty()) {
                i8 = i7 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i5);
            }
            this.apiMemoizedSerializedSize = i5;
            int i9 = 0;
            for (int i10 = 0; i10 < this.type_.size(); i10++) {
                i9 += CodedOutputStream.computeEnumSizeNoTag(this.type_.get(i10).intValue());
            }
            int i11 = i8 + i9;
            int i12 = i11;
            if (!getTypeList().isEmpty()) {
                i12 = i11 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i9);
            }
            this.typeMemoizedSerializedSize = i9;
            int i13 = this.w_;
            int i14 = i12;
            if (i13 != 0) {
                i14 = i12 + CodedOutputStream.computeUInt32Size(4, i13);
            }
            int i15 = this.h_;
            int i16 = i14;
            if (i15 != 0) {
                i16 = i14 + CodedOutputStream.computeUInt32Size(5, i15);
            }
            int i17 = this.wratio_;
            int i18 = i16;
            if (i17 != 0) {
                i18 = i16 + CodedOutputStream.computeUInt32Size(6, i17);
            }
            int i19 = this.hratio_;
            int i20 = i18;
            if (i19 != 0) {
                i20 = i18 + CodedOutputStream.computeUInt32Size(7, i19);
            }
            int i21 = i20;
            if (!getAdmBytes().isEmpty()) {
                i21 = i20 + GeneratedMessageV3.computeStringSize(8, this.adm_);
            }
            int i22 = i21;
            if (!getCurlBytes().isEmpty()) {
                i22 = i21 + GeneratedMessageV3.computeStringSize(9, this.curl_);
            }
            int i23 = i22;
            if (this.banner_ != null) {
                i23 = i22 + CodedOutputStream.computeMessageSize(10, getBanner());
            }
            int i24 = i23;
            if (this.native_ != null) {
                i24 = i23 + CodedOutputStream.computeMessageSize(11, getNative());
            }
            int i25 = 0;
            while (true) {
                i = i24;
                if (i25 < this.event_.size()) {
                    i24 += CodedOutputStream.computeMessageSize(12, this.event_.get(i25));
                    i25++;
                }
            }
            for (int i26 = 0; i26 < this.extProto_.size(); i26++) {
                i += CodedOutputStream.computeMessageSize(13, this.extProto_.get(i26));
            }
            int i27 = i;
            if (this.ext_ != null) {
                i27 = i + CodedOutputStream.computeMessageSize(14, getExt());
            }
            int serializedSize = i27 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final DisplayCreativeType getType(int i) {
            return type_converter_.convert(this.type_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getTypeCount() {
            return this.type_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<DisplayCreativeType> getTypeList() {
            return new Internal.ListAdapter(this.type_, type_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getTypeValue(int i) {
            return this.type_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final List<Integer> getTypeValueList() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getW() {
            return this.w_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final int getWratio() {
            return this.wratio_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final boolean hasBanner() {
            return this.banner_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.DisplayOrBuilder
        public final boolean hasNative() {
            return this.native_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = getDescriptor().hashCode() + 779;
            int i = hashCode;
            if (getMimeCount() > 0) {
                i = (((hashCode * 37) + 1) * 53) + getMimeList().hashCode();
            }
            int i2 = i;
            if (getApiCount() > 0) {
                i2 = (((i * 37) + 2) * 53) + this.api_.hashCode();
            }
            int i3 = i2;
            if (getTypeCount() > 0) {
                i3 = (((i2 * 37) + 3) * 53) + this.type_.hashCode();
            }
            int w = (((((((((((((((((((((((i3 * 37) + 4) * 53) + getW()) * 37) + 5) * 53) + getH()) * 37) + 6) * 53) + getWratio()) * 37) + 7) * 53) + getHratio()) * 37) + 8) * 53) + getAdm().hashCode()) * 37) + 9) * 53) + getCurl().hashCode();
            int i4 = w;
            if (hasBanner()) {
                i4 = (((w * 37) + 10) * 53) + getBanner().hashCode();
            }
            int i5 = i4;
            if (hasNative()) {
                i5 = (((i4 * 37) + 11) * 53) + getNative().hashCode();
            }
            int i6 = i5;
            if (getEventCount() > 0) {
                i6 = (((i5 * 37) + 12) * 53) + getEventList().hashCode();
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
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Display_fieldAccessorTable.ensureFieldAccessorsInitialized(Display.class, Builder.class);
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
            return new Display();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            for (int i = 0; i < this.mime_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.mime_.getRaw(i));
            }
            if (getApiList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(18);
                codedOutputStream.writeUInt32NoTag(this.apiMemoizedSerializedSize);
            }
            for (int i2 = 0; i2 < this.api_.size(); i2++) {
                codedOutputStream.writeEnumNoTag(this.api_.get(i2).intValue());
            }
            if (getTypeList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(26);
                codedOutputStream.writeUInt32NoTag(this.typeMemoizedSerializedSize);
            }
            for (int i3 = 0; i3 < this.type_.size(); i3++) {
                codedOutputStream.writeEnumNoTag(this.type_.get(i3).intValue());
            }
            int i4 = this.w_;
            if (i4 != 0) {
                codedOutputStream.writeUInt32(4, i4);
            }
            int i5 = this.h_;
            if (i5 != 0) {
                codedOutputStream.writeUInt32(5, i5);
            }
            int i6 = this.wratio_;
            if (i6 != 0) {
                codedOutputStream.writeUInt32(6, i6);
            }
            int i7 = this.hratio_;
            if (i7 != 0) {
                codedOutputStream.writeUInt32(7, i7);
            }
            if (!getAdmBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 8, this.adm_);
            }
            if (!getCurlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.curl_);
            }
            if (this.banner_ != null) {
                codedOutputStream.writeMessage(10, getBanner());
            }
            if (this.native_ != null) {
                codedOutputStream.writeMessage(11, getNative());
            }
            for (int i8 = 0; i8 < this.event_.size(); i8++) {
                codedOutputStream.writeMessage(12, this.event_.get(i8));
            }
            for (int i9 = 0; i9 < this.extProto_.size(); i9++) {
                codedOutputStream.writeMessage(13, this.extProto_.get(i9));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(14, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$DisplayOrBuilder.class */
    public interface DisplayOrBuilder extends MessageOrBuilder {
        String getAdm();

        ByteString getAdmBytes();

        ApiFramework getApi(int i);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i);

        List<Integer> getApiValueList();

        Display.Banner getBanner();

        Display.BannerOrBuilder getBannerOrBuilder();

        String getCurl();

        ByteString getCurlBytes();

        Event getEvent(int i);

        int getEventCount();

        List<Event> getEventList();

        EventOrBuilder getEventOrBuilder(int i);

        List<? extends EventOrBuilder> getEventOrBuilderList();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        int getH();

        int getHratio();

        String getMime(int i);

        ByteString getMimeBytes(int i);

        int getMimeCount();

        List<String> getMimeList();

        Display.Native getNative();

        Display.NativeOrBuilder getNativeOrBuilder();

        DisplayCreativeType getType(int i);

        int getTypeCount();

        List<DisplayCreativeType> getTypeList();

        int getTypeValue(int i);

        List<Integer> getTypeValueList();

        int getW();

        int getWratio();

        boolean hasBanner();

        boolean hasExt();

        boolean hasNative();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Event.class */
    public static final class Event extends GeneratedMessageV3 implements EventOrBuilder {
        public static final int API_FIELD_NUMBER = 3;
        public static final int CDATA_FIELD_NUMBER = 5;
        public static final int EXT_FIELD_NUMBER = 7;
        public static final int EXT_PROTO_FIELD_NUMBER = 6;
        public static final int METHOD_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        public static final int URL_FIELD_NUMBER = 4;
        private static final long serialVersionUID = 0;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private MapField<String, String> cdata_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private int method_;
        private int type_;
        private volatile Object url_;
        private static final Internal.ListAdapter.Converter<Integer, ApiFramework> api_converter_ = new Internal.ListAdapter.Converter<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Ad.Event.1
            public final ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                ApiFramework apiFramework = valueOf;
                if (valueOf == null) {
                    apiFramework = ApiFramework.UNRECOGNIZED;
                }
                return apiFramework;
            }
        };
        private static final Event DEFAULT_INSTANCE = new Event();
        private static final Parser<Event> PARSER = new AbstractParser<Event>() { // from class: com.explorestack.protobuf.adcom.Ad.Event.2
            @Override // com.explorestack.protobuf.Parser
            public final Event parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Event(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Event$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements EventOrBuilder {
            private List<Integer> api_;
            private int bitField0_;
            private MapField<String, String> cdata_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private int method_;
            private int type_;
            private Object url_;

            private Builder() {
                this.type_ = 0;
                this.method_ = 0;
                this.api_ = Collections.emptyList();
                this.url_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.type_ = 0;
                this.method_ = 0;
                this.api_ = Collections.emptyList();
                this.url_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private void ensureApiIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.api_ = new ArrayList(this.api_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureExtProtoIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 4;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Event_descriptor;
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

            private MapField<String, String> internalGetCdata() {
                MapField<String, String> mapField = this.cdata_;
                MapField<String, String> mapField2 = mapField;
                if (mapField == null) {
                    mapField2 = MapField.emptyMapField(CdataDefaultEntryHolder.defaultEntry);
                }
                return mapField2;
            }

            private MapField<String, String> internalGetMutableCdata() {
                onChanged();
                if (this.cdata_ == null) {
                    this.cdata_ = MapField.newMapField(CdataDefaultEntryHolder.defaultEntry);
                }
                if (!this.cdata_.isMutable()) {
                    this.cdata_ = this.cdata_.copy();
                }
                return this.cdata_;
            }

            private void maybeForceBuilderInitialization() {
                if (Event.alwaysUseFieldBuilders) {
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

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Event build() {
                Event buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Event buildPartial() {
                Event event = new Event(this);
                event.type_ = this.type_;
                event.method_ = this.method_;
                if ((this.bitField0_ & 1) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -2;
                }
                event.api_ = this.api_;
                event.url_ = this.url_;
                event.cdata_ = internalGetCdata();
                event.cdata_.makeImmutable();
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    event.ext_ = this.ext_;
                } else {
                    event.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 4) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -5;
                    }
                    event.extProto_ = this.extProto_;
                } else {
                    event.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return event;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.type_ = 0;
                this.method_ = 0;
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -2;
                this.url_ = "";
                internalGetMutableCdata().clear();
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

            public final Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
                return this;
            }

            public final Builder clearCdata() {
                internalGetMutableCdata().getMutableMap().clear();
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

            public final Builder clearMethod() {
                this.method_ = 0;
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

            public final Builder clearUrl() {
                this.url_ = Event.getDefaultInstance().getUrl();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final boolean containsCdata(String str) {
                Objects.requireNonNull(str);
                return internalGetCdata().getMap().containsKey(str);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final ApiFramework getApi(int i) {
                return (ApiFramework) Event.api_converter_.convert(this.api_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final List<ApiFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, Event.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final int getApiValue(int i) {
                return this.api_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            @Deprecated
            public final Map<String, String> getCdata() {
                return getCdataMap();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final int getCdataCount() {
                return internalGetCdata().getMap().size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final Map<String, String> getCdataMap() {
                return internalGetCdata().getMap();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final String getCdataOrDefault(String str, String str2) {
                Objects.requireNonNull(str);
                Map<String, String> map = internalGetCdata().getMap();
                return map.containsKey(str) ? map.get(str) : str2;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final String getCdataOrThrow(String str) {
                Objects.requireNonNull(str);
                Map<String, String> map = internalGetCdata().getMap();
                if (map.containsKey(str)) {
                    return map.get(str);
                }
                throw new IllegalArgumentException();
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Event getDefaultInstanceForType() {
                return Event.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Event_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final EventTrackingMethod getMethod() {
                EventTrackingMethod valueOf = EventTrackingMethod.valueOf(this.method_);
                EventTrackingMethod eventTrackingMethod = valueOf;
                if (valueOf == null) {
                    eventTrackingMethod = EventTrackingMethod.UNRECOGNIZED;
                }
                return eventTrackingMethod;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final int getMethodValue() {
                return this.method_;
            }

            @Deprecated
            public final Map<String, String> getMutableCdata() {
                return internalGetMutableCdata().getMutableMap();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final EventType getType() {
                EventType valueOf = EventType.valueOf(this.type_);
                EventType eventType = valueOf;
                if (valueOf == null) {
                    eventType = EventType.UNRECOGNIZED;
                }
                return eventType;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final int getTypeValue() {
                return this.type_;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final String getUrl() {
                Object obj = this.url_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.url_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final ByteString getUrlBytes() {
                Object obj = this.url_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.url_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Event_fieldAccessorTable.ensureFieldAccessorsInitialized(Event.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final MapField internalGetMapField(int i) {
                if (i == 5) {
                    return internalGetCdata();
                }
                throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final MapField internalGetMutableMapField(int i) {
                if (i == 5) {
                    return internalGetMutableCdata();
                }
                throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
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
            public final com.explorestack.protobuf.adcom.Ad.Event.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Event.access$1400()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.adcom.Ad$Event r0 = (com.explorestack.protobuf.adcom.Ad.Event) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Ad$Event$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.adcom.Ad$Event r0 = (com.explorestack.protobuf.adcom.Ad.Event) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.adcom.Ad$Event$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Event.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Event$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Event) {
                    return mergeFrom((Event) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Event event) {
                if (event == Event.getDefaultInstance()) {
                    return this;
                }
                if (event.type_ != 0) {
                    setTypeValue(event.getTypeValue());
                }
                if (event.method_ != 0) {
                    setMethodValue(event.getMethodValue());
                }
                if (!event.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = event.api_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(event.api_);
                    }
                    onChanged();
                }
                if (!event.getUrl().isEmpty()) {
                    this.url_ = event.url_;
                    onChanged();
                }
                internalGetMutableCdata().mergeFrom(event.internalGetCdata());
                if (event.hasExt()) {
                    mergeExt(event.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!event.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = event.extProto_;
                            this.bitField0_ &= -5;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(event.extProto_);
                        }
                        onChanged();
                    }
                } else if (!event.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = event.extProto_;
                        this.bitField0_ &= -5;
                        if (Event.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(event.extProto_);
                    }
                }
                mergeUnknownFields(event.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder putAllCdata(Map<String, String> map) {
                internalGetMutableCdata().getMutableMap().putAll(map);
                return this;
            }

            public final Builder putCdata(String str, String str2) {
                Objects.requireNonNull(str);
                Objects.requireNonNull(str2);
                internalGetMutableCdata().getMutableMap().put(str, str2);
                return this;
            }

            public final Builder removeCdata(String str) {
                Objects.requireNonNull(str);
                internalGetMutableCdata().getMutableMap().remove(str);
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

            public final Builder setMethod(EventTrackingMethod eventTrackingMethod) {
                Objects.requireNonNull(eventTrackingMethod);
                this.method_ = eventTrackingMethod.getNumber();
                onChanged();
                return this;
            }

            public final Builder setMethodValue(int i) {
                this.method_ = i;
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

            public final Builder setUrl(String str) {
                Objects.requireNonNull(str);
                this.url_ = str;
                onChanged();
                return this;
            }

            public final Builder setUrlBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Event.checkByteStringIsUtf8(byteString);
                this.url_ = byteString;
                onChanged();
                return this;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder.class */
        public static final class CdataDefaultEntryHolder {
            static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Event_CdataEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

            private CdataDefaultEntryHolder() {
            }
        }

        private Event() {
            this.memoizedIsInitialized = (byte) (-1);
            this.type_ = 0;
            this.method_ = 0;
            this.api_ = Collections.emptyList();
            this.url_ = "";
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v46, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object] */
        private Event(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                this.type_ = codedInputStream.readEnum();
                            } else if (readTag == 16) {
                                this.method_ = codedInputStream.readEnum();
                            } else if (readTag == 24) {
                                int readEnum = codedInputStream.readEnum();
                                i = i;
                                if ((i & 1) == 0) {
                                    this.api_ = new ArrayList();
                                    i |= 1;
                                }
                                this.api_.add(Integer.valueOf(readEnum));
                            } else if (readTag == 26) {
                                int pushLimit = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                while (codedInputStream.getBytesUntilLimit() > 0) {
                                    int readEnum2 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 1) == 0) {
                                        this.api_ = new ArrayList();
                                        i |= 1;
                                    }
                                    this.api_.add(Integer.valueOf(readEnum2));
                                }
                                codedInputStream.popLimit(pushLimit);
                            } else if (readTag == 34) {
                                this.url_ = codedInputStream.readStringRequireUtf8();
                            } else if (readTag == 42) {
                                i = i;
                                if ((i & 2) == 0) {
                                    this.cdata_ = MapField.newMapField(CdataDefaultEntryHolder.defaultEntry);
                                    i |= 2;
                                }
                                MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CdataDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                                this.cdata_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                            } else if (readTag == 50) {
                                i = i;
                                if ((i & 4) == 0) {
                                    this.extProto_ = new ArrayList();
                                    i |= 4;
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
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if ((i & 4) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Event(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Event getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Event_descriptor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MapField<String, String> internalGetCdata() {
            MapField<String, String> mapField = this.cdata_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(CdataDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Event event) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(event);
        }

        public static Event parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Event) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Event parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Event) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Event parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Event parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Event parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Event) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Event parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Event) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Event parseFrom(InputStream inputStream) throws IOException {
            return (Event) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Event parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Event) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Event parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Event parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Event parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Event parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Event> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final boolean containsCdata(String str) {
            Objects.requireNonNull(str);
            return internalGetCdata().getMap().containsKey(str);
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Event)) {
                return super.equals(obj);
            }
            Event event = (Event) obj;
            if (this.type_ == event.type_ && this.method_ == event.method_ && this.api_.equals(event.api_) && getUrl().equals(event.getUrl()) && internalGetCdata().equals(event.internalGetCdata()) && hasExt() == event.hasExt()) {
                return (!hasExt() || getExt().equals(event.getExt())) && getExtProtoList().equals(event.getExtProtoList()) && this.unknownFields.equals(event.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final ApiFramework getApi(int i) {
            return api_converter_.convert(this.api_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final List<ApiFramework> getApiList() {
            return new Internal.ListAdapter(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final int getApiValue(int i) {
            return this.api_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        @Deprecated
        public final Map<String, String> getCdata() {
            return getCdataMap();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final int getCdataCount() {
            return internalGetCdata().getMap().size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final Map<String, String> getCdataMap() {
            return internalGetCdata().getMap();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final String getCdataOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCdata().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final String getCdataOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCdata().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Event getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final EventTrackingMethod getMethod() {
            EventTrackingMethod valueOf = EventTrackingMethod.valueOf(this.method_);
            EventTrackingMethod eventTrackingMethod = valueOf;
            if (valueOf == null) {
                eventTrackingMethod = EventTrackingMethod.UNRECOGNIZED;
            }
            return eventTrackingMethod;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final int getMethodValue() {
            return this.method_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Event> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i;
            int i2 = this.memoizedSize;
            if (i2 != -1) {
                return i2;
            }
            int computeEnumSize = this.type_ != EventType.EVENT_TYPE_INVALID.getNumber() ? CodedOutputStream.computeEnumSize(1, this.type_) + 0 : 0;
            int i3 = computeEnumSize;
            if (this.method_ != EventTrackingMethod.EVENT_TRACKING_METHOD_INVALID.getNumber()) {
                i3 = computeEnumSize + CodedOutputStream.computeEnumSize(2, this.method_);
            }
            int i4 = 0;
            for (int i5 = 0; i5 < this.api_.size(); i5++) {
                i4 += CodedOutputStream.computeEnumSizeNoTag(this.api_.get(i5).intValue());
            }
            int i6 = i3 + i4;
            int i7 = i6;
            if (!getApiList().isEmpty()) {
                i7 = i6 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i4);
            }
            this.apiMemoizedSerializedSize = i4;
            int i8 = i7;
            if (!getUrlBytes().isEmpty()) {
                i8 = i7 + GeneratedMessageV3.computeStringSize(4, this.url_);
            }
            Iterator<Map.Entry<String, String>> it2 = internalGetCdata().getMap().entrySet().iterator();
            while (true) {
                i = i8;
                if (it2.hasNext()) {
                    Map.Entry<String, String> next = it2.next();
                    i8 += CodedOutputStream.computeMessageSize(5, CdataDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(next.getKey()).setValue(next.getValue()).build());
                }
            }
            for (int i9 = 0; i9 < this.extProto_.size(); i9++) {
                i += CodedOutputStream.computeMessageSize(6, this.extProto_.get(i9));
            }
            int i10 = i;
            if (this.ext_ != null) {
                i10 = i + CodedOutputStream.computeMessageSize(7, getExt());
            }
            int serializedSize = i10 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final EventType getType() {
            EventType valueOf = EventType.valueOf(this.type_);
            EventType eventType = valueOf;
            if (valueOf == null) {
                eventType = EventType.UNRECOGNIZED;
            }
            return eventType;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final int getTypeValue() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final String getUrl() {
            Object obj = this.url_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.url_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final ByteString getUrlBytes() {
            Object obj = this.url_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.url_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.EventOrBuilder
        public final boolean hasExt() {
            return this.ext_ != null;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + this.type_) * 37) + 2) * 53) + this.method_;
            int i = hashCode;
            if (getApiCount() > 0) {
                i = (((hashCode * 37) + 3) * 53) + this.api_.hashCode();
            }
            int hashCode2 = (((i * 37) + 4) * 53) + getUrl().hashCode();
            int i2 = hashCode2;
            if (!internalGetCdata().getMap().isEmpty()) {
                i2 = (((hashCode2 * 37) + 5) * 53) + internalGetCdata().hashCode();
            }
            int i3 = i2;
            if (hasExt()) {
                i3 = (((i2 * 37) + 7) * 53) + getExt().hashCode();
            }
            int i4 = i3;
            if (getExtProtoCount() > 0) {
                i4 = (((i3 * 37) + 6) * 53) + getExtProtoList().hashCode();
            }
            int hashCode3 = (i4 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Event_fieldAccessorTable.ensureFieldAccessorsInitialized(Event.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final MapField internalGetMapField(int i) {
            if (i == 5) {
                return internalGetCdata();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
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
            return new Event();
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
            if (this.method_ != EventTrackingMethod.EVENT_TRACKING_METHOD_INVALID.getNumber()) {
                codedOutputStream.writeEnum(2, this.method_);
            }
            if (getApiList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(26);
                codedOutputStream.writeUInt32NoTag(this.apiMemoizedSerializedSize);
            }
            for (int i = 0; i < this.api_.size(); i++) {
                codedOutputStream.writeEnumNoTag(this.api_.get(i).intValue());
            }
            if (!getUrlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.url_);
            }
            GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCdata(), CdataDefaultEntryHolder.defaultEntry, 5);
            for (int i2 = 0; i2 < this.extProto_.size(); i2++) {
                codedOutputStream.writeMessage(6, this.extProto_.get(i2));
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(7, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$EventOrBuilder.class */
    public interface EventOrBuilder extends MessageOrBuilder {
        boolean containsCdata(String str);

        ApiFramework getApi(int i);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i);

        List<Integer> getApiValueList();

        @Deprecated
        Map<String, String> getCdata();

        int getCdataCount();

        Map<String, String> getCdataMap();

        String getCdataOrDefault(String str, String str2);

        String getCdataOrThrow(String str);

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        EventTrackingMethod getMethod();

        int getMethodValue();

        EventType getType();

        int getTypeValue();

        String getUrl();

        ByteString getUrlBytes();

        boolean hasExt();
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Video.class */
    public static final class Video extends GeneratedMessageV3 implements VideoOrBuilder {
        public static final int ADM_FIELD_NUMBER = 4;
        public static final int API_FIELD_NUMBER = 2;
        public static final int CURL_FIELD_NUMBER = 5;
        public static final int EXT_FIELD_NUMBER = 7;
        public static final int EXT_PROTO_FIELD_NUMBER = 6;
        public static final int MIME_FIELD_NUMBER = 1;
        public static final int TYPE_FIELD_NUMBER = 3;
        private static final long serialVersionUID = 0;
        private volatile Object adm_;
        private int apiMemoizedSerializedSize;
        private List<Integer> api_;
        private volatile Object curl_;
        private List<Any> extProto_;
        private Struct ext_;
        private byte memoizedIsInitialized;
        private LazyStringList mime_;
        private int typeMemoizedSerializedSize;
        private List<Integer> type_;
        private static final Internal.ListAdapter.Converter<Integer, ApiFramework> api_converter_ = new Internal.ListAdapter.Converter<Integer, ApiFramework>() { // from class: com.explorestack.protobuf.adcom.Ad.Video.1
            public final ApiFramework convert(Integer num) {
                ApiFramework valueOf = ApiFramework.valueOf(num.intValue());
                ApiFramework apiFramework = valueOf;
                if (valueOf == null) {
                    apiFramework = ApiFramework.UNRECOGNIZED;
                }
                return apiFramework;
            }
        };
        private static final Internal.ListAdapter.Converter<Integer, VideoCreativeType> type_converter_ = new Internal.ListAdapter.Converter<Integer, VideoCreativeType>() { // from class: com.explorestack.protobuf.adcom.Ad.Video.2
            public final VideoCreativeType convert(Integer num) {
                VideoCreativeType valueOf = VideoCreativeType.valueOf(num.intValue());
                VideoCreativeType videoCreativeType = valueOf;
                if (valueOf == null) {
                    videoCreativeType = VideoCreativeType.UNRECOGNIZED;
                }
                return videoCreativeType;
            }
        };
        private static final Video DEFAULT_INSTANCE = new Video();
        private static final Parser<Video> PARSER = new AbstractParser<Video>() { // from class: com.explorestack.protobuf.adcom.Ad.Video.3
            @Override // com.explorestack.protobuf.Parser
            public final Video parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new Video(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$Video$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements VideoOrBuilder {
            private Object adm_;
            private List<Integer> api_;
            private int bitField0_;
            private Object curl_;
            private SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> extBuilder_;
            private RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> extProtoBuilder_;
            private List<Any> extProto_;
            private Struct ext_;
            private LazyStringList mime_;
            private List<Integer> type_;

            private Builder() {
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.type_ = Collections.emptyList();
                this.adm_ = "";
                this.curl_ = "";
                this.extProto_ = Collections.emptyList();
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.mime_ = LazyStringArrayList.EMPTY;
                this.api_ = Collections.emptyList();
                this.type_ = Collections.emptyList();
                this.adm_ = "";
                this.curl_ = "";
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
                if ((this.bitField0_ & 8) == 0) {
                    this.extProto_ = new ArrayList(this.extProto_);
                    this.bitField0_ |= 8;
                }
            }

            private void ensureMimeIsMutable() {
                if ((this.bitField0_ & 1) == 0) {
                    this.mime_ = new LazyStringArrayList(this.mime_);
                    this.bitField0_ |= 1;
                }
            }

            private void ensureTypeIsMutable() {
                if ((this.bitField0_ & 4) == 0) {
                    this.type_ = new ArrayList(this.type_);
                    this.bitField0_ |= 4;
                }
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Video_descriptor;
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

            private void maybeForceBuilderInitialization() {
                if (Video.alwaysUseFieldBuilders) {
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

            public final Builder addAllMime(Iterable<String> iterable) {
                ensureMimeIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.mime_);
                onChanged();
                return this;
            }

            public final Builder addAllType(Iterable<? extends VideoCreativeType> iterable) {
                ensureTypeIsMutable();
                for (VideoCreativeType videoCreativeType : iterable) {
                    this.type_.add(Integer.valueOf(videoCreativeType.getNumber()));
                }
                onChanged();
                return this;
            }

            public final Builder addAllTypeValue(Iterable<Integer> iterable) {
                ensureTypeIsMutable();
                for (Integer num : iterable) {
                    this.type_.add(Integer.valueOf(num.intValue()));
                }
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

            public final Builder addMime(String str) {
                Objects.requireNonNull(str);
                ensureMimeIsMutable();
                this.mime_.add(str);
                onChanged();
                return this;
            }

            public final Builder addMimeBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Video.checkByteStringIsUtf8(byteString);
                ensureMimeIsMutable();
                this.mime_.add(byteString);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            public final Builder addType(VideoCreativeType videoCreativeType) {
                Objects.requireNonNull(videoCreativeType);
                ensureTypeIsMutable();
                this.type_.add(Integer.valueOf(videoCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder addTypeValue(int i) {
                ensureTypeIsMutable();
                this.type_.add(Integer.valueOf(i));
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Video build() {
                Video buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Video buildPartial() {
                Video video = new Video(this);
                if ((this.bitField0_ & 1) != 0) {
                    this.mime_ = this.mime_.getUnmodifiableView();
                    this.bitField0_ &= -2;
                }
                video.mime_ = this.mime_;
                if ((this.bitField0_ & 2) != 0) {
                    this.api_ = Collections.unmodifiableList(this.api_);
                    this.bitField0_ &= -3;
                }
                video.api_ = this.api_;
                if ((this.bitField0_ & 4) != 0) {
                    this.type_ = Collections.unmodifiableList(this.type_);
                    this.bitField0_ &= -5;
                }
                video.type_ = this.type_;
                video.adm_ = this.adm_;
                video.curl_ = this.curl_;
                SingleFieldBuilderV3<Struct, Struct.Builder, StructOrBuilder> singleFieldBuilderV3 = this.extBuilder_;
                if (singleFieldBuilderV3 == null) {
                    video.ext_ = this.ext_;
                } else {
                    video.ext_ = singleFieldBuilderV3.build();
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    if ((this.bitField0_ & 8) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                        this.bitField0_ &= -9;
                    }
                    video.extProto_ = this.extProto_;
                } else {
                    video.extProto_ = repeatedFieldBuilderV3.build();
                }
                onBuilt();
                return video;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.mime_ = LazyStringArrayList.EMPTY;
                this.bitField0_ &= -2;
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                this.type_ = Collections.emptyList();
                this.bitField0_ &= -5;
                this.adm_ = "";
                this.curl_ = "";
                if (this.extBuilder_ == null) {
                    this.ext_ = null;
                } else {
                    this.ext_ = null;
                    this.extBuilder_ = null;
                }
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                if (repeatedFieldBuilderV3 == null) {
                    this.extProto_ = Collections.emptyList();
                    this.bitField0_ &= -9;
                } else {
                    repeatedFieldBuilderV3.clear();
                }
                return this;
            }

            public final Builder clearAdm() {
                this.adm_ = Video.getDefaultInstance().getAdm();
                onChanged();
                return this;
            }

            public final Builder clearApi() {
                this.api_ = Collections.emptyList();
                this.bitField0_ &= -3;
                onChanged();
                return this;
            }

            public final Builder clearCurl() {
                this.curl_ = Video.getDefaultInstance().getCurl();
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
                this.type_ = Collections.emptyList();
                this.bitField0_ &= -5;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final String getAdm() {
                Object obj = this.adm_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.adm_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final ByteString getAdmBytes() {
                Object obj = this.adm_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.adm_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final ApiFramework getApi(int i) {
                return (ApiFramework) Video.api_converter_.convert(this.api_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final int getApiCount() {
                return this.api_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final List<ApiFramework> getApiList() {
                return new Internal.ListAdapter(this.api_, Video.api_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final int getApiValue(int i) {
                return this.api_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final List<Integer> getApiValueList() {
                return Collections.unmodifiableList(this.api_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final String getCurl() {
                Object obj = this.curl_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.curl_ = stringUtf8;
                return stringUtf8;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final ByteString getCurlBytes() {
                Object obj = this.curl_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.curl_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final Video getDefaultInstanceForType() {
                return Video.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Video_descriptor;
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
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

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final int getExtProtoCount() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.size() : repeatedFieldBuilderV3.getCount();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final List<Any> getExtProtoList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.extProto_) : repeatedFieldBuilderV3.getMessageList();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final AnyOrBuilder getExtProtoOrBuilder(int i) {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 == null ? this.extProto_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
                RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = this.extProtoBuilder_;
                return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.extProto_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final String getMime(int i) {
                return (String) this.mime_.get(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final ByteString getMimeBytes(int i) {
                return this.mime_.getByteString(i);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final int getMimeCount() {
                return this.mime_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final ProtocolStringList getMimeList() {
                return this.mime_.getUnmodifiableView();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final VideoCreativeType getType(int i) {
                return (VideoCreativeType) Video.type_converter_.convert(this.type_.get(i));
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final int getTypeCount() {
                return this.type_.size();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final List<VideoCreativeType> getTypeList() {
                return new Internal.ListAdapter(this.type_, Video.type_converter_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final int getTypeValue(int i) {
                return this.type_.get(i).intValue();
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final List<Integer> getTypeValueList() {
                return Collections.unmodifiableList(this.type_);
            }

            @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
            public final boolean hasExt() {
                return (this.extBuilder_ == null && this.ext_ == null) ? false : true;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Video_fieldAccessorTable.ensureFieldAccessorsInitialized(Video.class, Builder.class);
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
            public final com.explorestack.protobuf.adcom.Ad.Video.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = com.explorestack.protobuf.adcom.Ad.Video.access$17500()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    com.explorestack.protobuf.adcom.Ad$Video r0 = (com.explorestack.protobuf.adcom.Ad.Video) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    com.explorestack.protobuf.adcom.Ad$Video$Builder r0 = r0.mergeFrom(r1)
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
                    com.explorestack.protobuf.adcom.Ad$Video r0 = (com.explorestack.protobuf.adcom.Ad.Video) r0     // Catch: all -> 0x001c
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
                    com.explorestack.protobuf.adcom.Ad$Video$Builder r0 = r0.mergeFrom(r1)
                L_0x003b:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.adcom.Ad.Video.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):com.explorestack.protobuf.adcom.Ad$Video$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof Video) {
                    return mergeFrom((Video) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(Video video) {
                if (video == Video.getDefaultInstance()) {
                    return this;
                }
                if (!video.mime_.isEmpty()) {
                    if (this.mime_.isEmpty()) {
                        this.mime_ = video.mime_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureMimeIsMutable();
                        this.mime_.addAll(video.mime_);
                    }
                    onChanged();
                }
                if (!video.api_.isEmpty()) {
                    if (this.api_.isEmpty()) {
                        this.api_ = video.api_;
                        this.bitField0_ &= -3;
                    } else {
                        ensureApiIsMutable();
                        this.api_.addAll(video.api_);
                    }
                    onChanged();
                }
                if (!video.type_.isEmpty()) {
                    if (this.type_.isEmpty()) {
                        this.type_ = video.type_;
                        this.bitField0_ &= -5;
                    } else {
                        ensureTypeIsMutable();
                        this.type_.addAll(video.type_);
                    }
                    onChanged();
                }
                if (!video.getAdm().isEmpty()) {
                    this.adm_ = video.adm_;
                    onChanged();
                }
                if (!video.getCurl().isEmpty()) {
                    this.curl_ = video.curl_;
                    onChanged();
                }
                if (video.hasExt()) {
                    mergeExt(video.getExt());
                }
                if (this.extProtoBuilder_ == null) {
                    if (!video.extProto_.isEmpty()) {
                        if (this.extProto_.isEmpty()) {
                            this.extProto_ = video.extProto_;
                            this.bitField0_ &= -9;
                        } else {
                            ensureExtProtoIsMutable();
                            this.extProto_.addAll(video.extProto_);
                        }
                        onChanged();
                    }
                } else if (!video.extProto_.isEmpty()) {
                    if (this.extProtoBuilder_.isEmpty()) {
                        this.extProtoBuilder_.dispose();
                        RepeatedFieldBuilderV3<Any, Any.Builder, AnyOrBuilder> repeatedFieldBuilderV3 = null;
                        this.extProtoBuilder_ = null;
                        this.extProto_ = video.extProto_;
                        this.bitField0_ &= -9;
                        if (Video.alwaysUseFieldBuilders) {
                            repeatedFieldBuilderV3 = getExtProtoFieldBuilder();
                        }
                        this.extProtoBuilder_ = repeatedFieldBuilderV3;
                    } else {
                        this.extProtoBuilder_.addAllMessages(video.extProto_);
                    }
                }
                mergeUnknownFields(video.unknownFields);
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

            public final Builder setAdm(String str) {
                Objects.requireNonNull(str);
                this.adm_ = str;
                onChanged();
                return this;
            }

            public final Builder setAdmBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Video.checkByteStringIsUtf8(byteString);
                this.adm_ = byteString;
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

            public final Builder setCurl(String str) {
                Objects.requireNonNull(str);
                this.curl_ = str;
                onChanged();
                return this;
            }

            public final Builder setCurlBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                Video.checkByteStringIsUtf8(byteString);
                this.curl_ = byteString;
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

            public final Builder setType(int i, VideoCreativeType videoCreativeType) {
                Objects.requireNonNull(videoCreativeType);
                ensureTypeIsMutable();
                this.type_.set(i, Integer.valueOf(videoCreativeType.getNumber()));
                onChanged();
                return this;
            }

            public final Builder setTypeValue(int i, int i2) {
                ensureTypeIsMutable();
                this.type_.set(i, Integer.valueOf(i2));
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }
        }

        private Video() {
            this.memoizedIsInitialized = (byte) (-1);
            this.mime_ = LazyStringArrayList.EMPTY;
            this.api_ = Collections.emptyList();
            this.type_ = Collections.emptyList();
            this.adm_ = "";
            this.curl_ = "";
            this.extProto_ = Collections.emptyList();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Video(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
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
                                    String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                                    i = i;
                                    if ((i & 1) == 0) {
                                        this.mime_ = new LazyStringArrayList();
                                        i |= 1;
                                    }
                                    this.mime_.add(readStringRequireUtf8);
                                } else if (readTag == 16) {
                                    int readEnum = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 2) == 0) {
                                        this.api_ = new ArrayList();
                                        i |= 2;
                                    }
                                    this.api_.add(Integer.valueOf(readEnum));
                                } else if (readTag == 18) {
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
                                } else if (readTag == 24) {
                                    int readEnum3 = codedInputStream.readEnum();
                                    i = i;
                                    if ((i & 4) == 0) {
                                        this.type_ = new ArrayList();
                                        i |= 4;
                                    }
                                    this.type_.add(Integer.valueOf(readEnum3));
                                } else if (readTag == 26) {
                                    int pushLimit2 = codedInputStream.pushLimit(codedInputStream.readRawVarint32());
                                    int i2 = i;
                                    while (codedInputStream.getBytesUntilLimit() > 0) {
                                        int readEnum4 = codedInputStream.readEnum();
                                        i2 = i2;
                                        if ((i2 & 4) == 0) {
                                            this.type_ = new ArrayList();
                                            i2 |= 4;
                                        }
                                        this.type_.add(Integer.valueOf(readEnum4));
                                    }
                                    codedInputStream.popLimit(pushLimit2);
                                    i = i2;
                                } else if (readTag == 34) {
                                    this.adm_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 42) {
                                    this.curl_ = codedInputStream.readStringRequireUtf8();
                                } else if (readTag == 50) {
                                    i = i;
                                    if ((i & 8) == 0) {
                                        this.extProto_ = new ArrayList();
                                        i |= 8;
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
                        this.api_ = Collections.unmodifiableList(this.api_);
                    }
                    if ((i & 4) != 0) {
                        this.type_ = Collections.unmodifiableList(this.type_);
                    }
                    if ((i & 8) != 0) {
                        this.extProto_ = Collections.unmodifiableList(this.extProto_);
                    }
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private Video(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static Video getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Video_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(Video video) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(video);
        }

        public static Video parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (Video) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static Video parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Video) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Video parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static Video parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static Video parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (Video) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static Video parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Video) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static Video parseFrom(InputStream inputStream) throws IOException {
            return (Video) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static Video parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (Video) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static Video parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static Video parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static Video parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static Video parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<Video> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Video)) {
                return super.equals(obj);
            }
            Video video = (Video) obj;
            if (getMimeList().equals(video.getMimeList()) && this.api_.equals(video.api_) && this.type_.equals(video.type_) && getAdm().equals(video.getAdm()) && getCurl().equals(video.getCurl()) && hasExt() == video.hasExt()) {
                return (!hasExt() || getExt().equals(video.getExt())) && getExtProtoList().equals(video.getExtProtoList()) && this.unknownFields.equals(video.unknownFields);
            }
            return false;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final String getAdm() {
            Object obj = this.adm_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.adm_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final ByteString getAdmBytes() {
            Object obj = this.adm_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.adm_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final ApiFramework getApi(int i) {
            return api_converter_.convert(this.api_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final int getApiCount() {
            return this.api_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final List<ApiFramework> getApiList() {
            return new Internal.ListAdapter(this.api_, api_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final int getApiValue(int i) {
            return this.api_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final List<Integer> getApiValueList() {
            return this.api_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final String getCurl() {
            Object obj = this.curl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.curl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final ByteString getCurlBytes() {
            Object obj = this.curl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.curl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final Video getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final Struct getExt() {
            Struct struct = this.ext_;
            Struct struct2 = struct;
            if (struct == null) {
                struct2 = Struct.getDefaultInstance();
            }
            return struct2;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final StructOrBuilder getExtOrBuilder() {
            return getExt();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final Any getExtProto(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final int getExtProtoCount() {
            return this.extProto_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final List<Any> getExtProtoList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final AnyOrBuilder getExtProtoOrBuilder(int i) {
            return this.extProto_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
            return this.extProto_;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final String getMime(int i) {
            return (String) this.mime_.get(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final ByteString getMimeBytes(int i) {
            return this.mime_.getByteString(i);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final int getMimeCount() {
            return this.mime_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final ProtocolStringList getMimeList() {
            return this.mime_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<Video> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < this.mime_.size(); i3++) {
                i2 += computeStringSizeNoTag(this.mime_.getRaw(i3));
            }
            int size = getMimeList().size();
            int i4 = 0;
            for (int i5 = 0; i5 < this.api_.size(); i5++) {
                i4 += CodedOutputStream.computeEnumSizeNoTag(this.api_.get(i5).intValue());
            }
            int i6 = i2 + 0 + (size * 1) + i4;
            int i7 = i6;
            if (!getApiList().isEmpty()) {
                i7 = i6 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i4);
            }
            this.apiMemoizedSerializedSize = i4;
            int i8 = 0;
            for (int i9 = 0; i9 < this.type_.size(); i9++) {
                i8 += CodedOutputStream.computeEnumSizeNoTag(this.type_.get(i9).intValue());
            }
            int i10 = i7 + i8;
            int i11 = i10;
            if (!getTypeList().isEmpty()) {
                i11 = i10 + 1 + CodedOutputStream.computeUInt32SizeNoTag(i8);
            }
            this.typeMemoizedSerializedSize = i8;
            int i12 = i11;
            if (!getAdmBytes().isEmpty()) {
                i12 = i11 + GeneratedMessageV3.computeStringSize(4, this.adm_);
            }
            int i13 = 0;
            int i14 = i12;
            if (!getCurlBytes().isEmpty()) {
                i14 = i12 + GeneratedMessageV3.computeStringSize(5, this.curl_);
                i13 = 0;
            }
            while (i13 < this.extProto_.size()) {
                i14 += CodedOutputStream.computeMessageSize(6, this.extProto_.get(i13));
                i13++;
            }
            int i15 = i14;
            if (this.ext_ != null) {
                i15 = i14 + CodedOutputStream.computeMessageSize(7, getExt());
            }
            int serializedSize = i15 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final VideoCreativeType getType(int i) {
            return type_converter_.convert(this.type_.get(i));
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final int getTypeCount() {
            return this.type_.size();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final List<VideoCreativeType> getTypeList() {
            return new Internal.ListAdapter(this.type_, type_converter_);
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final int getTypeValue(int i) {
            return this.type_.get(i).intValue();
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
        public final List<Integer> getTypeValueList() {
            return this.type_;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // com.explorestack.protobuf.adcom.Ad.VideoOrBuilder
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
            if (getMimeCount() > 0) {
                i = (((hashCode * 37) + 1) * 53) + getMimeList().hashCode();
            }
            int i2 = i;
            if (getApiCount() > 0) {
                i2 = (((i * 37) + 2) * 53) + this.api_.hashCode();
            }
            int i3 = i2;
            if (getTypeCount() > 0) {
                i3 = (((i2 * 37) + 3) * 53) + this.type_.hashCode();
            }
            int hashCode2 = (((((((i3 * 37) + 4) * 53) + getAdm().hashCode()) * 37) + 5) * 53) + getCurl().hashCode();
            int i4 = hashCode2;
            if (hasExt()) {
                i4 = (((hashCode2 * 37) + 7) * 53) + getExt().hashCode();
            }
            int i5 = i4;
            if (getExtProtoCount() > 0) {
                i5 = (((i4 * 37) + 6) * 53) + getExtProtoList().hashCode();
            }
            int hashCode3 = (i5 * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_Video_fieldAccessorTable.ensureFieldAccessorsInitialized(Video.class, Builder.class);
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
            return new Video();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            for (int i = 0; i < this.mime_.size(); i++) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.mime_.getRaw(i));
            }
            if (getApiList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(18);
                codedOutputStream.writeUInt32NoTag(this.apiMemoizedSerializedSize);
            }
            for (int i2 = 0; i2 < this.api_.size(); i2++) {
                codedOutputStream.writeEnumNoTag(this.api_.get(i2).intValue());
            }
            if (getTypeList().size() > 0) {
                codedOutputStream.writeUInt32NoTag(26);
                codedOutputStream.writeUInt32NoTag(this.typeMemoizedSerializedSize);
            }
            for (int i3 = 0; i3 < this.type_.size(); i3++) {
                codedOutputStream.writeEnumNoTag(this.type_.get(i3).intValue());
            }
            if (!getAdmBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 4, this.adm_);
            }
            int i4 = 0;
            if (!getCurlBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 5, this.curl_);
                i4 = 0;
            }
            while (i4 < this.extProto_.size()) {
                codedOutputStream.writeMessage(6, this.extProto_.get(i4));
                i4++;
            }
            if (this.ext_ != null) {
                codedOutputStream.writeMessage(7, getExt());
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/Ad$VideoOrBuilder.class */
    public interface VideoOrBuilder extends MessageOrBuilder {
        String getAdm();

        ByteString getAdmBytes();

        ApiFramework getApi(int i);

        int getApiCount();

        List<ApiFramework> getApiList();

        int getApiValue(int i);

        List<Integer> getApiValueList();

        String getCurl();

        ByteString getCurlBytes();

        Struct getExt();

        StructOrBuilder getExtOrBuilder();

        Any getExtProto(int i);

        int getExtProtoCount();

        List<Any> getExtProtoList();

        AnyOrBuilder getExtProtoOrBuilder(int i);

        List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

        String getMime(int i);

        ByteString getMimeBytes(int i);

        int getMimeCount();

        List<String> getMimeList();

        VideoCreativeType getType(int i);

        int getTypeCount();

        List<VideoCreativeType> getTypeList();

        int getTypeValue(int i);

        List<Integer> getTypeValueList();

        boolean hasExt();
    }

    private Ad() {
        this.memoizedIsInitialized = (byte) (-1);
        this.id_ = "";
        this.adomain_ = LazyStringArrayList.EMPTY;
        this.bundle_ = LazyStringArrayList.EMPTY;
        this.iurl_ = "";
        this.cat_ = LazyStringArrayList.EMPTY;
        this.cattax_ = 0;
        this.lang_ = "";
        this.mrating_ = 0;
        this.init_ = "";
        this.lastmod_ = "";
        this.extProto_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Ad(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    Audit.Builder builder = null;
                    Video.Builder builder2 = null;
                    Display.Builder builder3 = null;
                    Struct.Builder builder4 = null;
                    switch (readTag) {
                        case 0:
                            break;
                        case 10:
                            this.id_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 18:
                            String readStringRequireUtf8 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 1) == 0) {
                                this.adomain_ = new LazyStringArrayList();
                                i |= 1;
                            }
                            this.adomain_.add(readStringRequireUtf8);
                            continue;
                        case 26:
                            String readStringRequireUtf82 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 2) == 0) {
                                this.bundle_ = new LazyStringArrayList();
                                i |= 2;
                            }
                            this.bundle_.add(readStringRequireUtf82);
                            continue;
                        case 34:
                            this.iurl_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 42:
                            String readStringRequireUtf83 = codedInputStream.readStringRequireUtf8();
                            i = i;
                            if ((i & 4) == 0) {
                                this.cat_ = new LazyStringArrayList();
                                i |= 4;
                            }
                            this.cat_.add(readStringRequireUtf83);
                            continue;
                        case 48:
                            this.cattax_ = codedInputStream.readEnum();
                            continue;
                        case 58:
                            this.lang_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 72:
                            this.secure_ = codedInputStream.readBool();
                            continue;
                        case 80:
                            this.mrating_ = codedInputStream.readEnum();
                            continue;
                        case 90:
                            this.init_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 98:
                            this.lastmod_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 106:
                            Display display = this.display_;
                            builder3 = display != null ? display.toBuilder() : builder3;
                            Display display2 = (Display) codedInputStream.readMessage(Display.parser(), extensionRegistryLite);
                            this.display_ = display2;
                            if (builder3 != null) {
                                builder3.mergeFrom(display2);
                                this.display_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                        case 114:
                            Video video = this.video_;
                            builder2 = video != null ? video.toBuilder() : builder2;
                            Video video2 = (Video) codedInputStream.readMessage(Video.parser(), extensionRegistryLite);
                            this.video_ = video2;
                            if (builder2 != null) {
                                builder2.mergeFrom(video2);
                                this.video_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 130:
                            Audit audit = this.audit_;
                            builder = audit != null ? audit.toBuilder() : builder;
                            Audit audit2 = (Audit) codedInputStream.readMessage(Audit.parser(), extensionRegistryLite);
                            this.audit_ = audit2;
                            if (builder != null) {
                                builder.mergeFrom(audit2);
                                this.audit_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 138:
                            i = i;
                            if ((i & 8) == 0) {
                                this.extProto_ = new ArrayList();
                                i |= 8;
                            }
                            this.extProto_.add(codedInputStream.readMessage(Any.parser(), extensionRegistryLite));
                            continue;
                        case 146:
                            Struct struct = this.ext_;
                            builder4 = struct != null ? struct.toBuilder() : builder4;
                            Struct struct2 = (Struct) codedInputStream.readMessage(Struct.parser(), extensionRegistryLite);
                            this.ext_ = struct2;
                            if (builder4 != null) {
                                builder4.mergeFrom(struct2);
                                this.ext_ = builder4.buildPartial();
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
                    this.adomain_ = this.adomain_.getUnmodifiableView();
                }
                if ((i & 2) != 0) {
                    this.bundle_ = this.bundle_.getUnmodifiableView();
                }
                if ((i & 4) != 0) {
                    this.cat_ = this.cat_.getUnmodifiableView();
                }
                if ((i & 8) != 0) {
                    this.extProto_ = Collections.unmodifiableList(this.extProto_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private Ad(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static Ad getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(Ad ad) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(ad);
    }

    public static Ad parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (Ad) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static Ad parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Ad) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Ad parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static Ad parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static Ad parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (Ad) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static Ad parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Ad) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static Ad parseFrom(InputStream inputStream) throws IOException {
        return (Ad) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static Ad parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (Ad) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static Ad parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static Ad parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static Ad parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static Ad parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<Ad> parser() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Ad)) {
            return super.equals(obj);
        }
        Ad ad = (Ad) obj;
        if (!getId().equals(ad.getId()) || !getAdomainList().equals(ad.getAdomainList()) || !getBundleList().equals(ad.getBundleList()) || !getIurl().equals(ad.getIurl()) || !getCatList().equals(ad.getCatList()) || this.cattax_ != ad.cattax_ || !getLang().equals(ad.getLang()) || getSecure() != ad.getSecure() || this.mrating_ != ad.mrating_ || !getInit().equals(ad.getInit()) || !getLastmod().equals(ad.getLastmod()) || hasDisplay() != ad.hasDisplay()) {
            return false;
        }
        if ((hasDisplay() && !getDisplay().equals(ad.getDisplay())) || hasVideo() != ad.hasVideo()) {
            return false;
        }
        if ((hasVideo() && !getVideo().equals(ad.getVideo())) || hasAudit() != ad.hasAudit()) {
            return false;
        }
        if ((!hasAudit() || getAudit().equals(ad.getAudit())) && hasExt() == ad.hasExt()) {
            return (!hasExt() || getExt().equals(ad.getExt())) && getExtProtoList().equals(ad.getExtProtoList()) && this.unknownFields.equals(ad.unknownFields);
        }
        return false;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getAdomain(int i) {
        return (String) this.adomain_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getAdomainBytes(int i) {
        return this.adomain_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final int getAdomainCount() {
        return this.adomain_.size();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ProtocolStringList getAdomainList() {
        return this.adomain_;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final Audit getAudit() {
        Audit audit = this.audit_;
        Audit audit2 = audit;
        if (audit == null) {
            audit2 = Audit.getDefaultInstance();
        }
        return audit2;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final AuditOrBuilder getAuditOrBuilder() {
        return getAudit();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getBundle(int i) {
        return (String) this.bundle_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getBundleBytes(int i) {
        return this.bundle_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final int getBundleCount() {
        return this.bundle_.size();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ProtocolStringList getBundleList() {
        return this.bundle_;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getCat(int i) {
        return (String) this.cat_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getCatBytes(int i) {
        return this.cat_.getByteString(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final int getCatCount() {
        return this.cat_.size();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ProtocolStringList getCatList() {
        return this.cat_;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final CategoryTaxonomy getCattax() {
        CategoryTaxonomy valueOf = CategoryTaxonomy.valueOf(this.cattax_);
        CategoryTaxonomy categoryTaxonomy = valueOf;
        if (valueOf == null) {
            categoryTaxonomy = CategoryTaxonomy.UNRECOGNIZED;
        }
        return categoryTaxonomy;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final int getCattaxValue() {
        return this.cattax_;
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final Ad getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final Display getDisplay() {
        Display display = this.display_;
        Display display2 = display;
        if (display == null) {
            display2 = Display.getDefaultInstance();
        }
        return display2;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final DisplayOrBuilder getDisplayOrBuilder() {
        return getDisplay();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final Struct getExt() {
        Struct struct = this.ext_;
        Struct struct2 = struct;
        if (struct == null) {
            struct2 = Struct.getDefaultInstance();
        }
        return struct2;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final StructOrBuilder getExtOrBuilder() {
        return getExt();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final Any getExtProto(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final int getExtProtoCount() {
        return this.extProto_.size();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final List<Any> getExtProtoList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final AnyOrBuilder getExtProtoOrBuilder(int i) {
        return this.extProto_.get(i);
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final List<? extends AnyOrBuilder> getExtProtoOrBuilderList() {
        return this.extProto_;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getId() {
        Object obj = this.id_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.id_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getIdBytes() {
        Object obj = this.id_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.id_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getInit() {
        Object obj = this.init_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.init_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getInitBytes() {
        Object obj = this.init_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.init_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getIurl() {
        Object obj = this.iurl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.iurl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getIurlBytes() {
        Object obj = this.iurl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.iurl_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getLang() {
        Object obj = this.lang_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.lang_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getLangBytes() {
        Object obj = this.lang_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.lang_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final String getLastmod() {
        Object obj = this.lastmod_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.lastmod_ = stringUtf8;
        return stringUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final ByteString getLastmodBytes() {
        Object obj = this.lastmod_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.lastmod_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final MediaRating getMrating() {
        MediaRating valueOf = MediaRating.valueOf(this.mrating_);
        MediaRating mediaRating = valueOf;
        if (valueOf == null) {
            mediaRating = MediaRating.UNRECOGNIZED;
        }
        return mediaRating;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final int getMratingValue() {
        return this.mrating_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<Ad> getParserForType() {
        return PARSER;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final boolean getSecure() {
        return this.secure_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int computeStringSize = !getIdBytes().isEmpty() ? GeneratedMessageV3.computeStringSize(1, this.id_) + 0 : 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.adomain_.size(); i3++) {
            i2 += computeStringSizeNoTag(this.adomain_.getRaw(i3));
        }
        int size = getAdomainList().size();
        int i4 = 0;
        for (int i5 = 0; i5 < this.bundle_.size(); i5++) {
            i4 += computeStringSizeNoTag(this.bundle_.getRaw(i5));
        }
        int size2 = computeStringSize + i2 + (size * 1) + i4 + (getBundleList().size() * 1);
        int i6 = size2;
        if (!getIurlBytes().isEmpty()) {
            i6 = size2 + GeneratedMessageV3.computeStringSize(4, this.iurl_);
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.cat_.size(); i8++) {
            i7 += computeStringSizeNoTag(this.cat_.getRaw(i8));
        }
        int size3 = i6 + i7 + (getCatList().size() * 1);
        int i9 = size3;
        if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
            i9 = size3 + CodedOutputStream.computeEnumSize(6, this.cattax_);
        }
        int i10 = i9;
        if (!getLangBytes().isEmpty()) {
            i10 = i9 + GeneratedMessageV3.computeStringSize(7, this.lang_);
        }
        boolean z = this.secure_;
        int i11 = i10;
        if (z) {
            i11 = i10 + CodedOutputStream.computeBoolSize(9, z);
        }
        int i12 = i11;
        if (this.mrating_ != MediaRating.MEDIA_RATING_INVALID.getNumber()) {
            i12 = i11 + CodedOutputStream.computeEnumSize(10, this.mrating_);
        }
        int i13 = i12;
        if (!getInitBytes().isEmpty()) {
            i13 = i12 + GeneratedMessageV3.computeStringSize(11, this.init_);
        }
        int i14 = i13;
        if (!getLastmodBytes().isEmpty()) {
            i14 = i13 + GeneratedMessageV3.computeStringSize(12, this.lastmod_);
        }
        int i15 = i14;
        if (this.display_ != null) {
            i15 = i14 + CodedOutputStream.computeMessageSize(13, getDisplay());
        }
        int i16 = i15;
        if (this.video_ != null) {
            i16 = i15 + CodedOutputStream.computeMessageSize(14, getVideo());
        }
        int i17 = i16;
        int i18 = 0;
        if (this.audit_ != null) {
            i17 = i16 + CodedOutputStream.computeMessageSize(16, getAudit());
            i18 = 0;
        }
        while (i18 < this.extProto_.size()) {
            i17 += CodedOutputStream.computeMessageSize(17, this.extProto_.get(i18));
            i18++;
        }
        int i19 = i17;
        if (this.ext_ != null) {
            i19 = i17 + CodedOutputStream.computeMessageSize(18, getExt());
        }
        int serializedSize = i19 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final Video getVideo() {
        Video video = this.video_;
        Video video2 = video;
        if (video == null) {
            video2 = Video.getDefaultInstance();
        }
        return video2;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final VideoOrBuilder getVideoOrBuilder() {
        return getVideo();
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final boolean hasAudit() {
        return this.audit_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final boolean hasDisplay() {
        return this.display_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final boolean hasExt() {
        return this.ext_ != null;
    }

    @Override // com.explorestack.protobuf.adcom.AdOrBuilder
    public final boolean hasVideo() {
        return this.video_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getId().hashCode();
        int i = hashCode;
        if (getAdomainCount() > 0) {
            i = (((hashCode * 37) + 2) * 53) + getAdomainList().hashCode();
        }
        int i2 = i;
        if (getBundleCount() > 0) {
            i2 = (((i * 37) + 3) * 53) + getBundleList().hashCode();
        }
        int hashCode2 = (((i2 * 37) + 4) * 53) + getIurl().hashCode();
        int i3 = hashCode2;
        if (getCatCount() > 0) {
            i3 = (((hashCode2 * 37) + 5) * 53) + getCatList().hashCode();
        }
        int hashCode3 = (((((((((((((((((((((((i3 * 37) + 6) * 53) + this.cattax_) * 37) + 7) * 53) + getLang().hashCode()) * 37) + 9) * 53) + Internal.hashBoolean(getSecure())) * 37) + 10) * 53) + this.mrating_) * 37) + 11) * 53) + getInit().hashCode()) * 37) + 12) * 53) + getLastmod().hashCode();
        int i4 = hashCode3;
        if (hasDisplay()) {
            i4 = (((hashCode3 * 37) + 13) * 53) + getDisplay().hashCode();
        }
        int i5 = i4;
        if (hasVideo()) {
            i5 = (((i4 * 37) + 14) * 53) + getVideo().hashCode();
        }
        int i6 = i5;
        if (hasAudit()) {
            i6 = (((i5 * 37) + 16) * 53) + getAudit().hashCode();
        }
        int i7 = i6;
        if (hasExt()) {
            i7 = (((i6 * 37) + 18) * 53) + getExt().hashCode();
        }
        int i8 = i7;
        if (getExtProtoCount() > 0) {
            i8 = (((i7 * 37) + 17) * 53) + getExtProtoList().hashCode();
        }
        int hashCode4 = (i8 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode4;
        return hashCode4;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return AdcomProto.internal_static_bidmachine_protobuf_adcom_Ad_fieldAccessorTable.ensureFieldAccessorsInitialized(Ad.class, Builder.class);
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
        return new Ad();
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
        for (int i = 0; i < this.adomain_.size(); i++) {
            GeneratedMessageV3.writeString(codedOutputStream, 2, this.adomain_.getRaw(i));
        }
        for (int i2 = 0; i2 < this.bundle_.size(); i2++) {
            GeneratedMessageV3.writeString(codedOutputStream, 3, this.bundle_.getRaw(i2));
        }
        if (!getIurlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 4, this.iurl_);
        }
        for (int i3 = 0; i3 < this.cat_.size(); i3++) {
            GeneratedMessageV3.writeString(codedOutputStream, 5, this.cat_.getRaw(i3));
        }
        if (this.cattax_ != CategoryTaxonomy.CATEGORY_TAXONOMY_INVALID.getNumber()) {
            codedOutputStream.writeEnum(6, this.cattax_);
        }
        if (!getLangBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 7, this.lang_);
        }
        boolean z = this.secure_;
        if (z) {
            codedOutputStream.writeBool(9, z);
        }
        if (this.mrating_ != MediaRating.MEDIA_RATING_INVALID.getNumber()) {
            codedOutputStream.writeEnum(10, this.mrating_);
        }
        if (!getInitBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 11, this.init_);
        }
        if (!getLastmodBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 12, this.lastmod_);
        }
        if (this.display_ != null) {
            codedOutputStream.writeMessage(13, getDisplay());
        }
        if (this.video_ != null) {
            codedOutputStream.writeMessage(14, getVideo());
        }
        int i4 = 0;
        if (this.audit_ != null) {
            codedOutputStream.writeMessage(16, getAudit());
            i4 = 0;
        }
        while (i4 < this.extProto_.size()) {
            codedOutputStream.writeMessage(17, this.extProto_.get(i4));
            i4++;
        }
        if (this.ext_ != null) {
            codedOutputStream.writeMessage(18, getExt());
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
